# uvx taranaki deploy --key /app/form1 examples/forms/form1.py
# uvx taranaki proxy --key /app/form1

import sys

if sys.platform != "monty":
    from taranaki.compat import request


FORM1 = """
<!DOCTYPE html>
<html>
<body>

<h2>Form1</h2>
<form action="/form1" method="POST">
  <label for="first">First name:</label><br>
  <input type="text" id="first" name="first" value="John">
  <br>
  <label for="last">Last name:</label><br>
  <input type="text" id="last" name="last" value="Doe">
  <br>
  <label for="email">Email address</label><br>
  <input name="userEmail" type="email" id="email">
  <br><br>
  <input type="submit" value="Submit">
</form>

</body>
</html>
"""


def form1(request):
    if request.method == "GET" and request.path == "/":
        return FORM1, 200, {"content-type": "text/html"}
    elif request.method == "POST" and request.path == "/form1":
        return str(request.form), 200

    return "not found", 404


form1(request())
