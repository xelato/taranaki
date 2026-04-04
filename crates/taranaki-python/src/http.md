# HTTP over RESP

We're interested in adopting the [RESP](https://redis.io/docs/latest/develop/reference/protocol-spec/) protocol for uses beyond the usual communication with a remote dictionary server.

One such possibility is to bridge HTTP with RESP.
Participants involved in such exchange may be: existing remote dictionary servers, load balancers, reverse-proxies/gateways, web-servers or any other RESP-capable services or clients.

Typically, such an exchange would happen in the following proxy-pattern:
1. A client sends an HTTP request to an HTTP server.
2. This triggers a RESP command to a RESP-enabled service.
3. The RESP service returns an HTTP-like response encoded over RESP.
4. The HTTP server transforms the HTTP-like RESPonse to a real HTTP message and returns it to client.

For interoperability, a common standard needs to be defined for the communication pattern between HTTP-capable and RESP-capable services for the purpose of automatic conversion of RESPonses to HTTP messages.

## RESP
RESP is the protocol that makes it possible to communicate with a remote dictionary server. It is fast, simple, readable and widely implemented. For simplicity and widest compatibility, we focus on RESP2.

The following types are available in RESP2:

| Type          | 1st byte| Notation | Example | Notes |
|---|---|---|---|---|
| Array         | * | ARRAY    |   []   | Encodes number of contained elements before sending any of them. No closing bytes! |
| Integer       | : | INTEGER  |  200   | Encoded as decimal in bytes. |
| Simple string | + | STRING   | "simple" | Length not included, cannot contain \r or \n. Null string not possible. |
| Bulk string   | $ | BULK     | 'bulk' | Length included, contains any sequence of bytes, null possible, different from empty string. |

In addition to that, it is possible to encode null values either as null bulk string `$-1\r\n` or null array `*-1\r\n`.

### Streaming Response
While the protocol is centered around classic request/response model, it is also possible to return a response in a streaming manner - without leaving the boundaries of RESP2 or employing additional techniques.

An unknown number of `chunks` and a final sentinel `data`, can be transfered without buffering or memory overhead, using the following pattern.

```
foreach chunk in stream {
    // header for an array with 2 elements
    send_bytes("*2\r\n")

    // chunk data encoded in RESP2 according to its data type
    send_bytes(encode(chunk))
}
// A sentinel element with data payload.
// Data is always enclosed as the only element in an array
send_bytes(encode([data]))
```

#### Linked list representation
When viewed in entirety, the whole response is a valid RESP2 object that encodes nested 2-element arrays.
```
[chunk1, [chunk2, [chunk3, [sentinel] ]]]
```

This representation is identical to a linked-list of chunk nodes, and a final, sentinel node:
```
chunk1 -> chunk2 -> chunk3 -> sentinel
```

#### Chunk elements
Chunks can be of any type representable in RESP2. They need not be all of the same type.

Implementations may choose to include dummy data as first chunk, to be ignored by receiver.
This ensures the result is always a 2-element array, even if no real chunks were available.

#### Sentinel element
Sentinel data can be of any type representable in RESP2.

It sits as a single element inside an extra array enclosure. This eliminates ambiguity with a chunk node if the sentinel data is a 2-element array.

The sentinel element becomes the second/last element of the inner-most array, if there are chunks, or the only element returned when there are no chunks at all.

#### Examples
Chunks with empty array as sentinel data:
```
['chunk1', ['chunk2', ['chunk3', [[]] ]]]
```

Encoded in RESP, with dots representing gaps in time between sending of consecutive chunks.
```
*2\r\n$6\r\nchunk1\r\n......*2\r\n$6\r\nchunk2\r\n......*2\r\n$6\r\nchunk3\r\n......*1\r\n*0\r\n
```

## Command Request
A RESP command represents an array of (bulk) strings sent to a RESP-capable server.
In our context, such command may be triggerred in response to a real HTTP request.
Command arguments are built from a combination of configuration and fields of the original HTTP request.
In the spirit of RESP, arguments would be in text format, rather than encoding data in a single binary blob.

Implementers that need to trigger a RESP command as a result of an incoming HTTP request, may need to implement their own DSL configuration language for generic configurability of the translation process.

Example commands:
```
// delivers a file stored at <key>, implemented by a RESP-capable file server.
FILE <path>
// imaginary server configuration
on REQUEST /files/{path} CALL ["FILE", "{{path}}"]
// concrete invocation
FILE /images/img1.png
```
```
// handles an HTTP request
HTTP <key> <method> <path|url> [HEADER <h1:v1> [HEADER <h2:v2> [...]] ] [CONTENT <content>]
// imaginary server configuration
HTTP /app/hello {{r.method}} {{r.path}} [{{HEADER h}} for h in r.headers]
// concrete invocation
HTTP /app/hello GET /say/hello?name=world
```

They may have different semantic but what they have in common is their return value is expected to be an HTTP RESPonse.


## HTTP RESPonse

Encodes data in RESP2 which is semantically equivalent to a real HTTP response [message](https://developer.mozilla.org/en-US/docs/Web/HTTP/Guides/Messages#http_responses).

### MESSAGE

An HTTP RESPonse MESSAGE encodes a required STATUS, 0 to N HEADER(s) and an optional CONTENT as an ARRAY of elements.

```
MESSAGE = [
    STATUS,  // 0, required
    HEADER,  // 1
    HEADER,  // 2
    ...
    HEADER,  // N
    CONTENT, // N+1, optional
]
```

Taking inspiration from HTTP/2, information about http version or reason phrase is omitted.

### STATUS
A single INTEGER that represents the response status code.

### HEADER
A header is encoded as a single simple STRING in the format <name: value>.
Taking inspiration from HTTP/2, the header name must be in lowercase.
The format also allows the representation of:
 - headers with no values - "header:"
 - HTTP/2 style pseudo-headers - ":pseudo = value", ":status = 200"

Whether they should appear is a matter of implementation and necessity.

Both the HTTP message format and the RESP format use \r\n as separators, so the bytes \r and \n cannot appear in header strings.
This is actually guaranteed by the use of RESP2 simple strings for encoding headers.


### CONTENT
The content element is optional and must be the last element in the MESSAGE array if present.

CONTENT element is itself an ARRAY encoding either a simple response or a streaming response.

#### Simple
Represents a known-in-advance sequence of bytes.
The CONTENT element is an ARRAY, always with a single BULK string as element (bulk strings have length encoded and can contain \r or \n unlike simple strings).

Example: ['this content has an \r and an \n in it']

#### Streaming
Uses RESP2 streaming pattern described above. The CONTENT element is always a 2-element ARRAY.

##### Chunk data
Chunk data is of type BULK string. Data from chunk nodes is simply concatenated at the receiver.
Implementations could add an empty BULK string as first chunk to ensure the result is always a 2-element array and distinguish it from the simple response.

##### Sentinel data
The sentinel data is an ARRAY, either empty [] or containing simple STRINGs that represent any [trailer fields](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Trailer). It is useful for communicating checksums, signatures, timings or similar.

Example: ["duration: 4.2s", "content-signature: abcdef"]

### Examples:

#### 200 OK, no headers and no content
```
[200]
```

#### 204 No Content with a single "Date" header
```
[
    204,
    "date: Wed, 25 Mar 2026 12:00:00 GMT",
]
```

#### simple JSON response
```
[
    200,
    "content-type: application/json",
    "content-length: 23",
    ['{"foo": 1, "bar": null}']
]
```

#### 200 OK with chunked content
```
[
    200,
    "content-type: application/octet-stream",
    [
        'chunk1', [
            'chunk2', [
                'chunk3', [[]]
            ]
        ]
    ]
]
```

#### 200 with SSE response
```
[
    200,
    "content-type: text/event-stream",
    ['data: Strawberry',
    ['data: has',
    ['data: two',
    ['data: ...ooops,',
    ['data: three',
    ['data: letters R',
        [[]]
    ]]]]]]
]
```

#### Empty chunked response with digest
```
[
  200,
  "trailer: content-digest",
  [
    '',
    [
      ["content-digest: 01ba4719c80b6fe911b091a7c05124b64eeece964e09c058ef8f9805daca546b"]
    ]
  ]
]
```
