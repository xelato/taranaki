(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_i32_=>_i64 (func (param i32 i32) (result i64)))
 (type $i32_i32_=>_f64 (func (param i32 i32) (result f64)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i64_=>_i64 (func (param i32 i64) (result i64)))
 (type $i32_i32_i64_=>_i32 (func (param i32 i32 i64) (result i32)))
 (type $i32_i32_i64_i32_=>_i32 (func (param i32 i32 i64 i32) (result i32)))
 (type $i32_i64_i64_=>_i64 (func (param i32 i64 i64) (result i64)))
 (type $i32_f64_=>_i32 (func (param i32 f64) (result i32)))
 (type $i32_i64_i64_=>_i32 (func (param i32 i64 i64) (result i32)))
 (type $i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_i64 (func (param i32 i32 i32) (result i64)))
 (type $i32_i32_i32_i64_=>_i32 (func (param i32 i32 i32 i64) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_f64_=>_i32 (func (param i32 i32 f64) (result i32)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i32_i32_i64_i32_i32_=>_i32 (func (param i32 i32 i64 i32 i32) (result i32)))
 (type $i32_i32_i32_i64_i64_i64_i64_=>_none (func (param i32 i32 i32 i64 i64 i64 i64)))
 (type $i32_i64_i32_i32_=>_i32 (func (param i32 i64 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (import "wasi_snapshot_preview1" "fd_write" (func $wimport_wasi_snapshot_preview1_fd_write_1159 (param i32 i32 i32 i32) (result i32)))
 (global $runtimeHeapNextPtr_0 (mut i32) (i32.const 1448))
 (global $_SMAX16_I32_1008_0 (mut i32) (i32.const 0))
 (global $_SMAX32_I64_1021_0 (mut i64) (i64.const 0))
 (global $_SMAX16_I64_1018_0 (mut i64) (i64.const 0))
 (global $_SMAX8_I64_1015_0 (mut i64) (i64.const 0))
 (global $_SMAX8_I32_1005_0 (mut i32) (i32.const 0))
 (global $_SMAX_I64_1011_0 (mut i64) (i64.const 0))
 (global $_SMIN16_I32_1007_0 (mut i32) (i32.const 0))
 (global $_SMIN32_I64_1020_0 (mut i64) (i64.const 0))
 (global $_SMIN8_I64_1014_0 (mut i64) (i64.const 0))
 (global $_SMIN8_I32_1004_0 (mut i32) (i32.const 0))
 (global $_SMIN16_I64_1017_0 (mut i64) (i64.const 0))
 (global $_SMAX_I32_1001_0 (mut i32) (i32.const 0))
 (global $_UMAX16_I32_1009_0 (mut i32) (i32.const 0))
 (global $_UMAX32_I64_1023_0 (mut i64) (i64.const 0))
 (global $_UMAX8_I64_1016_0 (mut i64) (i64.const 0))
 (global $_UMAX8_I32_1006_0 (mut i32) (i32.const 0))
 (global $_UMAX16_I64_1019_0 (mut i64) (i64.const 0))
 (global $_UMAX_I64_1013_0 (mut i64) (i64.const 0))
 (global $_GRAIN_ADT_HEAP_TAG_1017_1 (mut i32) (i32.const 0))
 (global $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1 (mut i32) (i32.const 0))
 (global $_GRAIN_ARRAY_HEAP_TAG_1019_1 (mut i32) (i32.const 0))
 (global $_GRAIN_BYTES_HEAP_TAG_1023_1 (mut i32) (i32.const 0))
 (global $_GRAIN_FLOAT64_BOXED_NUM_TAG_1028_1 (mut i32) (i32.const 0))
 (global $_GRAIN_FLOAT32_HEAP_TAG_1025_1 (mut i32) (i32.const 0))
 (global $_GRAIN_BOXED_NUM_HEAP_TAG_1020_1 (mut i32) (i32.const 0))
 (global $_GRAIN_GENERIC_SHORTVAL_TAG_MASK_1011_1 (mut i32) (i32.const 0))
 (global $_GRAIN_GENERIC_TAG_MASK_1005_1 (mut i32) (i32.const 0))
 (global $_GRAIN_INT16_TAG_MASK_1013_1 (mut i32) (i32.const 0))
 (global $_GRAIN_INT64_BOXED_NUM_TAG_1029_1 (mut i32) (i32.const 0))
 (global $_GRAIN_INT32_HEAP_TAG_1024_1 (mut i32) (i32.const 0))
 (global $_GRAIN_LAMBDA_HEAP_TAG_1021_1 (mut i32) (i32.const 0))
 (global $_GRAIN_INT8_TAG_MASK_1012_1 (mut i32) (i32.const 0))
 (global $_GRAIN_INT8_SHORTVAL_TAG_1007_1 (mut i32) (i32.const 0))
 (global $_GRAIN_INT16_SHORTVAL_TAG_1008_1 (mut i32) (i32.const 0))
 (global $_GRAIN_NUMBER_TAG_TYPE_1000_1 (mut i32) (i32.const 0))
 (global $_GRAIN_RECORD_HEAP_TAG_1018_1 (mut i32) (i32.const 0))
 (global $_GRAIN_RATIONAL_BOXED_NUM_TAG_1030_1 (mut i32) (i32.const 0))
 (global $_GRAIN_TUPLE_HEAP_TAG_1022_1 (mut i32) (i32.const 0))
 (global $_GRAIN_STRING_HEAP_TAG_1016_1 (mut i32) (i32.const 0))
 (global $_GRAIN_SHORTVAL_TAG_TYPE_1001_1 (mut i32) (i32.const 0))
 (global $_GRAIN_UINT64_HEAP_TAG_1027_1 (mut i32) (i32.const 0))
 (global $_GRAIN_UINT32_HEAP_TAG_1026_1 (mut i32) (i32.const 0))
 (global $_GRAIN_UINT8_SHORTVAL_TAG_1009_1 (mut i32) (i32.const 0))
 (global $_GRAIN_UINT16_SHORTVAL_TAG_1010_1 (mut i32) (i32.const 0))
 (global $_GRAIN_NUMBER_TAG_MASK_1004_1 (mut i32) (i32.const 0))
 (global $fd_write_1141_5 (mut i32) (i32.const 0))
 (global $iov_1143_5 (mut i32) (i32.const 0))
 (global $_HEAP_START_1163_6 (mut i32) (i32.const 0))
 (global $heapSize_1160_6 (mut i32) (i32.const 0))
 (global $smallBlockFreePtr_1157_6 (mut i32) (i32.const 0))
 (global $largeBlockFreePtr_1158_6 (mut i32) (i32.const 0))
 (global $basePrinter_1001_8 (mut i32) (i32.const 0))
 (global $runtimeErrorPrinter_1026_8 (mut i32) (i32.const 0))
 (global $toString_1007_8 (mut i32) (i32.const 0))
 (global $printers_1002_8 (mut i32) (i32.const 0))
 (global $bigIntToString_1788_12 (mut i32) (i32.const 0))
 (global $_ANY_DIGITS_2242_13 (mut i32) (i32.const 0))
 (global $_DIGITS_2236_13 (mut i32) (i32.const 0))
 (global $_FRC_POWERS_2248_13 (mut i32) (i32.const 0))
 (global $_K_2443_13 (mut i32) (i32.const 0))
 (global $_HEX_DIGITS_2239_13 (mut i32) (i32.const 0))
 (global $_EXP_POWERS_2245_13 (mut i32) (i32.const 0))
 (global $_dtoa_buf_2569_13 (mut i32) (i32.const 0))
 (global $_POWERS10_2227_13 (mut i32) (i32.const 0))
 (global $zero_3786_15 (mut i32) (i32.const 0))
 (global $_LIST_ID_3969_16 (mut i32) (i32.const 0))
 (global $_LIST_ID_4221_18 (mut i32) (i32.const 0))
 (global $_RANGE_FIELDS_4229_18 (mut i32) (i32.const 0))
 (global $_RANGE_ID_4224_18 (mut i32) (i32.const 0))
 (global $_OPTION_ID_4222_18 (mut i32) (i32.const 0))
 (global $_RESULT_ID_4223_18 (mut i32) (i32.const 0))
 (global $getBuiltinVariantName_4273_18 (mut i32) (i32.const 0))
 (global $fd_write_1120_18 (mut i32) (i32.const 0))
 (memory $0 64)
 (data $0 (i32.const 1032) "\01\00\00\00\00\00\00\00\10\00\00\00\01\00\00\00\00\00\00\00\18\00\00\00\84\01\00\00 \00\00\00\00\00\00\00\fb\03\00\00\0e\00\00\00DivisionByZero\00\00 \00\00\00\00\00\00\00\fc\03\00\00\0c\00\00\00ModuloByZero\00\00\00\00\18\00\00\00\00\00\00\00\fd\03\00\00\08\00\00\00Overflow \00\00\00\00\00\00\00\fe\03\00\00\10\00\00\00NumberNotIntlike(\00\00\00\00\00\00\00\ff\03\00\00\11\00\00\00NumberNotRational\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\04\00\00\0c\00\00\00MatchFailure\00\00\00\00 \00\00\00\00\00\00\00\01\04\00\00\0f\00\00\00InvalidArgument\00 \00\00\00\00\00\00\00\1c\n\00\00\10\00\00\00UnknownNumberTag(\00\00\00\00\00\00\00\1d\n\00\00\12\00\00\00InvariantViolation\00\00\00\00\00\00 \00\00\00\00\00\00\00\'\10\00\00\10\00\00\00MalformedUnicode\18\00\00\00\00\00\00\00\94\12\00\00\07\00\00\00Failure\00 \00\00\00\00\00\00\00\95\12\00\00\0f\00\00\00InvalidArgument")
 (table $tbl 3 3 funcref)
 (elem $elem_8 (i32.const 0) $runtimeErrorPrinter_1026_8)
 (elem $elem_19 (i32.const 1) $lam_lambda_4826_19 $lam_lambda_4844_19)
 (export "memory" (memory $0))
 (export "_start" (func $_start.19540))
 (export "collatz" (func $collatz))
 (func $fd_write_1141_5 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (drop
   (call $wimport_wasi_snapshot_preview1_fd_write_1159
    (local.get $1)
    (local.get $2)
    (local.get $3)
    (local.get $4)
   )
  )
 )
 (func $panic_1144_5 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (i32.store
   (global.get $iov_1143_5)
   (i32.add
    (local.get $1)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (global.get $iov_1143_5)
   (i32.load offset=4
    (local.get $1)
   )
  )
  (i32.store8 offset=36
   (local.tee $0
    (global.get $iov_1143_5)
   )
   (i32.const 10)
  )
  (i32.store offset=8
   (global.get $iov_1143_5)
   (i32.add
    (local.get $0)
    (i32.const 36)
   )
  )
  (i32.store offset=12
   (global.get $iov_1143_5)
   (i32.const 1)
  )
  (call $fd_write_1141_5
   (global.get $fd_write_1141_5)
   (i32.const 2)
   (global.get $iov_1143_5)
   (i32.const 2)
   (i32.add
    (global.get $iov_1143_5)
    (i32.const 32)
   )
  )
  (unreachable)
 )
 (func $headerGetPrevious_1169_6 (; has Stack IR ;) (param $0 i32) (result i32)
  (tuple.extract 0
   (tuple.make
    (i32.load
     (local.get $0)
    )
    (i32.const 1879048190)
   )
  )
 )
 (func $headerSetPrevious_1171_6 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (i32.store
   (local.get $0)
   (local.get $1)
  )
  (i32.const 1879048190)
 )
 (func $headerGetSize_1174_6 (; has Stack IR ;) (param $0 i32) (result i32)
  (tuple.extract 0
   (tuple.make
    (i32.load offset=4
     (local.get $0)
    )
    (i32.const 1879048190)
   )
  )
 )
 (func $headerSetSize_1176_6 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (i32.store offset=4
   (local.get $0)
   (local.get $1)
  )
  (i32.const 1879048190)
 )
 (func $removeFromFreeList_1196_6 (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $1
   (call $headerGetPrevious_1169_6
    (i32.sub
     (i32.add
      (i32.shl
       (local.tee $2
        (call $headerGetSize_1174_6
         (local.get $0)
        )
       )
       (i32.const 6)
      )
      (local.get $0)
     )
     (i32.const 8)
    )
   )
  )
  (if
   (i32.shr_u
    (select
     (i32.const -2)
     (i32.const 2147483646)
     (i32.eq
      (local.tee $0
       (call $headerGetPrevious_1169_6
        (local.get $0)
       )
      )
      (i32.const 1)
     )
    )
    (i32.const 31)
   )
   (if
    (i32.shr_u
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (i32.eq
       (local.get $2)
       (i32.const 1)
      )
     )
     (i32.const 31)
    )
    (global.set $smallBlockFreePtr_1157_6
     (tuple.extract 0
      (tuple.make
       (local.get $1)
       (global.get $smallBlockFreePtr_1157_6)
      )
     )
    )
    (global.set $largeBlockFreePtr_1158_6
     (tuple.extract 0
      (tuple.make
       (local.get $1)
       (global.get $largeBlockFreePtr_1158_6)
      )
     )
    )
   )
   (drop
    (call $headerSetPrevious_1171_6
     (i32.sub
      (i32.add
       (i32.shl
        (call $headerGetSize_1174_6
         (local.get $0)
        )
        (i32.const 6)
       )
       (local.get $0)
      )
      (i32.const 8)
     )
     (local.get $1)
    )
   )
  )
  (return_call $headerSetPrevious_1171_6
   (local.get $1)
   (local.get $0)
  )
 )
 (func $free_1204_6 (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $0
   (call $headerGetSize_1174_6
    (local.tee $1
     (i32.sub
      (local.get $0)
      (i32.const 8)
     )
    )
   )
  )
  (drop
   (if (result i32)
    (i32.shr_u
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (call $headerGetPrevious_1169_6
       (local.tee $2
        (i32.add
         (i32.shl
          (local.get $0)
          (i32.const 6)
         )
         (local.get $1)
        )
       )
      )
     )
     (i32.const 31)
    )
    (block (result i32)
     (drop
      (call $removeFromFreeList_1196_6
       (local.get $2)
      )
     )
     (drop
      (call $headerSetSize_1176_6
       (local.get $1)
       (local.tee $0
        (i32.add
         (call $headerGetSize_1174_6
          (local.get $2)
         )
         (local.get $0)
        )
       )
      )
     )
     (call $headerSetSize_1176_6
      (i32.sub
       (i32.add
        (i32.shl
         (local.get $0)
         (i32.const 6)
        )
        (local.get $1)
       )
       (i32.const 8)
      )
      (local.get $0)
     )
    )
    (i32.const 1879048190)
   )
  )
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (call $headerGetPrevious_1169_6
        (local.tee $3
         (i32.sub
          (local.get $1)
          (i32.const 8)
         )
        )
       )
      )
      (i32.const 31)
     )
     (block (result i32)
      (local.set $1
       (i32.sub
        (local.get $1)
        (i32.shl
         (local.tee $2
          (call $headerGetSize_1174_6
           (local.get $3)
          )
         )
         (i32.const 6)
        )
       )
      )
      (drop
       (if (result i32)
        (i32.shr_u
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i32.eq
           (local.get $2)
           (i32.const 1)
          )
         )
         (i32.const 31)
        )
        (call $removeFromFreeList_1196_6
         (local.get $1)
        )
        (i32.const 1879048190)
       )
      )
      (drop
       (call $headerSetSize_1176_6
        (local.get $1)
        (local.tee $0
         (i32.add
          (local.get $0)
          (local.get $2)
         )
        )
       )
      )
      (drop
       (call $headerSetSize_1176_6
        (local.tee $4
         (i32.sub
          (i32.add
           (i32.shl
            (local.get $0)
            (i32.const 6)
           )
           (local.get $1)
          )
          (i32.const 8)
         )
        )
        (local.get $0)
       )
      )
      (drop
       (call $headerSetPrevious_1171_6
        (local.get $4)
        (call $headerGetPrevious_1169_6
         (local.get $3)
        )
       )
      )
      (if
       (i32.shr_u
        (select
         (i32.const -2)
         (i32.const 2147483646)
         (i32.eq
          (local.get $2)
          (i32.const 1)
         )
        )
        (i32.const 31)
       )
       (block
        (drop
         (if (result i32)
          (i32.shr_u
           (select
            (i32.const -2)
            (i32.const 2147483646)
            (i32.ne
             (global.get $largeBlockFreePtr_1158_6)
             (i32.const 1)
            )
           )
           (i32.const 31)
          )
          (call $headerSetPrevious_1171_6
           (global.get $largeBlockFreePtr_1158_6)
           (local.get $1)
          )
          (i32.const 1879048190)
         )
        )
        (drop
         (call $headerSetPrevious_1171_6
          (i32.sub
           (i32.add
            (i32.shl
             (local.get $0)
             (i32.const 6)
            )
            (local.get $1)
           )
           (i32.const 8)
          )
          (global.get $largeBlockFreePtr_1158_6)
         )
        )
        (drop
         (call $headerSetPrevious_1171_6
          (local.get $1)
          (i32.const 1)
         )
        )
        (global.set $largeBlockFreePtr_1158_6
         (tuple.extract 0
          (tuple.make
           (local.get $1)
           (global.get $largeBlockFreePtr_1158_6)
          )
         )
        )
       )
      )
      (i32.const 1879048190)
     )
     (if (result i32)
      (i32.shr_u
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (i32.eq
         (local.get $0)
         (i32.const 1)
        )
       )
       (i32.const 31)
      )
      (block (result i32)
       (drop
        (if (result i32)
         (i32.shr_u
          (select
           (i32.const -2)
           (i32.const 2147483646)
           (i32.ne
            (global.get $smallBlockFreePtr_1157_6)
            (i32.const 1)
           )
          )
          (i32.const 31)
         )
         (call $headerSetPrevious_1171_6
          (global.get $smallBlockFreePtr_1157_6)
          (local.get $1)
         )
         (i32.const 1879048190)
        )
       )
       (drop
        (call $headerSetPrevious_1171_6
         (i32.add
          (local.get $1)
          (i32.const 56)
         )
         (global.get $smallBlockFreePtr_1157_6)
        )
       )
       (drop
        (call $headerSetPrevious_1171_6
         (local.get $1)
         (i32.const 1)
        )
       )
       (global.set $smallBlockFreePtr_1157_6
        (tuple.extract 0
         (tuple.make
          (local.get $1)
          (global.get $smallBlockFreePtr_1157_6)
         )
        )
       )
       (i32.const 1879048190)
      )
      (block (result i32)
       (drop
        (if (result i32)
         (i32.shr_u
          (select
           (i32.const -2)
           (i32.const 2147483646)
           (i32.ne
            (global.get $largeBlockFreePtr_1158_6)
            (i32.const 1)
           )
          )
          (i32.const 31)
         )
         (call $headerSetPrevious_1171_6
          (global.get $largeBlockFreePtr_1158_6)
          (local.get $1)
         )
         (i32.const 1879048190)
        )
       )
       (drop
        (call $headerSetPrevious_1171_6
         (i32.sub
          (i32.add
           (i32.shl
            (local.get $0)
            (i32.const 6)
           )
           (local.get $1)
          )
          (i32.const 8)
         )
         (global.get $largeBlockFreePtr_1158_6)
        )
       )
       (drop
        (call $headerSetPrevious_1171_6
         (local.get $1)
         (i32.const 1)
        )
       )
       (global.set $largeBlockFreePtr_1158_6
        (tuple.extract 0
         (tuple.make
          (local.get $1)
          (global.get $largeBlockFreePtr_1158_6)
         )
        )
       )
       (i32.const 1879048190)
      )
     )
    )
    (i32.const 1879048190)
   )
  )
 )
 (func $getRefCount_1263_7 (; has Stack IR ;) (param $0 i32) (result i32)
  (tuple.extract 0
   (tuple.make
    (i32.load
     (i32.sub
      (local.get $0)
      (i32.const 8)
     )
    )
    (i32.const 1879048190)
   )
  )
 )
 (func $setRefCount_1265_7 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (i32.store
   (i32.sub
    (local.get $0)
    (i32.const 8)
   )
   (local.get $1)
  )
  (i32.const 1879048190)
 )
 (func $malloc_1268_7 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (i32.store
   (local.tee $0
    (block $__inlined_func$malloc_1231_6$114 (result i32)
     (if
      (i32.shr_u
       (select
        (select
         (i32.const -2)
         (i32.const 2147483646)
         (i32.ne
          (global.get $smallBlockFreePtr_1157_6)
          (i32.const 1)
         )
        )
        (local.tee $0
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i32.eq
           (local.tee $1
            (tuple.extract 0
             (tuple.make
              (i32.shr_u
               (i32.add
                (local.get $1)
                (i32.const 87)
               )
               (i32.const 6)
              )
              (i32.const 1879048190)
             )
            )
           )
           (i32.const 1)
          )
         )
        )
        (i32.shr_u
         (local.get $0)
         (i32.const 31)
        )
       )
       (i32.const 31)
      )
      (block
       (drop
        (call $headerSetPrevious_1171_6
         (local.tee $0
          (global.get $smallBlockFreePtr_1157_6)
         )
         (i32.const 0)
        )
       )
       (local.set $1
        (call $headerGetPrevious_1169_6
         (local.tee $2
          (i32.add
           (local.get $0)
           (i32.const 56)
          )
         )
        )
       )
       (drop
        (call $headerSetPrevious_1171_6
         (local.get $2)
         (i32.const 0)
        )
       )
       (drop
        (call $headerSetPrevious_1171_6
         (local.get $1)
         (i32.const 1)
        )
       )
       (global.set $smallBlockFreePtr_1157_6
        (tuple.extract 0
         (tuple.make
          (local.get $1)
          (global.get $smallBlockFreePtr_1157_6)
         )
        )
       )
       (br $__inlined_func$malloc_1231_6$114
        (i32.add
         (local.get $0)
         (i32.const 8)
        )
       )
      )
     )
     (local.set $0
      (global.get $largeBlockFreePtr_1158_6)
     )
     (loop $MFor_loop.546
      (block $folding-inner0
       (drop
        (if (result i32)
         (i32.shr_u
          (select
           (i32.const -2)
           (i32.const 2147483646)
           (i32.eq
            (local.get $0)
            (i32.const 1)
           )
          )
          (i32.const 31)
         )
         (block (result i32)
          (local.set $0
           (block $__inlined_func$morecore_1218_6$95 (result i32)
            (local.set $2
             (global.get $heapSize_1160_6)
            )
            (local.set $0
             (i32.shl
              (i32.add
               (local.get $1)
               (i32.const 1)
              )
              (i32.const 6)
             )
            )
            (tuple.extract 0
             (tuple.make
              (if (result i32)
               (i32.shr_u
                (select
                 (i32.const -2)
                 (i32.const 2147483646)
                 (i32.eq
                  (local.tee $0
                   (tuple.extract 0
                    (tuple.make
                     (if (result i32)
                      (i32.shr_u
                       (select
                        (i32.const 2147483646)
                        (i32.const -2)
                        (global.get $heapSize_1160_6)
                       )
                       (i32.const 31)
                      )
                      (block (result i32)
                       (global.set $heapSize_1160_6
                        (tuple.extract 0
                         (tuple.make
                          (i32.sub
                           (i32.shl
                            (memory.size)
                            (i32.const 16)
                           )
                           (global.get $_HEAP_START_1163_6)
                          )
                          (global.get $heapSize_1160_6)
                         )
                        )
                       )
                       (if (result i32)
                        (i32.shr_u
                         (select
                          (i32.const -2)
                          (i32.const 2147483646)
                          (i32.gt_u
                           (local.get $0)
                           (global.get $heapSize_1160_6)
                          )
                         )
                         (i32.const 31)
                        )
                        (if (result i32)
                         (i32.shr_u
                          (select
                           (i32.const -2)
                           (i32.const 2147483646)
                           (i32.eq
                            (memory.grow
                             (local.tee $0
                              (i32.shr_u
                               (i32.add
                                (i32.sub
                                 (local.get $0)
                                 (global.get $heapSize_1160_6)
                                )
                                (i32.const 65535)
                               )
                               (i32.const 16)
                              )
                             )
                            )
                            (i32.const -1)
                           )
                          )
                          (i32.const 31)
                         )
                         (i32.const -1)
                         (block (result i32)
                          (global.set $heapSize_1160_6
                           (tuple.extract 0
                            (tuple.make
                             (i32.add
                              (global.get $heapSize_1160_6)
                              (i32.shl
                               (local.get $0)
                               (i32.const 16)
                              )
                             )
                             (global.get $heapSize_1160_6)
                            )
                           )
                          )
                          (global.get $_HEAP_START_1163_6)
                         )
                        )
                        (global.get $_HEAP_START_1163_6)
                       )
                      )
                      (block (result i32)
                       (local.set $3
                        (i32.shl
                         (memory.size)
                         (i32.const 16)
                        )
                       )
                       (if (result i32)
                        (i32.shr_u
                         (select
                          (i32.const -2)
                          (i32.const 2147483646)
                          (i32.eq
                           (memory.grow
                            (local.tee $0
                             (i32.add
                              (i32.shr_u
                               (local.get $0)
                               (i32.const 16)
                              )
                              (i32.const 1)
                             )
                            )
                           )
                           (i32.const -1)
                          )
                         )
                         (i32.const 31)
                        )
                        (i32.const -1)
                        (block (result i32)
                         (global.set $heapSize_1160_6
                          (tuple.extract 0
                           (tuple.make
                            (i32.add
                             (global.get $heapSize_1160_6)
                             (i32.shl
                              (local.get $0)
                              (i32.const 16)
                             )
                            )
                            (global.get $heapSize_1160_6)
                           )
                          )
                         )
                         (local.get $3)
                        )
                       )
                      )
                     )
                     (i32.const 1879048190)
                    )
                   )
                  )
                  (i32.const -1)
                 )
                )
                (i32.const 31)
               )
               (block
                (i32.store
                 (global.get $runtimeHeapNextPtr_0)
                 (i32.const 2)
                )
                (i32.store
                 (local.tee $0
                  (tuple.extract 0
                   (tuple.make
                    (i32.add
                     (global.get $runtimeHeapNextPtr_0)
                     (i32.const 8)
                    )
                    (block (result i32)
                     (global.set $runtimeHeapNextPtr_0
                      (i32.sub
                       (global.get $runtimeHeapNextPtr_0)
                       (i32.const -64)
                      )
                     )
                     (i32.const 0)
                    )
                   )
                  )
                 )
                 (i32.const 1)
                )
                (i32.store offset=4
                 (local.get $0)
                 (i32.const 41)
                )
                (i64.store offset=8
                 (local.get $0)
                 (i64.const 7882791824596956495)
                )
                (i64.store offset=16
                 (local.get $0)
                 (i64.const 8674299158107615855)
                )
                (i64.store offset=24
                 (local.get $0)
                 (i64.const 7882826708824714601)
                )
                (i64.store offset=32
                 (local.get $0)
                 (i64.const 7312272888176407151)
                )
                (i64.store offset=40
                 (local.get $0)
                 (i64.const 7306075981636724000)
                )
                (i64.store offset=48
                 (local.get $0)
                 (i64.const 100)
                )
                (br $__inlined_func$morecore_1218_6$95
                 (call $panic_1144_5
                  (i32.const 0)
                  (local.get $0)
                 )
                )
               )
               (block (result i32)
                (local.set $2
                 (i32.sub
                  (i32.shr_u
                   (i32.sub
                    (global.get $heapSize_1160_6)
                    (local.get $2)
                   )
                   (i32.const 6)
                  )
                  (i32.const 1)
                 )
                )
                (drop
                 (call $headerSetSize_1176_6
                  (local.get $0)
                  (i32.const 0)
                 )
                )
                (drop
                 (call $headerSetPrevious_1171_6
                  (local.get $0)
                  (i32.const 0)
                 )
                )
                (drop
                 (call $headerSetSize_1176_6
                  (local.tee $0
                   (i32.add
                    (local.get $0)
                    (i32.const 8)
                   )
                  )
                  (local.get $2)
                 )
                )
                (drop
                 (call $headerSetPrevious_1171_6
                  (local.get $0)
                  (i32.const 0)
                 )
                )
                (drop
                 (call $headerSetSize_1176_6
                  (local.tee $3
                   (i32.sub
                    (i32.add
                     (i32.shl
                      (local.get $2)
                      (i32.const 6)
                     )
                     (local.get $0)
                    )
                    (i32.const 8)
                   )
                  )
                  (local.get $2)
                 )
                )
                (drop
                 (call $headerSetPrevious_1171_6
                  (local.get $3)
                  (i32.const 0)
                 )
                )
                (drop
                 (call $headerSetSize_1176_6
                  (local.tee $2
                   (i32.add
                    (local.get $3)
                    (i32.const 8)
                   )
                  )
                  (i32.const 0)
                 )
                )
                (drop
                 (call $headerSetPrevious_1171_6
                  (local.get $2)
                  (i32.const 0)
                 )
                )
                (drop
                 (call $free_1204_6
                  (i32.add
                   (local.get $0)
                   (i32.const 8)
                  )
                 )
                )
                (global.get $largeBlockFreePtr_1158_6)
               )
              )
              (i32.const 1879048190)
             )
            )
           )
          )
          (i32.const 0)
         )
         (i32.const 1879048190)
        )
       )
       (local.set $3
        (i32.sub
         (i32.add
          (i32.shl
           (local.tee $2
            (call $headerGetSize_1174_6
             (local.get $0)
            )
           )
           (i32.const 6)
          )
          (local.get $0)
         )
         (i32.const 8)
        )
       )
       (if
        (i32.shr_u
         (if (result i32)
          (i32.shr_u
           (local.tee $4
            (select
             (i32.const -2)
             (i32.const 2147483646)
             (i32.eq
              (local.get $1)
              (local.get $2)
             )
            )
           )
           (i32.const 31)
          )
          (local.get $4)
          (select
           (i32.const -2)
           (i32.const 2147483646)
           (i32.eq
            (i32.add
             (local.get $1)
             (i32.const 1)
            )
            (local.get $2)
           )
          )
         )
         (i32.const 31)
        )
        (block
         (drop
          (call $removeFromFreeList_1196_6
           (local.get $0)
          )
         )
         (drop
          (call $headerSetPrevious_1171_6
           (local.get $0)
           (i32.const 0)
          )
         )
         (br $folding-inner0)
        )
       )
       (if
        (i32.shr_u
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i32.lt_u
           (local.get $1)
           (local.get $2)
          )
         )
         (i32.const 31)
        )
        (block
         (drop
          (call $headerSetSize_1176_6
           (local.get $0)
           (local.tee $2
            (i32.sub
             (local.get $2)
             (local.get $1)
            )
           )
          )
         )
         (drop
          (call $headerSetSize_1176_6
           (local.tee $0
            (i32.sub
             (i32.add
              (i32.shl
               (local.get $2)
               (i32.const 6)
              )
              (local.get $0)
             )
             (i32.const 8)
            )
           )
           (local.get $2)
          )
         )
         (drop
          (call $headerSetPrevious_1171_6
           (local.get $0)
           (call $headerGetPrevious_1169_6
            (local.get $3)
           )
          )
         )
         (drop
          (call $headerSetSize_1176_6
           (local.tee $0
            (i32.add
             (local.get $0)
             (i32.const 8)
            )
           )
           (local.get $1)
          )
         )
         (drop
          (call $headerSetPrevious_1171_6
           (local.get $0)
           (i32.const 0)
          )
         )
         (drop
          (call $headerSetSize_1176_6
           (local.get $3)
           (local.get $1)
          )
         )
        )
        (block
         (local.set $0
          (call $headerGetPrevious_1169_6
           (local.get $3)
          )
         )
         (br $MFor_loop.546)
        )
       )
      )
     )
     (drop
      (call $headerSetPrevious_1171_6
       (local.get $3)
       (i32.const 0)
      )
     )
     (i32.add
      (local.get $0)
      (i32.const 8)
     )
    )
   )
   (i32.const 1)
  )
  (i32.store offset=4
   (local.get $0)
   (i32.const 0)
  )
  (tuple.extract 0
   (tuple.make
    (i32.add
     (local.get $0)
     (i32.const 8)
    )
    (i32.const 1879048190)
   )
  )
 )
 (func $free_1275_7 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (return_call $free_1204_6
   (i32.sub
    (local.get $1)
    (i32.const 8)
   )
  )
 )
 (func $incRef_1277_7 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (drop
   (if (result i32)
    (i32.shr_u
     (select
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (local.get $1)
      )
      (local.tee $0
       (select
        (i32.const 2147483646)
        (i32.const -2)
        (i32.and
         (local.get $1)
         (global.get $_GRAIN_GENERIC_TAG_MASK_1005_1)
        )
       )
      )
      (i32.shr_u
       (local.get $0)
       (i32.const 31)
      )
     )
     (i32.const 31)
    )
    (block (result i32)
     (local.set $0
      (i32.add
       (call $getRefCount_1263_7
        (local.get $1)
       )
       (i32.const 1)
      )
     )
     (call $setRefCount_1265_7
      (local.get $1)
      (local.get $0)
     )
    )
    (i32.const 1879048190)
   )
  )
  (tuple.extract 0
   (tuple.make
    (local.get $1)
    (i32.const 1879048190)
   )
  )
 )
 (func $decRefChildrenHelp_1312_7 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (local.tee $1
        (i32.load
         (i32.add
          (local.get $0)
          (local.get $1)
         )
        )
       )
      )
      (i32.const 31)
     )
     (block
      (local.set $3
       (i32.shl
        (i32.sub
         (local.get $1)
         (i32.const 1)
        )
        (i32.const 2)
       )
      )
      (local.set $1
       (i32.const 0)
      )
      (drop
       (loop $MFor_loop.760 (result i32)
        (if (result i32)
         (i32.shr_u
          (select
           (i32.const -2)
           (i32.const 2147483646)
           (i32.lt_u
            (local.get $1)
            (local.get $3)
           )
          )
          (i32.const 31)
         )
         (block
          (drop
           (call $decRef_1311_7
            (i32.load
             (i32.add
              (i32.add
               (local.get $0)
               (local.get $1)
              )
              (local.get $2)
             )
            )
           )
          )
          (local.set $1
           (i32.add
            (local.get $1)
            (i32.const 4)
           )
          )
          (br $MFor_loop.760)
         )
         (i32.const 1879048190)
        )
       )
      )
      (return_call $decRef_1311_7
       (i32.load
        (i32.add
         (i32.add
          (local.get $0)
          (local.get $3)
         )
         (local.get $2)
        )
       )
      )
     )
     (i32.const 1879048190)
    )
    (i32.const 1879048190)
   )
  )
 )
 (func $decRef_1311_7 (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (select
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (local.get $0)
       )
       (local.tee $1
        (select
         (i32.const 2147483646)
         (i32.const -2)
         (i32.and
          (local.get $0)
          (global.get $_GRAIN_GENERIC_TAG_MASK_1005_1)
         )
        )
       )
       (i32.shr_u
        (local.get $1)
        (i32.const 31)
       )
      )
      (i32.const 31)
     )
     (if (result i32)
      (i32.shr_u
       (select
        (i32.const 2147483646)
        (i32.const -2)
        (local.tee $1
         (call $getRefCount_1263_7
          (local.get $0)
         )
        )
       )
       (i32.const 31)
      )
      (block
       (i32.store
        (global.get $runtimeHeapNextPtr_0)
        (i32.const 2)
       )
       (i32.store
        (local.tee $0
         (tuple.extract 0
          (tuple.make
           (i32.add
            (global.get $runtimeHeapNextPtr_0)
            (i32.const 8)
           )
           (block (result i32)
            (global.set $runtimeHeapNextPtr_0
             (i32.add
              (global.get $runtimeHeapNextPtr_0)
              (i32.const 56)
             )
            )
            (i32.const 0)
           )
          )
         )
        )
        (i32.const 1)
       )
       (i32.store offset=4
        (local.get $0)
        (i32.const 36)
       )
       (i64.store offset=8
        (local.get $0)
        (i64.const 8234100079076795716)
       )
       (i64.store offset=16
        (local.get $0)
        (i64.const 7378393862889434994)
       )
       (i64.store offset=24
        (local.get $0)
        (i64.const 7142820486737916517)
       )
       (i64.store offset=32
        (local.get $0)
        (i64.const 2334675642021213551)
       )
       (i64.store offset=40
        (local.get $0)
        (i64.const 1869768058)
       )
       (return_call $panic_1144_5
        (i32.const 0)
        (local.get $0)
       )
      )
      (block (result i32)
       (drop
        (call $setRefCount_1265_7
         (local.get $0)
         (local.tee $1
          (i32.sub
           (local.get $1)
           (i32.const 1)
          )
         )
        )
       )
       (if (result i32)
        (i32.shr_u
         (select
          (i32.const 2147483646)
          (i32.const -2)
          (local.get $1)
         )
         (i32.const 31)
        )
        (block
         (drop
          (call $free_1275_7
           (i32.const 0)
           (local.get $0)
          )
         )
         (return
          (tuple.extract 0
           (tuple.make
            (block $switch.728_outer (result i32)
             (drop
              (block $switch.728_branch_1 (result i32)
               (drop
                (block $switch.728_branch_2 (result i32)
                 (drop
                  (block $switch.728_branch_3 (result i32)
                   (drop
                    (block $switch.728_branch_4 (result i32)
                     (drop
                      (block $switch.728_branch_5 (result i32)
                       (drop
                        (block $switch.728_default (result i32)
                         (br_table $switch.728_branch_1 $switch.728_branch_2 $switch.728_branch_3 $switch.728_branch_4 $switch.728_branch_5 $switch.728_default
                          (i32.const 0)
                          (i32.shr_s
                           (if (result i32)
                            (i32.shr_u
                             (select
                              (i32.const -2)
                              (i32.const 2147483646)
                              (i32.eq
                               (local.tee $1
                                (i32.load
                                 (local.get $0)
                                )
                               )
                               (global.get $_GRAIN_BOXED_NUM_HEAP_TAG_1020_1)
                              )
                             )
                             (i32.const 31)
                            )
                            (i32.const 1)
                            (if (result i32)
                             (i32.shr_u
                              (select
                               (i32.const -2)
                               (i32.const 2147483646)
                               (i32.eq
                                (local.get $1)
                                (global.get $_GRAIN_ADT_HEAP_TAG_1017_1)
                               )
                              )
                              (i32.const 31)
                             )
                             (i32.const 3)
                             (if (result i32)
                              (i32.shr_u
                               (select
                                (local.tee $2
                                 (select
                                  (i32.const -2)
                                  (i32.const 2147483646)
                                  (i32.eq
                                   (local.get $1)
                                   (global.get $_GRAIN_RECORD_HEAP_TAG_1018_1)
                                  )
                                 )
                                )
                                (select
                                 (i32.const -2)
                                 (i32.const 2147483646)
                                 (i32.eq
                                  (local.get $1)
                                  (global.get $_GRAIN_LAMBDA_HEAP_TAG_1021_1)
                                 )
                                )
                                (i32.shr_u
                                 (local.get $2)
                                 (i32.const 31)
                                )
                               )
                               (i32.const 31)
                              )
                              (i32.const 5)
                              (select
                               (i32.const 7)
                               (i32.const 9)
                               (i32.shr_u
                                (select
                                 (local.tee $2
                                  (select
                                   (i32.const -2)
                                   (i32.const 2147483646)
                                   (i32.eq
                                    (local.get $1)
                                    (global.get $_GRAIN_ARRAY_HEAP_TAG_1019_1)
                                   )
                                  )
                                 )
                                 (select
                                  (i32.const -2)
                                  (i32.const 2147483646)
                                  (i32.eq
                                   (local.get $1)
                                   (global.get $_GRAIN_TUPLE_HEAP_TAG_1022_1)
                                  )
                                 )
                                 (i32.shr_u
                                  (local.get $2)
                                  (i32.const 31)
                                 )
                                )
                                (i32.const 31)
                               )
                              )
                             )
                            )
                           )
                           (i32.const 1)
                          )
                         )
                        )
                       )
                       (unreachable)
                      )
                     )
                     (br $switch.728_outer
                      (i32.const 1879048190)
                     )
                    )
                   )
                   (return_call $decRefChildrenHelp_1312_7
                    (local.get $0)
                    (i32.const 4)
                    (i32.const 8)
                   )
                  )
                 )
                 (return_call $decRefChildrenHelp_1312_7
                  (local.get $0)
                  (i32.const 12)
                  (i32.const 16)
                 )
                )
               )
               (return_call $decRefChildrenHelp_1312_7
                (local.get $0)
                (i32.const 16)
                (i32.const 20)
               )
              )
             )
             (if (result i32)
              (i32.shr_u
               (select
                (i32.const -2)
                (i32.const 2147483646)
                (i32.eq
                 (local.get $0)
                 (global.get $_GRAIN_RATIONAL_BOXED_NUM_TAG_1030_1)
                )
               )
               (i32.const 31)
              )
              (block
               (drop
                (call $decRef_1311_7
                 (i32.load offset=8
                  (local.get $0)
                 )
                )
               )
               (return_call $decRef_1311_7
                (i32.load offset=12
                 (local.get $0)
                )
               )
              )
              (i32.const 1879048190)
             )
            )
            (i32.const 1879048190)
           )
          )
         )
        )
        (i32.const 1879048190)
       )
      )
     )
     (i32.const 1879048190)
    )
    (i32.const 1879048190)
   )
  )
 )
 (func $decRef_1330_7 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (drop
   (call $decRef_1311_7
    (local.get $1)
   )
  )
  (tuple.extract 0
   (tuple.make
    (local.get $1)
    (i32.const 1879048190)
   )
  )
 )
 (func $registerPrinter_1005_8 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (i32.store
   (local.tee $2
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 28)
    )
   )
   (i32.const 2)
  )
  (i32.store offset=4
   (local.get $2)
   (i32.const 1638603609)
  )
  (i32.store offset=8
   (local.get $2)
   (i32.const 11)
  )
  (i32.store offset=12
   (local.get $2)
   (i32.const 1)
  )
  (i32.store offset=16
   (local.get $2)
   (i32.const 2)
  )
  (i32.store offset=20
   (local.get $2)
   (local.get $1)
  )
  (i32.store offset=24
   (local.get $2)
   (call $incRef_1277_7
    (i32.const 0)
    (global.get $printers_1002_8)
   )
  )
  (global.set $printers_1002_8
   (tuple.extract 0
    (tuple.make
     (call $incRef_1277_7
      (i32.const 0)
      (local.get $2)
     )
     (call $decRef_1330_7
      (i32.const 0)
      (global.get $printers_1002_8)
     )
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (i32.const 1879048190)
 )
 (func $panicWithException_1016_8 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $4
   (call $incRef_1277_7
    (i32.const 0)
    (i32.load offset=16
     (local.tee $3
      (call $incRef_1277_7
       (i32.const 0)
       (global.get $toString_1007_8)
      )
     )
    )
   )
  )
  (i32.store
   (local.tee $2
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 20)
    )
   )
   (i32.const 6)
  )
  (i32.store offset=4
   (local.get $2)
   (i32.const 3)
  )
  (i32.store offset=8
   (local.get $2)
   (i32.const -1)
  )
  (i32.store offset=12
   (local.get $2)
   (i32.const 1)
  )
  (i32.store offset=16
   (local.get $2)
   (local.get $4)
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $3)
   )
  )
  (local.set $1
   (call $exceptionToString_1009_8
    (local.get $2)
    (local.get $1)
    (call $incRef_1277_7
     (i32.const 0)
     (global.get $printers_1002_8)
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (return_call $panic_1144_5
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
   (local.get $1)
  )
 )
 (func $runtimeErrorPrinter_1026_8 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $2
   (if (result i32)
    (i32.shr_u
     (i32.or
      (i32.shl
       (i32.eq
        (local.tee $2
         (i32.load offset=12
          (local.get $1)
         )
        )
        (i32.const 65)
       )
       (i32.const 31)
      )
      (i32.const 2147483646)
     )
     (i32.const 31)
    )
    (block (result i32)
     (local.set $3
      (tuple.extract 0
       (tuple.make
        (call $incRef_1277_7
         (i32.const 0)
         (call $incRef_1277_7
          (i32.const 0)
          (i32.load offset=20
           (local.get $1)
          )
         )
        )
        (call $decRef_1330_7
         (i32.const 0)
         (i32.const 0)
        )
       )
      )
     )
     (i32.const 17)
    )
    (if (result i32)
     (i32.shr_u
      (i32.or
       (i32.shl
        (i32.eq
         (local.get $2)
         (i32.const 2039)
        )
        (i32.const 31)
       )
       (i32.const 2147483646)
      )
      (i32.const 31)
     )
     (i32.const 5)
     (if (result i32)
      (i32.shr_u
       (i32.or
        (i32.shl
         (i32.eq
          (local.get $2)
          (i32.const 69)
         )
         (i32.const 31)
        )
        (i32.const 2147483646)
       )
       (i32.const 31)
      )
      (i32.const 3)
      (if (result i32)
       (i32.shr_u
        (i32.or
         (i32.shl
          (i32.eq
           (local.get $2)
           (i32.const 67)
          )
          (i32.const 31)
         )
         (i32.const 2147483646)
        )
        (i32.const 31)
       )
       (i32.const 1)
       (if (result i32)
        (i32.shr_u
         (i32.or
          (i32.shl
           (i32.eq
            (local.get $2)
            (i32.const 2051)
           )
           (i32.const 31)
          )
          (i32.const 2147483646)
         )
         (i32.const 31)
        )
        (block (result i32)
         (local.set $4
          (tuple.extract 0
           (tuple.make
            (call $incRef_1277_7
             (i32.const 0)
             (call $incRef_1277_7
              (i32.const 0)
              (i32.load offset=20
               (local.get $1)
              )
             )
            )
            (call $decRef_1330_7
             (i32.const 0)
             (i32.const 0)
            )
           )
          )
         )
         (i32.const 19)
        )
        (select
         (i32.const 15)
         (select
          (i32.const 7)
          (select
           (i32.const 11)
           (select
            (i32.const 13)
            (select
             (i32.const 9)
             (i32.const 21)
             (i32.shr_u
              (i32.or
               (i32.shl
                (i32.eq
                 (local.get $2)
                 (i32.const 2043)
                )
                (i32.const 31)
               )
               (i32.const 2147483646)
              )
              (i32.const 31)
             )
            )
            (i32.shr_u
             (i32.or
              (i32.shl
               (i32.eq
                (local.get $2)
                (i32.const 2047)
               )
               (i32.const 31)
              )
              (i32.const 2147483646)
             )
             (i32.const 31)
            )
           )
           (i32.shr_u
            (i32.or
             (i32.shl
              (i32.eq
               (local.get $2)
               (i32.const 2045)
              )
              (i32.const 31)
             )
             (i32.const 2147483646)
            )
            (i32.const 31)
           )
          )
          (i32.shr_u
           (i32.or
            (i32.shl
             (i32.eq
              (local.get $2)
              (i32.const 2041)
             )
             (i32.const 31)
            )
            (i32.const 2147483646)
           )
           (i32.const 31)
          )
         )
         (i32.shr_u
          (i32.or
           (i32.shl
            (i32.eq
             (local.get $2)
             (i32.const 2049)
            )
            (i32.const 31)
           )
           (i32.const 2147483646)
          )
          (i32.const 31)
         )
        )
       )
      )
     )
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $1)
   )
  )
  (tuple.extract 0
   (tuple.make
    (block $switch.1009_outer (result i32)
     (drop
      (block $switch.1009_branch_1 (result i32)
       (drop
        (block $switch.1009_branch_2 (result i32)
         (drop
          (block $switch.1009_branch_3 (result i32)
           (drop
            (block $switch.1009_branch_4 (result i32)
             (drop
              (block $switch.1009_branch_5 (result i32)
               (drop
                (block $switch.1009_branch_6 (result i32)
                 (drop
                  (block $switch.1009_branch_7 (result i32)
                   (drop
                    (block $switch.1009_branch_8 (result i32)
                     (drop
                      (block $switch.1009_branch_9 (result i32)
                       (drop
                        (block $switch.1009_branch_10 (result i32)
                         (drop
                          (block $switch.1009_branch_11 (result i32)
                           (drop
                            (block $switch.1009_default (result i32)
                             (br_table $switch.1009_branch_1 $switch.1009_branch_2 $switch.1009_branch_3 $switch.1009_branch_4 $switch.1009_branch_5 $switch.1009_branch_6 $switch.1009_branch_7 $switch.1009_branch_8 $switch.1009_branch_9 $switch.1009_branch_10 $switch.1009_branch_11 $switch.1009_default
                              (i32.const 0)
                              (i32.shr_s
                               (local.get $2)
                               (i32.const 1)
                              )
                             )
                            )
                           )
                           (unreachable)
                          )
                         )
                         (i32.store
                          (local.tee $1
                           (call $malloc_1268_7
                            (i32.const 0)
                            (i32.const 20)
                           )
                          )
                          (i32.const 2)
                         )
                         (i32.store offset=4
                          (local.get $1)
                          (i32.const 501102191)
                         )
                         (i32.store offset=8
                          (local.get $1)
                          (i32.const 7)
                         )
                         (i32.store offset=12
                          (local.get $1)
                          (i32.const 3)
                         )
                         (i32.store offset=16
                          (local.get $1)
                          (i32.const 0)
                         )
                         (br $switch.1009_outer
                          (local.get $1)
                         )
                        )
                       )
                       (i32.store
                        (local.tee $1
                         (call $malloc_1268_7
                          (i32.const 0)
                          (i32.const 24)
                         )
                        )
                        (i32.const 2)
                       )
                       (i32.store offset=4
                        (local.get $1)
                        (i32.const 501102191)
                       )
                       (i32.store offset=8
                        (local.get $1)
                        (i32.const 7)
                       )
                       (i32.store offset=12
                        (local.get $1)
                        (i32.const 1)
                       )
                       (i32.store offset=16
                        (local.get $1)
                        (i32.const 1)
                       )
                       (i32.store offset=20
                        (local.get $1)
                        (call $incRef_1277_7
                         (i32.const 0)
                         (local.get $4)
                        )
                       )
                       (br $switch.1009_outer
                        (local.get $1)
                       )
                      )
                     )
                     (i32.store
                      (local.tee $1
                       (call $malloc_1268_7
                        (i32.const 0)
                        (i32.const 24)
                       )
                      )
                      (i32.const 2)
                     )
                     (i32.store offset=4
                      (local.get $1)
                      (i32.const 501102191)
                     )
                     (i32.store offset=8
                      (local.get $1)
                      (i32.const 7)
                     )
                     (i32.store offset=12
                      (local.get $1)
                      (i32.const 1)
                     )
                     (i32.store offset=16
                      (local.get $1)
                      (i32.const 1)
                     )
                     (i32.store offset=20
                      (local.get $1)
                      (call $incRef_1277_7
                       (i32.const 0)
                       (local.get $3)
                      )
                     )
                     (br $switch.1009_outer
                      (local.get $1)
                     )
                    )
                   )
                   (i32.store
                    (local.tee $1
                     (call $malloc_1268_7
                      (i32.const 0)
                      (i32.const 48)
                     )
                    )
                    (i32.const 1)
                   )
                   (i32.store offset=4
                    (local.get $1)
                    (i32.const 33)
                   )
                   (i64.store offset=8
                    (local.get $1)
                    (i64.const 7593427860882481485)
                   )
                   (i64.store offset=16
                    (local.get $1)
                    (i64.const 8020383421575624044)
                   )
                   (i64.store offset=24
                    (local.get $1)
                    (i64.const 7956004993090284832)
                   )
                   (i64.store offset=32
                    (local.get $1)
                    (i64.const 8243122736171327591)
                   )
                   (i64.store offset=40
                    (local.get $1)
                    (i64.const 110)
                   )
                   (i32.store
                    (local.tee $2
                     (call $malloc_1268_7
                      (i32.const 0)
                      (i32.const 24)
                     )
                    )
                    (i32.const 2)
                   )
                   (i32.store offset=4
                    (local.get $2)
                    (i32.const 501102191)
                   )
                   (i32.store offset=8
                    (local.get $2)
                    (i32.const 7)
                   )
                   (i32.store offset=12
                    (local.get $2)
                    (i32.const 1)
                   )
                   (i32.store offset=16
                    (local.get $2)
                    (i32.const 1)
                   )
                   (i32.store offset=20
                    (local.get $2)
                    (local.get $1)
                   )
                   (br $switch.1009_outer
                    (local.get $2)
                   )
                  )
                 )
                 (i32.store
                  (local.tee $1
                   (call $malloc_1268_7
                    (i32.const 0)
                    (i32.const 64)
                   )
                  )
                  (i32.const 1)
                 )
                 (i32.store offset=4
                  (local.get $1)
                  (i32.const 50)
                 )
                 (i64.store offset=8
                  (local.get $1)
                  (i64.const 8020473766162036046)
                 )
                 (i64.store offset=16
                  (local.get $1)
                  (i64.const 7020671367831966324)
                 )
                 (i64.store offset=24
                  (local.get $1)
                  (i64.const 8369779796508424812)
                 )
                 (i64.store offset=32
                  (local.get $1)
                  (i64.const 2334381324840690464)
                 )
                 (i64.store offset=40
                  (local.get $1)
                  (i64.const 8367813887422985582)
                 )
                 (i64.store offset=48
                  (local.get $1)
                  (i64.const 7957695015158947951)
                 )
                 (i64.store offset=56
                  (local.get $1)
                  (i64.const 27745)
                 )
                 (i32.store
                  (local.tee $2
                   (call $malloc_1268_7
                    (i32.const 0)
                    (i32.const 24)
                   )
                  )
                  (i32.const 2)
                 )
                 (i32.store offset=4
                  (local.get $2)
                  (i32.const 501102191)
                 )
                 (i32.store offset=8
                  (local.get $2)
                  (i32.const 7)
                 )
                 (i32.store offset=12
                  (local.get $2)
                  (i32.const 1)
                 )
                 (i32.store offset=16
                  (local.get $2)
                  (i32.const 1)
                 )
                 (i32.store offset=20
                  (local.get $2)
                  (local.get $1)
                 )
                 (br $switch.1009_outer
                  (local.get $2)
                 )
                )
               )
               (i32.store
                (local.tee $1
                 (call $malloc_1268_7
                  (i32.const 0)
                  (i32.const 56)
                 )
                )
                (i32.const 1)
               )
               (i32.store offset=4
                (local.get $1)
                (i32.const 48)
               )
               (i64.store offset=8
                (local.get $1)
                (i64.const 8020473766162036046)
               )
               (i64.store offset=16
                (local.get $1)
                (i64.const 7308050734869530996)
               )
               (i64.store offset=24
                (local.get $1)
                (i64.const 2338537461543804986)
               )
               (i64.store offset=32
                (local.get $1)
                (i64.const 7935454021222231907)
               )
               (i64.store offset=40
                (local.get $1)
                (i64.const 8031079711207746933)
               )
               (i64.store offset=48
                (local.get $1)
                (i64.const 8243108378414311712)
               )
               (i32.store
                (local.tee $2
                 (call $malloc_1268_7
                  (i32.const 0)
                  (i32.const 24)
                 )
                )
                (i32.const 2)
               )
               (i32.store offset=4
                (local.get $2)
                (i32.const 501102191)
               )
               (i32.store offset=8
                (local.get $2)
                (i32.const 7)
               )
               (i32.store offset=12
                (local.get $2)
                (i32.const 1)
               )
               (i32.store offset=16
                (local.get $2)
                (i32.const 1)
               )
               (i32.store offset=20
                (local.get $2)
                (local.get $1)
               )
               (br $switch.1009_outer
                (local.get $2)
               )
              )
             )
             (i32.store
              (local.tee $1
               (call $malloc_1268_7
                (i32.const 0)
                (i32.const 40)
               )
              )
              (i32.const 1)
             )
             (i32.store offset=4
              (local.get $1)
              (i32.const 25)
             )
             (i64.store offset=8
              (local.get $1)
              (i64.const 8606216600190023247)
             )
             (i64.store offset=16
              (local.get $1)
              (i64.const 8243102915230572602)
             )
             (i64.store offset=24
              (local.get $1)
              (i64.const 8028904877209317152)
             )
             (i64.store offset=32
              (local.get $1)
              (i64.const 119)
             )
             (i32.store
              (local.tee $2
               (call $malloc_1268_7
                (i32.const 0)
                (i32.const 24)
               )
              )
              (i32.const 2)
             )
             (i32.store offset=4
              (local.get $2)
              (i32.const 501102191)
             )
             (i32.store offset=8
              (local.get $2)
              (i32.const 7)
             )
             (i32.store offset=12
              (local.get $2)
              (i32.const 1)
             )
             (i32.store offset=16
              (local.get $2)
              (i32.const 1)
             )
             (i32.store offset=20
              (local.get $2)
              (local.get $1)
             )
             (br $switch.1009_outer
              (local.get $2)
             )
            )
           )
           (i32.store
            (local.tee $1
             (call $malloc_1268_7
              (i32.const 0)
              (i32.const 40)
             )
            )
            (i32.const 1)
           )
           (i32.store offset=4
            (local.get $1)
            (i32.const 28)
           )
           (i64.store offset=8
            (local.get $1)
            (i64.const 8737668738668851021)
           )
           (i64.store offset=16
            (local.get $1)
            (i64.const 8020101946766681434)
           )
           (i64.store offset=24
            (local.get $1)
            (i64.const 2340009372843537764)
           )
           (i64.store offset=32
            (local.get $1)
            (i64.const 1869768058)
           )
           (i32.store
            (local.tee $2
             (call $malloc_1268_7
              (i32.const 0)
              (i32.const 24)
             )
            )
            (i32.const 2)
           )
           (i32.store offset=4
            (local.get $2)
            (i32.const 501102191)
           )
           (i32.store offset=8
            (local.get $2)
            (i32.const 7)
           )
           (i32.store offset=12
            (local.get $2)
            (i32.const 1)
           )
           (i32.store offset=16
            (local.get $2)
            (i32.const 1)
           )
           (i32.store offset=20
            (local.get $2)
            (local.get $1)
           )
           (br $switch.1009_outer
            (local.get $2)
           )
          )
         )
         (i32.store
          (local.tee $1
           (call $malloc_1268_7
            (i32.const 0)
            (i32.const 40)
           )
          )
          (i32.const 1)
         )
         (i32.store offset=4
          (local.get $1)
          (i32.const 32)
         )
         (i64.store offset=8
          (local.get $1)
          (i64.const 7957695010998479172)
         )
         (i64.store offset=16
          (local.get $1)
          (i64.const 2322291094980294978)
         )
         (i64.store offset=24
          (local.get $1)
          (i64.const 7957695010998479172)
         )
         (i64.store offset=32
          (local.get $1)
          (i64.const 8030592660760257056)
         )
         (i32.store
          (local.tee $2
           (call $malloc_1268_7
            (i32.const 0)
            (i32.const 24)
           )
          )
          (i32.const 2)
         )
         (i32.store offset=4
          (local.get $2)
          (i32.const 501102191)
         )
         (i32.store offset=8
          (local.get $2)
          (i32.const 7)
         )
         (i32.store offset=12
          (local.get $2)
          (i32.const 1)
         )
         (i32.store offset=16
          (local.get $2)
          (i32.const 1)
         )
         (i32.store offset=20
          (local.get $2)
          (local.get $1)
         )
         (br $switch.1009_outer
          (local.get $2)
         )
        )
       )
       (i32.store
        (local.tee $1
         (call $malloc_1268_7
          (i32.const 0)
          (i32.const 48)
         )
        )
        (i32.const 1)
       )
       (i32.store offset=4
        (local.get $1)
        (i32.const 37)
       )
       (i64.store offset=8
        (local.get $1)
        (i64.const 7957665345591078473)
       )
       (i64.store offset=16
        (local.get $1)
        (i64.const 4211540096303001161)
       )
       (i64.store offset=24
        (local.get $1)
        (i64.const 7935474920298793248)
       )
       (i64.store offset=32
        (local.get $1)
        (i64.const 7955925875174700143)
       )
       (i64.store offset=40
        (local.get $1)
        (i64.const 491327546740)
       )
       (i32.store
        (local.tee $2
         (call $malloc_1268_7
          (i32.const 0)
          (i32.const 24)
         )
        )
        (i32.const 2)
       )
       (i32.store offset=4
        (local.get $2)
        (i32.const 501102191)
       )
       (i32.store offset=8
        (local.get $2)
        (i32.const 7)
       )
       (i32.store offset=12
        (local.get $2)
        (i32.const 1)
       )
       (i32.store offset=16
        (local.get $2)
        (i32.const 1)
       )
       (i32.store offset=20
        (local.get $2)
        (local.get $1)
       )
       (br $switch.1009_outer
        (local.get $2)
       )
      )
     )
     (i32.store
      (local.tee $1
       (call $malloc_1268_7
        (i32.const 0)
        (i32.const 48)
       )
      )
      (i32.const 1)
     )
     (i32.store offset=4
      (local.get $1)
      (i32.const 37)
     )
     (i64.store offset=8
      (local.get $1)
      (i64.const 8391700859190537801)
     )
     (i64.store offset=16
      (local.get $1)
      (i64.const 8314892262689629775)
     )
     (i64.store offset=24
      (local.get $1)
      (i64.const 2339731488440393786)
     )
     (i64.store offset=32
      (local.get $1)
      (i64.const 7070764042443584879)
     )
     (i64.store offset=40
      (local.get $1)
      (i64.const 495606199663)
     )
     (i32.store
      (local.tee $2
       (call $malloc_1268_7
        (i32.const 0)
        (i32.const 24)
       )
      )
      (i32.const 2)
     )
     (i32.store offset=4
      (local.get $2)
      (i32.const 501102191)
     )
     (i32.store offset=8
      (local.get $2)
      (i32.const 7)
     )
     (i32.store offset=12
      (local.get $2)
      (i32.const 1)
     )
     (i32.store offset=16
      (local.get $2)
      (i32.const 1)
     )
     (i32.store offset=20
      (local.get $2)
      (local.get $1)
     )
     (local.get $2)
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $3)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $4)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $exceptionToString_1009_8 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local.set $5
   (call $incRef_1277_7
    (i32.const 0)
    (i32.load offset=16
     (local.get $0)
    )
   )
  )
  (local.set $3
   (if (result i32)
    (i32.shr_u
     (i32.or
      (i32.shl
       (i32.eq
        (local.tee $3
         (i32.load offset=12
          (local.get $2)
         )
        )
        (i32.const 1)
       )
       (i32.const 31)
      )
      (i32.const 2147483646)
     )
     (i32.const 31)
    )
    (block (result i32)
     (local.set $4
      (call $incRef_1277_7
       (i32.const 0)
       (i32.load offset=20
        (local.get $2)
       )
      )
     )
     (local.set $6
      (tuple.extract 0
       (tuple.make
        (call $incRef_1277_7
         (i32.const 0)
         (call $incRef_1277_7
          (i32.const 0)
          (i32.load offset=24
           (local.get $2)
          )
         )
        )
        (call $decRef_1330_7
         (i32.const 0)
         (i32.const 0)
        )
       )
      )
     )
     (local.set $4
      (tuple.extract 0
       (tuple.make
        (call $incRef_1277_7
         (i32.const 0)
         (local.get $4)
        )
        (call $decRef_1330_7
         (i32.const 0)
         (i32.const 0)
        )
       )
      )
     )
     (i32.const 3)
    )
    (if (result i32)
     (i32.shr_u
      (i32.or
       (i32.shl
        (i32.eq
         (local.get $3)
         (i32.const 3)
        )
        (i32.const 31)
       )
       (i32.const 2147483646)
      )
      (i32.const 31)
     )
     (i32.const 1)
     (unreachable)
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $2)
   )
  )
  (tuple.extract 0
   (tuple.make
    (block $switch.1163_outer (result i32)
     (drop
      (block $switch.1163_branch_1 (result i32)
       (drop
        (block $switch.1163_branch_2 (result i32)
         (drop
          (block $switch.1163_default (result i32)
           (br_table $switch.1163_branch_1 $switch.1163_branch_2 $switch.1163_default
            (i32.const 0)
            (i32.shr_s
             (local.get $3)
             (i32.const 1)
            )
           )
          )
         )
         (unreachable)
        )
       )
       (local.set $2
        (i32.const 0)
       )
       (local.set $7
        (if (result i32)
         (i32.shr_u
          (i32.or
           (i32.shl
            (i32.eq
             (local.tee $7
              (i32.load offset=12
               (local.tee $3
                (call_indirect (type $i32_i32_=>_i32)
                 (local.tee $3
                  (call $incRef_1277_7
                   (i32.const 0)
                   (local.get $4)
                  )
                 )
                 (call $incRef_1277_7
                  (i32.const 0)
                  (local.get $1)
                 )
                 (i32.load offset=8
                  (local.get $3)
                 )
                )
               )
              )
             )
             (i32.const 3)
            )
            (i32.const 31)
           )
           (i32.const 2147483646)
          )
          (i32.const 31)
         )
         (i32.const 3)
         (if (result i32)
          (i32.shr_u
           (i32.or
            (i32.shl
             (i32.eq
              (local.get $7)
              (i32.const 1)
             )
             (i32.const 31)
            )
            (i32.const 2147483646)
           )
           (i32.const 31)
          )
          (block (result i32)
           (local.set $2
            (tuple.extract 0
             (tuple.make
              (call $incRef_1277_7
               (i32.const 0)
               (call $incRef_1277_7
                (i32.const 0)
                (i32.load offset=20
                 (local.get $3)
                )
               )
              )
              (call $decRef_1330_7
               (i32.const 0)
               (local.get $2)
              )
             )
            )
           )
           (i32.const 1)
          )
          (unreachable)
         )
        )
       )
       (drop
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $3)
        )
       )
       (drop
        (block $switch.1211_branch_1 (result i32)
         (drop
          (block $switch.1211_branch_2 (result i32)
           (drop
            (block $switch.1211_default (result i32)
             (br_table $switch.1211_branch_1 $switch.1211_branch_2 $switch.1211_default
              (i32.const 0)
              (i32.shr_s
               (local.get $7)
               (i32.const 1)
              )
             )
            )
           )
           (unreachable)
          )
         )
         (drop
          (call $decRef_1330_7
           (i32.const 0)
           (local.get $4)
          )
         )
         (drop
          (call $decRef_1330_7
           (i32.const 0)
           (local.get $2)
          )
         )
         (drop
          (call $decRef_1330_7
           (i32.const 0)
           (local.get $5)
          )
         )
         (return_call $exceptionToString_1009_8
          (local.get $0)
          (local.get $1)
          (local.get $6)
         )
        )
       )
       (br $switch.1163_outer
        (tuple.extract 0
         (tuple.make
          (call $incRef_1277_7
           (i32.const 0)
           (local.get $2)
          )
          (block (result i32)
           (drop
            (call $decRef_1330_7
             (i32.const 0)
             (local.get $2)
            )
           )
           (i32.const 1879048190)
          )
         )
        )
       )
      )
     )
     (local.set $2
      (i32.const 0)
     )
     (tuple.extract 0
      (tuple.make
       (block $switch.1182_outer (result i32)
        (drop
         (block $switch.1182_branch_1 (result i32)
          (drop
           (block $switch.1182_branch_2 (result i32)
            (drop
             (block $switch.1182_default (result i32)
              (br_table $switch.1182_branch_1 $switch.1182_branch_2 $switch.1182_default
               (i32.const 0)
               (i32.shr_s
                (if (result i32)
                 (i32.shr_u
                  (i32.or
                   (i32.shl
                    (i32.eq
                     (local.tee $3
                      (i32.load offset=12
                       (global.get $basePrinter_1001_8)
                      )
                     )
                     (i32.const 3)
                    )
                    (i32.const 31)
                   )
                   (i32.const 2147483646)
                  )
                  (i32.const 31)
                 )
                 (i32.const 3)
                 (if (result i32)
                  (i32.shr_u
                   (i32.or
                    (i32.shl
                     (i32.eq
                      (local.get $3)
                      (i32.const 1)
                     )
                     (i32.const 31)
                    )
                    (i32.const 2147483646)
                   )
                   (i32.const 31)
                  )
                  (block (result i32)
                   (local.set $2
                    (tuple.extract 0
                     (tuple.make
                      (call $incRef_1277_7
                       (i32.const 0)
                       (call $incRef_1277_7
                        (i32.const 0)
                        (i32.load offset=20
                         (global.get $basePrinter_1001_8)
                        )
                       )
                      )
                      (call $decRef_1330_7
                       (i32.const 0)
                       (local.get $2)
                      )
                     )
                    )
                   )
                   (i32.const 1)
                  )
                  (unreachable)
                 )
                )
                (i32.const 1)
               )
              )
             )
            )
            (unreachable)
           )
          )
          (br $switch.1182_outer
           (call $incRef_1277_7
            (i32.const 0)
            (local.get $5)
           )
          )
         )
        )
        (drop
         (call $decRef_1330_7
          (i32.const 0)
          (local.get $0)
         )
        )
        (drop
         (call $decRef_1330_7
          (i32.const 0)
          (local.get $4)
         )
        )
        (drop
         (call $decRef_1330_7
          (i32.const 0)
          (local.get $6)
         )
        )
        (drop
         (call $decRef_1330_7
          (i32.const 0)
          (local.get $5)
         )
        )
        (return_call_indirect (type $i32_i32_=>_i32)
         (local.get $2)
         (local.get $1)
         (i32.load offset=8
          (local.get $2)
         )
        )
       )
       (block (result i32)
        (drop
         (call $decRef_1330_7
          (i32.const 0)
          (local.get $2)
         )
        )
        (i32.const 1879048190)
       )
      )
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $1)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $4)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $6)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $5)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $loadAdtVariant_1056_9 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (tuple.extract 0
   (tuple.make
    (i32.load offset=12
     (local.get $1)
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $stringSize_1058_9 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (tuple.extract 0
   (tuple.make
    (i32.load offset=4
     (local.get $1)
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $tagSimpleNumber_1062_9 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (i32.xor
     (i32.shl
      (local.get $1)
      (i32.const 1)
     )
     (i32.const 1)
    )
    (i32.const 1879048190)
   )
  )
 )
 (func $throw_1387_12 (; has Stack IR ;) (param $0 i32) (param $1 i32)
  (drop
   (call $panicWithException_1016_8
    (i32.const 0)
    (local.get $1)
   )
  )
  (unreachable)
 )
 (func $maxu32_1390_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (select
     (local.get $2)
     (local.get $1)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i32.lt_u
        (local.get $1)
        (local.get $2)
       )
      )
      (i32.const 31)
     )
    )
    (i32.const 1879048190)
   )
  )
 )
 (func $minu32_1440_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (select
     (local.get $1)
     (local.get $2)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i32.lt_u
        (local.get $1)
        (local.get $2)
       )
      )
      (i32.const 31)
     )
    )
    (i32.const 1879048190)
   )
  )
 )
 (func $init_1506_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.shr_u
    (i32.xor
     (select
      (i32.const 2147483646)
      (i32.const -2)
      (i32.and
       (local.get $1)
       (i32.const -2147483648)
      )
     )
     (i32.const -2147483648)
    )
    (i32.const 31)
   )
   (block
    (i32.store
     (local.tee $0
      (call $malloc_1268_7
       (i32.const 0)
       (i32.const 56)
      )
     )
     (i32.const 1)
    )
    (i32.store offset=4
     (local.get $0)
     (i32.const 47)
    )
    (i64.store offset=8
     (local.get $0)
     (i64.const 6998721842876670275)
    )
    (i64.store offset=16
     (local.get $0)
     (i64.const 2334399943490366572)
    )
    (i64.store offset=24
     (local.get $0)
     (i64.const 8583988906794903874)
    )
    (i64.store offset=32
     (local.get $0)
     (i64.const 3611954238192120937)
    )
    (i64.store offset=40
     (local.get $0)
     (i64.const 3762250855201846321)
    )
    (i64.store offset=48
     (local.get $0)
     (i64.const 32477844381376568)
    )
    (i32.store
     (local.tee $1
      (call $malloc_1268_7
       (i32.const 0)
       (i32.const 24)
      )
     )
     (i32.const 2)
    )
    (i32.store offset=4
     (local.get $1)
     (i32.const 1)
    )
    (i32.store offset=8
     (local.get $1)
     (i32.const 5)
    )
    (i32.store offset=12
     (local.get $1)
     (i32.const 2051)
    )
    (i32.store offset=16
     (local.get $1)
     (i32.const 1)
    )
    (i32.store offset=20
     (local.get $1)
     (local.get $0)
    )
    (call $throw_1387_12
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $1)
    )
    (unreachable)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  (memory.fill
   (local.tee $2
    (call $malloc_1268_7
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.tee $3
      (i32.add
       (i32.shl
        (tuple.extract 0
         (tuple.make
          (i32.sub
           (i32.xor
            (local.get $1)
            (local.tee $2
             (i32.shr_s
              (local.get $1)
              (i32.const 31)
             )
            )
           )
           (local.get $2)
          )
          (i32.const 1879048190)
         )
        )
        (i32.const 3)
       )
       (i32.const 16)
      )
     )
    )
   )
   (i32.const 0)
   (local.get $3)
  )
  (i32.store
   (local.get $2)
   (global.get $_GRAIN_BOXED_NUM_HEAP_TAG_1020_1)
  )
  (i32.store offset=4
   (local.get $2)
   (global.get $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1)
  )
  (i32.store offset=8
   (local.get $2)
   (local.get $1)
  )
  (i32.store offset=12
   (local.get $2)
   (i32.const 0)
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (local.get $2)
    (i32.const 1879048190)
   )
  )
 )
 (func $getSize_1558_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (tuple.extract 0
   (tuple.make
    (i32.load offset=8
     (local.get $1)
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $flagIsSet_1565_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (tuple.extract 0
   (tuple.make
    (select
     (i32.const -2)
     (i32.const 2147483646)
     (i32.and
      (call $loadAdtVariant_1056_9
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
      )
      (i32.const 1)
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $getFlag_1568_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (tuple.extract 0
   (tuple.make
    (i32.and
     (i32.load offset=12
      (local.get $1)
     )
     (i32.const 1)
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $setFlag_1572_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.store offset=12
   (local.get $1)
   (i32.or
    (i32.eqz
     (i32.shr_u
      (select
       (i32.const 2147483646)
       (i32.const -2)
       (local.get $2)
      )
      (i32.const 31)
     )
    )
    (i32.and
     (i32.load offset=12
      (local.get $1)
     )
     (block (result i32)
      (drop
       (call $decRef_1330_7
        (i32.const 0)
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
       )
      )
      (i32.const -2)
     )
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (i32.const 1879048190)
 )
 (func $getLimb_1577_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i64)
  (tuple.extract 0
   (tuple.make
    (i64.load
     (i32.add
      (i32.shl
       (i32.add
        (local.get $2)
        (i32.const 2)
       )
       (i32.const 3)
      )
      (local.get $1)
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $setLimb_1580_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (result i32)
  (i64.store
   (i32.add
    (i32.shl
     (i32.add
      (local.get $2)
      (i32.const 2)
     )
     (i32.const 3)
    )
    (local.get $1)
   )
   (local.get $3)
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (i32.const 1879048190)
 )
 (func $getHalfSize_1584_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (if (result i32)
       (i32.shr_u
        (local.tee $3
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (local.tee $2
           (call $getSize_1558_12
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $1)
           )
          )
         )
        )
        (i32.const 31)
       )
       (select
        (i32.const 2147483646)
        (i32.const -2)
        (i32.wrap_i64
         (i64.shr_u
          (call $getLimb_1577_12
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $1)
           (i32.sub
            (local.get $2)
            (i32.const 1)
           )
          )
          (i64.const 32)
         )
        )
       )
       (local.get $3)
      )
      (i32.const 31)
     )
     (i32.sub
      (i32.shl
       (local.get $2)
       (i32.const 1)
      )
      (i32.const 1)
     )
     (i32.shl
      (local.get $2)
      (i32.const 1)
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $getHalfLimb_1587_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (tuple.extract 0
   (tuple.make
    (i32.load
     (i32.add
      (i32.shl
       (i32.add
        (local.get $2)
        (i32.const 4)
       )
       (i32.const 2)
      )
      (local.get $1)
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $setHalfLimb_1590_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (i32.store
   (i32.add
    (i32.shl
     (i32.add
      (local.get $2)
      (i32.const 4)
     )
     (i32.const 2)
    )
    (local.get $1)
   )
   (local.get $3)
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
 )
 (func $clone_1594_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $2
   (i32.add
    (i32.shl
     (call $getSize_1558_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (local.get $1)
     )
     (i32.const 3)
    )
    (i32.const 16)
   )
  )
  (memory.copy
   (local.tee $3
    (call $malloc_1268_7
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $2)
    )
   )
   (local.get $1)
   (local.get $2)
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (local.get $3)
    (i32.const 1879048190)
   )
  )
 )
 (func $cloneWithLen_1598_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $5
   (i32.add
    (i32.shl
     (call $getSize_1558_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (local.get $1)
     )
     (i32.const 3)
    )
    (i32.const 16)
   )
  )
  (memory.fill
   (local.tee $4
    (call $malloc_1268_7
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.tee $3
      (i32.add
       (i32.shl
        (local.get $2)
        (i32.const 3)
       )
       (i32.const 16)
      )
     )
    )
   )
   (i32.const 0)
   (local.get $3)
  )
  (memory.copy
   (local.get $4)
   (local.get $1)
   (select
    (local.get $5)
    (local.get $3)
    (i32.shr_u
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (i32.gt_u
       (local.get $3)
       (local.get $5)
      )
     )
     (i32.const 31)
    )
   )
  )
  (i32.store offset=8
   (local.get $4)
   (local.get $2)
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (local.get $4)
    (i32.const 1879048190)
   )
  )
 )
 (func $trimNumberInPlace_1604_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $3
   (local.tee $4
    (call $getSize_1558_12
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $1)
    )
   )
  )
  (local.set $2
   (i32.sub
    (local.get $4)
    (i32.const 1)
   )
  )
  (drop
   (loop $MFor_loop.1639 (result i32)
    (block $MFor.1638 (result i32)
     (drop
      (br_if $MFor.1638
       (i32.const 1879048190)
       (i32.eqz
        (i32.shr_u
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i32.ge_s
           (local.get $2)
           (i32.const 0)
          )
         )
         (i32.const 31)
        )
       )
      )
     )
     (drop
      (br_if $MFor.1638
       (i32.const 1879048190)
       (i32.shr_u
        (select
         (i32.const -2)
         (i32.const 2147483646)
         (i64.ne
          (call $getLimb_1577_12
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $1)
           (local.get $2)
          )
          (i64.const 0)
         )
        )
        (i32.const 31)
       )
      )
     )
     (local.set $3
      (i32.sub
       (local.get $3)
       (i32.const 1)
      )
     )
     (local.set $2
      (i32.sub
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $MFor_loop.1639)
    )
   )
  )
  (if
   (i32.eqz
    (i32.shr_u
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (i32.eq
       (local.get $3)
       (local.get $4)
      )
     )
     (i32.const 31)
    )
   )
   (block
    (local.set $2
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
    )
    (i32.store offset=8
     (local.get $1)
     (local.get $3)
    )
    (drop
     (call $decRef_1330_7
      (i32.const 0)
      (local.get $2)
     )
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (local.get $1)
    (i32.const 1879048190)
   )
  )
 )
 (func $makeZero_1610_12 (; has Stack IR ;) (param $0 i32) (result i32)
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (return_call $init_1506_12
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
   (i32.const 0)
  )
 )
 (func $makeWrappedInt32_1612_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (call $init_1506_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (i32.const 1)
   )
  )
  (drop
   (if (result i32)
    (i32.shr_u
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (i32.lt_s
       (local.get $1)
       (i32.const 0)
      )
     )
     (i32.const 31)
    )
    (call $setFlag_1572_12
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $2)
     (i32.const 1)
    )
    (i32.const 1879048190)
   )
  )
  (drop
   (call $setLimb_1580_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $2)
    (i32.const 0)
    (i64.extend_i32_u
     (select
      (i32.sub
       (i32.const 0)
       (local.get $1)
      )
      (local.get $1)
      (i32.shr_u
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (i32.lt_s
         (local.get $1)
         (i32.const 0)
        )
       )
       (i32.const 31)
      )
     )
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (local.get $2)
    (i32.const 1879048190)
   )
  )
 )
 (func $makeWrappedInt64_1619_12 (; has Stack IR ;) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local.set $2
   (call $init_1506_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (i32.const 1)
   )
  )
  (drop
   (if (result i32)
    (i32.shr_u
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (i64.lt_s
       (local.get $1)
       (i64.const 0)
      )
     )
     (i32.const 31)
    )
    (call $setFlag_1572_12
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $2)
     (i32.const 1)
    )
    (i32.const 1879048190)
   )
  )
  (drop
   (call $setLimb_1580_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $2)
    (i32.const 0)
    (select
     (i64.sub
      (i64.const 0)
      (local.get $1)
     )
     (local.get $1)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i64.lt_s
        (local.get $1)
        (i64.const 0)
       )
      )
      (i32.const 31)
     )
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (local.get $2)
    (i32.const 1879048190)
   )
  )
 )
 (func $makeWrappedUint64_1623_12 (; has Stack IR ;) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local.set $2
   (call $init_1506_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (i32.const 1)
   )
  )
  (drop
   (call $setLimb_1580_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $2)
    (i32.const 0)
    (local.get $1)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (local.get $2)
    (i32.const 1879048190)
   )
  )
 )
 (func $eqz_1628_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (i32.sub
    (call $getSize_1558_12
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $1)
    )
    (i32.const 1)
   )
  )
  (drop
   (loop $MFor_loop.1728 (result i32)
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i32.ge_s
        (local.get $2)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (if
      (i32.shr_u
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (i64.ne
         (call $getLimb_1577_12
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $1)
          (local.get $2)
         )
         (i64.const 0)
        )
       )
       (i32.const 31)
      )
      (block
       (drop
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $0)
        )
       )
       (return
        (i32.const 2147483646)
       )
      )
      (block
       (local.set $2
        (i32.sub
         (local.get $2)
         (i32.const 1)
        )
       )
       (br $MFor_loop.1728)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (i32.const -2)
 )
 (func $negateInPlace_1632_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (i32.eqz
    (i32.shr_u
     (call $flagIsSet_1565_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (local.get $1)
     )
     (i32.const 31)
    )
   )
  )
  (drop
   (call $setFlag_1572_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $1)
    (local.get $2)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (local.get $1)
    (i32.const 1879048190)
   )
  )
 )
 (func $negate_1634_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $clone_1594_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $1)
   )
  )
  (local.set $2
   (i32.eqz
    (i32.shr_u
     (call $flagIsSet_1565_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (local.get $1)
     )
     (i32.const 31)
    )
   )
  )
  (drop
   (call $setFlag_1572_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $1)
    (local.get $2)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (local.get $1)
    (i32.const 1879048190)
   )
  )
 )
 (func $abs_1639_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local.set $1
   (call $clone_1594_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $1)
   )
  )
  (drop
   (call $setFlag_1572_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $1)
    (i32.const 0)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (local.get $1)
    (i32.const 1879048190)
   )
  )
 )
 (func $toInt64_1654_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  (local $3 i32)
  (block $folding-inner0
   (return
    (tuple.extract 0
     (tuple.make
      (if (result i64)
       (i32.shr_u
        (select
         (i32.const 2147483646)
         (i32.const -2)
         (local.tee $3
          (call $getSize_1558_12
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $1)
          )
         )
        )
        (i32.const 31)
       )
       (i64.const 0)
       (if (result i64)
        (i32.shr_u
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i32.eq
           (local.get $3)
           (i32.const 1)
          )
         )
         (i32.const 31)
        )
        (block (result i64)
         (local.set $2
          (call $getLimb_1577_12
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $1)
           (i32.const 0)
          )
         )
         (br_if $folding-inner0
          (i32.eqz
           (i32.shr_u
            (select
             (i32.const -2)
             (i32.const 2147483646)
             (i64.le_u
              (local.get $2)
              (global.get $_SMAX32_I64_1021_0)
             )
            )
            (i32.const 31)
           )
          )
         )
         (select
          (i64.sub
           (i64.const 0)
           (local.get $2)
          )
          (local.get $2)
          (i32.shr_u
           (call $flagIsSet_1565_12
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $1)
           )
           (i32.const 31)
          )
         )
        )
        (br $folding-inner0)
       )
      )
      (block (result i32)
       (drop
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $0)
        )
       )
       (i32.const 1879048190)
      )
     )
    )
   )
  )
  (i32.store
   (local.tee $0
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 20)
    )
   )
   (i32.const 2)
  )
  (i32.store offset=4
   (local.get $0)
   (i32.const 1)
  )
  (i32.store offset=8
   (local.get $0)
   (i32.const 5)
  )
  (i32.store offset=12
   (local.get $0)
   (i32.const 2043)
  )
  (i32.store offset=16
   (local.get $0)
   (i32.const 0)
  )
  (call $throw_1387_12
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
   (local.get $0)
  )
  (unreachable)
 )
 (func $toFloat64_1662_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result f64)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local.set $3
   (call $getSize_1558_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $1)
   )
  )
  (tuple.extract 0
   (tuple.make
    (select
     (f64.neg
      (local.tee $2
       (if (result f64)
        (i32.shr_u
         (call $eqz_1628_12
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $1)
         )
         (i32.const 31)
        )
        (f64.const 0)
        (if (result f64)
         (i32.shr_u
          (select
           (i32.const -2)
           (i32.const 2147483646)
           (i32.gt_u
            (local.get $3)
            (i32.const 16)
           )
          )
          (i32.const 31)
         )
         (f64.const inf)
         (if (result f64)
          (i32.shr_u
           (select
            (i32.const -2)
            (i32.const 2147483646)
            (i32.eq
             (local.get $3)
             (i32.const 1)
            )
           )
           (i32.const 31)
          )
          (f64.convert_i64_u
           (call $getLimb_1577_12
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $1)
            (i32.const 0)
           )
          )
          (block (result f64)
           (local.set $5
            (f64.const 18446744073709551615)
           )
           (drop
            (loop $MFor_loop.1902 (result i32)
             (if (result i32)
              (i32.shr_u
               (select
                (i32.const -2)
                (i32.const 2147483646)
                (i32.gt_u
                 (local.get $3)
                 (local.get $4)
                )
               )
               (i32.const 31)
              )
              (block
               (local.set $2
                (f64.add
                 (local.get $2)
                 (f64.mul
                  (f64.convert_i64_u
                   (call $getLimb_1577_12
                    (call $incRef_1277_7
                     (i32.const 0)
                     (i32.const 0)
                    )
                    (local.get $1)
                    (local.get $4)
                   )
                  )
                  (local.get $5)
                 )
                )
               )
               (local.set $4
                (i32.add
                 (local.get $4)
                 (i32.const 1)
                )
               )
               (br $MFor_loop.1902)
              )
              (i32.const 1879048190)
             )
            )
           )
           (local.get $2)
          )
         )
        )
       )
      )
     )
     (local.get $2)
     (i32.shr_u
      (call $flagIsSet_1565_12
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
      )
      (i32.const 31)
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $cmpUnsignedI64_1727_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local.set $2
   (select
    (i64.sub
     (i64.const 0)
     (local.get $2)
    )
    (local.get $2)
    (i32.shr_u
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (i64.lt_s
       (local.get $2)
       (i64.const 0)
      )
     )
     (i32.const 31)
    )
   )
  )
  (if
   (i32.shr_u
    (select
     (i32.const -2)
     (i32.const 2147483646)
     (local.tee $4
      (i32.sub
       (local.tee $3
        (call $getSize_1558_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $1)
        )
       )
       (i32.const 1)
      )
     )
    )
    (i32.const 31)
   )
   (block
    (drop
     (call $decRef_1330_7
      (i32.const 0)
      (local.get $0)
     )
    )
    (return
     (local.get $4)
    )
   )
  )
  (local.set $3
   (i32.sub
    (local.get $3)
    (i32.const 1)
   )
  )
  (drop
   (loop $MFor_loop.1965 (result i32)
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i32.ge_s
        (local.get $3)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (if
      (i32.shr_u
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (i64.lt_u
         (local.tee $5
          (call $getLimb_1577_12
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $1)
           (local.get $3)
          )
         )
         (local.tee $6
          (select
           (local.get $2)
           (i64.const 0)
           (i32.shr_u
            (select
             (i32.const 2147483646)
             (i32.const -2)
             (local.get $3)
            )
            (i32.const 31)
           )
          )
         )
        )
       )
       (i32.const 31)
      )
      (block
       (drop
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $0)
        )
       )
       (return
        (i32.const -1)
       )
      )
      (block
       (if
        (i32.shr_u
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i64.gt_u
           (local.get $5)
           (local.get $6)
          )
         )
         (i32.const 31)
        )
        (block
         (drop
          (call $decRef_1330_7
           (i32.const 0)
           (local.get $0)
          )
         )
         (return
          (i32.const 1)
         )
        )
       )
       (local.set $3
        (i32.sub
         (local.get $3)
         (i32.const 1)
        )
       )
       (br $MFor_loop.1965)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (i32.const 0)
 )
 (func $cmpI64_1737_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
  (local $3 i32)
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (call $eqz_1628_12
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
      )
      (i32.const 31)
     )
     (select
      (i32.const 0)
      (select
       (i32.const 1)
       (i32.const -1)
       (i32.shr_u
        (select
         (i32.const -2)
         (i32.const 2147483646)
         (i64.lt_s
          (local.get $2)
          (i64.const 0)
         )
        )
        (i32.const 31)
       )
      )
      (i32.shr_u
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (i64.eqz
         (local.get $2)
        )
       )
       (i32.const 31)
      )
     )
     (if (result i32)
      (i32.shr_u
       (call $flagIsSet_1565_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
       )
       (i32.const 31)
      )
      (if (result i32)
       (i32.shr_u
        (if (result i32)
         (i32.shr_u
          (local.tee $3
           (select
            (i32.const -2)
            (i32.const 2147483646)
            (i64.eqz
             (local.get $2)
            )
           )
          )
          (i32.const 31)
         )
         (local.get $3)
         (i32.xor
          (select
           (i32.const -2)
           (i32.const 2147483646)
           (i64.lt_s
            (local.get $2)
            (i64.const 0)
           )
          )
          (i32.const -2147483648)
         )
        )
        (i32.const 31)
       )
       (i32.const -1)
       (i32.sub
        (i32.const 0)
        (call $cmpUnsignedI64_1727_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $1)
         (local.get $2)
        )
       )
      )
      (if (result i32)
       (i32.shr_u
        (select
         (local.tee $3
          (select
           (i32.const -2)
           (i32.const 2147483646)
           (i64.eqz
            (local.get $2)
           )
          )
         )
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i64.lt_s
           (local.get $2)
           (i64.const 0)
          )
         )
         (i32.shr_u
          (local.get $3)
          (i32.const 31)
         )
        )
        (i32.const 31)
       )
       (i32.const 1)
       (block
        (drop
         (call $decRef_1330_7
          (i32.const 0)
          (local.get $0)
         )
        )
        (return_call $cmpUnsignedI64_1727_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $1)
         (local.get $2)
        )
       )
      )
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $cmpF64_1743_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
  (local $3 f64)
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (f64.lt
        (local.tee $3
         (call $toFloat64_1662_12
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $1)
         )
        )
        (local.get $2)
       )
      )
      (i32.const 31)
     )
     (i32.const -1)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (f64.lt
        (local.get $2)
        (local.get $3)
       )
      )
      (i32.const 31)
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $cmpUnsigned_1750_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (if
   (i32.shr_u
    (select
     (i32.const -2)
     (i32.const 2147483646)
     (local.tee $4
      (i32.sub
       (local.tee $3
        (call $getSize_1558_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $1)
        )
       )
       (call $getSize_1558_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $2)
       )
      )
     )
    )
    (i32.const 31)
   )
   (block
    (drop
     (call $decRef_1330_7
      (i32.const 0)
      (local.get $0)
     )
    )
    (return
     (local.get $4)
    )
   )
  )
  (local.set $3
   (i32.sub
    (local.get $3)
    (i32.const 1)
   )
  )
  (drop
   (loop $MFor_loop.2090 (result i32)
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i32.ge_s
        (local.get $3)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (if
      (i32.shr_u
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (i64.lt_u
         (local.tee $5
          (call $getLimb_1577_12
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $1)
           (local.get $3)
          )
         )
         (local.tee $6
          (call $getLimb_1577_12
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $2)
           (local.get $3)
          )
         )
        )
       )
       (i32.const 31)
      )
      (block
       (drop
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $0)
        )
       )
       (return
        (i32.const -1)
       )
      )
      (block
       (if
        (i32.shr_u
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i64.gt_u
           (local.get $5)
           (local.get $6)
          )
         )
         (i32.const 31)
        )
        (block
         (drop
          (call $decRef_1330_7
           (i32.const 0)
           (local.get $0)
          )
         )
         (return
          (i32.const 1)
         )
        )
       )
       (local.set $3
        (i32.sub
         (local.get $3)
         (i32.const 1)
        )
       )
       (br $MFor_loop.2090)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (i32.const 0)
 )
 (func $cmp_1759_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (call $eqz_1628_12
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
      )
      (i32.const 31)
     )
     (if (result i32)
      (i32.shr_u
       (call $eqz_1628_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $2)
       )
       (i32.const 31)
      )
      (i32.const 0)
      (select
       (i32.const 1)
       (i32.const -1)
       (i32.shr_u
        (call $flagIsSet_1565_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $2)
        )
        (i32.const 31)
       )
      )
     )
     (if (result i32)
      (i32.shr_u
       (call $flagIsSet_1565_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
       )
       (i32.const 31)
      )
      (if (result i32)
       (i32.shr_u
        (if (result i32)
         (i32.shr_u
          (local.tee $3
           (call $eqz_1628_12
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $2)
           )
          )
          (i32.const 31)
         )
         (local.get $3)
         (i32.xor
          (call $flagIsSet_1565_12
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $2)
          )
          (i32.const -2147483648)
         )
        )
        (i32.const 31)
       )
       (i32.const -1)
       (block
        (drop
         (call $decRef_1330_7
          (i32.const 0)
          (local.get $0)
         )
        )
        (return_call $cmpUnsigned_1750_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $2)
         (local.get $1)
        )
       )
      )
      (if (result i32)
       (i32.shr_u
        (if (result i32)
         (i32.shr_u
          (local.tee $3
           (call $eqz_1628_12
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $2)
           )
          )
          (i32.const 31)
         )
         (local.get $3)
         (call $flagIsSet_1565_12
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $2)
         )
        )
        (i32.const 31)
       )
       (i32.const 1)
       (block
        (drop
         (call $decRef_1330_7
          (i32.const 0)
          (local.get $0)
         )
        )
        (return_call $cmpUnsigned_1750_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $1)
         (local.get $2)
        )
       )
      )
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $eq_1762_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (tuple.extract 0
   (tuple.make
    (select
     (i32.const 2147483646)
     (i32.const -2)
     (call $cmp_1759_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (local.get $1)
      (local.get $2)
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $countTrailingZeroBits_1780_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local.set $4
   (call $getSize_1558_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $1)
   )
  )
  (drop
   (loop $MFor_loop.2194 (result i32)
    (block $MFor.2193 (result i32)
     (drop
      (br_if $MFor.2193
       (i32.const 1879048190)
       (i32.eqz
        (i32.shr_u
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i32.lt_s
           (local.get $3)
           (local.get $4)
          )
         )
         (i32.const 31)
        )
       )
      )
     )
     (local.set $2
      (if (result i32)
       (i32.shr_u
        (select
         (i32.const -2)
         (i32.const 2147483646)
         (i64.ne
          (local.tee $5
           (call $getLimb_1577_12
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $1)
            (local.get $3)
           )
          )
          (i64.const 0)
         )
        )
        (i32.const 31)
       )
       (block
        (local.set $2
         (i32.add
          (i32.wrap_i64
           (i64.ctz
            (local.get $5)
           )
          )
          (local.get $2)
         )
        )
        (br $MFor.2193
         (i32.const 1879048190)
        )
       )
       (i32.sub
        (local.get $2)
        (i32.const -64)
       )
      )
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $MFor_loop.2194)
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (local.get $2)
    (i32.const 1879048190)
   )
  )
 )
 (func $bigIntToString10_1862_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (local.set $0
   (call $incRef_1277_7
    (i32.const 0)
    (i32.load offset=16
     (local.tee $8
      (call $incRef_1277_7
       (i32.const 0)
       (global.get $bigIntToString_1788_12)
      )
     )
    )
   )
  )
  (i32.store
   (local.tee $5
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 20)
    )
   )
   (i32.const 6)
  )
  (i32.store offset=4
   (local.get $5)
   (i32.const 2)
  )
  (i32.store offset=8
   (local.get $5)
   (i32.const -1)
  )
  (i32.store offset=12
   (local.get $5)
   (i32.const 1)
  )
  (i32.store offset=16
   (local.get $5)
   (local.get $0)
  )
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (call $eqz_1628_12
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
      )
      (i32.const 31)
     )
     (block (result i32)
      (i32.store
       (local.tee $0
        (call $malloc_1268_7
         (i32.const 0)
         (i32.const 16)
        )
       )
       (i32.const 1)
      )
      (i32.store offset=4
       (local.get $0)
       (i32.const 1)
      )
      (i64.store offset=8
       (local.get $0)
       (i64.const 48)
      )
      (local.get $0)
     )
     (block (result i32)
      (i32.store
       (local.tee $0
        (call $malloc_1268_7
         (i32.const 0)
         (i32.const 20)
        )
       )
       (i32.const 2)
      )
      (i32.store offset=4
       (local.get $0)
       (i32.const 1638603609)
      )
      (i32.store offset=8
       (local.get $0)
       (i32.const 11)
      )
      (i32.store offset=12
       (local.get $0)
       (i32.const 3)
      )
      (i32.store offset=16
       (local.get $0)
       (i32.const 0)
      )
      (local.set $3
       (call $clone_1594_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
       )
      )
      (drop
       (call $setFlag_1572_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $3)
        (i32.const 0)
       )
      )
      (drop
       (loop $MFor_loop.2807 (result i32)
        (if (result i32)
         (i32.shr_u
          (i32.xor
           (call $eqz_1628_12
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $3)
           )
           (i32.const -2147483648)
          )
          (i32.const 31)
         )
         (block
          (local.set $2
           (call $getSize_1558_12
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $3)
           )
          )
          (local.set $4
           (call $init_1506_12
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $2)
           )
          )
          (local.set $7
           (i64.const 0)
          )
          (local.set $2
           (i32.sub
            (local.tee $6
             (i32.shl
              (local.get $2)
              (i32.const 1)
             )
            )
            (i32.const 1)
           )
          )
          (drop
           (loop $MFor_loop.2832 (result i32)
            (if (result i32)
             (i32.shr_u
              (select
               (i32.const -2)
               (i32.const 2147483646)
               (i32.ge_s
                (local.get $2)
                (i32.const 0)
               )
              )
              (i32.const 31)
             )
             (block
              (drop
               (if (result i32)
                (i32.shr_u
                 (i32.xor
                  (if (result i32)
                   (i32.shr_u
                    (local.tee $10
                     (select
                      (i32.const 2147483646)
                      (i32.const -2)
                      (local.tee $9
                       (call $getHalfLimb_1587_12
                        (call $incRef_1277_7
                         (i32.const 0)
                         (i32.const 0)
                        )
                        (local.get $3)
                        (local.get $2)
                       )
                      )
                     )
                    )
                    (i32.const 31)
                   )
                   (select
                    (i32.const -2)
                    (i32.const 2147483646)
                    (i32.eq
                     (local.get $2)
                     (i32.sub
                      (local.get $6)
                      (i32.const 1)
                     )
                    )
                   )
                   (local.get $10)
                  )
                  (i32.const -2147483648)
                 )
                 (i32.const 31)
                )
                (block (result i32)
                 (call $setHalfLimb_1590_12
                  (call $incRef_1277_7
                   (i32.const 0)
                   (i32.const 0)
                  )
                  (local.get $4)
                  (local.get $2)
                  (i32.wrap_i64
                   (i64.div_u
                    (local.tee $7
                     (i64.add
                      (i64.extend_i32_u
                       (local.get $9)
                      )
                      (i64.shl
                       (local.get $7)
                       (i64.const 32)
                      )
                     )
                    )
                    (i64.const 10)
                   )
                  )
                 )
                 (local.set $7
                  (i64.rem_u
                   (local.get $7)
                   (i64.const 10)
                  )
                 )
                 (i32.const 0)
                )
                (i32.const 1879048190)
               )
              )
              (local.set $2
               (i32.sub
                (local.get $2)
                (i32.const 1)
               )
              )
              (br $MFor_loop.2832)
             )
             (i32.const 1879048190)
            )
           )
          )
          (drop
           (call $decRef_1330_7
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $3)
           )
          )
          (local.set $3
           (call $trimNumberInPlace_1604_12
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $4)
           )
          )
          (drop
           (call $decRef_1330_7
            (i32.const 0)
            (local.tee $4
             (call $incRef_1277_7
              (i32.const 0)
              (i32.load offset=16
               (local.tee $2
                (call $incRef_1277_7
                 (i32.const 0)
                 (local.get $5)
                )
               )
              )
             )
            )
           )
          )
          (local.set $4
           (i32.xor
            (i32.shl
             (tuple.extract 0
              (tuple.make
               (i32.load8_u offset=8
                (i32.add
                 (local.get $4)
                 (i32.wrap_i64
                  (i64.rem_u
                   (local.get $7)
                   (i64.const 10)
                  )
                 )
                )
               )
               (block (result i32)
                (drop
                 (call $decRef_1330_7
                  (i32.const 0)
                  (local.get $2)
                 )
                )
                (i32.const 1879048190)
               )
              )
             )
             (i32.const 8)
            )
            (i32.const 2)
           )
          )
          (local.set $6
           (call $incRef_1277_7
            (i32.const 0)
            (local.get $0)
           )
          )
          (i32.store
           (local.tee $2
            (call $malloc_1268_7
             (i32.const 0)
             (i32.const 28)
            )
           )
           (i32.const 2)
          )
          (i32.store offset=4
           (local.get $2)
           (i32.const 1638603609)
          )
          (i32.store offset=8
           (local.get $2)
           (i32.const 11)
          )
          (i32.store offset=12
           (local.get $2)
           (i32.const 1)
          )
          (i32.store offset=16
           (local.get $2)
           (i32.const 2)
          )
          (i32.store offset=20
           (local.get $2)
           (local.get $4)
          )
          (i32.store offset=24
           (local.get $2)
           (local.get $6)
          )
          (local.set $0
           (tuple.extract 0
            (tuple.make
             (call $incRef_1277_7
              (i32.const 0)
              (local.get $2)
             )
             (call $decRef_1330_7
              (i32.const 0)
              (local.get $0)
             )
            )
           )
          )
          (br $MFor_loop.2807)
         )
         (i32.const 1879048190)
        )
       )
      )
      (drop
       (loop $MFor_loop.2911 (result i32)
        (block $MFor.2910 (result i32)
         (local.set $3
          (i32.const 0)
         )
         (local.set $4
          (if (result i32)
           (i32.shr_u
            (i32.or
             (i32.shl
              (i32.eq
               (i32.load offset=12
                (local.tee $2
                 (call $incRef_1277_7
                  (i32.const 0)
                  (local.get $0)
                 )
                )
               )
               (i32.const 1)
              )
              (i32.const 31)
             )
             (i32.const 2147483646)
            )
            (i32.const 31)
           )
           (block (result i32)
            (local.set $4
             (call $incRef_1277_7
              (i32.const 0)
              (i32.load offset=20
               (local.get $2)
              )
             )
            )
            (local.set $3
             (tuple.extract 0
              (tuple.make
               (call $incRef_1277_7
                (i32.const 0)
                (call $incRef_1277_7
                 (i32.const 0)
                 (local.tee $6
                  (call $incRef_1277_7
                   (i32.const 0)
                   (i32.load offset=24
                    (local.get $2)
                   )
                  )
                 )
                )
               )
               (call $decRef_1330_7
                (i32.const 0)
                (i32.const 0)
               )
              )
             )
            )
            (tuple.extract 0
             (tuple.make
              (if (result i32)
               (i32.shr_u
                (select
                 (i32.const -2)
                 (i32.const 2147483646)
                 (i32.eq
                  (i32.shr_s
                   (call $incRef_1277_7
                    (i32.const 0)
                    (local.get $4)
                   )
                   (i32.const 8)
                  )
                  (i32.const 48)
                 )
                )
                (i32.const 31)
               )
               (block (result i32)
                (local.set $3
                 (tuple.extract 0
                  (tuple.make
                   (call $incRef_1277_7
                    (i32.const 0)
                    (call $incRef_1277_7
                     (i32.const 0)
                     (local.get $6)
                    )
                   )
                   (call $decRef_1330_7
                    (i32.const 0)
                    (local.get $3)
                   )
                  )
                 )
                )
                (drop
                 (call $incRef_1277_7
                  (i32.const 0)
                  (local.get $4)
                 )
                )
                (i32.const 1)
               )
               (i32.const 3)
              )
              (block (result i32)
               (drop
                (call $decRef_1330_7
                 (i32.const 0)
                 (local.get $4)
                )
               )
               (drop
                (call $decRef_1330_7
                 (i32.const 0)
                 (local.get $6)
                )
               )
               (i32.const 1879048190)
              )
             )
            )
           )
           (i32.const 3)
          )
         )
         (drop
          (call $decRef_1330_7
           (i32.const 0)
           (local.get $2)
          )
         )
         (drop
          (br_if $MFor.2910
           (i32.const 1879048190)
           (i32.eqz
            (i32.shr_u
             (tuple.extract 0
              (tuple.make
               (block $switch.2946_outer (result i32)
                (drop
                 (block $switch.2946_branch_1 (result i32)
                  (drop
                   (block $switch.2946_branch_2 (result i32)
                    (drop
                     (block $switch.2946_default (result i32)
                      (br_table $switch.2946_branch_1 $switch.2946_branch_2 $switch.2946_default
                       (i32.const 0)
                       (i32.shr_s
                        (local.get $4)
                        (i32.const 1)
                       )
                      )
                     )
                    )
                    (unreachable)
                   )
                  )
                  (br $switch.2946_outer
                   (i32.const 2147483646)
                  )
                 )
                )
                (i32.const -2)
               )
               (block (result i32)
                (drop
                 (call $decRef_1330_7
                  (i32.const 0)
                  (local.get $3)
                 )
                )
                (i32.const 1879048190)
               )
              )
             )
             (i32.const 31)
            )
           )
          )
         )
         (local.set $3
          (i32.const 0)
         )
         (local.set $4
          (if (result i32)
           (i32.shr_u
            (i32.or
             (i32.shl
              (i32.eq
               (i32.load offset=12
                (local.tee $2
                 (call $incRef_1277_7
                  (i32.const 0)
                  (local.get $0)
                 )
                )
               )
               (i32.const 1)
              )
              (i32.const 31)
             )
             (i32.const 2147483646)
            )
            (i32.const 31)
           )
           (block (result i32)
            (drop
             (call $incRef_1277_7
              (i32.const 0)
              (i32.load offset=20
               (local.get $2)
              )
             )
            )
            (local.set $3
             (tuple.extract 0
              (tuple.make
               (call $incRef_1277_7
                (i32.const 0)
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.load offset=24
                  (local.get $2)
                 )
                )
               )
               (call $decRef_1330_7
                (i32.const 0)
                (i32.const 0)
               )
              )
             )
            )
            (i32.const 1)
           )
           (i32.const 3)
          )
         )
         (drop
          (call $decRef_1330_7
           (i32.const 0)
           (local.get $2)
          )
         )
         (block $switch.2973_outer
          (drop
           (block $switch.2973_branch_1 (result i32)
            (drop
             (block $switch.2973_branch_2 (result i32)
              (drop
               (block $switch.2973_default (result i32)
                (br_table $switch.2973_branch_1 $switch.2973_branch_2 $switch.2973_default
                 (i32.const 0)
                 (i32.shr_s
                  (local.get $4)
                  (i32.const 1)
                 )
                )
               )
              )
              (unreachable)
             )
            )
            (br $switch.2973_outer)
           )
          )
          (local.set $0
           (tuple.extract 0
            (tuple.make
             (call $incRef_1277_7
              (i32.const 0)
              (call $incRef_1277_7
               (i32.const 0)
               (local.get $3)
              )
             )
             (call $decRef_1330_7
              (i32.const 0)
              (local.get $0)
             )
            )
           )
          )
         )
         (drop
          (call $decRef_1330_7
           (i32.const 0)
           (local.get $3)
          )
         )
         (br $MFor_loop.2911)
        )
       )
      )
      (drop
       (if (result i32)
        (i32.shr_u
         (call $flagIsSet_1565_12
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $1)
         )
         (i32.const 31)
        )
        (block (result i32)
         (local.set $3
          (call $incRef_1277_7
           (i32.const 0)
           (local.get $0)
          )
         )
         (i32.store
          (local.tee $1
           (call $malloc_1268_7
            (i32.const 0)
            (i32.const 28)
           )
          )
          (i32.const 2)
         )
         (i32.store offset=4
          (local.get $1)
          (i32.const 1638603609)
         )
         (i32.store offset=8
          (local.get $1)
          (i32.const 11)
         )
         (i32.store offset=12
          (local.get $1)
          (i32.const 1)
         )
         (i32.store offset=16
          (local.get $1)
          (i32.const 2)
         )
         (i32.store offset=20
          (local.get $1)
          (i32.const 11522)
         )
         (i32.store offset=24
          (local.get $1)
          (local.get $3)
         )
         (local.set $0
          (tuple.extract 0
           (tuple.make
            (call $incRef_1277_7
             (i32.const 0)
             (local.get $1)
            )
            (call $decRef_1330_7
             (i32.const 0)
             (local.get $0)
            )
           )
          )
         )
         (i32.const 0)
        )
        (i32.const 1879048190)
       )
      )
      (i32.store
       (local.tee $1
        (call $malloc_1268_7
         (i32.const 0)
         (i32.add
          (local.tee $3
           (call $computeLength_1850_12
            (i32.const 0)
            (call $incRef_1277_7
             (i32.const 0)
             (local.get $0)
            )
            (i32.const 0)
           )
          )
          (i32.const 8)
         )
        )
       )
       (i32.const 1)
      )
      (i32.store offset=4
       (local.get $1)
       (local.get $3)
      )
      (drop
       (call $populateString_1856_12
        (i32.const 0)
        (local.get $0)
        (i32.const 0)
        (local.get $1)
       )
      )
      (local.get $1)
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $8)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $5)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $unsignedAdd_1864_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i64)
  (local.set $9
   (call $getSize_1558_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $1)
   )
  )
  (local.set $10
   (call $getSize_1558_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $2)
   )
  )
  (local.set $5
   (call $maxu32_1390_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $9)
    (local.get $10)
   )
  )
  (local.set $4
   (call $init_1506_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $5)
   )
  )
  (drop
   (loop $MFor_loop.3025 (result i32)
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i32.lt_u
        (local.get $3)
        (local.get $5)
       )
      )
      (i32.const 31)
     )
     (block
      (local.set $7
       (i64.add
        (local.get $6)
        (i64.add
         (local.tee $11
          (if (result i64)
           (i32.shr_u
            (select
             (i32.const -2)
             (i32.const 2147483646)
             (i32.ge_u
              (local.get $3)
              (local.get $9)
             )
            )
            (i32.const 31)
           )
           (i64.const 0)
           (call $getLimb_1577_12
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $1)
            (local.get $3)
           )
          )
         )
         (local.tee $12
          (if (result i64)
           (i32.shr_u
            (select
             (i32.const -2)
             (i32.const 2147483646)
             (i32.ge_u
              (local.get $3)
              (local.get $10)
             )
            )
            (i32.const 31)
           )
           (i64.const 0)
           (call $getLimb_1577_12
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $2)
            (local.get $3)
           )
          )
         )
        )
       )
      )
      (drop
       (call $setLimb_1580_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $4)
        (local.get $3)
        (local.get $7)
       )
      )
      (local.set $6
       (i64.extend_i32_u
        (i32.shr_u
         (if (result i32)
          (i32.shr_u
           (local.tee $8
            (select
             (local.tee $8
              (select
               (i32.const -2)
               (i32.const 2147483646)
               (i64.lt_u
                (local.get $7)
                (local.get $11)
               )
              )
             )
             (select
              (i32.const -2)
              (i32.const 2147483646)
              (i64.lt_u
               (local.get $7)
               (local.get $12)
              )
             )
             (i32.shr_u
              (local.get $8)
              (i32.const 31)
             )
            )
           )
           (i32.const 31)
          )
          (local.get $8)
          (select
           (i32.const -2)
           (i32.const 2147483646)
           (i64.gt_u
            (local.get $6)
            (local.get $7)
           )
          )
         )
         (i32.const 31)
        )
       )
      )
      (local.set $3
       (i32.add
        (local.get $3)
        (i32.const 1)
       )
      )
      (br $MFor_loop.3025)
     )
     (i32.const 1879048190)
    )
   )
  )
  (drop
   (if (result i32)
    (i32.shr_u
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (i32.wrap_i64
       (local.get $6)
      )
     )
     (i32.const 31)
    )
    (block (result i32)
     (local.set $4
      (call $cloneWithLen_1598_12
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $4)
       (i32.add
        (local.get $5)
        (i32.const 1)
       )
      )
     )
     (call $setLimb_1580_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (local.get $4)
      (local.get $5)
      (local.get $6)
     )
    )
    (i32.const 1879048190)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (local.get $4)
    (i32.const 1879048190)
   )
  )
 )
 (func $unsignedAddInt_1876_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  (local.set $8
   (call $getSize_1558_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $1)
   )
  )
  (local.set $5
   (call $maxu32_1390_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $8)
    (i32.const 1)
   )
  )
  (local.set $4
   (call $init_1506_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $5)
   )
  )
  (drop
   (loop $MFor_loop.3121 (result i32)
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i32.lt_u
        (local.get $2)
        (local.get $5)
       )
      )
      (i32.const 31)
     )
     (block (result i32)
      (local.set $7
       (i64.add
        (local.get $6)
        (i64.add
         (local.tee $9
          (if (result i64)
           (i32.shr_u
            (select
             (i32.const -2)
             (i32.const 2147483646)
             (i32.ge_u
              (local.get $2)
              (local.get $8)
             )
            )
            (i32.const 31)
           )
           (i64.const 0)
           (call $getLimb_1577_12
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $1)
            (local.get $2)
           )
          )
         )
         (local.tee $10
          (i64.extend_i32_u
           (i32.eqz
            (i32.shr_u
             (select
              (i32.const -2)
              (i32.const 2147483646)
              (local.get $2)
             )
             (i32.const 31)
            )
           )
          )
         )
        )
       )
      )
      (drop
       (call $setLimb_1580_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $4)
        (local.get $2)
        (local.get $7)
       )
      )
      (if (result i32)
       (i32.shr_u
        (if (result i32)
         (i32.shr_u
          (local.tee $3
           (select
            (i32.const -2)
            (i32.const 2147483646)
            (i64.eqz
             (local.tee $6
              (i64.extend_i32_u
               (i32.shr_u
                (if (result i32)
                 (i32.shr_u
                  (local.tee $3
                   (select
                    (local.tee $3
                     (select
                      (i32.const -2)
                      (i32.const 2147483646)
                      (i64.lt_u
                       (local.get $7)
                       (local.get $9)
                      )
                     )
                    )
                    (select
                     (i32.const -2)
                     (i32.const 2147483646)
                     (i64.lt_u
                      (local.get $7)
                      (local.get $10)
                     )
                    )
                    (i32.shr_u
                     (local.get $3)
                     (i32.const 31)
                    )
                   )
                  )
                  (i32.const 31)
                 )
                 (local.get $3)
                 (select
                  (i32.const -2)
                  (i32.const 2147483646)
                  (i64.gt_u
                   (local.get $6)
                   (local.get $7)
                  )
                 )
                )
                (i32.const 31)
               )
              )
             )
            )
           )
          )
          (i32.const 31)
         )
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i32.gt_u
           (i32.sub
            (local.get $5)
            (i32.const 1)
           )
           (local.get $2)
          )
         )
         (local.get $3)
        )
        (i32.const 31)
       )
       (block (result i32)
        (memory.copy
         (i32.add
          (local.tee $3
           (i32.shl
            (local.tee $2
             (i32.add
              (local.get $2)
              (i32.const 1)
             )
            )
            (i32.const 3)
           )
          )
          (i32.add
           (local.get $4)
           (i32.const 16)
          )
         )
         (i32.add
          (local.get $3)
          (i32.add
           (local.get $1)
           (i32.const 16)
          )
         )
         (i32.shl
          (i32.sub
           (local.get $8)
           (local.get $2)
          )
          (i32.const 3)
         )
        )
        (i32.const 1879048190)
       )
       (block
        (local.set $2
         (i32.add
          (local.get $2)
          (i32.const 1)
         )
        )
        (br $MFor_loop.3121)
       )
      )
     )
     (i32.const 1879048190)
    )
   )
  )
  (drop
   (if (result i32)
    (i32.shr_u
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (i32.wrap_i64
       (local.get $6)
      )
     )
     (i32.const 31)
    )
    (block (result i32)
     (local.set $4
      (call $cloneWithLen_1598_12
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $4)
       (i32.add
        (local.get $5)
        (i32.const 1)
       )
      )
     )
     (call $setLimb_1580_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (local.get $4)
      (local.get $5)
      (local.get $6)
     )
    )
    (i32.const 1879048190)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (local.get $4)
    (i32.const 1879048190)
   )
  )
 )
 (func $unsignedSubImpl_1887_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (local.set $4
   (call $getSize_1558_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $1)
   )
  )
  (local.set $5
   (call $getSize_1558_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $2)
   )
  )
  (drop
   (call $minu32_1440_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $4)
    (local.get $5)
   )
  )
  (local.set $9
   (call $maxu32_1390_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $4)
    (local.get $5)
   )
  )
  (local.set $6
   (call $init_1506_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $9)
   )
  )
  (drop
   (loop $MFor_loop.3266 (result i32)
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i32.lt_u
        (local.get $3)
        (local.get $9)
       )
      )
      (i32.const 31)
     )
     (block
      (local.set $7
       (i64.sub
        (local.tee $10
         (if (result i64)
          (i32.shr_u
           (select
            (i32.const -2)
            (i32.const 2147483646)
            (i32.ge_u
             (local.get $3)
             (local.get $4)
            )
           )
           (i32.const 31)
          )
          (i64.const 0)
          (call $getLimb_1577_12
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $1)
           (local.get $3)
          )
         )
        )
        (if (result i64)
         (i32.shr_u
          (select
           (i32.const -2)
           (i32.const 2147483646)
           (i32.ge_u
            (local.get $3)
            (local.get $5)
           )
          )
          (i32.const 31)
         )
         (i64.const 0)
         (call $getLimb_1577_12
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $2)
          (local.get $3)
         )
        )
       )
      )
      (drop
       (call $setLimb_1580_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $6)
        (local.get $3)
        (local.tee $8
         (i64.sub
          (local.get $7)
          (local.get $8)
         )
        )
       )
      )
      (local.set $8
       (i64.extend_i32_u
        (i32.shr_u
         (select
          (local.tee $11
           (select
            (i32.const -2)
            (i32.const 2147483646)
            (i64.gt_u
             (local.get $7)
             (local.get $10)
            )
           )
          )
          (select
           (i32.const -2)
           (i32.const 2147483646)
           (i64.lt_u
            (local.get $7)
            (local.get $8)
           )
          )
          (i32.shr_u
           (local.get $11)
           (i32.const 31)
          )
         )
         (i32.const 31)
        )
       )
      )
      (local.set $3
       (i32.add
        (local.get $3)
        (i32.const 1)
       )
      )
      (br $MFor_loop.3266)
     )
     (i32.const 1879048190)
    )
   )
  )
  (drop
   (if (result i32)
    (i32.shr_u
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (i32.lt_u
       (local.get $4)
       (local.get $5)
      )
     )
     (i32.const 31)
    )
    (call $setFlag_1572_12
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $6)
     (i32.const 1)
    )
    (i32.const 1879048190)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (return_call $trimNumberInPlace_1604_12
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
   (local.get $6)
  )
 )
 (func $unsignedSub_1903_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.shr_u
    (select
     (i32.const -2)
     (i32.const 2147483646)
     (i32.gt_s
      (local.tee $3
       (call $cmpUnsigned_1750_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
        (local.get $2)
       )
      )
      (i32.const 0)
     )
    )
    (i32.const 31)
   )
   (block
    (drop
     (call $decRef_1330_7
      (i32.const 0)
      (local.get $0)
     )
    )
    (return_call $unsignedSubImpl_1887_12
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $1)
     (local.get $2)
    )
   )
   (if
    (i32.shr_u
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (i32.lt_s
       (local.get $3)
       (i32.const 0)
      )
     )
     (i32.const 31)
    )
    (block
     (local.set $1
      (call $unsignedSubImpl_1887_12
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $2)
       (local.get $1)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (return_call $negateInPlace_1632_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (local.get $1)
     )
    )
    (block
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (return_call $makeZero_1610_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
     )
    )
   )
  )
 )
 (func $unsignedSubInt_1923_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (if
   (i32.shr_u
    (if (result i32)
     (i32.shr_u
      (local.tee $2
       (select
        (i32.const 2147483646)
        (i32.const -2)
        (local.tee $3
         (call $getSize_1558_12
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $1)
         )
        )
       )
      )
      (i32.const 31)
     )
     (local.get $2)
     (if (result i32)
      (i32.shr_u
       (local.tee $2
        (select
         (i32.const -2)
         (i32.const 2147483646)
         (i32.eq
          (local.get $3)
          (i32.const 1)
         )
        )
       )
       (i32.const 31)
      )
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i64.eqz
        (call $getLimb_1577_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $1)
         (i32.const 0)
        )
       )
      )
      (local.get $2)
     )
    )
    (i32.const 31)
   )
   (block
    (local.set $2
     (call $init_1506_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (i32.const 1)
     )
    )
    (local.set $4
     (i64.sub
      (i64.const 1)
      (if (result i64)
       (i32.shr_u
        (select
         (i32.const 2147483646)
         (i32.const -2)
         (local.get $3)
        )
        (i32.const 31)
       )
       (i64.const 0)
       (call $getLimb_1577_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
        (i32.const 0)
       )
      )
     )
    )
    (drop
     (call $setLimb_1580_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (local.get $2)
      (i32.const 0)
      (local.get $4)
     )
    )
    (local.set $1
     (call $negateInPlace_1632_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (local.get $2)
     )
    )
    (drop
     (call $decRef_1330_7
      (i32.const 0)
      (local.get $0)
     )
    )
    (return_call $trimNumberInPlace_1604_12
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $1)
    )
   )
   (if
    (i32.shr_u
     (if (result i32)
      (i32.shr_u
       (local.tee $3
        (select
         (i32.const -2)
         (i32.const 2147483646)
         (i32.eq
          (local.get $3)
          (i32.const 1)
         )
        )
       )
       (i32.const 31)
      )
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i64.eq
        (call $getLimb_1577_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $1)
         (i32.const 0)
        )
        (i64.const 1)
       )
      )
      (local.get $3)
     )
     (i32.const 31)
    )
    (block
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (return_call $makeZero_1610_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
     )
    )
    (block
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (local.set $8
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
     )
     (local.set $0
      (i32.const 0)
     )
     (local.set $3
      (call $getSize_1558_12
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
      )
     )
     (local.set $5
      (call $maxu32_1390_12
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $3)
       (i32.const 1)
      )
     )
     (local.set $2
      (call $init_1506_12
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $5)
      )
     )
     (drop
      (loop $MFor_loop.3364 (result i32)
       (if (result i32)
        (i32.shr_u
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i32.lt_u
           (local.get $0)
           (local.get $5)
          )
         )
         (i32.const 31)
        )
        (block (result i32)
         (local.set $4
          (i64.sub
           (local.tee $9
            (if (result i64)
             (i32.shr_u
              (select
               (i32.const -2)
               (i32.const 2147483646)
               (i32.ge_u
                (local.get $0)
                (local.get $3)
               )
              )
              (i32.const 31)
             )
             (i64.const 0)
             (call $getLimb_1577_12
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $1)
              (local.get $0)
             )
            )
           )
           (i64.extend_i32_u
            (i32.eqz
             (i32.shr_u
              (select
               (i32.const -2)
               (i32.const 2147483646)
               (local.get $0)
              )
              (i32.const 31)
             )
            )
           )
          )
         )
         (drop
          (call $setLimb_1580_12
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $2)
           (local.get $0)
           (local.tee $6
            (i64.sub
             (local.get $4)
             (local.get $6)
            )
           )
          )
         )
         (if (result i32)
          (i32.shr_u
           (if (result i32)
            (i32.shr_u
             (local.tee $7
              (select
               (i32.const -2)
               (i32.const 2147483646)
               (i64.eqz
                (local.tee $6
                 (i64.extend_i32_u
                  (i32.shr_u
                   (select
                    (local.tee $7
                     (select
                      (i32.const -2)
                      (i32.const 2147483646)
                      (i64.gt_u
                       (local.get $4)
                       (local.get $9)
                      )
                     )
                    )
                    (select
                     (i32.const -2)
                     (i32.const 2147483646)
                     (i64.lt_u
                      (local.get $4)
                      (local.get $6)
                     )
                    )
                    (i32.shr_u
                     (local.get $7)
                     (i32.const 31)
                    )
                   )
                   (i32.const 31)
                  )
                 )
                )
               )
              )
             )
             (i32.const 31)
            )
            (select
             (i32.const -2)
             (i32.const 2147483646)
             (i32.gt_u
              (i32.sub
               (local.get $5)
               (i32.const 1)
              )
              (local.get $0)
             )
            )
            (local.get $7)
           )
           (i32.const 31)
          )
          (block (result i32)
           (memory.copy
            (i32.add
             (local.tee $5
              (i32.shl
               (local.tee $0
                (i32.add
                 (local.get $0)
                 (i32.const 1)
                )
               )
               (i32.const 3)
              )
             )
             (i32.add
              (local.get $2)
              (i32.const 16)
             )
            )
            (i32.add
             (local.get $5)
             (i32.add
              (local.get $1)
              (i32.const 16)
             )
            )
            (i32.shl
             (i32.sub
              (local.get $3)
              (local.get $0)
             )
             (i32.const 3)
            )
           )
           (i32.const 1879048190)
          )
          (block
           (local.set $0
            (i32.add
             (local.get $0)
             (i32.const 1)
            )
           )
           (br $MFor_loop.3364)
          )
         )
        )
        (i32.const 1879048190)
       )
      )
     )
     (drop
      (if (result i32)
       (i32.shr_u
        (select
         (i32.const 2147483646)
         (i32.const -2)
         (local.get $3)
        )
        (i32.const 31)
       )
       (call $setFlag_1572_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $2)
        (i32.const 1)
       )
       (i32.const 1879048190)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $8)
      )
     )
     (return_call $trimNumberInPlace_1604_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (local.get $2)
     )
    )
   )
  )
 )
 (func $add_1928_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (call $flagIsSet_1565_12
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
      )
      (i32.const 31)
     )
     (if (result i32)
      (i32.shr_u
       (call $flagIsSet_1565_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $2)
       )
       (i32.const 31)
      )
      (block (result i32)
       (local.set $1
        (call $unsignedAdd_1864_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $1)
         (local.get $2)
        )
       )
       (drop
        (call $setFlag_1572_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $1)
         (i32.const 1)
        )
       )
       (local.get $1)
      )
      (block
       (drop
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $0)
        )
       )
       (return_call $unsignedSub_1903_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $2)
        (local.get $1)
       )
      )
     )
     (if
      (i32.shr_u
       (call $flagIsSet_1565_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $2)
       )
       (i32.const 31)
      )
      (block
       (drop
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $0)
        )
       )
       (return_call $unsignedSub_1903_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
        (local.get $2)
       )
      )
      (block
       (drop
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $0)
        )
       )
       (return_call $unsignedAdd_1864_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
        (local.get $2)
       )
      )
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $sub_1937_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (call $flagIsSet_1565_12
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
      )
      (i32.const 31)
     )
     (if (result i32)
      (i32.shr_u
       (call $flagIsSet_1565_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $2)
       )
       (i32.const 31)
      )
      (block
       (drop
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $0)
        )
       )
       (return_call $unsignedSub_1903_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $2)
        (local.get $1)
       )
      )
      (block (result i32)
       (local.set $1
        (call $unsignedAdd_1864_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $1)
         (local.get $2)
        )
       )
       (drop
        (call $setFlag_1572_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $1)
         (i32.const 1)
        )
       )
       (local.get $1)
      )
     )
     (if
      (i32.shr_u
       (call $flagIsSet_1565_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $2)
       )
       (i32.const 31)
      )
      (block
       (drop
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $0)
        )
       )
       (return_call $unsignedAdd_1864_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
        (local.get $2)
       )
      )
      (block
       (drop
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $0)
        )
       )
       (return_call $unsignedSub_1903_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
        (local.get $2)
       )
      )
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $decr_1948_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (local.set $0
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (call $eqz_1628_12
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
      )
      (i32.const 31)
     )
     (block (result i32)
      (local.set $1
       (call $makeWrappedUint64_1623_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (i64.const 1)
       )
      )
      (drop
       (call $setFlag_1572_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
        (i32.const 1)
       )
      )
      (local.get $1)
     )
     (if (result i32)
      (i32.shr_u
       (call $flagIsSet_1565_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
       )
       (i32.const 31)
      )
      (block (result i32)
       (local.set $1
        (call $unsignedAddInt_1876_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $1)
        )
       )
       (drop
        (call $negateInPlace_1632_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $1)
        )
       )
       (local.get $1)
      )
      (block
       (drop
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $0)
        )
       )
       (return_call $unsignedSubInt_1923_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
       )
      )
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $unsignedMul_1950_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local.set $7
   (i32.shl
    (local.tee $4
     (call $getSize_1558_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (local.get $1)
     )
    )
    (i32.const 1)
   )
  )
  (local.set $8
   (i32.shl
    (local.tee $5
     (call $getSize_1558_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (local.get $2)
     )
    )
    (i32.const 1)
   )
  )
  (local.set $6
   (call $init_1506_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (i32.add
     (local.get $4)
     (local.get $5)
    )
   )
  )
  (local.set $4
   (i32.const 0)
  )
  (drop
   (loop $MFor_loop.3651 (result i32)
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i32.lt_u
        (local.get $4)
        (local.get $7)
       )
      )
      (i32.const 31)
     )
     (block
      (local.set $3
       (i64.add
        (i64.mul
         (i64.extend_i32_u
          (call $getHalfLimb_1587_12
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $1)
           (local.get $4)
          )
         )
         (i64.extend_i32_u
          (call $getHalfLimb_1587_12
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $2)
           (i32.const 0)
          )
         )
        )
        (local.get $3)
       )
      )
      (call $setHalfLimb_1590_12
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $6)
       (local.get $4)
       (i32.wrap_i64
        (local.get $3)
       )
      )
      (local.set $3
       (i64.shr_u
        (local.get $3)
        (i64.const 32)
       )
      )
      (local.set $4
       (i32.add
        (local.get $4)
        (i32.const 1)
       )
      )
      (br $MFor_loop.3651)
     )
     (i32.const 1879048190)
    )
   )
  )
  (call $setHalfLimb_1590_12
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
   (local.get $6)
   (local.get $7)
   (i32.wrap_i64
    (local.get $3)
   )
  )
  (local.set $4
   (i32.const 1)
  )
  (drop
   (loop $MFor_loop.3703 (result i32)
    (block $MFor.3702 (result i32)
     (drop
      (br_if $MFor.3702
       (i32.const 1879048190)
       (i32.eqz
        (i32.shr_u
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i32.lt_u
           (local.get $4)
           (local.get $8)
          )
         )
         (i32.const 31)
        )
       )
      )
     )
     (local.set $3
      (i64.const 0)
     )
     (drop
      (br_if $MFor.3702
       (i32.const 1879048190)
       (i32.shr_u
        (select
         (select
          (i32.const 2147483646)
          (i32.const -2)
          (local.tee $9
           (call $getHalfLimb_1587_12
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $2)
            (local.get $4)
           )
          )
         )
         (local.tee $5
          (select
           (i32.const -2)
           (i32.const 2147483646)
           (i32.eq
            (i32.sub
             (local.get $8)
             (i32.const 1)
            )
            (local.get $4)
           )
          )
         )
         (i32.shr_u
          (local.get $5)
          (i32.const 31)
         )
        )
        (i32.const 31)
       )
      )
     )
     (local.set $5
      (i32.const 0)
     )
     (drop
      (loop $MFor_loop.3736 (result i32)
       (if (result i32)
        (i32.shr_u
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i32.lt_u
           (local.get $5)
           (local.get $7)
          )
         )
         (i32.const 31)
        )
        (block
         (local.set $3
          (i64.add
           (i64.add
            (i64.extend_i32_u
             (call $getHalfLimb_1587_12
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $6)
              (local.tee $10
               (i32.add
                (local.get $4)
                (local.get $5)
               )
              )
             )
            )
            (i64.mul
             (i64.extend_i32_u
              (call $getHalfLimb_1587_12
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $1)
               (local.get $5)
              )
             )
             (i64.extend_i32_u
              (local.get $9)
             )
            )
           )
           (local.get $3)
          )
         )
         (call $setHalfLimb_1590_12
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $6)
          (local.get $10)
          (i32.wrap_i64
           (local.get $3)
          )
         )
         (local.set $3
          (i64.shr_u
           (local.get $3)
           (i64.const 32)
          )
         )
         (local.set $5
          (i32.add
           (local.get $5)
           (i32.const 1)
          )
         )
         (br $MFor_loop.3736)
        )
        (i32.const 1879048190)
       )
      )
     )
     (local.set $5
      (i32.add
       (local.get $4)
       (local.get $7)
      )
     )
     (drop
      (loop $MFor_loop.3802 (result i32)
       (if (result i32)
        (i32.shr_u
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i64.ne
           (local.get $3)
           (i64.const 0)
          )
         )
         (i32.const 31)
        )
        (block
         (local.set $3
          (i64.add
           (i64.extend_i32_u
            (call $getHalfLimb_1587_12
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $6)
             (local.get $5)
            )
           )
           (local.get $3)
          )
         )
         (call $setHalfLimb_1590_12
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $6)
          (local.get $5)
          (i32.wrap_i64
           (local.get $3)
          )
         )
         (local.set $3
          (i64.shr_u
           (local.get $3)
           (i64.const 32)
          )
         )
         (local.set $5
          (i32.add
           (local.get $5)
           (i32.const 1)
          )
         )
         (br $MFor_loop.3802)
        )
        (i32.const 1879048190)
       )
      )
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $MFor_loop.3703)
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (return_call $trimNumberInPlace_1604_12
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
   (local.get $6)
  )
 )
 (func $mul_1968_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local.set $3
   (if (result i32)
    (i32.shr_u
     (if (result i32)
      (i32.shr_u
       (local.tee $3
        (call $eqz_1628_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $1)
        )
       )
       (i32.const 31)
      )
      (local.get $3)
      (call $eqz_1628_12
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $2)
      )
     )
     (i32.const 31)
    )
    (call $makeZero_1610_12
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
    )
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i32.lt_u
        (call $getSize_1558_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $1)
        )
        (call $getSize_1558_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $2)
        )
       )
      )
      (i32.const 31)
     )
     (call $unsignedMul_1950_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (local.get $2)
      (local.get $1)
     )
     (call $unsignedMul_1950_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (local.get $1)
      (local.get $2)
     )
    )
   )
  )
  (local.set $1
   (i32.xor
    (call $getFlag_1568_12
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $1)
    )
    (call $getFlag_1568_12
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $2)
    )
   )
  )
  (drop
   (call $setFlag_1572_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $3)
    (local.get $1)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (local.get $3)
    (i32.const 1879048190)
   )
  )
 )
 (func $shl_1974_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  (local.set $4
   (call $getSize_1558_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $1)
   )
  )
  (local.set $9
   (i64.shl
    (i64.sub
     (i64.shl
      (i64.const 1)
      (i64.extend_i32_u
       (local.tee $5
        (i32.and
         (local.get $2)
         (i32.const 31)
        )
       )
      )
     )
     (i64.const 1)
    )
    (i64.sub
     (i64.const 64)
     (i64.extend_i32_u
      (local.get $5)
     )
    )
   )
  )
  (local.set $2
   (call $init_1506_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (i32.add
     (local.tee $6
      (i32.shr_u
       (local.get $2)
       (i32.const 5)
      )
     )
     (local.get $4)
    )
   )
  )
  (local.set $3
   (call $getFlag_1568_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $1)
   )
  )
  (drop
   (call $setFlag_1572_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $2)
    (local.get $3)
   )
  )
  (local.set $8
   (i32.shl
    (local.get $4)
    (i32.const 1)
   )
  )
  (local.set $3
   (i32.const 0)
  )
  (drop
   (loop $MFor_loop.3903 (result i32)
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i32.lt_u
        (local.get $3)
        (local.get $8)
       )
      )
      (i32.const 31)
     )
     (block
      (local.set $7
       (i64.shr_u
        (i64.and
         (local.tee $10
          (i64.or
           (local.get $7)
           (i64.shl
            (i64.extend_i32_u
             (call $getHalfLimb_1587_12
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $1)
              (local.get $3)
             )
            )
            (i64.const 32)
           )
          )
         )
         (local.get $9)
        )
        (i64.const 32)
       )
      )
      (call $setHalfLimb_1590_12
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $2)
       (i32.add
        (local.get $3)
        (local.get $6)
       )
       (i32.wrap_i64
        (i64.shr_u
         (i64.shl
          (local.get $10)
          (i64.extend_i32_u
           (local.get $5)
          )
         )
         (i64.const 32)
        )
       )
      )
      (local.set $3
       (i32.add
        (local.get $3)
        (i32.const 1)
       )
      )
      (br $MFor_loop.3903)
     )
     (i32.const 1879048190)
    )
   )
  )
  (if
   (i32.shr_u
    (select
     (i32.const -2)
     (i32.const 2147483646)
     (i64.ne
      (local.get $7)
      (i64.const 0)
     )
    )
    (i32.const 31)
   )
   (block
    (local.set $2
     (call $cloneWithLen_1598_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (local.get $2)
      (i32.add
       (i32.add
        (local.get $4)
        (local.get $6)
       )
       (i32.const 1)
      )
     )
    )
    (call $setHalfLimb_1590_12
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $2)
     (i32.add
      (local.get $6)
      (local.get $8)
     )
     (i32.wrap_i64
      (i64.shr_u
       (local.get $7)
       (i64.sub
        (i64.const 32)
        (i64.extend_i32_u
         (local.get $5)
        )
       )
      )
     )
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (return_call $trimNumberInPlace_1604_12
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
   (local.get $2)
  )
 )
 (func $shrS_1988_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local.set $7
   (i32.sub
    (i32.shl
     (i32.const 1)
     (local.tee $6
      (i32.and
       (local.get $2)
       (i32.const 31)
      )
     )
    )
    (i32.const 1)
   )
  )
  (if
   (i32.shr_u
    (select
     (i32.const -2)
     (i32.const 2147483646)
     (i32.ge_u
      (local.tee $4
       (i32.shr_u
        (local.get $2)
        (i32.const 5)
       )
      )
      (local.tee $3
       (i32.shl
        (call $getSize_1558_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $1)
        )
        (i32.const 1)
       )
      )
     )
    )
    (i32.const 31)
   )
   (if
    (i32.shr_u
     (call $flagIsSet_1565_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (local.get $1)
     )
     (i32.const 31)
    )
    (block
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (return_call $makeWrappedInt32_1612_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (i32.const -1)
     )
    )
    (block
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (return_call $makeZero_1610_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
     )
    )
   )
   (block
    (local.set $2
     (call $init_1506_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (i32.add
       (i32.shr_u
        (local.tee $2
         (i32.sub
          (local.get $3)
          (local.get $4)
         )
        )
        (i32.const 1)
       )
       (i32.eqz
        (i32.shr_u
         (select
          (i32.const 2147483646)
          (i32.const -2)
          (i32.and
           (local.get $2)
           (i32.const 1)
          )
         )
         (i32.const 31)
        )
       )
      )
     )
    )
    (local.set $8
     (call $getFlag_1568_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (local.get $1)
     )
    )
    (drop
     (call $setFlag_1572_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (local.get $2)
      (local.get $8)
     )
    )
    (local.set $3
     (i32.sub
      (local.get $3)
      (i32.const 1)
     )
    )
    (drop
     (loop $MFor_loop.4024 (result i32)
      (if (result i32)
       (i32.shr_u
        (select
         (i32.const -2)
         (i32.const 2147483646)
         (i32.ge_s
          (local.get $3)
          (local.get $4)
         )
        )
        (i32.const 31)
       )
       (block
        (local.set $5
         (i64.and
          (local.tee $9
           (i64.or
            (i64.extend_i32_u
             (call $getHalfLimb_1587_12
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $1)
              (local.get $3)
             )
            )
            (i64.shl
             (local.get $5)
             (i64.const 32)
            )
           )
          )
          (i64.extend_i32_u
           (local.get $7)
          )
         )
        )
        (call $setHalfLimb_1590_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $2)
         (i32.sub
          (local.get $3)
          (local.get $4)
         )
         (i32.wrap_i64
          (i64.shr_u
           (local.get $9)
           (i64.extend_i32_u
            (local.get $6)
           )
          )
         )
        )
        (local.set $3
         (i32.sub
          (local.get $3)
          (i32.const 1)
         )
        )
        (br $MFor_loop.4024)
       )
       (i32.const 1879048190)
      )
     )
    )
    (if
     (i32.shr_u
      (call $flagIsSet_1565_12
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $2)
      )
      (i32.const 31)
     )
     (block
      (local.set $3
       (i32.const 2147483646)
      )
      (drop
       (if (result i32)
        (i32.shr_u
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i64.ne
           (local.get $5)
           (i64.const 0)
          )
         )
         (i32.const 31)
        )
        (block (result i32)
         (local.set $3
          (i32.const -2)
         )
         (i32.const 0)
        )
        (block (result i32)
         (local.set $1
          (i32.const 0)
         )
         (loop $MFor_loop.4081 (result i32)
          (if (result i32)
           (i32.shr_u
            (select
             (i32.const -2)
             (i32.const 2147483646)
             (i32.lt_u
              (local.get $1)
              (local.get $4)
             )
            )
            (i32.const 31)
           )
           (if (result i32)
            (i32.shr_u
             (select
              (i32.const -2)
              (i32.const 2147483646)
              (call $getHalfLimb_1587_12
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $2)
               (local.get $1)
              )
             )
             (i32.const 31)
            )
            (block (result i32)
             (local.set $3
              (i32.const -2)
             )
             (i32.const 1879048190)
            )
            (block
             (local.set $1
              (i32.add
               (local.get $1)
               (i32.const 1)
              )
             )
             (br $MFor_loop.4081)
            )
           )
           (i32.const 1879048190)
          )
         )
        )
       )
      )
      (local.set $2
       (if (result i32)
        (i32.shr_u
         (local.get $3)
         (i32.const 31)
        )
        (block (result i32)
         (local.set $1
          (call $decr_1948_12
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $2)
          )
         )
         (drop
          (call $decRef_1330_7
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $2)
          )
         )
         (local.get $1)
        )
        (local.get $2)
       )
      )
     )
    )
    (drop
     (call $decRef_1330_7
      (i32.const 0)
      (local.get $0)
     )
    )
    (return_call $trimNumberInPlace_1604_12
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $2)
    )
   )
  )
 )
 (func $baseCaseDivRem_2135_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local.set $7
   (call $getHalfSize_1584_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $2)
   )
  )
  (local.set $4
   (i32.sub
    (call $getHalfSize_1584_12
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $1)
    )
    (local.get $7)
   )
  )
  (local.set $8
   (call $init_1506_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (i32.shr_u
     (select
      (local.tee $5
       (i32.add
        (local.get $4)
        (i32.const 1)
       )
      )
      (i32.add
       (local.get $4)
       (i32.const 2)
      )
      (i32.shr_u
       (select
        (i32.const 2147483646)
        (i32.const -2)
        (i32.and
         (local.get $5)
         (i32.const 1)
        )
       )
       (i32.const 31)
      )
     )
     (i32.const 1)
    )
   )
  )
  (local.set $5
   (call $shl_1974_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $2)
    (i32.shl
     (local.get $4)
     (i32.const 5)
    )
   )
  )
  (local.set $6
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
  )
  (local.set $1
   (if (result i32)
    (i32.shr_u
     (tuple.extract 0
      (tuple.make
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (i32.ge_s
         (call $cmp_1759_12
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $1)
          (local.get $5)
         )
         (i32.const 0)
        )
       )
       (block (result i32)
        (drop
         (call $decRef_1330_7
          (i32.const 0)
          (local.get $6)
         )
        )
        (i32.const 1879048190)
       )
      )
     )
     (i32.const 31)
    )
    (block (result i32)
     (call $setHalfLimb_1590_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (local.get $8)
      (local.get $4)
      (i32.const 1)
     )
     (call $sub_1937_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (local.get $1)
      (local.get $5)
     )
    )
    (call $clone_1594_12
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $1)
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $5)
   )
  )
  (local.set $5
   (i32.sub
    (local.get $4)
    (i32.const 1)
   )
  )
  (drop
   (loop $MFor_loop.4782 (result i32)
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i32.ge_s
        (local.get $5)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (block
      (local.set $6
       (i32.wrap_i64
        (i64.div_u
         (i64.or
          (i64.shl
           (i64.extend_i32_u
            (call $getHalfLimb_1587_12
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $1)
             (local.tee $4
              (i32.add
               (local.get $5)
               (local.get $7)
              )
             )
            )
           )
           (i64.const 32)
          )
          (i64.extend_i32_u
           (call $getHalfLimb_1587_12
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $1)
            (i32.sub
             (local.get $4)
             (i32.const 1)
            )
           )
          )
         )
         (i64.extend_i32_u
          (call $getHalfLimb_1587_12
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $2)
           (i32.sub
            (local.get $7)
            (i32.const 1)
           )
          )
         )
        )
       )
      )
      (local.set $9
       (call $shl_1974_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $2)
        (i32.shl
         (local.get $5)
         (i32.const 5)
        )
       )
      )
      (local.set $10
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
      )
      (local.set $4
       (call $init_1506_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (i32.const 1)
       )
      )
      (drop
       (call $setLimb_1580_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $4)
        (i32.const 0)
        (i64.extend_i32_u
         (local.get $6)
        )
       )
      )
      (drop
       (call $decRef_1330_7
        (i32.const 0)
        (local.get $10)
       )
      )
      (local.set $10
       (call $mul_1968_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $9)
        (local.tee $4
         (tuple.extract 0
          (tuple.make
           (local.get $4)
           (i32.const 1879048190)
          )
         )
        )
       )
      )
      (drop
       (call $decRef_1330_7
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $4)
       )
      )
      (local.set $4
       (call $sub_1937_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
        (local.get $10)
       )
      )
      (drop
       (call $decRef_1330_7
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
       )
      )
      (local.set $1
       (local.get $4)
      )
      (drop
       (loop $MFor_loop.4853 (result i32)
        (if (result i32)
         (i32.shr_u
          (call $flagIsSet_1565_12
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $1)
          )
          (i32.const 31)
         )
         (block
          (local.set $6
           (i32.sub
            (local.get $6)
            (i32.const 1)
           )
          )
          (local.set $4
           (call $add_1928_12
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $1)
            (local.get $9)
           )
          )
          (drop
           (call $decRef_1330_7
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $1)
           )
          )
          (local.set $1
           (local.get $4)
          )
          (br $MFor_loop.4853)
         )
         (i32.const 1879048190)
        )
       )
      )
      (drop
       (call $decRef_1330_7
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $9)
       )
      )
      (call $setHalfLimb_1590_12
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $8)
       (local.get $5)
       (local.get $6)
      )
      (local.set $5
       (i32.sub
        (local.get $5)
        (i32.const 1)
       )
      )
      (br $MFor_loop.4782)
     )
     (i32.const 1879048190)
    )
   )
  )
  (i32.store
   (local.get $3)
   (call $trimNumberInPlace_1604_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $8)
   )
  )
  (i32.store offset=4
   (local.get $3)
   (call $trimNumberInPlace_1604_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $1)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (i32.const 1879048190)
 )
 (func $division_2168_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i64)
  (local $13 i32)
  (if
   (i32.shr_u
    (call $eqz_1628_12
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $2)
    )
    (i32.const 31)
   )
   (block
    (i32.store
     (local.tee $0
      (call $malloc_1268_7
       (i32.const 0)
       (i32.const 20)
      )
     )
     (i32.const 2)
    )
    (i32.store offset=4
     (local.get $0)
     (i32.const 1)
    )
    (i32.store offset=8
     (local.get $0)
     (i32.const 5)
    )
    (i32.store offset=12
     (local.get $0)
     (i32.const 2039)
    )
    (i32.store offset=16
     (local.get $0)
     (i32.const 0)
    )
    (call $throw_1387_12
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $0)
    )
    (unreachable)
   )
  )
  (local.set $6
   (call $getHalfSize_1584_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $1)
   )
  )
  (local.set $5
   (call $getHalfSize_1584_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $2)
   )
  )
  (drop
   (if (result i32)
    (i32.shr_u
     (call $eqz_1628_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (local.get $1)
     )
     (i32.const 31)
    )
    (block (result i32)
     (local.set $6
      (call $makeZero_1610_12
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
      )
     )
     (local.set $5
      (call $makeZero_1610_12
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
      )
     )
     (i32.const 0)
    )
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i32.gt_u
        (local.get $5)
        (local.get $6)
       )
      )
      (i32.const 31)
     )
     (block (result i32)
      (local.set $6
       (call $makeZero_1610_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
       )
      )
      (local.set $5
       (call $clone_1594_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
       )
      )
      (i32.const 0)
     )
     (if (result i32)
      (i32.shr_u
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (i32.eq
         (local.get $5)
         (i32.const 1)
        )
       )
       (i32.const 31)
      )
      (block (result i32)
       (local.set $12
        (call $getLimb_1577_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $2)
         (i32.const 0)
        )
       )
       (local.set $5
        (call $getSize_1558_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $1)
        )
       )
       (local.set $7
        (call $init_1506_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $5)
        )
       )
       (local.set $5
        (i32.sub
         (local.get $6)
         (i32.const 1)
        )
       )
       (drop
        (loop $MFor_loop.4979 (result i32)
         (if (result i32)
          (i32.shr_u
           (select
            (i32.const -2)
            (i32.const 2147483646)
            (i32.ge_s
             (local.get $5)
             (i32.const 0)
            )
           )
           (i32.const 31)
          )
          (block
           (drop
            (if (result i32)
             (i32.shr_u
              (i32.xor
               (if (result i32)
                (i32.shr_u
                 (local.tee $10
                  (select
                   (i32.const 2147483646)
                   (i32.const -2)
                   (local.tee $8
                    (call $getHalfLimb_1587_12
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $1)
                     (local.get $5)
                    )
                   )
                  )
                 )
                 (i32.const 31)
                )
                (select
                 (i32.const -2)
                 (i32.const 2147483646)
                 (i32.eq
                  (local.get $5)
                  (i32.sub
                   (local.get $6)
                   (i32.const 1)
                  )
                 )
                )
                (local.get $10)
               )
               (i32.const -2147483648)
              )
              (i32.const 31)
             )
             (block (result i32)
              (local.set $8
               (i32.wrap_i64
                (i64.div_u
                 (local.tee $11
                  (i64.add
                   (i64.extend_i32_u
                    (local.get $8)
                   )
                   (i64.shl
                    (local.get $11)
                    (i64.const 32)
                   )
                  )
                 )
                 (local.get $12)
                )
               )
              )
              (call $setHalfLimb_1590_12
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $7)
               (local.get $5)
               (local.get $8)
              )
              (local.set $11
               (i64.rem_u
                (local.get $11)
                (local.get $12)
               )
              )
              (i32.const 0)
             )
             (i32.const 1879048190)
            )
           )
           (local.set $5
            (i32.sub
             (local.get $5)
             (i32.const 1)
            )
           )
           (br $MFor_loop.4979)
          )
          (i32.const 1879048190)
         )
        )
       )
       (local.set $6
        (call $trimNumberInPlace_1604_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $7)
        )
       )
       (local.set $5
        (call $init_1506_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (i32.const 1)
        )
       )
       (call $setLimb_1580_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $5)
        (i32.const 0)
        (local.get $11)
       )
      )
      (block (result i32)
       (local.set $7
        (call $malloc_1268_7
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (i32.const 8)
        )
       )
       (local.set $6
        (call $abs_1639_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $1)
        )
       )
       (local.set $5
        (call $abs_1639_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $2)
        )
       )
       (drop
        (block $__inlined_func$baseCaseDivRemUnnormalized_2157_12$15 (result i32)
         (local.set $10
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
         )
         (local.set $8
          (i32.sub
           (call $getHalfSize_1584_12
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $5)
           )
           (i32.const 1)
          )
         )
         (tuple.extract 0
          (tuple.make
           (if (result i32)
            (i32.shr_u
             (select
              (i32.const -2)
              (i32.const 2147483646)
              (local.tee $8
               (i32.clz
                (call $getHalfLimb_1587_12
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (local.get $5)
                 (local.get $8)
                )
               )
              )
             )
             (i32.const 31)
            )
            (block (result i32)
             (local.set $9
              (call $shl_1974_12
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $6)
               (local.get $8)
              )
             )
             (local.set $13
              (call $shl_1974_12
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $5)
               (local.get $8)
              )
             )
             (drop
              (call $baseCaseDivRem_2135_12
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $9)
               (local.get $13)
               (local.get $7)
              )
             )
             (drop
              (call $decRef_1330_7
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $9)
              )
             )
             (drop
              (call $decRef_1330_7
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $13)
              )
             )
             (local.set $9
              (i32.load offset=4
               (local.get $7)
              )
             )
             (local.set $8
              (call $shrS_1988_12
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $9)
               (local.get $8)
              )
             )
             (drop
              (call $decRef_1330_7
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $9)
              )
             )
             (i32.store offset=4
              (local.get $7)
              (local.get $8)
             )
             (i32.const 1879048190)
            )
            (block
             (drop
              (call $decRef_1330_7
               (i32.const 0)
               (local.get $10)
              )
             )
             (br $__inlined_func$baseCaseDivRemUnnormalized_2157_12$15
              (call $baseCaseDivRem_2135_12
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $6)
               (local.get $5)
               (local.get $7)
              )
             )
            )
           )
           (block (result i32)
            (drop
             (call $decRef_1330_7
              (i32.const 0)
              (local.get $10)
             )
            )
            (i32.const 1879048190)
           )
          )
         )
        )
       )
       (drop
        (call $decRef_1330_7
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $6)
        )
       )
       (drop
        (call $decRef_1330_7
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $5)
        )
       )
       (local.set $6
        (i32.load
         (local.get $7)
        )
       )
       (local.set $5
        (i32.load offset=4
         (local.get $7)
        )
       )
       (drop
        (call $free_1275_7
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $7)
        )
       )
       (if
        (i32.shr_u
         (local.tee $7
          (call $flagIsSet_1565_12
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $1)
          )
         )
         (i32.const 31)
        )
        (local.set $7
         (i32.xor
          (call $flagIsSet_1565_12
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $2)
          )
          (i32.const -2147483648)
         )
        )
       )
       (if (result i32)
        (i32.shr_u
         (if (result i32)
          (i32.shr_u
           (local.get $7)
           (i32.const 31)
          )
          (local.get $7)
          (if (result i32)
           (i32.shr_u
            (local.tee $7
             (i32.xor
              (call $flagIsSet_1565_12
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $1)
              )
              (i32.const -2147483648)
             )
            )
            (i32.const 31)
           )
           (call $flagIsSet_1565_12
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $2)
           )
           (local.get $7)
          )
         )
         (i32.const 31)
        )
        (block (result i32)
         (local.set $6
          (call $negateInPlace_1632_12
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $6)
          )
         )
         (i32.const 0)
        )
        (i32.const 1879048190)
       )
      )
     )
    )
   )
  )
  (local.set $7
   (i32.xor
    (call $getFlag_1568_12
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $1)
    )
    (call $getFlag_1568_12
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $2)
    )
   )
  )
  (drop
   (call $setFlag_1572_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $6)
    (local.get $7)
   )
  )
  (drop
   (if (result i32)
    (i32.shr_u
     (if (result i32)
      (i32.shr_u
       (local.tee $1
        (call $flagIsSet_1565_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $1)
        )
       )
       (i32.const 31)
      )
      (i32.xor
       (call $eqz_1628_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $5)
       )
       (i32.const -2147483648)
      )
      (local.get $1)
     )
     (i32.const 31)
    )
    (call $setFlag_1572_12
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $5)
     (i32.const 1)
    )
    (i32.const 1879048190)
   )
  )
  (drop
   (if (result i32)
    (i32.shr_u
     (if (result i32)
      (i32.shr_u
       (local.get $4)
       (i32.const 31)
      )
      (block (result i32)
       (if
        (i32.shr_u
         (local.tee $1
          (call $flagIsSet_1565_12
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $5)
          )
         )
         (i32.const 31)
        )
        (local.set $1
         (i32.xor
          (call $flagIsSet_1565_12
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $2)
          )
          (i32.const -2147483648)
         )
        )
       )
       (if (result i32)
        (i32.shr_u
         (local.get $1)
         (i32.const 31)
        )
        (local.get $1)
        (if (result i32)
         (i32.shr_u
          (local.tee $1
           (i32.xor
            (call $flagIsSet_1565_12
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $5)
            )
            (i32.const -2147483648)
           )
          )
          (i32.const 31)
         )
         (call $flagIsSet_1565_12
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $2)
         )
         (local.get $1)
        )
       )
      )
      (local.get $4)
     )
     (i32.const 31)
    )
    (block (result i32)
     (local.set $1
      (call $add_1928_12
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $5)
       (local.get $2)
      )
     )
     (drop
      (call $decRef_1330_7
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $5)
      )
     )
     (local.set $2
      (call $decr_1948_12
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $6)
      )
     )
     (drop
      (call $decRef_1330_7
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $6)
      )
     )
     (local.set $5
      (local.get $1)
     )
     (local.set $6
      (local.get $2)
     )
     (i32.const 0)
    )
    (i32.const 1879048190)
   )
  )
  (i32.store
   (local.get $3)
   (local.get $6)
  )
  (i32.store offset=4
   (local.get $3)
   (local.get $5)
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (i32.const 1879048190)
 )
 (func $div_2200_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local.set $3
   (call $malloc_1268_7
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (i32.const 8)
   )
  )
  (drop
   (call $division_2168_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $1)
    (local.get $2)
    (local.get $3)
    (i32.const -2)
   )
  )
  (local.set $1
   (i32.load
    (local.get $3)
   )
  )
  (drop
   (call $free_1275_7
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $3)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (local.get $1)
    (i32.const 1879048190)
   )
  )
 )
 (func $computeLength_1850_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $3
   (if (result i32)
    (i32.shr_u
     (i32.or
      (i32.shl
       (i32.eq
        (local.tee $3
         (i32.load offset=12
          (local.get $1)
         )
        )
        (i32.const 1)
       )
       (i32.const 31)
      )
      (i32.const 2147483646)
     )
     (i32.const 31)
    )
    (block (result i32)
     (local.set $4
      (tuple.extract 0
       (tuple.make
        (call $incRef_1277_7
         (i32.const 0)
         (call $incRef_1277_7
          (i32.const 0)
          (i32.load offset=24
           (local.get $1)
          )
         )
        )
        (call $decRef_1330_7
         (i32.const 0)
         (i32.const 0)
        )
       )
      )
     )
     (i32.const 3)
    )
    (if (result i32)
     (i32.shr_u
      (i32.or
       (i32.shl
        (i32.eq
         (local.get $3)
         (i32.const 3)
        )
        (i32.const 31)
       )
       (i32.const 2147483646)
      )
      (i32.const 31)
     )
     (i32.const 1)
     (unreachable)
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $1)
   )
  )
  (drop
   (block $switch.5228_branch_1 (result i32)
    (drop
     (block $switch.5228_branch_2 (result i32)
      (drop
       (block $switch.5228_default (result i32)
        (br_table $switch.5228_branch_1 $switch.5228_branch_2 $switch.5228_default
         (i32.const 0)
         (i32.shr_s
          (local.get $3)
          (i32.const 1)
         )
        )
       )
      )
      (unreachable)
     )
    )
    (return_call $computeLength_1850_12
     (local.get $0)
     (local.get $4)
     (i32.add
      (local.get $2)
      (i32.const 1)
     )
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $4)
   )
  )
  (tuple.extract 0
   (tuple.make
    (local.get $2)
    (i32.const 1879048190)
   )
  )
 )
 (func $populateString_1856_12 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local.set $4
   (if (result i32)
    (i32.shr_u
     (i32.or
      (i32.shl
       (i32.eq
        (local.tee $4
         (i32.load offset=12
          (local.get $1)
         )
        )
        (i32.const 1)
       )
       (i32.const 31)
      )
      (i32.const 2147483646)
     )
     (i32.const 31)
    )
    (block (result i32)
     (local.set $6
      (call $incRef_1277_7
       (i32.const 0)
       (i32.load offset=20
        (local.get $1)
       )
      )
     )
     (local.set $5
      (tuple.extract 0
       (tuple.make
        (call $incRef_1277_7
         (i32.const 0)
         (call $incRef_1277_7
          (i32.const 0)
          (i32.load offset=24
           (local.get $1)
          )
         )
        )
        (call $decRef_1330_7
         (i32.const 0)
         (i32.const 0)
        )
       )
      )
     )
     (i32.const 3)
    )
    (if (result i32)
     (i32.shr_u
      (i32.or
       (i32.shl
        (i32.eq
         (local.get $4)
         (i32.const 3)
        )
        (i32.const 31)
       )
       (i32.const 2147483646)
      )
      (i32.const 31)
     )
     (i32.const 1)
     (unreachable)
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $1)
   )
  )
  (drop
   (block $switch.5259_branch_1 (result i32)
    (drop
     (block $switch.5259_branch_2 (result i32)
      (drop
       (block $switch.5259_default (result i32)
        (br_table $switch.5259_branch_1 $switch.5259_branch_2 $switch.5259_default
         (i32.const 0)
         (i32.shr_s
          (local.get $4)
          (i32.const 1)
         )
        )
       )
      )
      (unreachable)
     )
    )
    (i32.store8 offset=8
     (i32.add
      (local.get $2)
      (local.get $3)
     )
     (i32.shr_s
      (local.get $6)
      (i32.const 8)
     )
    )
    (return_call $populateString_1856_12
     (local.get $0)
     (local.get $5)
     (i32.add
      (local.get $2)
      (i32.const 1)
     )
     (local.get $3)
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $5)
   )
  )
  (i32.const 1879048190)
 )
 (func $get_POWERS10_2228_13 (; has Stack IR ;) (param $0 i32) (result i32)
  (drop
   (if (result i32)
    (i32.shr_u
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (i32.eq
       (global.get $_POWERS10_2227_13)
       (i32.const -1)
      )
     )
     (i32.const 31)
    )
    (block (result i32)
     (global.set $_POWERS10_2227_13
      (tuple.extract 0
       (tuple.make
        (call $malloc_1268_7
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (i32.const 40)
        )
        (global.get $_POWERS10_2227_13)
       )
      )
     )
     (i32.store
      (global.get $_POWERS10_2227_13)
      (i32.const 1)
     )
     (i32.store offset=4
      (global.get $_POWERS10_2227_13)
      (i32.const 10)
     )
     (i32.store offset=8
      (global.get $_POWERS10_2227_13)
      (i32.const 100)
     )
     (i32.store offset=12
      (global.get $_POWERS10_2227_13)
      (i32.const 1000)
     )
     (i32.store offset=16
      (global.get $_POWERS10_2227_13)
      (i32.const 10000)
     )
     (i32.store offset=20
      (global.get $_POWERS10_2227_13)
      (i32.const 100000)
     )
     (i32.store offset=24
      (global.get $_POWERS10_2227_13)
      (i32.const 1000000)
     )
     (i32.store offset=28
      (global.get $_POWERS10_2227_13)
      (i32.const 10000000)
     )
     (i32.store offset=32
      (global.get $_POWERS10_2227_13)
      (i32.const 100000000)
     )
     (i32.store offset=36
      (global.get $_POWERS10_2227_13)
      (i32.const 1000000000)
     )
     (i32.const 0)
    )
    (i32.const 1879048190)
   )
  )
  (tuple.extract 0
   (tuple.make
    (global.get $_POWERS10_2227_13)
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $get_DIGITS_2237_13 (; has Stack IR ;) (param $0 i32) (result i32)
  (drop
   (if (result i32)
    (i32.shr_u
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (i32.eq
       (global.get $_DIGITS_2236_13)
       (i32.const -1)
      )
     )
     (i32.const 31)
    )
    (block (result i32)
     (global.set $_DIGITS_2236_13
      (tuple.extract 0
       (tuple.make
        (call $malloc_1268_7
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (i32.const 200)
        )
        (global.get $_DIGITS_2236_13)
       )
      )
     )
     (i32.store16
      (global.get $_DIGITS_2236_13)
      (i32.const 12336)
     )
     (i32.store16 offset=2
      (global.get $_DIGITS_2236_13)
      (i32.const 12592)
     )
     (i32.store16 offset=4
      (global.get $_DIGITS_2236_13)
      (i32.const 12848)
     )
     (i32.store16 offset=6
      (global.get $_DIGITS_2236_13)
      (i32.const 13104)
     )
     (i32.store16 offset=8
      (global.get $_DIGITS_2236_13)
      (i32.const 13360)
     )
     (i32.store16 offset=10
      (global.get $_DIGITS_2236_13)
      (i32.const 13616)
     )
     (i32.store16 offset=12
      (global.get $_DIGITS_2236_13)
      (i32.const 13872)
     )
     (i32.store16 offset=14
      (global.get $_DIGITS_2236_13)
      (i32.const 14128)
     )
     (i32.store16 offset=16
      (global.get $_DIGITS_2236_13)
      (i32.const 14384)
     )
     (i32.store16 offset=18
      (global.get $_DIGITS_2236_13)
      (i32.const 14640)
     )
     (i32.store16 offset=20
      (global.get $_DIGITS_2236_13)
      (i32.const 12337)
     )
     (i32.store16 offset=22
      (global.get $_DIGITS_2236_13)
      (i32.const 12593)
     )
     (i32.store16 offset=24
      (global.get $_DIGITS_2236_13)
      (i32.const 12849)
     )
     (i32.store16 offset=26
      (global.get $_DIGITS_2236_13)
      (i32.const 13105)
     )
     (i32.store16 offset=28
      (global.get $_DIGITS_2236_13)
      (i32.const 13361)
     )
     (i32.store16 offset=30
      (global.get $_DIGITS_2236_13)
      (i32.const 13617)
     )
     (i32.store16 offset=32
      (global.get $_DIGITS_2236_13)
      (i32.const 13873)
     )
     (i32.store16 offset=34
      (global.get $_DIGITS_2236_13)
      (i32.const 14129)
     )
     (i32.store16 offset=36
      (global.get $_DIGITS_2236_13)
      (i32.const 14385)
     )
     (i32.store16 offset=38
      (global.get $_DIGITS_2236_13)
      (i32.const 14641)
     )
     (i32.store16 offset=40
      (global.get $_DIGITS_2236_13)
      (i32.const 12338)
     )
     (i32.store16 offset=42
      (global.get $_DIGITS_2236_13)
      (i32.const 12594)
     )
     (i32.store16 offset=44
      (global.get $_DIGITS_2236_13)
      (i32.const 12850)
     )
     (i32.store16 offset=46
      (global.get $_DIGITS_2236_13)
      (i32.const 13106)
     )
     (i32.store16 offset=48
      (global.get $_DIGITS_2236_13)
      (i32.const 13362)
     )
     (i32.store16 offset=50
      (global.get $_DIGITS_2236_13)
      (i32.const 13618)
     )
     (i32.store16 offset=52
      (global.get $_DIGITS_2236_13)
      (i32.const 13874)
     )
     (i32.store16 offset=54
      (global.get $_DIGITS_2236_13)
      (i32.const 14130)
     )
     (i32.store16 offset=56
      (global.get $_DIGITS_2236_13)
      (i32.const 14386)
     )
     (i32.store16 offset=58
      (global.get $_DIGITS_2236_13)
      (i32.const 14642)
     )
     (i32.store16 offset=60
      (global.get $_DIGITS_2236_13)
      (i32.const 12339)
     )
     (i32.store16 offset=62
      (global.get $_DIGITS_2236_13)
      (i32.const 12595)
     )
     (i32.store16 offset=64
      (global.get $_DIGITS_2236_13)
      (i32.const 12851)
     )
     (i32.store16 offset=66
      (global.get $_DIGITS_2236_13)
      (i32.const 13107)
     )
     (i32.store16 offset=68
      (global.get $_DIGITS_2236_13)
      (i32.const 13363)
     )
     (i32.store16 offset=70
      (global.get $_DIGITS_2236_13)
      (i32.const 13619)
     )
     (i32.store16 offset=72
      (global.get $_DIGITS_2236_13)
      (i32.const 13875)
     )
     (i32.store16 offset=74
      (global.get $_DIGITS_2236_13)
      (i32.const 14131)
     )
     (i32.store16 offset=76
      (global.get $_DIGITS_2236_13)
      (i32.const 14387)
     )
     (i32.store16 offset=78
      (global.get $_DIGITS_2236_13)
      (i32.const 14643)
     )
     (i32.store16 offset=80
      (global.get $_DIGITS_2236_13)
      (i32.const 12340)
     )
     (i32.store16 offset=82
      (global.get $_DIGITS_2236_13)
      (i32.const 12596)
     )
     (i32.store16 offset=84
      (global.get $_DIGITS_2236_13)
      (i32.const 12852)
     )
     (i32.store16 offset=86
      (global.get $_DIGITS_2236_13)
      (i32.const 13108)
     )
     (i32.store16 offset=88
      (global.get $_DIGITS_2236_13)
      (i32.const 13364)
     )
     (i32.store16 offset=90
      (global.get $_DIGITS_2236_13)
      (i32.const 13620)
     )
     (i32.store16 offset=92
      (global.get $_DIGITS_2236_13)
      (i32.const 13876)
     )
     (i32.store16 offset=94
      (global.get $_DIGITS_2236_13)
      (i32.const 14132)
     )
     (i32.store16 offset=96
      (global.get $_DIGITS_2236_13)
      (i32.const 14388)
     )
     (i32.store16 offset=98
      (global.get $_DIGITS_2236_13)
      (i32.const 14644)
     )
     (i32.store16 offset=100
      (global.get $_DIGITS_2236_13)
      (i32.const 12341)
     )
     (i32.store16 offset=102
      (global.get $_DIGITS_2236_13)
      (i32.const 12597)
     )
     (i32.store16 offset=104
      (global.get $_DIGITS_2236_13)
      (i32.const 12853)
     )
     (i32.store16 offset=106
      (global.get $_DIGITS_2236_13)
      (i32.const 13109)
     )
     (i32.store16 offset=108
      (global.get $_DIGITS_2236_13)
      (i32.const 13365)
     )
     (i32.store16 offset=110
      (global.get $_DIGITS_2236_13)
      (i32.const 13621)
     )
     (i32.store16 offset=112
      (global.get $_DIGITS_2236_13)
      (i32.const 13877)
     )
     (i32.store16 offset=114
      (global.get $_DIGITS_2236_13)
      (i32.const 14133)
     )
     (i32.store16 offset=116
      (global.get $_DIGITS_2236_13)
      (i32.const 14389)
     )
     (i32.store16 offset=118
      (global.get $_DIGITS_2236_13)
      (i32.const 14645)
     )
     (i32.store16 offset=120
      (global.get $_DIGITS_2236_13)
      (i32.const 12342)
     )
     (i32.store16 offset=122
      (global.get $_DIGITS_2236_13)
      (i32.const 12598)
     )
     (i32.store16 offset=124
      (global.get $_DIGITS_2236_13)
      (i32.const 12854)
     )
     (i32.store16 offset=126
      (global.get $_DIGITS_2236_13)
      (i32.const 13110)
     )
     (i32.store16 offset=128
      (global.get $_DIGITS_2236_13)
      (i32.const 13366)
     )
     (i32.store16 offset=130
      (global.get $_DIGITS_2236_13)
      (i32.const 13622)
     )
     (i32.store16 offset=132
      (global.get $_DIGITS_2236_13)
      (i32.const 13878)
     )
     (i32.store16 offset=134
      (global.get $_DIGITS_2236_13)
      (i32.const 14134)
     )
     (i32.store16 offset=136
      (global.get $_DIGITS_2236_13)
      (i32.const 14390)
     )
     (i32.store16 offset=138
      (global.get $_DIGITS_2236_13)
      (i32.const 14646)
     )
     (i32.store16 offset=140
      (global.get $_DIGITS_2236_13)
      (i32.const 12343)
     )
     (i32.store16 offset=142
      (global.get $_DIGITS_2236_13)
      (i32.const 12599)
     )
     (i32.store16 offset=144
      (global.get $_DIGITS_2236_13)
      (i32.const 12855)
     )
     (i32.store16 offset=146
      (global.get $_DIGITS_2236_13)
      (i32.const 13111)
     )
     (i32.store16 offset=148
      (global.get $_DIGITS_2236_13)
      (i32.const 13367)
     )
     (i32.store16 offset=150
      (global.get $_DIGITS_2236_13)
      (i32.const 13623)
     )
     (i32.store16 offset=152
      (global.get $_DIGITS_2236_13)
      (i32.const 13879)
     )
     (i32.store16 offset=154
      (global.get $_DIGITS_2236_13)
      (i32.const 14135)
     )
     (i32.store16 offset=156
      (global.get $_DIGITS_2236_13)
      (i32.const 14391)
     )
     (i32.store16 offset=158
      (global.get $_DIGITS_2236_13)
      (i32.const 14647)
     )
     (i32.store16 offset=160
      (global.get $_DIGITS_2236_13)
      (i32.const 12344)
     )
     (i32.store16 offset=162
      (global.get $_DIGITS_2236_13)
      (i32.const 12600)
     )
     (i32.store16 offset=164
      (global.get $_DIGITS_2236_13)
      (i32.const 12856)
     )
     (i32.store16 offset=166
      (global.get $_DIGITS_2236_13)
      (i32.const 13112)
     )
     (i32.store16 offset=168
      (global.get $_DIGITS_2236_13)
      (i32.const 13368)
     )
     (i32.store16 offset=170
      (global.get $_DIGITS_2236_13)
      (i32.const 13624)
     )
     (i32.store16 offset=172
      (global.get $_DIGITS_2236_13)
      (i32.const 13880)
     )
     (i32.store16 offset=174
      (global.get $_DIGITS_2236_13)
      (i32.const 14136)
     )
     (i32.store16 offset=176
      (global.get $_DIGITS_2236_13)
      (i32.const 14392)
     )
     (i32.store16 offset=178
      (global.get $_DIGITS_2236_13)
      (i32.const 14648)
     )
     (i32.store16 offset=180
      (global.get $_DIGITS_2236_13)
      (i32.const 12345)
     )
     (i32.store16 offset=182
      (global.get $_DIGITS_2236_13)
      (i32.const 12601)
     )
     (i32.store16 offset=184
      (global.get $_DIGITS_2236_13)
      (i32.const 12857)
     )
     (i32.store16 offset=186
      (global.get $_DIGITS_2236_13)
      (i32.const 13113)
     )
     (i32.store16 offset=188
      (global.get $_DIGITS_2236_13)
      (i32.const 13369)
     )
     (i32.store16 offset=190
      (global.get $_DIGITS_2236_13)
      (i32.const 13625)
     )
     (i32.store16 offset=192
      (global.get $_DIGITS_2236_13)
      (i32.const 13881)
     )
     (i32.store16 offset=194
      (global.get $_DIGITS_2236_13)
      (i32.const 14137)
     )
     (i32.store16 offset=196
      (global.get $_DIGITS_2236_13)
      (i32.const 14393)
     )
     (i32.store16 offset=198
      (global.get $_DIGITS_2236_13)
      (i32.const 14649)
     )
     (i32.const 0)
    )
    (i32.const 1879048190)
   )
  )
  (tuple.extract 0
   (tuple.make
    (global.get $_DIGITS_2236_13)
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $get_HEX_DIGITS_2240_13 (; has Stack IR ;) (param $0 i32) (result i32)
  (drop
   (if (result i32)
    (i32.shr_u
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (i32.eq
       (global.get $_HEX_DIGITS_2239_13)
       (i32.const -1)
      )
     )
     (i32.const 31)
    )
    (block (result i32)
     (global.set $_HEX_DIGITS_2239_13
      (tuple.extract 0
       (tuple.make
        (call $malloc_1268_7
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (i32.const 512)
        )
        (global.get $_HEX_DIGITS_2239_13)
       )
      )
     )
     (i32.store16
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12336)
     )
     (i32.store16 offset=2
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12592)
     )
     (i32.store16 offset=4
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12848)
     )
     (i32.store16 offset=6
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13104)
     )
     (i32.store16 offset=8
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13360)
     )
     (i32.store16 offset=10
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13616)
     )
     (i32.store16 offset=12
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13872)
     )
     (i32.store16 offset=14
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14128)
     )
     (i32.store16 offset=16
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14384)
     )
     (i32.store16 offset=18
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14640)
     )
     (i32.store16 offset=20
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 24880)
     )
     (i32.store16 offset=22
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25136)
     )
     (i32.store16 offset=24
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25392)
     )
     (i32.store16 offset=26
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25648)
     )
     (i32.store16 offset=28
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25904)
     )
     (i32.store16 offset=30
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 26160)
     )
     (i32.store16 offset=32
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12337)
     )
     (i32.store16 offset=34
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12593)
     )
     (i32.store16 offset=36
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12849)
     )
     (i32.store16 offset=38
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13105)
     )
     (i32.store16 offset=40
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13361)
     )
     (i32.store16 offset=42
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13617)
     )
     (i32.store16 offset=44
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13873)
     )
     (i32.store16 offset=46
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14129)
     )
     (i32.store16 offset=48
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14385)
     )
     (i32.store16 offset=50
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14641)
     )
     (i32.store16 offset=52
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 24881)
     )
     (i32.store16 offset=54
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25137)
     )
     (i32.store16 offset=56
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25393)
     )
     (i32.store16 offset=58
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25649)
     )
     (i32.store16 offset=60
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25905)
     )
     (i32.store16 offset=62
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 26161)
     )
     (i32.store16 offset=64
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12338)
     )
     (i32.store16 offset=66
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12594)
     )
     (i32.store16 offset=68
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12850)
     )
     (i32.store16 offset=70
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13106)
     )
     (i32.store16 offset=72
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13362)
     )
     (i32.store16 offset=74
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13618)
     )
     (i32.store16 offset=76
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13874)
     )
     (i32.store16 offset=78
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14130)
     )
     (i32.store16 offset=80
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14386)
     )
     (i32.store16 offset=82
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14642)
     )
     (i32.store16 offset=84
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 24882)
     )
     (i32.store16 offset=86
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25138)
     )
     (i32.store16 offset=88
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25394)
     )
     (i32.store16 offset=90
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25650)
     )
     (i32.store16 offset=92
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25906)
     )
     (i32.store16 offset=94
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 26162)
     )
     (i32.store16 offset=96
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12339)
     )
     (i32.store16 offset=98
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12595)
     )
     (i32.store16 offset=100
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12851)
     )
     (i32.store16 offset=102
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13107)
     )
     (i32.store16 offset=104
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13363)
     )
     (i32.store16 offset=106
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13619)
     )
     (i32.store16 offset=108
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13875)
     )
     (i32.store16 offset=110
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14131)
     )
     (i32.store16 offset=112
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14387)
     )
     (i32.store16 offset=114
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14643)
     )
     (i32.store16 offset=116
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 24883)
     )
     (i32.store16 offset=118
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25139)
     )
     (i32.store16 offset=120
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25395)
     )
     (i32.store16 offset=122
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25651)
     )
     (i32.store16 offset=124
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25907)
     )
     (i32.store16 offset=126
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 26163)
     )
     (i32.store16 offset=128
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12340)
     )
     (i32.store16 offset=130
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12596)
     )
     (i32.store16 offset=132
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12852)
     )
     (i32.store16 offset=134
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13108)
     )
     (i32.store16 offset=136
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13364)
     )
     (i32.store16 offset=138
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13620)
     )
     (i32.store16 offset=140
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13876)
     )
     (i32.store16 offset=142
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14132)
     )
     (i32.store16 offset=144
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14388)
     )
     (i32.store16 offset=146
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14644)
     )
     (i32.store16 offset=148
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 24884)
     )
     (i32.store16 offset=150
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25140)
     )
     (i32.store16 offset=152
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25396)
     )
     (i32.store16 offset=154
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25652)
     )
     (i32.store16 offset=156
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25908)
     )
     (i32.store16 offset=158
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 26164)
     )
     (i32.store16 offset=160
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12341)
     )
     (i32.store16 offset=162
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12597)
     )
     (i32.store16 offset=164
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12853)
     )
     (i32.store16 offset=166
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13109)
     )
     (i32.store16 offset=168
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13365)
     )
     (i32.store16 offset=170
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13621)
     )
     (i32.store16 offset=172
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13877)
     )
     (i32.store16 offset=174
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14133)
     )
     (i32.store16 offset=176
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14389)
     )
     (i32.store16 offset=178
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14645)
     )
     (i32.store16 offset=180
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 24885)
     )
     (i32.store16 offset=182
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25141)
     )
     (i32.store16 offset=184
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25397)
     )
     (i32.store16 offset=186
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25653)
     )
     (i32.store16 offset=188
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25909)
     )
     (i32.store16 offset=190
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 26165)
     )
     (i32.store16 offset=192
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12342)
     )
     (i32.store16 offset=194
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12598)
     )
     (i32.store16 offset=196
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12854)
     )
     (i32.store16 offset=198
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13110)
     )
     (i32.store16 offset=200
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13366)
     )
     (i32.store16 offset=202
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13622)
     )
     (i32.store16 offset=204
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13878)
     )
     (i32.store16 offset=206
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14134)
     )
     (i32.store16 offset=208
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14390)
     )
     (i32.store16 offset=210
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14646)
     )
     (i32.store16 offset=212
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 24886)
     )
     (i32.store16 offset=214
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25142)
     )
     (i32.store16 offset=216
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25398)
     )
     (i32.store16 offset=218
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25654)
     )
     (i32.store16 offset=220
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25910)
     )
     (i32.store16 offset=222
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 26166)
     )
     (i32.store16 offset=224
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12343)
     )
     (i32.store16 offset=226
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12599)
     )
     (i32.store16 offset=228
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12855)
     )
     (i32.store16 offset=230
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13111)
     )
     (i32.store16 offset=232
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13367)
     )
     (i32.store16 offset=234
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13623)
     )
     (i32.store16 offset=236
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13879)
     )
     (i32.store16 offset=238
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14135)
     )
     (i32.store16 offset=240
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14391)
     )
     (i32.store16 offset=242
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14647)
     )
     (i32.store16 offset=244
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 24887)
     )
     (i32.store16 offset=246
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25143)
     )
     (i32.store16 offset=248
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25399)
     )
     (i32.store16 offset=250
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25655)
     )
     (i32.store16 offset=252
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25911)
     )
     (i32.store16 offset=254
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 26167)
     )
     (i32.store16 offset=256
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12344)
     )
     (i32.store16 offset=258
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12600)
     )
     (i32.store16 offset=260
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12856)
     )
     (i32.store16 offset=262
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13112)
     )
     (i32.store16 offset=264
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13368)
     )
     (i32.store16 offset=266
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13624)
     )
     (i32.store16 offset=268
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13880)
     )
     (i32.store16 offset=270
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14136)
     )
     (i32.store16 offset=272
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14392)
     )
     (i32.store16 offset=274
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14648)
     )
     (i32.store16 offset=276
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 24888)
     )
     (i32.store16 offset=278
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25144)
     )
     (i32.store16 offset=280
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25400)
     )
     (i32.store16 offset=282
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25656)
     )
     (i32.store16 offset=284
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25912)
     )
     (i32.store16 offset=286
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 26168)
     )
     (i32.store16 offset=288
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12345)
     )
     (i32.store16 offset=290
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12601)
     )
     (i32.store16 offset=292
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12857)
     )
     (i32.store16 offset=294
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13113)
     )
     (i32.store16 offset=296
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13369)
     )
     (i32.store16 offset=298
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13625)
     )
     (i32.store16 offset=300
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13881)
     )
     (i32.store16 offset=302
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14137)
     )
     (i32.store16 offset=304
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14393)
     )
     (i32.store16 offset=306
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14649)
     )
     (i32.store16 offset=308
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 24889)
     )
     (i32.store16 offset=310
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25145)
     )
     (i32.store16 offset=312
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25401)
     )
     (i32.store16 offset=314
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25657)
     )
     (i32.store16 offset=316
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25913)
     )
     (i32.store16 offset=318
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 26169)
     )
     (i32.store16 offset=320
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12385)
     )
     (i32.store16 offset=322
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12641)
     )
     (i32.store16 offset=324
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12897)
     )
     (i32.store16 offset=326
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13153)
     )
     (i32.store16 offset=328
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13409)
     )
     (i32.store16 offset=330
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13665)
     )
     (i32.store16 offset=332
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13921)
     )
     (i32.store16 offset=334
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14177)
     )
     (i32.store16 offset=336
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14433)
     )
     (i32.store16 offset=338
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14689)
     )
     (i32.store16 offset=340
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 24929)
     )
     (i32.store16 offset=342
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25185)
     )
     (i32.store16 offset=344
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25441)
     )
     (i32.store16 offset=346
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25697)
     )
     (i32.store16 offset=348
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25953)
     )
     (i32.store16 offset=350
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 26209)
     )
     (i32.store16 offset=352
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12386)
     )
     (i32.store16 offset=354
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12642)
     )
     (i32.store16 offset=356
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12898)
     )
     (i32.store16 offset=358
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13154)
     )
     (i32.store16 offset=360
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13410)
     )
     (i32.store16 offset=362
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13666)
     )
     (i32.store16 offset=364
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13922)
     )
     (i32.store16 offset=366
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14178)
     )
     (i32.store16 offset=368
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14434)
     )
     (i32.store16 offset=370
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14690)
     )
     (i32.store16 offset=372
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 24930)
     )
     (i32.store16 offset=374
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25186)
     )
     (i32.store16 offset=376
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25442)
     )
     (i32.store16 offset=378
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25698)
     )
     (i32.store16 offset=380
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25954)
     )
     (i32.store16 offset=382
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 26210)
     )
     (i32.store16 offset=384
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12387)
     )
     (i32.store16 offset=386
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12643)
     )
     (i32.store16 offset=388
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12899)
     )
     (i32.store16 offset=390
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13155)
     )
     (i32.store16 offset=392
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13411)
     )
     (i32.store16 offset=394
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13667)
     )
     (i32.store16 offset=396
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13923)
     )
     (i32.store16 offset=398
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14179)
     )
     (i32.store16 offset=400
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14435)
     )
     (i32.store16 offset=402
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14691)
     )
     (i32.store16 offset=404
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 24931)
     )
     (i32.store16 offset=406
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25187)
     )
     (i32.store16 offset=408
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25443)
     )
     (i32.store16 offset=410
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25699)
     )
     (i32.store16 offset=412
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25955)
     )
     (i32.store16 offset=414
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 26211)
     )
     (i32.store16 offset=416
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12388)
     )
     (i32.store16 offset=418
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12644)
     )
     (i32.store16 offset=420
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12900)
     )
     (i32.store16 offset=422
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13156)
     )
     (i32.store16 offset=424
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13412)
     )
     (i32.store16 offset=426
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13668)
     )
     (i32.store16 offset=428
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13924)
     )
     (i32.store16 offset=430
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14180)
     )
     (i32.store16 offset=432
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14436)
     )
     (i32.store16 offset=434
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14692)
     )
     (i32.store16 offset=436
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 24932)
     )
     (i32.store16 offset=438
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25188)
     )
     (i32.store16 offset=440
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25444)
     )
     (i32.store16 offset=442
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25700)
     )
     (i32.store16 offset=444
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25956)
     )
     (i32.store16 offset=446
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 26212)
     )
     (i32.store16 offset=448
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12389)
     )
     (i32.store16 offset=450
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12645)
     )
     (i32.store16 offset=452
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12901)
     )
     (i32.store16 offset=454
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13157)
     )
     (i32.store16 offset=456
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13413)
     )
     (i32.store16 offset=458
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13669)
     )
     (i32.store16 offset=460
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13925)
     )
     (i32.store16 offset=462
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14181)
     )
     (i32.store16 offset=464
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14437)
     )
     (i32.store16 offset=466
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14693)
     )
     (i32.store16 offset=468
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 24933)
     )
     (i32.store16 offset=470
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25189)
     )
     (i32.store16 offset=472
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25445)
     )
     (i32.store16 offset=474
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25701)
     )
     (i32.store16 offset=476
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25957)
     )
     (i32.store16 offset=478
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 26213)
     )
     (i32.store16 offset=480
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12390)
     )
     (i32.store16 offset=482
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12646)
     )
     (i32.store16 offset=484
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 12902)
     )
     (i32.store16 offset=486
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13158)
     )
     (i32.store16 offset=488
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13414)
     )
     (i32.store16 offset=490
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13670)
     )
     (i32.store16 offset=492
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 13926)
     )
     (i32.store16 offset=494
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14182)
     )
     (i32.store16 offset=496
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14438)
     )
     (i32.store16 offset=498
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 14694)
     )
     (i32.store16 offset=500
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 24934)
     )
     (i32.store16 offset=502
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25190)
     )
     (i32.store16 offset=504
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25446)
     )
     (i32.store16 offset=506
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25702)
     )
     (i32.store16 offset=508
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 25958)
     )
     (i32.store16 offset=510
      (global.get $_HEX_DIGITS_2239_13)
      (i32.const 26214)
     )
     (i32.const 0)
    )
    (i32.const 1879048190)
   )
  )
  (tuple.extract 0
   (tuple.make
    (global.get $_HEX_DIGITS_2239_13)
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $decimalCount32_2302_13 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (select
     (select
      (i32.add
       (i32.shr_u
        (select
         (i32.const -2)
         (i32.const 2147483646)
         (i32.ge_u
          (local.get $1)
          (i32.const 10)
         )
        )
        (i32.const 31)
       )
       (i32.const 1)
      )
      (i32.add
       (i32.add
        (i32.shr_u
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i32.ge_u
           (local.get $1)
           (i32.const 10000)
          )
         )
         (i32.const 31)
        )
        (i32.const 3)
       )
       (i32.shr_u
        (select
         (i32.const -2)
         (i32.const 2147483646)
         (i32.ge_u
          (local.get $1)
          (i32.const 1000)
         )
        )
        (i32.const 31)
       )
      )
      (i32.shr_u
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (i32.lt_u
         (local.get $1)
         (i32.const 100)
        )
       )
       (i32.const 31)
      )
     )
     (select
      (i32.add
       (i32.shr_u
        (select
         (i32.const -2)
         (i32.const 2147483646)
         (i32.ge_u
          (local.get $1)
          (i32.const 1000000)
         )
        )
        (i32.const 31)
       )
       (i32.const 6)
      )
      (i32.add
       (i32.add
        (i32.shr_u
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i32.ge_u
           (local.get $1)
           (i32.const 1000000000)
          )
         )
         (i32.const 31)
        )
        (i32.const 8)
       )
       (i32.shr_u
        (select
         (i32.const -2)
         (i32.const 2147483646)
         (i32.ge_u
          (local.get $1)
          (i32.const 100000000)
         )
        )
        (i32.const 31)
       )
      )
      (i32.shr_u
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (i32.lt_u
         (local.get $1)
         (i32.const 10000000)
        )
       )
       (i32.const 31)
      )
     )
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i32.lt_u
        (local.get $1)
        (i32.const 100000)
       )
      )
      (i32.const 31)
     )
    )
    (i32.const 1879048190)
   )
  )
 )
 (func $decimalCount64High_2304_13 (; has Stack IR ;) (param $0 i32) (param $1 i64) (result i32)
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (select
     (select
      (i32.add
       (i32.add
        (i32.shr_u
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i64.ge_u
           (local.get $1)
           (i64.const 100000000000)
          )
         )
         (i32.const 31)
        )
        (i32.const 10)
       )
       (i32.shr_u
        (select
         (i32.const -2)
         (i32.const 2147483646)
         (i64.ge_u
          (local.get $1)
          (i64.const 10000000000)
         )
        )
        (i32.const 31)
       )
      )
      (i32.add
       (i32.add
        (i32.shr_u
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i64.ge_u
           (local.get $1)
           (i64.const 100000000000000)
          )
         )
         (i32.const 31)
        )
        (i32.const 13)
       )
       (i32.shr_u
        (select
         (i32.const -2)
         (i32.const 2147483646)
         (i64.ge_u
          (local.get $1)
          (i64.const 10000000000000)
         )
        )
        (i32.const 31)
       )
      )
      (i32.shr_u
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (i64.lt_u
         (local.get $1)
         (i64.const 1000000000000)
        )
       )
       (i32.const 31)
      )
     )
     (select
      (i32.add
       (i32.shr_u
        (select
         (i32.const -2)
         (i32.const 2147483646)
         (i64.ge_u
          (local.get $1)
          (i64.const 10000000000000000)
         )
        )
        (i32.const 31)
       )
       (i32.const 16)
      )
      (i32.add
       (i32.add
        (i32.shr_u
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i64.ge_u
           (local.get $1)
           (i64.const -8446744073709551616)
          )
         )
         (i32.const 31)
        )
        (i32.const 18)
       )
       (i32.shr_u
        (select
         (i32.const -2)
         (i32.const 2147483646)
         (i64.ge_u
          (local.get $1)
          (i64.const 1000000000000000000)
         )
        )
        (i32.const 31)
       )
      )
      (i32.shr_u
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (i64.lt_u
         (local.get $1)
         (i64.const 100000000000000000)
        )
       )
       (i32.const 31)
      )
     )
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i64.lt_u
        (local.get $1)
        (i64.const 1000000000000000)
       )
      )
      (i32.const 31)
     )
    )
    (i32.const 1879048190)
   )
  )
 )
 (func $ulog_base_2306_13 (; has Stack IR ;) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i64)
  (local $4 i64)
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (tuple.extract 0
       (tuple.make
        (select
         (i32.const -2)
         (i32.const 2147483646)
         (i32.eq
          (i32.popcnt
           (local.get $2)
          )
          (i32.const 1)
         )
        )
        (i32.const 1879048190)
       )
      )
      (i32.const 31)
     )
     (i32.add
      (i32.div_u
       (i32.sub
        (i32.const 63)
        (i32.wrap_i64
         (i64.clz
          (local.get $1)
         )
        )
       )
       (i32.sub
        (i32.const 31)
        (i32.clz
         (local.get $2)
        )
       )
      )
      (i32.const 1)
     )
     (block (result i32)
      (local.set $3
       (local.tee $4
        (i64.extend_i32_u
         (local.get $2)
        )
       )
      )
      (local.set $2
       (i32.const 1)
      )
      (drop
       (loop $MFor_loop.7203 (result i32)
        (if (result i32)
         (i32.shr_u
          (select
           (i32.const -2)
           (i32.const 2147483646)
           (i64.ge_u
            (local.get $1)
            (local.get $3)
           )
          )
          (i32.const 31)
         )
         (block
          (local.set $1
           (i64.div_u
            (local.get $1)
            (local.get $3)
           )
          )
          (local.set $3
           (i64.mul
            (local.get $3)
            (local.get $3)
           )
          )
          (local.set $2
           (i32.shl
            (local.get $2)
            (i32.const 1)
           )
          )
          (br $MFor_loop.7203)
         )
         (i32.const 1879048190)
        )
       )
      )
      (drop
       (loop $MFor_loop.7238 (result i32)
        (if (result i32)
         (i32.shr_u
          (select
           (i32.const -2)
           (i32.const 2147483646)
           (i64.ne
            (local.get $1)
            (i64.const 0)
           )
          )
          (i32.const 31)
         )
         (block
          (local.set $1
           (i64.div_u
            (local.get $1)
            (local.get $4)
           )
          )
          (local.set $2
           (i32.add
            (local.get $2)
            (i32.const 1)
           )
          )
          (br $MFor_loop.7238)
         )
         (i32.const 1879048190)
        )
       )
      )
      (i32.sub
       (local.get $2)
       (i32.const 1)
      )
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $utoa32_dec_lut_2313_13 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (drop
   (loop $MFor_loop.7268 (result i32)
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i32.ge_u
        (local.get $2)
        (i32.const 10000)
       )
      )
      (i32.const 31)
     )
     (block
      (local.set $4
       (i32.rem_u
        (local.get $2)
        (i32.const 10000)
       )
      )
      (local.set $2
       (i32.div_u
        (local.get $2)
        (i32.const 10000)
       )
      )
      (i32.store
       (i32.add
        (local.tee $3
         (i32.sub
          (local.get $3)
          (i32.const 4)
         )
        )
        (local.get $1)
       )
       (i32.or
        (i32.load16_u
         (i32.add
          (call $get_DIGITS_2237_13
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
          )
          (i32.shl
           (i32.div_u
            (local.get $4)
            (i32.const 100)
           )
           (i32.const 1)
          )
         )
        )
        (i32.shl
         (i32.load16_u
          (i32.add
           (call $get_DIGITS_2237_13
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
           )
           (i32.shl
            (i32.rem_u
             (local.get $4)
             (i32.const 100)
            )
            (i32.const 1)
           )
          )
         )
         (i32.const 16)
        )
       )
      )
      (br $MFor_loop.7268)
     )
     (i32.const 1879048190)
    )
   )
  )
  (drop
   (if (result i32)
    (i32.shr_u
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (i32.ge_u
       (local.get $2)
       (i32.const 100)
      )
     )
     (i32.const 31)
    )
    (block (result i32)
     (local.set $4
      (i32.rem_u
       (local.get $2)
       (i32.const 100)
      )
     )
     (local.set $2
      (i32.div_u
       (local.get $2)
       (i32.const 100)
      )
     )
     (i32.store16
      (i32.add
       (local.tee $3
        (i32.sub
         (local.get $3)
         (i32.const 2)
        )
       )
       (local.get $1)
      )
      (i32.load16_u
       (i32.add
        (call $get_DIGITS_2237_13
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
        )
        (i32.shl
         (local.get $4)
         (i32.const 1)
        )
       )
      )
     )
     (i32.const 0)
    )
    (i32.const 1879048190)
   )
  )
  (if
   (i32.shr_u
    (select
     (i32.const -2)
     (i32.const 2147483646)
     (i32.ge_u
      (local.get $2)
      (i32.const 10)
     )
    )
    (i32.const 31)
   )
   (i32.store16
    (i32.add
     (i32.sub
      (local.get $3)
      (i32.const 2)
     )
     (local.get $1)
    )
    (i32.load16_u
     (i32.add
      (call $get_DIGITS_2237_13
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.shl
       (local.get $2)
       (i32.const 1)
      )
     )
    )
   )
   (i32.store8
    (i32.add
     (i32.sub
      (local.get $3)
      (i32.const 1)
     )
     (local.get $1)
    )
    (i32.add
     (local.get $2)
     (i32.const 48)
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (i32.const 1879048190)
 )
 (func $utoa_hex_lut_2346_13 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (local.set $4
   (call $get_HEX_DIGITS_2240_13
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  (drop
   (loop $MFor_loop.7547 (result i32)
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i32.ge_u
        (local.get $3)
        (i32.const 2)
       )
      )
      (i32.const 31)
     )
     (block
      (i32.store16
       (i32.add
        (local.tee $3
         (i32.sub
          (local.get $3)
          (i32.const 2)
         )
        )
        (local.get $1)
       )
       (i32.load16_u
        (i32.add
         (i32.shl
          (i32.and
           (i32.wrap_i64
            (local.get $2)
           )
           (i32.const 255)
          )
          (i32.const 1)
         )
         (local.get $4)
        )
       )
      )
      (local.set $2
       (i64.shr_u
        (local.get $2)
        (i64.const 8)
       )
      )
      (br $MFor_loop.7547)
     )
     (i32.const 1879048190)
    )
   )
  )
  (if
   (i32.shr_u
    (select
     (i32.const -2)
     (i32.const 2147483646)
     (i32.and
      (local.get $3)
      (i32.const 1)
     )
    )
    (i32.const 31)
   )
   (i32.store8
    (local.get $1)
    (i32.load8_u
     (i32.add
      (i32.shl
       (i32.wrap_i64
        (local.get $2)
       )
       (i32.const 5)
      )
      (local.get $4)
     )
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (i32.const 1879048190)
 )
 (func $utoa32_dec_core_2353_13 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (return_call $utoa32_dec_lut_2313_13
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
   (local.get $1)
   (local.get $2)
   (local.get $3)
  )
 )
 (func $utoa32_hex_core_2357_13 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (return_call $utoa_hex_lut_2346_13
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
   (local.get $1)
   (i64.extend_i32_u
    (local.get $2)
   )
   (local.get $3)
  )
 )
 (func $utoa64_dec_core_2361_13 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (local.set $0
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
  )
  (drop
   (loop $MFor_loop.7412 (result i32)
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i64.ge_u
        (local.get $2)
        (i64.const 100000000)
       )
      )
      (i32.const 31)
     )
     (block
      (i32.store
       (i32.add
        (local.tee $3
         (i32.sub
          (local.get $3)
          (i32.const 4)
         )
        )
        (local.get $1)
       )
       (i32.or
        (i32.load16_u
         (i32.add
          (call $get_DIGITS_2237_13
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
          )
          (i32.shl
           (i32.div_u
            (local.tee $5
             (i32.rem_u
              (local.tee $4
               (i32.wrap_i64
                (i64.sub
                 (local.get $2)
                 (i64.mul
                  (local.tee $2
                   (i64.div_u
                    (local.get $2)
                    (i64.const 100000000)
                   )
                  )
                  (i64.const 100000000)
                 )
                )
               )
              )
              (i32.const 10000)
             )
            )
            (i32.const 100)
           )
           (i32.const 1)
          )
         )
        )
        (i32.shl
         (i32.load16_u
          (i32.add
           (call $get_DIGITS_2237_13
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
           )
           (i32.shl
            (i32.rem_u
             (local.get $5)
             (i32.const 100)
            )
            (i32.const 1)
           )
          )
         )
         (i32.const 16)
        )
       )
      )
      (i32.store
       (i32.add
        (local.tee $3
         (i32.sub
          (local.get $3)
          (i32.const 4)
         )
        )
        (local.get $1)
       )
       (i32.or
        (i32.load16_u
         (i32.add
          (call $get_DIGITS_2237_13
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
          )
          (i32.shl
           (i32.div_u
            (local.tee $4
             (i32.div_u
              (local.get $4)
              (i32.const 10000)
             )
            )
            (i32.const 100)
           )
           (i32.const 1)
          )
         )
        )
        (i32.shl
         (i32.load16_u
          (i32.add
           (call $get_DIGITS_2237_13
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
           )
           (i32.shl
            (i32.rem_u
             (local.get $4)
             (i32.const 100)
            )
            (i32.const 1)
           )
          )
         )
         (i32.const 16)
        )
       )
      )
      (br $MFor_loop.7412)
     )
     (i32.const 1879048190)
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (return_call $utoa32_dec_lut_2313_13
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
   (local.get $1)
   (i32.wrap_i64
    (local.get $2)
   )
   (local.get $3)
  )
 )
 (func $utoa64_any_core_2369_13 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i64)
  (local.set $6
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
  )
  (drop
   (if (result i32)
    (i32.shr_u
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (i32.eq
       (global.get $_ANY_DIGITS_2242_13)
       (i32.const -1)
      )
     )
     (i32.const 31)
    )
    (block (result i32)
     (global.set $_ANY_DIGITS_2242_13
      (tuple.extract 0
       (tuple.make
        (call $malloc_1268_7
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (i32.const 36)
        )
        (global.get $_ANY_DIGITS_2242_13)
       )
      )
     )
     (i32.store8
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 48)
     )
     (i32.store8 offset=1
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 49)
     )
     (i32.store8 offset=2
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 50)
     )
     (i32.store8 offset=3
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 51)
     )
     (i32.store8 offset=4
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 52)
     )
     (i32.store8 offset=5
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 53)
     )
     (i32.store8 offset=6
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 54)
     )
     (i32.store8 offset=7
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 55)
     )
     (i32.store8 offset=8
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 56)
     )
     (i32.store8 offset=9
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 57)
     )
     (i32.store8 offset=10
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 97)
     )
     (i32.store8 offset=11
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 98)
     )
     (i32.store8 offset=12
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 99)
     )
     (i32.store8 offset=13
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 100)
     )
     (i32.store8 offset=14
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 101)
     )
     (i32.store8 offset=15
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 102)
     )
     (i32.store8 offset=16
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 103)
     )
     (i32.store8 offset=17
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 104)
     )
     (i32.store8 offset=18
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 105)
     )
     (i32.store8 offset=19
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 106)
     )
     (i32.store8 offset=20
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 107)
     )
     (i32.store8 offset=21
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 108)
     )
     (i32.store8 offset=22
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 109)
     )
     (i32.store8 offset=23
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 110)
     )
     (i32.store8 offset=24
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 111)
     )
     (i32.store8 offset=25
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 112)
     )
     (i32.store8 offset=26
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 113)
     )
     (i32.store8 offset=27
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 114)
     )
     (i32.store8 offset=28
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 115)
     )
     (i32.store8 offset=29
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 116)
     )
     (i32.store8 offset=30
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 117)
     )
     (i32.store8 offset=31
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 118)
     )
     (i32.store8 offset=32
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 119)
     )
     (i32.store8 offset=33
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 120)
     )
     (i32.store8 offset=34
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 121)
     )
     (i32.store8 offset=35
      (global.get $_ANY_DIGITS_2242_13)
      (i32.const 122)
     )
     (i32.const 0)
    )
    (i32.const 1879048190)
   )
  )
  (local.set $6
   (tuple.extract 0
    (tuple.make
     (global.get $_ANY_DIGITS_2242_13)
     (block (result i32)
      (drop
       (call $decRef_1330_7
        (i32.const 0)
        (local.get $6)
       )
      )
      (i32.const 1879048190)
     )
    )
   )
  )
  (local.set $5
   (i64.extend_i32_u
    (local.get $4)
   )
  )
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const 2147483646)
       (i32.const -2)
       (i32.and
        (i32.sub
         (local.get $4)
         (i32.const 1)
        )
        (local.get $4)
       )
      )
      (i32.const 31)
     )
     (block (result i32)
      (local.set $7
       (i64.extend_i32_u
        (i32.and
         (i32.ctz
          (local.get $4)
         )
         (i32.const 7)
        )
       )
      )
      (local.set $5
       (i64.sub
        (local.get $5)
        (i64.const 1)
       )
      )
      (loop $MFor_loop.7642 (result i32)
       (block $MFor.7641 (result i32)
        (i32.store8
         (i32.add
          (local.tee $3
           (i32.sub
            (local.get $3)
            (i32.const 1)
           )
          )
          (local.get $1)
         )
         (i32.load8_u
          (i32.add
           (i32.wrap_i64
            (i64.and
             (local.get $2)
             (local.get $5)
            )
           )
           (local.get $6)
          )
         )
        )
        (drop
         (br_if $MFor.7641
          (i32.const 1879048190)
          (i32.shr_u
           (select
            (i32.const -2)
            (i32.const 2147483646)
            (i64.eqz
             (local.tee $2
              (i64.shr_u
               (local.get $2)
               (local.get $7)
              )
             )
            )
           )
           (i32.const 31)
          )
         )
        )
        (br $MFor_loop.7642)
       )
      )
     )
     (loop $MFor_loop.7685 (result i32)
      (block $MFor.7684 (result i32)
       (i32.store8
        (i32.add
         (local.tee $3
          (i32.sub
           (local.get $3)
           (i32.const 1)
          )
         )
         (local.get $1)
        )
        (i32.load8_u
         (i32.add
          (i32.wrap_i64
           (i64.sub
            (local.get $2)
            (i64.mul
             (local.tee $2
              (i64.div_u
               (local.get $2)
               (local.get $5)
              )
             )
             (local.get $5)
            )
           )
          )
          (local.get $6)
         )
        )
       )
       (drop
        (br_if $MFor.7684
         (i32.const 1879048190)
         (i32.shr_u
          (select
           (i32.const -2)
           (i32.const 2147483646)
           (i64.eqz
            (local.get $2)
           )
          )
          (i32.const 31)
         )
        )
       )
       (br $MFor_loop.7685)
      )
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $utoa32_2393_13 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const 2147483646)
       (i32.const -2)
       (local.get $1)
      )
      (i32.const 31)
     )
     (block (result i32)
      (i32.store
       (local.tee $1
        (call $malloc_1268_7
         (i32.const 0)
         (i32.const 16)
        )
       )
       (i32.const 1)
      )
      (i32.store offset=4
       (local.get $1)
       (i32.const 1)
      )
      (i64.store offset=8
       (local.get $1)
       (i64.const 48)
      )
      (local.get $1)
     )
     (block (result i32)
      (i32.store
       (local.tee $2
        (call $malloc_1268_7
         (i32.const 0)
         (i32.add
          (local.tee $3
           (call $decimalCount32_2302_13
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $1)
           )
          )
          (i32.const 8)
         )
        )
       )
       (i32.const 1)
      )
      (i32.store offset=4
       (local.get $2)
       (local.get $3)
      )
      (drop
       (call $utoa32_dec_core_2353_13
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (i32.add
         (local.get $2)
         (i32.const 8)
        )
        (local.get $1)
        (local.get $3)
       )
      )
      (local.get $2)
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $itoa32_2403_13 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (if
   (i32.shr_u
    (select
     (local.tee $4
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i32.lt_s
        (local.get $2)
        (i32.const 2)
       )
      )
     )
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (i32.gt_s
       (local.get $2)
       (i32.const 36)
      )
     )
     (i32.shr_u
      (local.get $4)
      (i32.const 31)
     )
    )
    (i32.const 31)
   )
   (block
    (i32.store
     (local.tee $0
      (call $malloc_1268_7
       (i32.const 0)
       (i32.const 64)
      )
     )
     (i32.const 1)
    )
    (i32.store offset=4
     (local.get $0)
     (i32.const 50)
    )
    (i64.store offset=8
     (local.get $0)
     (i64.const 7453010373643562868)
    )
    (i64.store offset=16
     (local.get $0)
     (i64.const 8676576526795286824)
    )
    (i64.store offset=24
     (local.get $0)
     (i64.const 7954884667833999648)
    )
    (i64.store offset=32
     (local.get $0)
     (i64.const 7070779454211825780)
    )
    (i64.store offset=40
     (local.get $0)
     (i64.const 7306377312279339109)
    )
    (i64.store offset=48
     (local.get $0)
     (i64.const 2334111870315798638)
    )
    (i64.store offset=56
     (local.get $0)
     (i64.const 13875)
    )
    (i32.store
     (local.tee $1
      (call $malloc_1268_7
       (i32.const 0)
       (i32.const 24)
      )
     )
     (i32.const 2)
    )
    (i32.store offset=4
     (local.get $1)
     (i32.const 1)
    )
    (i32.store offset=8
     (local.get $1)
     (i32.const 5)
    )
    (i32.store offset=12
     (local.get $1)
     (i32.const 2051)
    )
    (i32.store offset=16
     (local.get $1)
     (i32.const 1)
    )
    (i32.store offset=20
     (local.get $1)
     (local.get $0)
    )
    (call $throw_1387_12
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $1)
    )
    (unreachable)
   )
  )
  (drop
   (if (result i32)
    (i32.shr_u
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (local.tee $4
       (i32.shr_u
        (local.get $1)
        (i32.const 31)
       )
      )
     )
     (i32.const 31)
    )
    (block (result i32)
     (local.set $1
      (i32.sub
       (i32.const 0)
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (i32.const 1879048190)
   )
  )
  (local.set $1
   (if (result i32)
    (i32.shr_u
     (select
      (i32.const 2147483646)
      (i32.const -2)
      (local.get $1)
     )
     (i32.const 31)
    )
    (block (result i32)
     (i32.store
      (local.tee $1
       (call $malloc_1268_7
        (i32.const 0)
        (i32.const 16)
       )
      )
      (i32.const 1)
     )
     (i32.store offset=4
      (local.get $1)
      (i32.const 1)
     )
     (i64.store offset=8
      (local.get $1)
      (i64.const 48)
     )
     (local.get $1)
    )
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i32.eq
        (local.get $2)
        (i32.const 10)
       )
      )
      (i32.const 31)
     )
     (block (result i32)
      (i32.store
       (local.tee $2
        (call $malloc_1268_7
         (i32.const 0)
         (i32.add
          (local.tee $3
           (i32.add
            (call $decimalCount32_2302_13
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $1)
            )
            (local.get $4)
           )
          )
          (i32.const 8)
         )
        )
       )
       (i32.const 1)
      )
      (i32.store offset=4
       (local.get $2)
       (local.get $3)
      )
      (drop
       (call $utoa32_dec_core_2353_13
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (i32.add
         (local.get $2)
         (i32.const 8)
        )
        (local.get $1)
        (local.get $3)
       )
      )
      (local.get $2)
     )
     (if (result i32)
      (i32.shr_u
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (i32.eq
         (local.get $2)
         (i32.const 16)
        )
       )
       (i32.const 31)
      )
      (block (result i32)
       (i32.store
        (local.tee $2
         (call $malloc_1268_7
          (i32.const 0)
          (i32.add
           (local.tee $3
            (i32.add
             (i32.add
              (i32.shr_u
               (i32.sub
                (i32.const 31)
                (i32.clz
                 (local.get $1)
                )
               )
               (i32.const 2)
              )
              (i32.const 1)
             )
             (local.get $4)
            )
           )
           (i32.const 8)
          )
         )
        )
        (i32.const 1)
       )
       (i32.store offset=4
        (local.get $2)
        (local.get $3)
       )
       (drop
        (call $utoa32_hex_core_2357_13
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (i32.add
          (local.get $2)
          (i32.const 8)
         )
         (local.get $1)
         (local.get $3)
        )
       )
       (local.get $2)
      )
      (block (result i32)
       (i32.store
        (local.tee $1
         (call $malloc_1268_7
          (i32.const 0)
          (i32.add
           (local.tee $3
            (i32.add
             (call $ulog_base_2306_13
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.tee $5
               (i64.extend_i32_u
                (local.get $1)
               )
              )
              (local.get $2)
             )
             (local.get $4)
            )
           )
           (i32.const 8)
          )
         )
        )
        (i32.const 1)
       )
       (i32.store offset=4
        (local.get $1)
        (local.get $3)
       )
       (drop
        (call $utoa64_any_core_2369_13
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (i32.add
          (local.get $1)
          (i32.const 8)
         )
         (local.get $5)
         (local.get $3)
         (local.get $2)
        )
       )
       (local.get $1)
      )
     )
    )
   )
  )
  (drop
   (if (result i32)
    (i32.shr_u
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (local.get $4)
     )
     (i32.const 31)
    )
    (block (result i32)
     (i32.store8 offset=8
      (local.get $1)
      (i32.const 45)
     )
     (i32.const 0)
    )
    (i32.const 1879048190)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (local.get $1)
    (i32.const 1879048190)
   )
  )
 )
 (func $umul64f_2444_13 (; has Stack IR ;) (param $0 i32) (param $1 i64) (param $2 i64) (result i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local.set $1
   (i64.add
    (i64.mul
     (local.tee $3
      (i64.and
       (local.get $2)
       (i64.const 4294967295)
      )
     )
     (local.tee $4
      (i64.shr_u
       (local.get $1)
       (i64.const 32)
      )
     )
    )
    (i64.shr_u
     (i64.mul
      (local.get $3)
      (local.tee $5
       (i64.and
        (local.get $1)
        (i64.const 4294967295)
       )
      )
     )
     (i64.const 32)
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (i64.add
     (i64.add
      (i64.mul
       (local.tee $2
        (i64.shr_u
         (local.get $2)
         (i64.const 32)
        )
       )
       (local.get $4)
      )
      (i64.shr_u
       (local.get $1)
       (i64.const 32)
      )
     )
     (i64.shr_u
      (i64.add
       (i64.add
        (i64.mul
         (local.get $2)
         (local.get $5)
        )
        (i64.and
         (local.get $1)
         (i64.const 4294967295)
        )
       )
       (i64.const 2147483647)
      )
      (i64.const 32)
     )
    )
    (i32.const 1879048190)
   )
  )
 )
 (func $grisuRound_2457_13 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (param $4 i64) (param $5 i64) (param $6 i64)
  (local $7 i32)
  (local.set $2
   (i32.load8_u
    (local.tee $7
     (i32.sub
      (i32.add
       (local.get $1)
       (local.get $2)
      )
      (i32.const 1)
     )
    )
   )
  )
  (drop
   (loop $MFor_loop.8208 (result i32)
    (if
     (i32.shr_u
      (local.tee $1
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (i64.lt_u
         (local.get $4)
         (local.get $6)
        )
       )
      )
      (i32.const 31)
     )
     (local.set $1
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i64.ge_u
        (i64.sub
         (local.get $3)
         (local.get $4)
        )
        (local.get $5)
       )
      )
     )
    )
    (if (result i32)
     (i32.shr_u
      (if (result i32)
       (i32.shr_u
        (local.get $1)
        (i32.const 31)
       )
       (if (result i32)
        (i32.shr_u
         (local.tee $1
          (select
           (i32.const -2)
           (i32.const 2147483646)
           (i64.lt_u
            (i64.add
             (local.get $4)
             (local.get $5)
            )
            (local.get $6)
           )
          )
         )
         (i32.const 31)
        )
        (local.get $1)
        (select
         (i32.const -2)
         (i32.const 2147483646)
         (i64.gt_u
          (i64.sub
           (local.get $6)
           (local.get $4)
          )
          (i64.sub
           (i64.add
            (local.get $4)
            (local.get $5)
           )
           (local.get $6)
          )
         )
        )
       )
       (local.get $1)
      )
      (i32.const 31)
     )
     (block
      (local.set $2
       (i32.sub
        (local.get $2)
        (i32.const 1)
       )
      )
      (local.set $4
       (i64.add
        (local.get $4)
        (local.get $5)
       )
      )
      (br $MFor_loop.8208)
     )
     (i32.const 1879048190)
    )
   )
  )
  (i32.store8
   (local.get $7)
   (local.get $2)
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
 )
 (func $genExponent_2487_13 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (drop
   (if (result i32)
    (i32.shr_u
     (local.tee $4
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i32.lt_s
        (local.get $2)
        (i32.const 0)
       )
      )
     )
     (i32.const 31)
    )
    (block (result i32)
     (local.set $2
      (i32.sub
       (i32.const 0)
       (local.get $2)
      )
     )
     (i32.const 0)
    )
    (i32.const 1879048190)
   )
  )
  (local.set $3
   (i32.add
    (call $decimalCount32_2302_13
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $2)
    )
    (i32.const 1)
   )
  )
  (drop
   (call $utoa32_dec_core_2353_13
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $1)
    (local.get $2)
    (local.get $3)
   )
  )
  (i32.store8
   (local.get $1)
   (select
    (i32.const 45)
    (i32.const 43)
    (i32.shr_u
     (local.get $4)
     (i32.const 31)
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (local.get $3)
    (i32.const 1879048190)
   )
  )
 )
 (func $get_dtoa_buf_2570_13 (; has Stack IR ;) (param $0 i32) (result i32)
  (drop
   (if (result i32)
    (i32.shr_u
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (i32.eq
       (global.get $_dtoa_buf_2569_13)
       (i32.const -1)
      )
     )
     (i32.const 31)
    )
    (block (result i32)
     (global.set $_dtoa_buf_2569_13
      (tuple.extract 0
       (tuple.make
        (call $malloc_1268_7
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (i32.const 28)
        )
        (global.get $_dtoa_buf_2569_13)
       )
      )
     )
     (i32.const 0)
    )
    (i32.const 1879048190)
   )
  )
  (tuple.extract 0
   (tuple.make
    (global.get $_dtoa_buf_2569_13)
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $dtoa_2576_13 (; has Stack IR ;) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 i64)
  (local $13 i32)
  (local $14 i64)
  (local $15 i64)
  (local $16 i32)
  (local $17 i64)
  (local $18 i32)
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (f64.eq
        (local.get $1)
        (f64.const 0)
       )
      )
      (i32.const 31)
     )
     (block (result i32)
      (i32.store
       (local.tee $3
        (call $malloc_1268_7
         (i32.const 0)
         (i32.const 11)
        )
       )
       (i32.const 1)
      )
      (i32.store offset=4
       (local.get $3)
       (i32.const 3)
      )
      (i32.store8 offset=8
       (local.get $3)
       (i32.const 48)
      )
      (i32.store8 offset=9
       (local.get $3)
       (i32.const 46)
      )
      (i32.store8 offset=10
       (local.get $3)
       (i32.const 48)
      )
      (local.get $3)
     )
     (block (result i32)
      (drop
       (call $decRef_1330_7
        (i32.const 0)
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
       )
      )
      (if
       (i32.shr_u
        (i32.xor
         (tuple.extract 0
          (tuple.make
           (select
            (i32.const -2)
            (i32.const 2147483646)
            (f64.eq
             (f64.sub
              (local.get $1)
              (local.get $1)
             )
             (f64.const 0)
            )
           )
           (i32.const 1879048190)
          )
         )
         (i32.const -2147483648)
        )
        (i32.const 31)
       )
       (block
        (drop
         (call $decRef_1330_7
          (i32.const 0)
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
         )
        )
        (if
         (i32.shr_u
          (tuple.extract 0
           (tuple.make
            (select
             (i32.const -2)
             (i32.const 2147483646)
             (f64.ne
              (local.get $1)
              (local.get $1)
             )
            )
            (i32.const 1879048190)
           )
          )
          (i32.const 31)
         )
         (block
          (i32.store
           (local.tee $2
            (call $malloc_1268_7
             (i32.const 0)
             (i32.const 11)
            )
           )
           (i32.const 1)
          )
          (i32.store offset=4
           (local.get $2)
           (i32.const 3)
          )
          (i32.store offset=8
           (local.get $2)
           (i32.const 5136718)
          )
         )
         (if
          (i32.shr_u
           (select
            (i32.const -2)
            (i32.const 2147483646)
            (f64.lt
             (local.get $1)
             (f64.const 0)
            )
           )
           (i32.const 31)
          )
          (block
           (i32.store
            (local.tee $2
             (call $malloc_1268_7
              (i32.const 0)
              (i32.const 17)
             )
            )
            (i32.const 1)
           )
           (i32.store offset=4
            (local.get $2)
            (i32.const 9)
           )
           (i64.store offset=8
            (local.get $2)
            (i64.const 8388357179923384621)
           )
           (i32.store8 offset=16
            (local.get $2)
            (i32.const 121)
           )
          )
          (block
           (i32.store
            (local.tee $2
             (call $malloc_1268_7
              (i32.const 0)
              (i32.const 16)
             )
            )
            (i32.const 1)
           )
           (i32.store offset=4
            (local.get $2)
            (i32.const 8)
           )
           (i64.store offset=8
            (local.get $2)
            (i64.const 8751735898823355977)
           )
          )
         )
        )
       )
       (block
        (local.set $5
         (call $get_dtoa_buf_2570_13
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
         )
        )
        (local.set $18
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
        )
        (drop
         (if (result i32)
          (i32.shr_u
           (local.tee $3
            (select
             (i32.const -2)
             (i32.const 2147483646)
             (f64.lt
              (local.get $1)
              (f64.const 0)
             )
            )
           )
           (i32.const 31)
          )
          (block (result i32)
           (local.set $1
            (f64.neg
             (local.get $1)
            )
           )
           (i32.store8
            (local.get $5)
            (i32.const 45)
           )
           (i32.const 0)
          )
          (i32.const 1879048190)
         )
        )
        (local.set $6
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
        )
        (local.set $8
         (local.tee $16
          (i32.shr_u
           (local.get $3)
           (i32.const 31)
          )
         )
        )
        (global.set $_K_2443_13
         (tuple.extract 0
          (tuple.make
           (i32.sub
            (i32.const 348)
            (i32.shl
             (local.tee $2
              (i32.add
               (i32.shr_s
                (i32.add
                 (local.tee $3
                  (i32.trunc_f64_s
                   (local.tee $1
                    (f64.add
                     (f64.mul
                      (f64.convert_i32_s
                       (i32.sub
                        (i32.const -61)
                        (local.tee $4
                         (i32.sub
                          (i32.sub
                           (local.tee $13
                            (i32.sub
                             (select
                              (i32.const 1)
                              (local.tee $3
                               (i32.wrap_i64
                                (i64.shr_u
                                 (i64.and
                                  (local.tee $10
                                   (i64.reinterpret_f64
                                    (local.get $1)
                                   )
                                  )
                                  (i64.const 9218868437227405312)
                                 )
                                 (i64.const 52)
                                )
                               )
                              )
                              (local.tee $3
                               (i32.shr_u
                                (select
                                 (i32.const 2147483646)
                                 (i32.const -2)
                                 (local.get $3)
                                )
                                (i32.const 31)
                               )
                              )
                             )
                             (i32.const 1075)
                            )
                           )
                           (i32.const 1)
                          )
                          (i32.wrap_i64
                           (local.tee $9
                            (i64.clz
                             (local.tee $17
                              (i64.add
                               (i64.shl
                                (local.tee $11
                                 (i64.add
                                  (i64.and
                                   (local.get $10)
                                   (i64.const 4503599627370495)
                                  )
                                  (i64.shl
                                   (i64.extend_i32_u
                                    (i32.eqz
                                     (local.get $3)
                                    )
                                   )
                                   (i64.const 52)
                                  )
                                 )
                                )
                                (i64.const 1)
                               )
                               (i64.const 1)
                              )
                             )
                            )
                           )
                          )
                         )
                        )
                       )
                      )
                      (f64.const 0.30102999566398114)
                     )
                     (f64.const 347)
                    )
                   )
                  )
                 )
                 (i32.shr_u
                  (select
                   (i32.const -2)
                   (i32.const 2147483646)
                   (f64.ne
                    (f64.convert_i32_s
                     (local.get $3)
                    )
                    (local.get $1)
                   )
                  )
                  (i32.const 31)
                 )
                )
                (i32.const 3)
               )
               (i32.const 1)
              )
             )
             (i32.const 3)
            )
           )
           (global.get $_K_2443_13)
          )
         )
        )
        (local.set $3
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
        )
        (drop
         (if (result i32)
          (i32.shr_u
           (select
            (i32.const -2)
            (i32.const 2147483646)
            (i32.eq
             (global.get $_FRC_POWERS_2248_13)
             (i32.const -1)
            )
           )
           (i32.const 31)
          )
          (block (result i32)
           (global.set $_FRC_POWERS_2248_13
            (tuple.extract 0
             (tuple.make
              (call $malloc_1268_7
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (i32.const 696)
              )
              (global.get $_FRC_POWERS_2248_13)
             )
            )
           )
           (i64.store
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -391859759250406776)
           )
           (i64.store offset=8
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -4994806998408183946)
           )
           (i64.store offset=16
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -8424269937281487754)
           )
           (i64.store offset=24
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -3512093806901185046)
           )
           (i64.store offset=32
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -7319562523736982739)
           )
           (i64.store offset=40
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -1865951482774665761)
           )
           (i64.store offset=48
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -6093090917745768758)
           )
           (i64.store offset=56
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -38366372719436721)
           )
           (i64.store offset=64
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -4731433901725329908)
           )
           (i64.store offset=72
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -8228041688891786180)
           )
           (i64.store offset=80
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -3219690930897053053)
           )
           (i64.store offset=88
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -7101705404292871755)
           )
           (i64.store offset=96
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -1541319077368263733)
           )
           (i64.store offset=104
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -5851220927660403859)
           )
           (i64.store offset=112
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -9062348037703676329)
           )
           (i64.store offset=120
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -4462904269766699465)
           )
           (i64.store offset=128
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -8027971522334779313)
           )
           (i64.store offset=136
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -2921563150702462265)
           )
           (i64.store offset=144
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -6879582898840692748)
           )
           (i64.store offset=152
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -1210330751515841307)
           )
           (i64.store offset=160
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -5604615407819967858)
           )
           (i64.store offset=168
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -8878612607581929669)
           )
           (i64.store offset=176
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -4189117143640191558)
           )
           (i64.store offset=184
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -7823984217374209642)
           )
           (i64.store offset=192
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -2617598379430861436)
           )
           (i64.store offset=200
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -6653111496142234890)
           )
           (i64.store offset=208
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -872862063775190746)
           )
           (i64.store offset=216
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -5353181642124984136)
           )
           (i64.store offset=224
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -8691279853972075893)
           )
           (i64.store offset=232
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -3909969587797413805)
           )
           (i64.store offset=240
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -7616003081050118571)
           )
           (i64.store offset=248
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -2307682335666372931)
           )
           (i64.store offset=256
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -6422206049907525489)
           )
           (i64.store offset=264
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -528786136287117932)
           )
           (i64.store offset=272
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -5096825099203863601)
           )
           (i64.store offset=280
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -8500279345513818773)
           )
           (i64.store offset=288
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -3625356651333078602)
           )
           (i64.store offset=296
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -7403949918844649556)
           )
           (i64.store offset=304
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -1991698500497491194)
           )
           (i64.store offset=312
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -6186779746782440749)
           )
           (i64.store offset=320
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -177973607073265138)
           )
           (i64.store offset=328
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -4835449396872013077)
           )
           (i64.store offset=336
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -8305539271883716404)
           )
           (i64.store offset=344
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -3335171328526686932)
           )
           (i64.store offset=352
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -7187745005283311616)
           )
           (i64.store offset=360
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -1669528073709551616)
           )
           (i64.store offset=368
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -5946744073709551616)
           )
           (i64.store offset=376
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -9133518327554766460)
           )
           (i64.store offset=384
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -4568956265895094861)
           )
           (i64.store offset=392
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -8106986416796705680)
           )
           (i64.store offset=400
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -3039304518611664792)
           )
           (i64.store offset=408
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -6967307053960650171)
           )
           (i64.store offset=416
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -1341049929119499481)
           )
           (i64.store offset=424
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -5702008784649933400)
           )
           (i64.store offset=432
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -8951176327949752869)
           )
           (i64.store offset=440
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -4297245513042813542)
           )
           (i64.store offset=448
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -7904546130479028392)
           )
           (i64.store offset=456
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -2737644984756826646)
           )
           (i64.store offset=464
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -6742553186979055798)
           )
           (i64.store offset=472
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -1006140569036166267)
           )
           (i64.store offset=480
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -5452481866653427593)
           )
           (i64.store offset=488
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -8765264286586255934)
           )
           (i64.store offset=496
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -4020214983419339459)
           )
           (i64.store offset=504
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -7698142301602209613)
           )
           (i64.store offset=512
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -2430079312244744221)
           )
           (i64.store offset=520
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -6513398903789220827)
           )
           (i64.store offset=528
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -664674077828931748)
           )
           (i64.store offset=536
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -5198069505264599346)
           )
           (i64.store offset=544
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -8575712306248138270)
           )
           (i64.store offset=552
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -3737760522056206171)
           )
           (i64.store offset=560
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -7487697328667536417)
           )
           (i64.store offset=568
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -2116491865831296966)
           )
           (i64.store offset=576
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -6279758049420528746)
           )
           (i64.store offset=584
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -316522074587315140)
           )
           (i64.store offset=592
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -4938676049251384304)
           )
           (i64.store offset=600
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -8382449121214030822)
           )
           (i64.store offset=608
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -3449775934753242068)
           )
           (i64.store offset=616
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -7273132090830278359)
           )
           (i64.store offset=624
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -1796764746270372707)
           )
           (i64.store offset=632
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -6041542782089432023)
           )
           (i64.store offset=640
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -9204148869281624187)
           )
           (i64.store offset=648
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -4674203974643163859)
           )
           (i64.store offset=656
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -8185402070463610993)
           )
           (i64.store offset=664
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -3156152948152813503)
           )
           (i64.store offset=672
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -7054365918152680535)
           )
           (i64.store offset=680
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -1470777745987373095)
           )
           (i64.store offset=688
            (global.get $_FRC_POWERS_2248_13)
            (i64.const -5798663540173640085)
           )
           (i32.const 0)
          )
          (i32.const 1879048190)
         )
        )
        (local.set $14
         (i64.load
          (i32.add
           (i32.shl
            (local.get $2)
            (i32.const 3)
           )
           (tuple.extract 0
            (tuple.make
             (global.get $_FRC_POWERS_2248_13)
             (block (result i32)
              (drop
               (call $decRef_1330_7
                (i32.const 0)
                (local.get $3)
               )
              )
              (i32.const 1879048190)
             )
            )
           )
          )
         )
        )
        (local.set $3
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
        )
        (drop
         (if (result i32)
          (i32.shr_u
           (select
            (i32.const -2)
            (i32.const 2147483646)
            (i32.eq
             (global.get $_EXP_POWERS_2245_13)
             (i32.const -1)
            )
           )
           (i32.const 31)
          )
          (block (result i32)
           (global.set $_EXP_POWERS_2245_13
            (tuple.extract 0
             (tuple.make
              (call $malloc_1268_7
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (i32.const 174)
              )
              (global.get $_EXP_POWERS_2245_13)
             )
            )
           )
           (i32.store16
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 64316)
           )
           (i32.store16 offset=2
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 64343)
           )
           (i32.store16 offset=4
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 64370)
           )
           (i32.store16 offset=6
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 64396)
           )
           (i32.store16 offset=8
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 64423)
           )
           (i32.store16 offset=10
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 64449)
           )
           (i32.store16 offset=12
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 64476)
           )
           (i32.store16 offset=14
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 64502)
           )
           (i32.store16 offset=16
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 64529)
           )
           (i32.store16 offset=18
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 64556)
           )
           (i32.store16 offset=20
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 64582)
           )
           (i32.store16 offset=22
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 64609)
           )
           (i32.store16 offset=24
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 64635)
           )
           (i32.store16 offset=26
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 64662)
           )
           (i32.store16 offset=28
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 64689)
           )
           (i32.store16 offset=30
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 64715)
           )
           (i32.store16 offset=32
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 64742)
           )
           (i32.store16 offset=34
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 64768)
           )
           (i32.store16 offset=36
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 64795)
           )
           (i32.store16 offset=38
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 64821)
           )
           (i32.store16 offset=40
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 64848)
           )
           (i32.store16 offset=42
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 64875)
           )
           (i32.store16 offset=44
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 64901)
           )
           (i32.store16 offset=46
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 64928)
           )
           (i32.store16 offset=48
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 64954)
           )
           (i32.store16 offset=50
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 64981)
           )
           (i32.store16 offset=52
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 65007)
           )
           (i32.store16 offset=54
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 65034)
           )
           (i32.store16 offset=56
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 65061)
           )
           (i32.store16 offset=58
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 65087)
           )
           (i32.store16 offset=60
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 65114)
           )
           (i32.store16 offset=62
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 65140)
           )
           (i32.store16 offset=64
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 65167)
           )
           (i32.store16 offset=66
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 65193)
           )
           (i32.store16 offset=68
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 65220)
           )
           (i32.store16 offset=70
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 65247)
           )
           (i32.store16 offset=72
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 65273)
           )
           (i32.store16 offset=74
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 65300)
           )
           (i32.store16 offset=76
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 65326)
           )
           (i32.store16 offset=78
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 65353)
           )
           (i32.store16 offset=80
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 65379)
           )
           (i32.store16 offset=82
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 65406)
           )
           (i32.store16 offset=84
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 65433)
           )
           (i32.store16 offset=86
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 65459)
           )
           (i32.store16 offset=88
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 65486)
           )
           (i32.store16 offset=90
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 65512)
           )
           (i32.store16 offset=92
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 3)
           )
           (i32.store16 offset=94
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 30)
           )
           (i32.store16 offset=96
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 56)
           )
           (i32.store16 offset=98
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 83)
           )
           (i32.store16 offset=100
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 109)
           )
           (i32.store16 offset=102
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 136)
           )
           (i32.store16 offset=104
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 162)
           )
           (i32.store16 offset=106
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 189)
           )
           (i32.store16 offset=108
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 216)
           )
           (i32.store16 offset=110
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 242)
           )
           (i32.store16 offset=112
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 269)
           )
           (i32.store16 offset=114
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 295)
           )
           (i32.store16 offset=116
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 322)
           )
           (i32.store16 offset=118
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 348)
           )
           (i32.store16 offset=120
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 375)
           )
           (i32.store16 offset=122
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 402)
           )
           (i32.store16 offset=124
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 428)
           )
           (i32.store16 offset=126
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 455)
           )
           (i32.store16 offset=128
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 481)
           )
           (i32.store16 offset=130
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 508)
           )
           (i32.store16 offset=132
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 534)
           )
           (i32.store16 offset=134
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 561)
           )
           (i32.store16 offset=136
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 588)
           )
           (i32.store16 offset=138
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 614)
           )
           (i32.store16 offset=140
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 641)
           )
           (i32.store16 offset=142
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 667)
           )
           (i32.store16 offset=144
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 694)
           )
           (i32.store16 offset=146
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 720)
           )
           (i32.store16 offset=148
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 747)
           )
           (i32.store16 offset=150
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 774)
           )
           (i32.store16 offset=152
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 800)
           )
           (i32.store16 offset=154
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 827)
           )
           (i32.store16 offset=156
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 853)
           )
           (i32.store16 offset=158
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 880)
           )
           (i32.store16 offset=160
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 907)
           )
           (i32.store16 offset=162
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 933)
           )
           (i32.store16 offset=164
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 960)
           )
           (i32.store16 offset=166
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 986)
           )
           (i32.store16 offset=168
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 1013)
           )
           (i32.store16 offset=170
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 1039)
           )
           (i32.store16 offset=172
            (global.get $_EXP_POWERS_2245_13)
            (i32.const 1066)
           )
           (i32.const 0)
          )
          (i32.const 1879048190)
         )
        )
        (local.set $2
         (i32.load16_s
          (i32.add
           (i32.shl
            (local.get $2)
            (i32.const 1)
           )
           (tuple.extract 0
            (tuple.make
             (global.get $_EXP_POWERS_2245_13)
             (block (result i32)
              (drop
               (call $decRef_1330_7
                (i32.const 0)
                (local.get $3)
               )
              )
              (i32.const 1879048190)
             )
            )
           )
          )
         )
        )
        (local.set $10
         (call $umul64f_2444_13
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (i64.shl
           (local.get $11)
           (i64.clz
            (local.get $11)
           )
          )
          (local.get $14)
         )
        )
        (local.set $9
         (i64.sub
          (call $umul64f_2444_13
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (i64.shl
            (local.get $17)
            (local.get $9)
           )
           (local.get $14)
          )
          (i64.const 1)
         )
        )
        (drop
         (call $decRef_1330_7
          (i32.const 0)
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
         )
        )
        (local.set $12
         (i64.sub
          (local.get $9)
          (i64.add
           (call $umul64f_2444_13
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (i64.shl
             (i64.sub
              (i64.shl
               (local.get $11)
               (i64.extend_i32_u
                (local.tee $3
                 (i32.add
                  (i32.shr_u
                   (select
                    (i32.const -2)
                    (i32.const 2147483646)
                    (i64.eq
                     (local.get $11)
                     (i64.const 4503599627370496)
                    )
                   )
                   (i32.const 31)
                  )
                  (i32.const 1)
                 )
                )
               )
              )
              (i64.const 1)
             )
             (i64.extend_i32_u
              (i32.sub
               (i32.sub
                (local.get $13)
                (local.get $3)
               )
               (local.get $4)
              )
             )
            )
            (local.get $14)
           )
           (i64.const 1)
          )
         )
        )
        (drop
         (call $decRef_1330_7
          (i32.const 0)
          (local.get $6)
         )
        )
        (local.set $13
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
        )
        (local.set $11
         (i64.sub
          (local.get $9)
          (local.get $10)
         )
        )
        (local.set $15
         (i64.and
          (local.tee $17
           (i64.sub
            (local.tee $14
             (i64.shl
              (i64.const 1)
              (i64.extend_i32_u
               (local.tee $4
                (i32.sub
                 (i32.const 0)
                 (tuple.extract 0
                  (tuple.make
                   (i32.sub
                    (i32.add
                     (local.get $2)
                     (local.get $4)
                    )
                    (i32.const -64)
                   )
                   (i32.const 1879048190)
                  )
                 )
                )
               )
              )
             )
            )
            (i64.const 1)
           )
          )
          (local.get $9)
         )
        )
        (local.set $7
         (call $decimalCount32_2302_13
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.tee $2
           (i32.wrap_i64
            (i64.shr_u
             (local.get $9)
             (i64.extend_i32_u
              (local.get $4)
             )
            )
           )
          )
         )
        )
        (local.set $6
         (i32.const 2147483646)
        )
        (drop
         (loop $MFor_loop.8303 (result i32)
          (if
           (i32.shr_u
            (select
             (i32.const -2)
             (i32.const 2147483646)
             (i32.gt_s
              (local.get $7)
              (i32.const 0)
             )
            )
            (i32.const 31)
           )
           (block
            (block $switch.8354_outer
             (drop
              (block $switch.8354_branch_1 (result i32)
               (drop
                (block $switch.8354_branch_2 (result i32)
                 (drop
                  (block $switch.8354_branch_3 (result i32)
                   (drop
                    (block $switch.8354_branch_4 (result i32)
                     (drop
                      (block $switch.8354_branch_5 (result i32)
                       (drop
                        (block $switch.8354_branch_6 (result i32)
                         (drop
                          (block $switch.8354_branch_7 (result i32)
                           (drop
                            (block $switch.8354_branch_8 (result i32)
                             (drop
                              (block $switch.8354_branch_9 (result i32)
                               (drop
                                (block $switch.8354_branch_10 (result i32)
                                 (drop
                                  (block $switch.8354_branch_11 (result i32)
                                   (drop
                                    (block $switch.8354_default (result i32)
                                     (br_table $switch.8354_branch_1 $switch.8354_branch_2 $switch.8354_branch_3 $switch.8354_branch_4 $switch.8354_branch_5 $switch.8354_branch_6 $switch.8354_branch_7 $switch.8354_branch_8 $switch.8354_branch_9 $switch.8354_branch_10 $switch.8354_branch_11 $switch.8354_default
                                      (i32.const 0)
                                      (i32.shr_s
                                       (select
                                        (i32.const 19)
                                        (select
                                         (i32.const 17)
                                         (select
                                          (i32.const 15)
                                          (select
                                           (i32.const 13)
                                           (select
                                            (i32.const 11)
                                            (select
                                             (i32.const 9)
                                             (select
                                              (i32.const 7)
                                              (select
                                               (i32.const 5)
                                               (select
                                                (i32.const 3)
                                                (select
                                                 (i32.const 1)
                                                 (i32.const 21)
                                                 (i32.shr_u
                                                  (i32.or
                                                   (i32.shl
                                                    (i32.eq
                                                     (local.get $7)
                                                     (i32.const 10)
                                                    )
                                                    (i32.const 31)
                                                   )
                                                   (i32.const 2147483646)
                                                  )
                                                  (i32.const 31)
                                                 )
                                                )
                                                (i32.shr_u
                                                 (i32.or
                                                  (i32.shl
                                                   (i32.eq
                                                    (local.get $7)
                                                    (i32.const 9)
                                                   )
                                                   (i32.const 31)
                                                  )
                                                  (i32.const 2147483646)
                                                 )
                                                 (i32.const 31)
                                                )
                                               )
                                               (i32.shr_u
                                                (i32.or
                                                 (i32.shl
                                                  (i32.eq
                                                   (local.get $7)
                                                   (i32.const 8)
                                                  )
                                                  (i32.const 31)
                                                 )
                                                 (i32.const 2147483646)
                                                )
                                                (i32.const 31)
                                               )
                                              )
                                              (i32.shr_u
                                               (i32.or
                                                (i32.shl
                                                 (i32.eq
                                                  (local.get $7)
                                                  (i32.const 7)
                                                 )
                                                 (i32.const 31)
                                                )
                                                (i32.const 2147483646)
                                               )
                                               (i32.const 31)
                                              )
                                             )
                                             (i32.shr_u
                                              (i32.or
                                               (i32.shl
                                                (i32.eq
                                                 (local.get $7)
                                                 (i32.const 6)
                                                )
                                                (i32.const 31)
                                               )
                                               (i32.const 2147483646)
                                              )
                                              (i32.const 31)
                                             )
                                            )
                                            (i32.shr_u
                                             (i32.or
                                              (i32.shl
                                               (i32.eq
                                                (local.get $7)
                                                (i32.const 5)
                                               )
                                               (i32.const 31)
                                              )
                                              (i32.const 2147483646)
                                             )
                                             (i32.const 31)
                                            )
                                           )
                                           (i32.shr_u
                                            (i32.or
                                             (i32.shl
                                              (i32.eq
                                               (local.get $7)
                                               (i32.const 4)
                                              )
                                              (i32.const 31)
                                             )
                                             (i32.const 2147483646)
                                            )
                                            (i32.const 31)
                                           )
                                          )
                                          (i32.shr_u
                                           (i32.or
                                            (i32.shl
                                             (i32.eq
                                              (local.get $7)
                                              (i32.const 3)
                                             )
                                             (i32.const 31)
                                            )
                                            (i32.const 2147483646)
                                           )
                                           (i32.const 31)
                                          )
                                         )
                                         (i32.shr_u
                                          (i32.or
                                           (i32.shl
                                            (i32.eq
                                             (local.get $7)
                                             (i32.const 2)
                                            )
                                            (i32.const 31)
                                           )
                                           (i32.const 2147483646)
                                          )
                                          (i32.const 31)
                                         )
                                        )
                                        (i32.shr_u
                                         (i32.or
                                          (i32.shl
                                           (i32.eq
                                            (local.get $7)
                                            (i32.const 1)
                                           )
                                           (i32.const 31)
                                          )
                                          (i32.const 2147483646)
                                         )
                                         (i32.const 31)
                                        )
                                       )
                                       (i32.const 1)
                                      )
                                     )
                                    )
                                   )
                                   (unreachable)
                                  )
                                 )
                                 (local.set $3
                                  (i32.const 0)
                                 )
                                 (br $switch.8354_outer)
                                )
                               )
                               (local.set $3
                                (local.get $2)
                               )
                               (local.set $2
                                (i32.const 0)
                               )
                               (br $switch.8354_outer)
                              )
                             )
                             (local.set $3
                              (i32.div_u
                               (local.get $2)
                               (i32.const 10)
                              )
                             )
                             (local.set $2
                              (i32.rem_u
                               (local.get $2)
                               (i32.const 10)
                              )
                             )
                             (br $switch.8354_outer)
                            )
                           )
                           (local.set $3
                            (i32.div_u
                             (local.get $2)
                             (i32.const 100)
                            )
                           )
                           (local.set $2
                            (i32.rem_u
                             (local.get $2)
                             (i32.const 100)
                            )
                           )
                           (br $switch.8354_outer)
                          )
                         )
                         (local.set $3
                          (i32.div_u
                           (local.get $2)
                           (i32.const 1000)
                          )
                         )
                         (local.set $2
                          (i32.rem_u
                           (local.get $2)
                           (i32.const 1000)
                          )
                         )
                         (br $switch.8354_outer)
                        )
                       )
                       (local.set $3
                        (i32.div_u
                         (local.get $2)
                         (i32.const 10000)
                        )
                       )
                       (local.set $2
                        (i32.rem_u
                         (local.get $2)
                         (i32.const 10000)
                        )
                       )
                       (br $switch.8354_outer)
                      )
                     )
                     (local.set $3
                      (i32.div_u
                       (local.get $2)
                       (i32.const 100000)
                      )
                     )
                     (local.set $2
                      (i32.rem_u
                       (local.get $2)
                       (i32.const 100000)
                      )
                     )
                     (br $switch.8354_outer)
                    )
                   )
                   (local.set $3
                    (i32.div_u
                     (local.get $2)
                     (i32.const 1000000)
                    )
                   )
                   (local.set $2
                    (i32.rem_u
                     (local.get $2)
                     (i32.const 1000000)
                    )
                   )
                   (br $switch.8354_outer)
                  )
                 )
                 (local.set $3
                  (i32.div_u
                   (local.get $2)
                   (i32.const 10000000)
                  )
                 )
                 (local.set $2
                  (i32.rem_u
                   (local.get $2)
                   (i32.const 10000000)
                  )
                 )
                 (br $switch.8354_outer)
                )
               )
               (local.set $3
                (i32.div_u
                 (local.get $2)
                 (i32.const 100000000)
                )
               )
               (local.set $2
                (i32.rem_u
                 (local.get $2)
                 (i32.const 100000000)
                )
               )
               (br $switch.8354_outer)
              )
             )
             (local.set $3
              (i32.div_u
               (local.get $2)
               (i32.const 1000000000)
              )
             )
             (local.set $2
              (i32.rem_u
               (local.get $2)
               (i32.const 1000000000)
              )
             )
            )
            (drop
             (if (result i32)
              (i32.shr_u
               (select
                (i32.const -2)
                (i32.const 2147483646)
                (i32.or
                 (local.get $3)
                 (local.get $8)
                )
               )
               (i32.const 31)
              )
              (block (result i32)
               (i32.store8
                (i32.add
                 (local.get $5)
                 (local.get $8)
                )
                (i32.add
                 (i32.and
                  (local.get $3)
                  (i32.const 255)
                 )
                 (i32.const 48)
                )
               )
               (local.set $8
                (i32.add
                 (local.get $8)
                 (i32.const 1)
                )
               )
               (i32.const 0)
              )
              (i32.const 1879048190)
             )
            )
            (local.set $7
             (i32.sub
              (local.get $7)
              (i32.const 1)
             )
            )
            (br_if $MFor_loop.8303
             (i32.eqz
              (i32.shr_u
               (select
                (i32.const -2)
                (i32.const 2147483646)
                (i64.ge_u
                 (local.get $12)
                 (local.tee $9
                  (i64.add
                   (local.get $15)
                   (i64.shl
                    (i64.extend_i32_u
                     (local.get $2)
                    )
                    (i64.extend_i32_u
                     (local.get $4)
                    )
                   )
                  )
                 )
                )
               )
               (i32.const 31)
              )
             )
            )
            (global.set $_K_2443_13
             (tuple.extract 0
              (tuple.make
               (i32.add
                (global.get $_K_2443_13)
                (local.get $7)
               )
               (global.get $_K_2443_13)
              )
             )
            )
            (local.set $10
             (i64.shl
              (i64.load32_s
               (i32.add
                (call $get_POWERS10_2228_13
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                )
                (i32.shl
                 (local.get $7)
                 (i32.const 2)
                )
               )
              )
              (i64.extend_i32_u
               (local.get $4)
              )
             )
            )
            (call $grisuRound_2457_13
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $5)
             (local.get $8)
             (local.get $12)
             (local.get $9)
             (local.get $10)
             (local.get $11)
            )
            (local.set $6
             (i32.const -2)
            )
           )
          )
          (i32.const 1879048190)
         )
        )
        (drop
         (if (result i32)
          (i32.shr_u
           (i32.xor
            (local.get $6)
            (i32.const -2147483648)
           )
           (i32.const 31)
          )
          (loop $MFor_loop.8576 (result i32)
           (local.set $12
            (i64.mul
             (local.get $12)
             (i64.const 10)
            )
           )
           (drop
            (if (result i32)
             (i32.shr_u
              (select
               (i32.const -2)
               (i32.const 2147483646)
               (i64.ne
                (i64.or
                 (local.tee $10
                  (i64.shr_u
                   (local.tee $9
                    (i64.mul
                     (local.get $15)
                     (i64.const 10)
                    )
                   )
                   (i64.extend_i32_u
                    (local.get $4)
                   )
                  )
                 )
                 (i64.extend_i32_u
                  (local.get $8)
                 )
                )
                (i64.const 0)
               )
              )
              (i32.const 31)
             )
             (block (result i32)
              (i32.store8
               (i32.add
                (local.get $5)
                (local.get $8)
               )
               (i32.add
                (i32.and
                 (i32.wrap_i64
                  (local.get $10)
                 )
                 (i32.const 255)
                )
                (i32.const 48)
               )
              )
              (local.set $8
               (i32.add
                (local.get $8)
                (i32.const 1)
               )
              )
              (i32.const 0)
             )
             (i32.const 1879048190)
            )
           )
           (local.set $7
            (i32.sub
             (local.get $7)
             (i32.const 1)
            )
           )
           (br_if $MFor_loop.8576
            (i32.eqz
             (i32.shr_u
              (select
               (i32.const -2)
               (i32.const 2147483646)
               (i64.gt_u
                (local.get $12)
                (local.tee $15
                 (i64.and
                  (local.get $9)
                  (local.get $17)
                 )
                )
               )
              )
              (i32.const 31)
             )
            )
           )
           (global.set $_K_2443_13
            (tuple.extract 0
             (tuple.make
              (i32.add
               (global.get $_K_2443_13)
               (local.get $7)
              )
              (global.get $_K_2443_13)
             )
            )
           )
           (local.set $10
            (i64.mul
             (i64.load32_s
              (i32.add
               (call $get_POWERS10_2228_13
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
               )
               (i32.shl
                (i32.sub
                 (i32.const 0)
                 (local.get $7)
                )
                (i32.const 2)
               )
              )
             )
             (local.get $11)
            )
           )
           (call $grisuRound_2457_13
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $5)
            (local.get $8)
            (local.get $12)
            (local.get $15)
            (local.get $14)
            (local.get $10)
           )
           (i32.const 1879048190)
          )
          (i32.const 1879048190)
         )
        )
        (drop
         (call $decRef_1330_7
          (i32.const 0)
          (local.get $13)
         )
        )
        (local.set $13
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
        )
        (local.set $5
         (i32.add
          (local.get $5)
          (local.get $16)
         )
        )
        (local.set $6
         (i32.add
          (local.tee $4
           (i32.sub
            (tuple.extract 0
             (tuple.make
              (local.get $8)
              (i32.const 1879048190)
             )
            )
            (local.get $16)
           )
          )
          (local.tee $2
           (global.get $_K_2443_13)
          )
         )
        )
        (i32.store
         (local.tee $2
          (call $malloc_1268_7
           (i32.const 0)
           (i32.add
            (local.tee $3
             (tuple.extract 0
              (tuple.make
               (i32.add
                (local.get $16)
                (tuple.extract 0
                 (tuple.make
                  (if (result i32)
                   (i32.shr_u
                    (select
                     (i32.const 2147483646)
                     (i32.const -2)
                     (local.get $2)
                    )
                    (i32.const 31)
                   )
                   (block (result i32)
                    (i32.store16
                     (i32.add
                      (local.get $4)
                      (local.get $5)
                     )
                     (i32.const 12334)
                    )
                    (i32.add
                     (local.get $4)
                     (i32.const 2)
                    )
                   )
                   (if (result i32)
                    (i32.shr_u
                     (select
                      (select
                       (i32.const -2)
                       (i32.const 2147483646)
                       (i32.le_s
                        (local.get $6)
                        (i32.const 21)
                       )
                      )
                      (local.tee $3
                       (select
                        (i32.const -2)
                        (i32.const 2147483646)
                        (i32.le_s
                         (local.get $4)
                         (local.get $6)
                        )
                       )
                      )
                      (i32.shr_u
                       (local.get $3)
                       (i32.const 31)
                      )
                     )
                     (i32.const 31)
                    )
                    (block (result i32)
                     (drop
                      (loop $MFor_loop.8966 (result i32)
                       (if (result i32)
                        (i32.shr_u
                         (select
                          (i32.const -2)
                          (i32.const 2147483646)
                          (i32.lt_s
                           (local.get $4)
                           (local.get $6)
                          )
                         )
                         (i32.const 31)
                        )
                        (block
                         (i32.store8
                          (i32.add
                           (local.get $4)
                           (local.get $5)
                          )
                          (i32.const 48)
                         )
                         (local.set $4
                          (i32.add
                           (local.get $4)
                           (i32.const 1)
                          )
                         )
                         (br $MFor_loop.8966)
                        )
                        (i32.const 1879048190)
                       )
                      )
                     )
                     (i32.store16
                      (i32.add
                       (local.get $5)
                       (local.get $6)
                      )
                      (i32.const 12334)
                     )
                     (i32.add
                      (local.get $6)
                      (i32.const 2)
                     )
                    )
                    (if (result i32)
                     (i32.shr_u
                      (select
                       (select
                        (i32.const -2)
                        (i32.const 2147483646)
                        (i32.le_s
                         (local.get $6)
                         (i32.const 21)
                        )
                       )
                       (local.tee $3
                        (select
                         (i32.const -2)
                         (i32.const 2147483646)
                         (i32.gt_s
                          (local.get $6)
                          (i32.const 0)
                         )
                        )
                       )
                       (i32.shr_u
                        (local.get $3)
                        (i32.const 31)
                       )
                      )
                      (i32.const 31)
                     )
                     (block (result i32)
                      (memory.copy
                       (i32.add
                        (local.tee $3
                         (i32.add
                          (local.get $5)
                          (local.get $6)
                         )
                        )
                        (i32.const 1)
                       )
                       (local.get $3)
                       (i32.sub
                        (i32.const 0)
                        (local.get $2)
                       )
                      )
                      (i32.store8
                       (local.get $3)
                       (i32.const 46)
                      )
                      (i32.add
                       (local.get $4)
                       (i32.const 1)
                      )
                     )
                     (if (result i32)
                      (i32.shr_u
                       (select
                        (select
                         (i32.const -2)
                         (i32.const 2147483646)
                         (i32.le_s
                          (local.get $6)
                          (i32.const 0)
                         )
                        )
                        (local.tee $3
                         (select
                          (i32.const -2)
                          (i32.const 2147483646)
                          (i32.gt_s
                           (local.get $6)
                           (i32.const -6)
                          )
                         )
                        )
                        (i32.shr_u
                         (local.get $3)
                         (i32.const 31)
                        )
                       )
                       (i32.const 31)
                      )
                      (block (result i32)
                       (memory.copy
                        (i32.add
                         (local.tee $3
                          (i32.sub
                           (i32.const 2)
                           (local.get $6)
                          )
                         )
                         (local.get $5)
                        )
                        (local.get $5)
                        (local.get $4)
                       )
                       (i32.store16
                        (local.get $5)
                        (i32.const 11824)
                       )
                       (local.set $2
                        (i32.const 2)
                       )
                       (drop
                        (loop $MFor_loop.9040 (result i32)
                         (if (result i32)
                          (i32.shr_u
                           (select
                            (i32.const -2)
                            (i32.const 2147483646)
                            (i32.lt_s
                             (local.get $2)
                             (local.get $3)
                            )
                           )
                           (i32.const 31)
                          )
                          (block
                           (i32.store8
                            (i32.add
                             (local.get $2)
                             (local.get $5)
                            )
                            (i32.const 48)
                           )
                           (local.set $2
                            (i32.add
                             (local.get $2)
                             (i32.const 1)
                            )
                           )
                           (br $MFor_loop.9040)
                          )
                          (i32.const 1879048190)
                         )
                        )
                       )
                       (i32.add
                        (local.get $3)
                        (local.get $4)
                       )
                      )
                      (if (result i32)
                       (i32.shr_u
                        (select
                         (i32.const -2)
                         (i32.const 2147483646)
                         (i32.eq
                          (local.get $4)
                          (i32.const 1)
                         )
                        )
                        (i32.const 31)
                       )
                       (block (result i32)
                        (i32.store8 offset=1
                         (local.get $5)
                         (i32.const 101)
                        )
                        (i32.add
                         (call $genExponent_2487_13
                          (call $incRef_1277_7
                           (i32.const 0)
                           (i32.const 0)
                          )
                          (i32.add
                           (local.get $5)
                           (i32.const 2)
                          )
                          (i32.sub
                           (local.get $6)
                           (i32.const 1)
                          )
                         )
                         (i32.const 2)
                        )
                       )
                       (block (result i32)
                        (memory.copy
                         (i32.add
                          (local.get $5)
                          (i32.const 2)
                         )
                         (i32.add
                          (local.get $5)
                          (i32.const 1)
                         )
                         (i32.sub
                          (local.get $4)
                          (i32.const 1)
                         )
                        )
                        (i32.store8 offset=1
                         (local.get $5)
                         (i32.const 46)
                        )
                        (i32.store8 offset=1
                         (local.tee $3
                          (i32.add
                           (local.get $4)
                           (local.get $5)
                          )
                         )
                         (i32.const 101)
                        )
                        (i32.add
                         (i32.add
                          (call $genExponent_2487_13
                           (call $incRef_1277_7
                            (i32.const 0)
                            (i32.const 0)
                           )
                           (i32.add
                            (local.get $3)
                            (i32.const 2)
                           )
                           (i32.sub
                            (local.get $6)
                            (i32.const 1)
                           )
                          )
                          (local.get $4)
                         )
                         (i32.const 2)
                        )
                       )
                      )
                     )
                    )
                   )
                  )
                  (block (result i32)
                   (drop
                    (call $decRef_1330_7
                     (i32.const 0)
                     (local.get $13)
                    )
                   )
                   (i32.const 1879048190)
                  )
                 )
                )
               )
               (block (result i32)
                (drop
                 (call $decRef_1330_7
                  (i32.const 0)
                  (local.get $18)
                 )
                )
                (i32.const 1879048190)
               )
              )
             )
            )
            (i32.const 8)
           )
          )
         )
         (i32.const 1)
        )
        (i32.store offset=4
         (local.get $2)
         (local.get $3)
        )
        (memory.copy
         (i32.add
          (local.get $2)
          (i32.const 8)
         )
         (call $get_dtoa_buf_2570_13
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
         )
         (local.get $3)
        )
       )
      )
      (local.get $2)
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $untagSimple_2676_14 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (i32.shr_s
     (local.get $1)
     (i32.const 1)
    )
    (i32.const 1879048190)
   )
  )
 )
 (func $isSimpleNumber_2678_14 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (tuple.extract 0
   (tuple.make
    (select
     (i32.const -2)
     (i32.const 2147483646)
     (i32.eq
      (global.get $_GRAIN_NUMBER_TAG_TYPE_1000_1)
      (i32.and
       (local.get $1)
       (global.get $_GRAIN_NUMBER_TAG_MASK_1004_1)
      )
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $isBoxedNumber_2712_14 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const 2147483646)
       (i32.const -2)
       (i32.and
        (local.get $1)
        (global.get $_GRAIN_GENERIC_TAG_MASK_1005_1)
       )
      )
      (i32.const 31)
     )
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (i32.eq
       (global.get $_GRAIN_BOXED_NUM_HEAP_TAG_1020_1)
       (i32.load
        (local.get $1)
       )
      )
     )
     (i32.const 2147483646)
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $isFloat_2714_14 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (call $isBoxedNumber_2712_14
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
      )
      (i32.const 31)
     )
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (i32.eq
       (global.get $_GRAIN_FLOAT64_BOXED_NUM_TAG_1028_1)
       (i32.load offset=4
        (local.get $1)
       )
      )
     )
     (i32.const 2147483646)
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $isRational_2720_14 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (call $isBoxedNumber_2712_14
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
      )
      (i32.const 31)
     )
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (i32.eq
       (global.get $_GRAIN_RATIONAL_BOXED_NUM_TAG_1030_1)
       (i32.load offset=4
        (local.get $1)
       )
      )
     )
     (i32.const 2147483646)
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $isNaN_2723_14 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 f64)
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (call $isBoxedNumber_2712_14
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
      )
      (i32.const 31)
     )
     (if (result i32)
      (i32.shr_u
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (i32.eq
         (global.get $_GRAIN_FLOAT64_BOXED_NUM_TAG_1028_1)
         (i32.load offset=4
          (local.get $1)
         )
        )
       )
       (i32.const 31)
      )
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (f64.ne
        (local.tee $2
         (f64.load offset=8
          (local.get $1)
         )
        )
        (local.get $2)
       )
      )
      (i32.const 2147483646)
     )
     (i32.const 2147483646)
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $isNumber_2758_14 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (local.tee $2
       (call $isSimpleNumber_2678_14
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
       )
      )
      (i32.const 31)
     )
     (local.get $2)
     (block
      (drop
       (call $decRef_1330_7
        (i32.const 0)
        (local.get $0)
       )
      )
      (return_call $isBoxedNumber_2712_14
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
      )
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $i64not_2818_14 (; has Stack IR ;) (param $0 i32) (param $1 i64) (result i64)
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (i64.xor
     (local.get $1)
     (i64.const -1)
    )
    (i32.const 1879048190)
   )
  )
 )
 (func $i64neg_2820_14 (; has Stack IR ;) (param $0 i32) (param $1 i64) (result i64)
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (i64.sub
     (i64.const 0)
     (local.get $1)
    )
    (i32.const 1879048190)
   )
  )
 )
 (func $gcdHelp_2822_14 (; has Stack IR ;) (param $0 i32) (param $1 i64) (param $2 i64) (result i64)
  (local $3 i32)
  (tuple.extract 0
   (tuple.make
    (if (result i64)
     (i32.shr_u
      (select
       (local.tee $3
        (select
         (i32.const -2)
         (i32.const 2147483646)
         (i64.eq
          (local.get $1)
          (local.get $2)
         )
        )
       )
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (i64.eqz
         (local.get $1)
        )
       )
       (i32.shr_u
        (local.get $3)
        (i32.const 31)
       )
      )
      (i32.const 31)
     )
     (local.get $2)
     (if (result i64)
      (i32.shr_u
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (i64.eqz
         (local.get $2)
        )
       )
       (i32.const 31)
      )
      (local.get $1)
      (if (result i64)
       (i32.shr_u
        (select
         (i32.const -2)
         (i32.const 2147483646)
         (i32.wrap_i64
          (i64.and
           (call $i64not_2818_14
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $1)
           )
           (i64.const 1)
          )
         )
        )
        (i32.const 31)
       )
       (if (result i64)
        (i32.shr_u
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i32.wrap_i64
           (i64.and
            (local.get $2)
            (i64.const 1)
           )
          )
         )
         (i32.const 31)
        )
        (return_call $gcdHelp_2822_14
         (local.get $0)
         (i64.shr_s
          (local.get $1)
          (i64.const 1)
         )
         (local.get $2)
        )
        (i64.shl
         (call $gcdHelp_2822_14
          (call $incRef_1277_7
           (i32.const 0)
           (local.get $0)
          )
          (i64.shr_s
           (local.get $1)
           (i64.const 1)
          )
          (i64.shr_s
           (local.get $2)
           (i64.const 1)
          )
         )
         (i64.const 1)
        )
       )
       (if
        (i32.shr_u
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i32.wrap_i64
           (i64.and
            (call $i64not_2818_14
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $2)
            )
            (i64.const 1)
           )
          )
         )
         (i32.const 31)
        )
        (return_call $gcdHelp_2822_14
         (local.get $0)
         (local.get $1)
         (i64.shr_s
          (local.get $2)
          (i64.const 1)
         )
        )
        (if
         (i32.shr_u
          (select
           (i32.const -2)
           (i32.const 2147483646)
           (i64.gt_s
            (local.get $1)
            (local.get $2)
           )
          )
          (i32.const 31)
         )
         (return_call $gcdHelp_2822_14
          (local.get $0)
          (i64.sub
           (local.get $1)
           (local.get $2)
          )
          (local.get $2)
         )
         (return_call $gcdHelp_2822_14
          (local.get $0)
          (i64.sub
           (local.get $2)
           (local.get $1)
          )
          (local.get $1)
         )
        )
       )
      )
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $reducedInteger_2833_14 (; has Stack IR ;) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (if (result i32)
       (i32.shr_u
        (local.tee $2
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i64.lt_s
           (i64.shr_s
            (global.get $_SMAX32_I64_1021_0)
            (i64.const 1)
           )
           (local.get $1)
          )
         )
        )
        (i32.const 31)
       )
       (local.get $2)
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (i64.gt_s
         (i64.shr_s
          (global.get $_SMIN32_I64_1020_0)
          (i64.const 1)
         )
         (local.get $1)
        )
       )
      )
      (i32.const 31)
     )
     (block (result i32)
      (i32.store
       (local.tee $2
        (call $malloc_1268_7
         (i32.const 0)
         (i32.const 16)
        )
       )
       (i32.const 5)
      )
      (i32.store offset=4
       (local.get $2)
       (i32.const 2)
      )
      (i64.store offset=8
       (local.get $2)
       (local.get $1)
      )
      (local.get $2)
     )
     (block
      (drop
       (call $decRef_1330_7
        (i32.const 0)
        (local.get $0)
       )
      )
      (return_call $tagSimpleNumber_1062_9
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (i32.wrap_i64
        (local.get $1)
       )
      )
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $reducedBigInteger_2891_14 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local.set $2
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (tuple.extract 0
       (tuple.make
        (if (result i32)
         (i32.shr_u
          (select
           (i32.const 2147483646)
           (i32.const -2)
           (local.tee $4
            (call $getSize_1558_12
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $1)
            )
           )
          )
          (i32.const 31)
         )
         (i32.const -2)
         (if (result i32)
          (i32.shr_u
           (select
            (i32.const -2)
            (i32.const 2147483646)
            (i32.eq
             (local.get $4)
             (i32.const 1)
            )
           )
           (i32.const 31)
          )
          (block (result i32)
           (local.set $3
            (call $getLimb_1577_12
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $1)
             (i32.const 0)
            )
           )
           (select
            (i32.const -2)
            (i32.const 2147483646)
            (i32.shr_u
             (select
              (i32.const -2)
              (i32.const 2147483646)
              (i64.le_u
               (local.get $3)
               (global.get $_SMAX32_I64_1021_0)
              )
             )
             (i32.const 31)
            )
           )
          )
          (i32.const 2147483646)
         )
        )
        (block (result i32)
         (drop
          (call $decRef_1330_7
           (i32.const 0)
           (local.get $2)
          )
         )
         (i32.const 1879048190)
        )
       )
      )
      (i32.const 31)
     )
     (block (result i32)
      (local.set $3
       (call $toInt64_1654_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
       )
      )
      (local.set $2
       (call $reducedInteger_2833_14
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $3)
       )
      )
      (drop
       (call $decRef_1330_7
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
       )
      )
      (local.get $2)
     )
     (local.get $1)
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $reducedFractionBigInt_2901_14 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local.set $10
   (i32.const 2147483646)
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  (drop
   (if (result i32)
    (i32.shr_u
     (call $flagIsSet_1565_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (local.get $2)
     )
     (i32.const 31)
    )
    (block (result i32)
     (local.set $10
      (i32.const -2)
     )
     (local.set $1
      (call $negate_1634_12
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
      )
     )
     (local.set $2
      (call $negate_1634_12
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $2)
      )
     )
     (i32.const 0)
    )
    (i32.const 1879048190)
   )
  )
  (if
   (i32.shr_u
    (call $eqz_1628_12
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $2)
    )
    (i32.const 31)
   )
   (block
    (i32.store
     (local.tee $0
      (call $malloc_1268_7
       (i32.const 0)
       (i32.const 20)
      )
     )
     (i32.const 2)
    )
    (i32.store offset=4
     (local.get $0)
     (i32.const 1)
    )
    (i32.store offset=8
     (local.get $0)
     (i32.const 5)
    )
    (i32.store offset=12
     (local.get $0)
     (i32.const 2039)
    )
    (i32.store offset=16
     (local.get $0)
     (i32.const 0)
    )
    (call $throw_1387_12
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $0)
    )
    (unreachable)
   )
  )
  (local.set $3
   (call $malloc_1268_7
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (i32.const 8)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  (drop
   (call $division_2168_12
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $1)
    (local.get $2)
    (local.get $3)
    (i32.const 2147483646)
   )
  )
  (local.set $4
   (i32.load
    (local.get $3)
   )
  )
  (local.set $5
   (i32.load offset=4
    (local.get $3)
   )
  )
  (drop
   (call $free_1275_7
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $3)
   )
  )
  (local.set $4
   (if (result i32)
    (i32.shr_u
     (call $eqz_1628_12
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (local.get $5)
     )
     (i32.const 31)
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $5)
      )
     )
     (call $reducedBigInteger_2891_14
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (local.get $4)
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $4)
      )
     )
     (drop
      (call $decRef_1330_7
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $5)
      )
     )
     (local.set $3
      (block $__inlined_func$gcd_2124_12$98 (result i32)
       (local.set $8
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
       )
       (if
        (i32.shr_u
         (call $eqz_1628_12
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $1)
         )
         (i32.const 31)
        )
        (block
         (drop
          (call $decRef_1330_7
           (i32.const 0)
           (local.get $8)
          )
         )
         (br $__inlined_func$gcd_2124_12$98
          (call $abs_1639_12
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $2)
          )
         )
        )
       )
       (if
        (i32.shr_u
         (call $eqz_1628_12
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $2)
         )
         (i32.const 31)
        )
        (block
         (drop
          (call $decRef_1330_7
           (i32.const 0)
           (local.get $8)
          )
         )
         (br $__inlined_func$gcd_2124_12$98
          (call $abs_1639_12
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $1)
          )
         )
        )
       )
       (local.set $9
        (call $abs_1639_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $1)
        )
       )
       (local.set $6
        (call $abs_1639_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $2)
        )
       )
       (local.set $5
        (call $countTrailingZeroBits_1780_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $9)
        )
       )
       (local.set $4
        (call $countTrailingZeroBits_1780_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $6)
        )
       )
       (local.set $7
        (call $minu32_1440_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $5)
         (local.get $4)
        )
       )
       (local.set $5
        (call $shrS_1988_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $9)
         (local.get $5)
        )
       )
       (local.set $3
        (call $shrS_1988_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $6)
         (local.get $4)
        )
       )
       (drop
        (call $decRef_1330_7
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $9)
        )
       )
       (drop
        (call $decRef_1330_7
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $6)
        )
       )
       (loop $MFor_loop.4671 (result i32)
        (local.set $4
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
        )
        (drop
         (if (result i32)
          (i32.shr_u
           (tuple.extract 0
            (tuple.make
             (select
              (i32.const -2)
              (i32.const 2147483646)
              (i32.gt_s
               (call $cmp_1759_12
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $5)
                (local.get $3)
               )
               (i32.const 0)
              )
             )
             (block (result i32)
              (drop
               (call $decRef_1330_7
                (i32.const 0)
                (local.get $4)
               )
              )
              (i32.const 1879048190)
             )
            )
           )
           (i32.const 31)
          )
          (block (result i32)
           (local.set $4
            (local.get $3)
           )
           (local.set $3
            (local.get $5)
           )
           (local.set $5
            (local.get $4)
           )
           (i32.const 0)
          )
          (i32.const 1879048190)
         )
        )
        (local.set $6
         (call $sub_1937_12
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $3)
          (local.get $5)
         )
        )
        (drop
         (call $decRef_1330_7
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $3)
         )
        )
        (if (result i32)
         (i32.shr_u
          (call $eqz_1628_12
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $6)
          )
          (i32.const 31)
         )
         (block (result i32)
          (drop
           (call $decRef_1330_7
            (i32.const 0)
            (local.get $8)
           )
          )
          (call $shl_1974_12
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $5)
           (local.get $7)
          )
         )
         (block
          (local.set $4
           (call $countTrailingZeroBits_1780_12
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $6)
           )
          )
          (local.set $3
           (call $shrS_1988_12
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $6)
            (local.get $4)
           )
          )
          (drop
           (call $decRef_1330_7
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $6)
           )
          )
          (br $MFor_loop.4671)
         )
        )
       )
      )
     )
     (local.set $5
      (call $div_2200_12
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
       (local.get $3)
      )
     )
     (local.set $4
      (call $div_2200_12
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $2)
       (local.get $3)
      )
     )
     (i32.store
      (local.tee $7
       (call $malloc_1268_7
        (i32.const 0)
        (i32.const 16)
       )
      )
      (i32.const 5)
     )
     (i32.store offset=4
      (local.get $7)
      (i32.const 3)
     )
     (i32.store offset=8
      (local.get $7)
      (local.get $5)
     )
     (i32.store offset=12
      (local.get $7)
      (local.get $4)
     )
     (drop
      (call $decRef_1330_7
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $3)
      )
     )
     (local.get $7)
    )
   )
  )
  (drop
   (if (result i32)
    (i32.shr_u
     (local.get $10)
     (i32.const 31)
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
      )
     )
     (drop
      (call $decRef_1330_7
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $2)
      )
     )
     (i32.const 0)
    )
    (i32.const 1879048190)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (local.get $4)
    (i32.const 1879048190)
   )
  )
 )
 (func $reducedFraction64_2916_14 (; has Stack IR ;) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (drop
   (if (result i32)
    (i32.shr_u
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (i64.lt_s
       (local.get $2)
       (i64.const 0)
      )
     )
     (i32.const 31)
    )
    (block (result i32)
     (local.set $1
      (call $i64neg_2820_14
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
      )
     )
     (local.set $2
      (call $i64neg_2820_14
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $2)
      )
     )
     (i32.const 0)
    )
    (i32.const 1879048190)
   )
  )
  (if
   (i32.shr_u
    (select
     (i32.const -2)
     (i32.const 2147483646)
     (i64.eqz
      (local.get $2)
     )
    )
    (i32.const 31)
   )
   (block
    (i32.store
     (local.tee $0
      (call $malloc_1268_7
       (i32.const 0)
       (i32.const 20)
      )
     )
     (i32.const 2)
    )
    (i32.store offset=4
     (local.get $0)
     (i32.const 1)
    )
    (i32.store offset=8
     (local.get $0)
     (i32.const 5)
    )
    (i32.store offset=12
     (local.get $0)
     (i32.const 2039)
    )
    (i32.store offset=16
     (local.get $0)
     (i32.const 0)
    )
    (call $throw_1387_12
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $0)
    )
    (unreachable)
   )
  )
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i64.eqz
        (i64.rem_s
         (local.get $1)
         (local.get $2)
        )
       )
      )
      (i32.const 31)
     )
     (block
      (local.set $1
       (i64.div_s
        (local.get $1)
        (local.get $2)
       )
      )
      (drop
       (call $decRef_1330_7
        (i32.const 0)
        (local.get $0)
       )
      )
      (return_call $reducedInteger_2833_14
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
      )
     )
     (block (result i32)
      (local.set $3
       (i64.div_s
        (local.get $1)
        (block (result i64)
         (local.set $4
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
         )
         (local.set $3
          (local.get $2)
         )
         (if
          (i32.shr_u
           (select
            (i32.const -2)
            (i32.const 2147483646)
            (i64.lt_s
             (local.get $1)
             (i64.const 0)
            )
           )
           (i32.const 31)
          )
          (local.set $1
           (call $i64neg_2820_14
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $1)
           )
          )
         )
         (if
          (i32.shr_u
           (select
            (i32.const -2)
            (i32.const 2147483646)
            (i64.lt_s
             (local.get $3)
             (i64.const 0)
            )
           )
           (i32.const 31)
          )
          (local.set $3
           (call $i64neg_2820_14
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $3)
           )
          )
         )
         (drop
          (call $decRef_1330_7
           (i32.const 0)
           (local.get $4)
          )
         )
         (local.tee $1
          (call $gcdHelp_2822_14
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $1)
           (local.get $3)
          )
         )
        )
       )
      )
      (local.set $1
       (i64.div_s
        (local.get $2)
        (local.get $1)
       )
      )
      (local.set $5
       (call $makeWrappedInt64_1619_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $3)
       )
      )
      (local.set $6
       (call $makeWrappedInt64_1619_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
       )
      )
      (i32.store
       (local.tee $4
        (call $malloc_1268_7
         (i32.const 0)
         (i32.const 16)
        )
       )
       (i32.const 5)
      )
      (i32.store offset=4
       (local.get $4)
       (i32.const 3)
      )
      (i32.store offset=8
       (local.get $4)
       (local.get $5)
      )
      (i32.store offset=12
       (local.get $4)
       (local.get $6)
      )
      (local.get $4)
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $boxedInt64Number_2926_14 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i64)
  (tuple.extract 0
   (tuple.make
    (i64.load offset=8
     (local.get $1)
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $boxedFloat64Number_2928_14 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result f64)
  (tuple.extract 0
   (tuple.make
    (f64.load offset=8
     (local.get $1)
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $coerceNumberToWasmF64_2972_14 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 f64)
  (tuple.extract 0
   (tuple.make
    (if (result f64)
     (i32.shr_u
      (call $isSimpleNumber_2678_14
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
      )
      (i32.const 31)
     )
     (f64.convert_i32_s
      (call $untagSimple_2676_14
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
      )
     )
     (block (result f64)
      (local.set $2
       (call $stringSize_1058_9
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
       )
      )
      (block $switch.9720_outer (result f64)
       (drop
        (block $switch.9720_branch_1 (result f64)
         (drop
          (block $switch.9720_branch_2 (result f64)
           (drop
            (block $switch.9720_branch_3 (result f64)
             (drop
              (block $switch.9720_branch_4 (result f64)
               (drop
                (block $switch.9720_branch_5 (result f64)
                 (drop
                  (block $switch.9720_default (result f64)
                   (br_table $switch.9720_branch_1 $switch.9720_branch_2 $switch.9720_branch_3 $switch.9720_branch_4 $switch.9720_branch_5 $switch.9720_default
                    (f64.const 0)
                    (i32.shr_s
                     (select
                      (i32.const 1)
                      (select
                       (i32.const 3)
                       (select
                        (i32.const 5)
                        (select
                         (i32.const 7)
                         (i32.const 9)
                         (i32.shr_u
                          (select
                           (i32.const -2)
                           (i32.const 2147483646)
                           (i32.eq
                            (local.get $2)
                            (global.get $_GRAIN_FLOAT64_BOXED_NUM_TAG_1028_1)
                           )
                          )
                          (i32.const 31)
                         )
                        )
                        (i32.shr_u
                         (select
                          (i32.const -2)
                          (i32.const 2147483646)
                          (i32.eq
                           (local.get $2)
                           (global.get $_GRAIN_RATIONAL_BOXED_NUM_TAG_1030_1)
                          )
                         )
                         (i32.const 31)
                        )
                       )
                       (i32.shr_u
                        (select
                         (i32.const -2)
                         (i32.const 2147483646)
                         (i32.eq
                          (local.get $2)
                          (global.get $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1)
                         )
                        )
                        (i32.const 31)
                       )
                      )
                      (i32.shr_u
                       (select
                        (i32.const -2)
                        (i32.const 2147483646)
                        (i32.eq
                         (local.get $2)
                         (global.get $_GRAIN_INT64_BOXED_NUM_TAG_1029_1)
                        )
                       )
                       (i32.const 31)
                      )
                     )
                     (i32.const 1)
                    )
                   )
                  )
                 )
                 (unreachable)
                )
               )
               (i32.store
                (local.tee $0
                 (call $malloc_1268_7
                  (i32.const 0)
                  (i32.const 20)
                 )
                )
                (i32.const 2)
               )
               (i32.store offset=4
                (local.get $0)
                (i32.const 1)
               )
               (i32.store offset=8
                (local.get $0)
                (i32.const 5)
               )
               (i32.store offset=12
                (local.get $0)
                (i32.const 5177)
               )
               (i32.store offset=16
                (local.get $0)
                (i32.const 0)
               )
               (call $throw_1387_12
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $0)
               )
               (unreachable)
              )
             )
             (br $switch.9720_outer
              (call $boxedFloat64Number_2928_14
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $1)
              )
             )
            )
           )
           (local.set $2
            (call $getSize_1558_12
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $1)
            )
           )
           (local.set $3
            (call $toFloat64_1662_12
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $2)
            )
           )
           (local.set $2
            (call $loadAdtVariant_1056_9
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $1)
            )
           )
           (br $switch.9720_outer
            (f64.div
             (local.get $3)
             (call $toFloat64_1662_12
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $2)
             )
            )
           )
          )
         )
         (br $switch.9720_outer
          (call $toFloat64_1662_12
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $1)
          )
         )
        )
       )
       (f64.convert_i64_s
        (call $boxedInt64Number_2926_14
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $1)
        )
       )
      )
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $1)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $coerceNumberToWasmI64_2981_14 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (tuple.extract 0
   (tuple.make
    (if (result i64)
     (i32.shr_u
      (call $isSimpleNumber_2678_14
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
      )
      (i32.const 31)
     )
     (i64.extend_i32_s
      (call $untagSimple_2676_14
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
      )
     )
     (block (result i64)
      (local.set $2
       (call $stringSize_1058_9
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
       )
      )
      (block $switch.9773_outer (result i64)
       (drop
        (block $switch.9773_branch_1 (result i64)
         (drop
          (block $switch.9773_branch_2 (result i64)
           (drop
            (block $switch.9773_branch_3 (result i64)
             (drop
              (block $switch.9773_default (result i64)
               (br_table $switch.9773_branch_1 $switch.9773_branch_2 $switch.9773_branch_3 $switch.9773_default
                (i64.const 0)
                (i32.shr_s
                 (select
                  (i32.const 1)
                  (select
                   (i32.const 3)
                   (i32.const 5)
                   (i32.shr_u
                    (select
                     (i32.const -2)
                     (i32.const 2147483646)
                     (i32.eq
                      (local.get $2)
                      (global.get $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1)
                     )
                    )
                    (i32.const 31)
                   )
                  )
                  (i32.shr_u
                   (select
                    (i32.const -2)
                    (i32.const 2147483646)
                    (i32.eq
                     (local.get $2)
                     (global.get $_GRAIN_INT64_BOXED_NUM_TAG_1029_1)
                    )
                   )
                   (i32.const 31)
                  )
                 )
                 (i32.const 1)
                )
               )
              )
             )
             (unreachable)
            )
           )
           (i32.store
            (local.tee $0
             (call $malloc_1268_7
              (i32.const 0)
              (i32.const 20)
             )
            )
            (i32.const 2)
           )
           (i32.store offset=4
            (local.get $0)
            (i32.const 1)
           )
           (i32.store offset=8
            (local.get $0)
            (i32.const 5)
           )
           (i32.store offset=12
            (local.get $0)
            (i32.const 2045)
           )
           (i32.store offset=16
            (local.get $0)
            (i32.const 0)
           )
           (call $throw_1387_12
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $0)
           )
           (unreachable)
          )
         )
         (br $switch.9773_outer
          (call $toInt64_1654_12
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $1)
          )
         )
        )
       )
       (call $boxedInt64Number_2926_14
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
       )
      )
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $1)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $isSafeIntegerF64_3027_14 (; has Stack IR ;) (param $0 i32) (param $1 f64) (result i32)
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (local.tee $0
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (f64.le
         (f64.abs
          (local.get $1)
         )
         (f64.const 9007199254740991)
        )
       )
      )
      (i32.const 31)
     )
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (f64.eq
       (f64.trunc
        (local.get $1)
       )
       (local.get $1)
      )
     )
     (local.get $0)
    )
    (i32.const 1879048190)
   )
  )
 )
 (func $numberEqual_3088_14 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (block $folding-inner1
   (return
    (tuple.extract 0
     (tuple.make
      (if (result i32)
       (i32.shr_u
        (call $isSimpleNumber_2678_14
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $1)
        )
        (i32.const 31)
       )
       (if (result i32)
        (i32.shr_u
         (local.tee $4
          (select
           (i32.const -2)
           (i32.const 2147483646)
           (i32.eq
            (local.get $1)
            (local.get $2)
           )
          )
         )
         (i32.const 31)
        )
        (local.get $4)
        (block
         (drop
          (call $decRef_1330_7
           (i32.const 0)
           (local.get $0)
          )
         )
         (local.set $4
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
         )
         (return
          (tuple.extract 0
           (tuple.make
            (if (result i32)
             (i32.shr_u
              (call $isSimpleNumber_2678_14
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $2)
              )
              (i32.const 31)
             )
             (i32.const 2147483646)
             (block (result i32)
              (local.set $1
               (call $untagSimple_2676_14
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $1)
               )
              )
              (local.set $0
               (call $stringSize_1058_9
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $2)
               )
              )
              (block $switch.10056_outer (result i32)
               (drop
                (block $switch.10056_branch_1 (result i32)
                 (drop
                  (block $switch.10056_branch_2 (result i32)
                   (drop
                    (block $switch.10056_branch_3 (result i32)
                     (drop
                      (block $switch.10056_branch_4 (result i32)
                       (drop
                        (block $switch.10056_branch_5 (result i32)
                         (drop
                          (block $switch.10056_default (result i32)
                           (br_table $switch.10056_branch_1 $switch.10056_branch_2 $switch.10056_branch_3 $switch.10056_branch_4 $switch.10056_branch_5 $switch.10056_default
                            (i32.const 0)
                            (i32.shr_s
                             (select
                              (i32.const 1)
                              (select
                               (i32.const 3)
                               (select
                                (i32.const 5)
                                (select
                                 (i32.const 7)
                                 (i32.const 9)
                                 (i32.shr_u
                                  (select
                                   (i32.const -2)
                                   (i32.const 2147483646)
                                   (i32.eq
                                    (local.get $0)
                                    (global.get $_GRAIN_FLOAT64_BOXED_NUM_TAG_1028_1)
                                   )
                                  )
                                  (i32.const 31)
                                 )
                                )
                                (i32.shr_u
                                 (select
                                  (i32.const -2)
                                  (i32.const 2147483646)
                                  (i32.eq
                                   (local.get $0)
                                   (global.get $_GRAIN_RATIONAL_BOXED_NUM_TAG_1030_1)
                                  )
                                 )
                                 (i32.const 31)
                                )
                               )
                               (i32.shr_u
                                (select
                                 (i32.const -2)
                                 (i32.const 2147483646)
                                 (i32.eq
                                  (local.get $0)
                                  (global.get $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1)
                                 )
                                )
                                (i32.const 31)
                               )
                              )
                              (i32.shr_u
                               (select
                                (i32.const -2)
                                (i32.const 2147483646)
                                (i32.eq
                                 (local.get $0)
                                 (global.get $_GRAIN_INT64_BOXED_NUM_TAG_1029_1)
                                )
                               )
                               (i32.const 31)
                              )
                             )
                             (i32.const 1)
                            )
                           )
                          )
                         )
                         (unreachable)
                        )
                       )
                       (br $folding-inner1)
                      )
                     )
                     (local.set $3
                      (call $boxedFloat64Number_2928_14
                       (call $incRef_1277_7
                        (i32.const 0)
                        (i32.const 0)
                       )
                       (local.get $2)
                      )
                     )
                     (br $switch.10056_outer
                      (if (result i32)
                       (i32.shr_u
                        (local.tee $0
                         (call $isSafeIntegerF64_3027_14
                          (call $incRef_1277_7
                           (i32.const 0)
                           (i32.const 0)
                          )
                          (local.get $3)
                         )
                        )
                        (i32.const 31)
                       )
                       (select
                        (i32.const -2)
                        (i32.const 2147483646)
                        (f64.eq
                         (f64.convert_i32_s
                          (local.get $1)
                         )
                         (local.get $3)
                        )
                       )
                       (local.get $0)
                      )
                     )
                    )
                   )
                   (br $switch.10056_outer
                    (i32.const 2147483646)
                   )
                  )
                 )
                 (br $switch.10056_outer
                  (select
                   (i32.const 2147483646)
                   (i32.const -2)
                   (call $cmpI64_1737_12
                    (call $incRef_1277_7
                     (i32.const 0)
                     (i32.const 0)
                    )
                    (local.get $2)
                    (i64.extend_i32_s
                     (local.get $1)
                    )
                   )
                  )
                 )
                )
               )
               (select
                (i32.const -2)
                (i32.const 2147483646)
                (i64.eq
                 (call $boxedInt64Number_2926_14
                  (call $incRef_1277_7
                   (i32.const 0)
                   (i32.const 0)
                  )
                  (local.get $2)
                 )
                 (i64.extend_i32_s
                  (local.get $1)
                 )
                )
               )
              )
             )
            )
            (block (result i32)
             (drop
              (call $decRef_1330_7
               (i32.const 0)
               (local.get $4)
              )
             )
             (i32.const 1879048190)
            )
           )
          )
         )
        )
       )
       (block
        (local.set $4
         (call $stringSize_1058_9
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $1)
         )
        )
        (drop
         (block $switch.10419_branch_1 (result i32)
          (drop
           (block $switch.10419_branch_2 (result i32)
            (drop
             (block $switch.10419_branch_3 (result i32)
              (drop
               (block $switch.10419_branch_4 (result i32)
                (drop
                 (block $switch.10419_branch_5 (result i32)
                  (drop
                   (block $switch.10419_default (result i32)
                    (br_table $switch.10419_branch_1 $switch.10419_branch_2 $switch.10419_branch_3 $switch.10419_branch_4 $switch.10419_branch_5 $switch.10419_default
                     (i32.const 0)
                     (i32.shr_s
                      (select
                       (i32.const 1)
                       (select
                        (i32.const 3)
                        (select
                         (i32.const 5)
                         (select
                          (i32.const 7)
                          (i32.const 9)
                          (i32.shr_u
                           (select
                            (i32.const -2)
                            (i32.const 2147483646)
                            (i32.eq
                             (local.get $4)
                             (global.get $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1)
                            )
                           )
                           (i32.const 31)
                          )
                         )
                         (i32.shr_u
                          (select
                           (i32.const -2)
                           (i32.const 2147483646)
                           (i32.eq
                            (local.get $4)
                            (global.get $_GRAIN_FLOAT64_BOXED_NUM_TAG_1028_1)
                           )
                          )
                          (i32.const 31)
                         )
                        )
                        (i32.shr_u
                         (select
                          (i32.const -2)
                          (i32.const 2147483646)
                          (i32.eq
                           (local.get $4)
                           (global.get $_GRAIN_RATIONAL_BOXED_NUM_TAG_1030_1)
                          )
                         )
                         (i32.const 31)
                        )
                       )
                       (i32.shr_u
                        (select
                         (i32.const -2)
                         (i32.const 2147483646)
                         (i32.eq
                          (local.get $4)
                          (global.get $_GRAIN_INT64_BOXED_NUM_TAG_1029_1)
                         )
                        )
                        (i32.const 31)
                       )
                      )
                      (i32.const 1)
                     )
                    )
                   )
                  )
                  (unreachable)
                 )
                )
                (br $folding-inner1)
               )
              )
              (drop
               (call $decRef_1330_7
                (i32.const 0)
                (local.get $0)
               )
              )
              (local.set $4
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
              )
              (return
               (tuple.extract 0
                (tuple.make
                 (if (result i32)
                  (i32.shr_u
                   (call $isSimpleNumber_2678_14
                    (call $incRef_1277_7
                     (i32.const 0)
                     (i32.const 0)
                    )
                    (local.get $2)
                   )
                   (i32.const 31)
                  )
                  (block (result i32)
                   (local.set $5
                    (i64.extend_i32_s
                     (call $untagSimple_2676_14
                      (call $incRef_1277_7
                       (i32.const 0)
                       (i32.const 0)
                      )
                      (local.get $2)
                     )
                    )
                   )
                   (select
                    (i32.const 2147483646)
                    (i32.const -2)
                    (call $cmpI64_1737_12
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $1)
                     (local.get $5)
                    )
                   )
                  )
                  (block (result i32)
                   (local.set $0
                    (call $stringSize_1058_9
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $2)
                    )
                   )
                   (block $switch.10353_outer (result i32)
                    (drop
                     (block $switch.10353_branch_1 (result i32)
                      (drop
                       (block $switch.10353_branch_2 (result i32)
                        (drop
                         (block $switch.10353_branch_3 (result i32)
                          (drop
                           (block $switch.10353_branch_4 (result i32)
                            (drop
                             (block $switch.10353_branch_5 (result i32)
                              (drop
                               (block $switch.10353_default (result i32)
                                (br_table $switch.10353_branch_1 $switch.10353_branch_2 $switch.10353_branch_3 $switch.10353_branch_4 $switch.10353_branch_5 $switch.10353_default
                                 (i32.const 0)
                                 (i32.shr_s
                                  (select
                                   (i32.const 1)
                                   (select
                                    (i32.const 3)
                                    (select
                                     (i32.const 5)
                                     (select
                                      (i32.const 7)
                                      (i32.const 9)
                                      (i32.shr_u
                                       (select
                                        (i32.const -2)
                                        (i32.const 2147483646)
                                        (i32.eq
                                         (local.get $0)
                                         (global.get $_GRAIN_FLOAT64_BOXED_NUM_TAG_1028_1)
                                        )
                                       )
                                       (i32.const 31)
                                      )
                                     )
                                     (i32.shr_u
                                      (select
                                       (i32.const -2)
                                       (i32.const 2147483646)
                                       (i32.eq
                                        (local.get $0)
                                        (global.get $_GRAIN_RATIONAL_BOXED_NUM_TAG_1030_1)
                                       )
                                      )
                                      (i32.const 31)
                                     )
                                    )
                                    (i32.shr_u
                                     (select
                                      (i32.const -2)
                                      (i32.const 2147483646)
                                      (i32.eq
                                       (local.get $0)
                                       (global.get $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1)
                                      )
                                     )
                                     (i32.const 31)
                                    )
                                   )
                                   (i32.shr_u
                                    (select
                                     (i32.const -2)
                                     (i32.const 2147483646)
                                     (i32.eq
                                      (local.get $0)
                                      (global.get $_GRAIN_INT64_BOXED_NUM_TAG_1029_1)
                                     )
                                    )
                                    (i32.const 31)
                                   )
                                  )
                                  (i32.const 1)
                                 )
                                )
                               )
                              )
                              (unreachable)
                             )
                            )
                            (br $folding-inner1)
                           )
                          )
                          (local.set $3
                           (call $boxedFloat64Number_2928_14
                            (call $incRef_1277_7
                             (i32.const 0)
                             (i32.const 0)
                            )
                            (local.get $2)
                           )
                          )
                          (br $switch.10353_outer
                           (select
                            (i32.const 2147483646)
                            (i32.const -2)
                            (call $cmpF64_1743_12
                             (call $incRef_1277_7
                              (i32.const 0)
                              (i32.const 0)
                             )
                             (local.get $1)
                             (local.get $3)
                            )
                           )
                          )
                         )
                        )
                        (br $switch.10353_outer
                         (i32.const 2147483646)
                        )
                       )
                      )
                      (drop
                       (call $decRef_1330_7
                        (i32.const 0)
                        (local.get $4)
                       )
                      )
                      (return_call $eq_1762_12
                       (call $incRef_1277_7
                        (i32.const 0)
                        (i32.const 0)
                       )
                       (local.get $1)
                       (local.get $2)
                      )
                     )
                    )
                    (local.set $5
                     (call $boxedInt64Number_2926_14
                      (call $incRef_1277_7
                       (i32.const 0)
                       (i32.const 0)
                      )
                      (local.get $2)
                     )
                    )
                    (select
                     (i32.const 2147483646)
                     (i32.const -2)
                     (call $cmpI64_1737_12
                      (call $incRef_1277_7
                       (i32.const 0)
                       (i32.const 0)
                      )
                      (local.get $1)
                      (local.get $5)
                     )
                    )
                   )
                  )
                 )
                 (block (result i32)
                  (drop
                   (call $decRef_1330_7
                    (i32.const 0)
                    (local.get $4)
                   )
                  )
                  (i32.const 1879048190)
                 )
                )
               )
              )
             )
            )
            (local.set $3
             (call $boxedFloat64Number_2928_14
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $1)
             )
            )
            (drop
             (call $decRef_1330_7
              (i32.const 0)
              (local.get $0)
             )
            )
            (local.set $1
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
            )
            (drop
             (call $decRef_1330_7
              (i32.const 0)
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
             )
            )
            (local.set $0
             (tuple.extract 0
              (tuple.make
               (select
                (i32.const -2)
                (i32.const 2147483646)
                (f64.eq
                 (f64.trunc
                  (local.get $3)
                 )
                 (local.get $3)
                )
               )
               (i32.const 1879048190)
              )
             )
            )
            (return
             (tuple.extract 0
              (tuple.make
               (if (result i32)
                (i32.shr_u
                 (call $isSimpleNumber_2678_14
                  (call $incRef_1277_7
                   (i32.const 0)
                   (i32.const 0)
                  )
                  (local.get $2)
                 )
                 (i32.const 31)
                )
                (if (result i32)
                 (i32.shr_u
                  (local.get $0)
                  (i32.const 31)
                 )
                 (select
                  (i32.const -2)
                  (i32.const 2147483646)
                  (f64.eq
                   (f64.convert_i32_s
                    (call $untagSimple_2676_14
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $2)
                    )
                   )
                   (local.get $3)
                  )
                 )
                 (local.get $0)
                )
                (block (result i32)
                 (local.set $0
                  (call $stringSize_1058_9
                   (call $incRef_1277_7
                    (i32.const 0)
                    (i32.const 0)
                   )
                   (local.get $2)
                  )
                 )
                 (block $switch.10273_outer (result i32)
                  (drop
                   (block $switch.10273_branch_1 (result i32)
                    (drop
                     (block $switch.10273_branch_2 (result i32)
                      (drop
                       (block $switch.10273_branch_3 (result i32)
                        (drop
                         (block $switch.10273_branch_4 (result i32)
                          (drop
                           (block $switch.10273_branch_5 (result i32)
                            (drop
                             (block $switch.10273_default (result i32)
                              (br_table $switch.10273_branch_1 $switch.10273_branch_2 $switch.10273_branch_3 $switch.10273_branch_4 $switch.10273_branch_5 $switch.10273_default
                               (i32.const 0)
                               (i32.shr_s
                                (select
                                 (i32.const 1)
                                 (select
                                  (i32.const 3)
                                  (select
                                   (i32.const 5)
                                   (select
                                    (i32.const 7)
                                    (i32.const 9)
                                    (i32.shr_u
                                     (select
                                      (i32.const -2)
                                      (i32.const 2147483646)
                                      (i32.eq
                                       (local.get $0)
                                       (global.get $_GRAIN_FLOAT64_BOXED_NUM_TAG_1028_1)
                                      )
                                     )
                                     (i32.const 31)
                                    )
                                   )
                                   (i32.shr_u
                                    (select
                                     (i32.const -2)
                                     (i32.const 2147483646)
                                     (i32.eq
                                      (local.get $0)
                                      (global.get $_GRAIN_RATIONAL_BOXED_NUM_TAG_1030_1)
                                     )
                                    )
                                    (i32.const 31)
                                   )
                                  )
                                  (i32.shr_u
                                   (select
                                    (i32.const -2)
                                    (i32.const 2147483646)
                                    (i32.eq
                                     (local.get $0)
                                     (global.get $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1)
                                    )
                                   )
                                   (i32.const 31)
                                  )
                                 )
                                 (i32.shr_u
                                  (select
                                   (i32.const -2)
                                   (i32.const 2147483646)
                                   (i32.eq
                                    (local.get $0)
                                    (global.get $_GRAIN_INT64_BOXED_NUM_TAG_1029_1)
                                   )
                                  )
                                  (i32.const 31)
                                 )
                                )
                                (i32.const 1)
                               )
                              )
                             )
                            )
                            (unreachable)
                           )
                          )
                          (br $folding-inner1)
                         )
                        )
                        (br $switch.10273_outer
                         (select
                          (i32.const -2)
                          (i32.const 2147483646)
                          (f64.eq
                           (call $boxedFloat64Number_2928_14
                            (call $incRef_1277_7
                             (i32.const 0)
                             (i32.const 0)
                            )
                            (local.get $2)
                           )
                           (local.get $3)
                          )
                         )
                        )
                       )
                      )
                      (local.set $0
                       (call $getSize_1558_12
                        (call $incRef_1277_7
                         (i32.const 0)
                         (i32.const 0)
                        )
                        (local.get $2)
                       )
                      )
                      (local.set $2
                       (call $loadAdtVariant_1056_9
                        (call $incRef_1277_7
                         (i32.const 0)
                         (i32.const 0)
                        )
                        (local.get $2)
                       )
                      )
                      (br $switch.10273_outer
                       (select
                        (i32.const -2)
                        (i32.const 2147483646)
                        (f64.eq
                         (f64.div
                          (call $toFloat64_1662_12
                           (call $incRef_1277_7
                            (i32.const 0)
                            (i32.const 0)
                           )
                           (local.get $0)
                          )
                          (call $toFloat64_1662_12
                           (call $incRef_1277_7
                            (i32.const 0)
                            (i32.const 0)
                           )
                           (local.get $2)
                          )
                         )
                         (local.get $3)
                        )
                       )
                      )
                     )
                    )
                    (br $switch.10273_outer
                     (select
                      (i32.const 2147483646)
                      (i32.const -2)
                      (call $cmpF64_1743_12
                       (call $incRef_1277_7
                        (i32.const 0)
                        (i32.const 0)
                       )
                       (local.get $2)
                       (local.get $3)
                      )
                     )
                    )
                   )
                  )
                  (local.set $5
                   (call $boxedInt64Number_2926_14
                    (call $incRef_1277_7
                     (i32.const 0)
                     (i32.const 0)
                    )
                    (local.get $2)
                   )
                  )
                  (if (result i32)
                   (i32.shr_u
                    (local.tee $0
                     (call $isSafeIntegerF64_3027_14
                      (call $incRef_1277_7
                       (i32.const 0)
                       (i32.const 0)
                      )
                      (local.get $3)
                     )
                    )
                    (i32.const 31)
                   )
                   (select
                    (i32.const -2)
                    (i32.const 2147483646)
                    (f64.eq
                     (f64.convert_i64_s
                      (local.get $5)
                     )
                     (local.get $3)
                    )
                   )
                   (local.get $0)
                  )
                 )
                )
               )
               (block (result i32)
                (drop
                 (call $decRef_1330_7
                  (i32.const 0)
                  (local.get $1)
                 )
                )
                (i32.const 1879048190)
               )
              )
             )
            )
           )
          )
          (drop
           (call $decRef_1330_7
            (i32.const 0)
            (local.get $0)
           )
          )
          (local.set $4
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
          )
          (return
           (tuple.extract 0
            (tuple.make
             (if (result i32)
              (i32.shr_u
               (call $isSimpleNumber_2678_14
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $2)
               )
               (i32.const 31)
              )
              (i32.const 2147483646)
              (block (result i32)
               (local.set $6
                (call $getSize_1558_12
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (local.get $1)
                )
               )
               (local.set $1
                (call $loadAdtVariant_1056_9
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (local.get $1)
                )
               )
               (local.set $0
                (call $stringSize_1058_9
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (local.get $2)
                )
               )
               (block $switch.10196_outer (result i32)
                (drop
                 (block $switch.10196_branch_1 (result i32)
                  (drop
                   (block $switch.10196_branch_2 (result i32)
                    (drop
                     (block $switch.10196_branch_3 (result i32)
                      (drop
                       (block $switch.10196_branch_4 (result i32)
                        (drop
                         (block $switch.10196_branch_5 (result i32)
                          (drop
                           (block $switch.10196_default (result i32)
                            (br_table $switch.10196_branch_1 $switch.10196_branch_2 $switch.10196_branch_3 $switch.10196_branch_4 $switch.10196_branch_5 $switch.10196_default
                             (i32.const 0)
                             (i32.shr_s
                              (select
                               (i32.const 1)
                               (select
                                (i32.const 3)
                                (select
                                 (i32.const 5)
                                 (select
                                  (i32.const 7)
                                  (i32.const 9)
                                  (i32.shr_u
                                   (select
                                    (i32.const -2)
                                    (i32.const 2147483646)
                                    (i32.eq
                                     (local.get $0)
                                     (global.get $_GRAIN_FLOAT64_BOXED_NUM_TAG_1028_1)
                                    )
                                   )
                                   (i32.const 31)
                                  )
                                 )
                                 (i32.shr_u
                                  (select
                                   (i32.const -2)
                                   (i32.const 2147483646)
                                   (i32.eq
                                    (local.get $0)
                                    (global.get $_GRAIN_RATIONAL_BOXED_NUM_TAG_1030_1)
                                   )
                                  )
                                  (i32.const 31)
                                 )
                                )
                                (i32.shr_u
                                 (select
                                  (i32.const -2)
                                  (i32.const 2147483646)
                                  (i32.eq
                                   (local.get $0)
                                   (global.get $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1)
                                  )
                                 )
                                 (i32.const 31)
                                )
                               )
                               (i32.shr_u
                                (select
                                 (i32.const -2)
                                 (i32.const 2147483646)
                                 (i32.eq
                                  (local.get $0)
                                  (global.get $_GRAIN_INT64_BOXED_NUM_TAG_1029_1)
                                 )
                                )
                                (i32.const 31)
                               )
                              )
                              (i32.const 1)
                             )
                            )
                           )
                          )
                          (unreachable)
                         )
                        )
                        (br $folding-inner1)
                       )
                      )
                      (br $switch.10196_outer
                       (select
                        (i32.const -2)
                        (i32.const 2147483646)
                        (f64.eq
                         (call $boxedFloat64Number_2928_14
                          (call $incRef_1277_7
                           (i32.const 0)
                           (i32.const 0)
                          )
                          (local.get $2)
                         )
                         (f64.div
                          (call $toFloat64_1662_12
                           (call $incRef_1277_7
                            (i32.const 0)
                            (i32.const 0)
                           )
                           (local.get $6)
                          )
                          (call $toFloat64_1662_12
                           (call $incRef_1277_7
                            (i32.const 0)
                            (i32.const 0)
                           )
                           (local.get $1)
                          )
                         )
                        )
                       )
                      )
                     )
                    )
                    (local.set $0
                     (call $getSize_1558_12
                      (call $incRef_1277_7
                       (i32.const 0)
                       (i32.const 0)
                      )
                      (local.get $2)
                     )
                    )
                    (local.set $2
                     (call $loadAdtVariant_1056_9
                      (call $incRef_1277_7
                       (i32.const 0)
                       (i32.const 0)
                      )
                      (local.get $2)
                     )
                    )
                    (br $switch.10196_outer
                     (if (result i32)
                      (i32.shr_u
                       (local.tee $0
                        (call $eq_1762_12
                         (call $incRef_1277_7
                          (i32.const 0)
                          (i32.const 0)
                         )
                         (local.get $6)
                         (local.get $0)
                        )
                       )
                       (i32.const 31)
                      )
                      (block
                       (drop
                        (call $decRef_1330_7
                         (i32.const 0)
                         (local.get $4)
                        )
                       )
                       (return_call $eq_1762_12
                        (call $incRef_1277_7
                         (i32.const 0)
                         (i32.const 0)
                        )
                        (local.get $1)
                        (local.get $2)
                       )
                      )
                      (local.get $0)
                     )
                    )
                   )
                  )
                  (br $switch.10196_outer
                   (i32.const 2147483646)
                  )
                 )
                )
                (i32.const 2147483646)
               )
              )
             )
             (block (result i32)
              (drop
               (call $decRef_1330_7
                (i32.const 0)
                (local.get $4)
               )
              )
              (i32.const 1879048190)
             )
            )
           )
          )
         )
        )
        (local.set $5
         (call $boxedInt64Number_2926_14
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $1)
         )
        )
        (drop
         (call $decRef_1330_7
          (i32.const 0)
          (local.get $0)
         )
        )
        (local.set $1
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
        )
        (return
         (tuple.extract 0
          (tuple.make
           (if (result i32)
            (i32.shr_u
             (call $isSimpleNumber_2678_14
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $2)
             )
             (i32.const 31)
            )
            (select
             (i32.const -2)
             (i32.const 2147483646)
             (i64.eq
              (i64.extend_i32_s
               (call $untagSimple_2676_14
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $2)
               )
              )
              (local.get $5)
             )
            )
            (block (result i32)
             (local.set $0
              (call $stringSize_1058_9
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $2)
              )
             )
             (block $switch.10128_outer (result i32)
              (drop
               (block $switch.10128_branch_1 (result i32)
                (drop
                 (block $switch.10128_branch_2 (result i32)
                  (drop
                   (block $switch.10128_branch_3 (result i32)
                    (drop
                     (block $switch.10128_branch_4 (result i32)
                      (drop
                       (block $switch.10128_branch_5 (result i32)
                        (drop
                         (block $switch.10128_default (result i32)
                          (br_table $switch.10128_branch_1 $switch.10128_branch_2 $switch.10128_branch_3 $switch.10128_branch_4 $switch.10128_branch_5 $switch.10128_default
                           (i32.const 0)
                           (i32.shr_s
                            (select
                             (i32.const 1)
                             (select
                              (i32.const 3)
                              (select
                               (i32.const 5)
                               (select
                                (i32.const 7)
                                (i32.const 9)
                                (i32.shr_u
                                 (select
                                  (i32.const -2)
                                  (i32.const 2147483646)
                                  (i32.eq
                                   (local.get $0)
                                   (global.get $_GRAIN_FLOAT64_BOXED_NUM_TAG_1028_1)
                                  )
                                 )
                                 (i32.const 31)
                                )
                               )
                               (i32.shr_u
                                (select
                                 (i32.const -2)
                                 (i32.const 2147483646)
                                 (i32.eq
                                  (local.get $0)
                                  (global.get $_GRAIN_RATIONAL_BOXED_NUM_TAG_1030_1)
                                 )
                                )
                                (i32.const 31)
                               )
                              )
                              (i32.shr_u
                               (select
                                (i32.const -2)
                                (i32.const 2147483646)
                                (i32.eq
                                 (local.get $0)
                                 (global.get $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1)
                                )
                               )
                               (i32.const 31)
                              )
                             )
                             (i32.shr_u
                              (select
                               (i32.const -2)
                               (i32.const 2147483646)
                               (i32.eq
                                (local.get $0)
                                (global.get $_GRAIN_INT64_BOXED_NUM_TAG_1029_1)
                               )
                              )
                              (i32.const 31)
                             )
                            )
                            (i32.const 1)
                           )
                          )
                         )
                        )
                        (unreachable)
                       )
                      )
                      (br $folding-inner1)
                     )
                    )
                    (local.set $3
                     (call $boxedFloat64Number_2928_14
                      (call $incRef_1277_7
                       (i32.const 0)
                       (i32.const 0)
                      )
                      (local.get $2)
                     )
                    )
                    (br $switch.10128_outer
                     (if (result i32)
                      (i32.shr_u
                       (local.tee $0
                        (call $isSafeIntegerF64_3027_14
                         (call $incRef_1277_7
                          (i32.const 0)
                          (i32.const 0)
                         )
                         (local.get $3)
                        )
                       )
                       (i32.const 31)
                      )
                      (select
                       (i32.const -2)
                       (i32.const 2147483646)
                       (i64.eq
                        (i64.trunc_f64_s
                         (local.get $3)
                        )
                        (local.get $5)
                       )
                      )
                      (local.get $0)
                     )
                    )
                   )
                  )
                  (br $switch.10128_outer
                   (i32.const 2147483646)
                  )
                 )
                )
                (br $switch.10128_outer
                 (select
                  (i32.const 2147483646)
                  (i32.const -2)
                  (call $cmpI64_1737_12
                   (call $incRef_1277_7
                    (i32.const 0)
                    (i32.const 0)
                   )
                   (local.get $2)
                   (local.get $5)
                  )
                 )
                )
               )
              )
              (select
               (i32.const -2)
               (i32.const 2147483646)
               (i64.eq
                (call $boxedInt64Number_2926_14
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (local.get $2)
                )
                (local.get $5)
               )
              )
             )
            )
           )
           (block (result i32)
            (drop
             (call $decRef_1330_7
              (i32.const 0)
              (local.get $1)
             )
            )
            (i32.const 1879048190)
           )
          )
         )
        )
       )
      )
      (block (result i32)
       (drop
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $0)
        )
       )
       (i32.const 1879048190)
      )
     )
    )
   )
  )
  (i32.store
   (local.tee $0
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 20)
    )
   )
   (i32.const 2)
  )
  (i32.store offset=4
   (local.get $0)
   (i32.const 1)
  )
  (i32.store offset=8
   (local.get $0)
   (i32.const 5)
  )
  (i32.store offset=12
   (local.get $0)
   (i32.const 5177)
  )
  (i32.store offset=16
   (local.get $0)
   (i32.const 0)
  )
  (call $throw_1387_12
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
   (local.get $0)
  )
  (unreachable)
 )
 (func $numberAddSubHelp_3268_14 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 f64)
  (local $8 f64)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (block $folding-inner1
   (return
    (if (result i32)
     (i32.shr_u
      (call $isSimpleNumber_2678_14
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
      )
      (i32.const 31)
     )
     (block (result i32)
      (drop
       (call $decRef_1330_7
        (i32.const 0)
        (local.get $0)
       )
      )
      (local.set $0
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
      )
      (tuple.extract 0
       (tuple.make
        (if (result i32)
         (i32.shr_u
          (call $isSimpleNumber_2678_14
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (i32.const 3)
          )
          (i32.const 31)
         )
         (block
          (local.set $4
           (i64.extend_i32_s
            (call $untagSimple_2676_14
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $1)
            )
           )
          )
          (local.set $6
           (i64.extend_i32_s
            (call $untagSimple_2676_14
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (i32.const 3)
            )
           )
          )
          (drop
           (call $decRef_1330_7
            (i32.const 0)
            (local.get $0)
           )
          )
          (return_call $reducedInteger_2833_14
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (select
            (i64.sub
             (local.get $4)
             (local.get $6)
            )
            (i64.add
             (local.get $4)
             (local.get $6)
            )
            (i32.shr_u
             (local.get $2)
             (i32.const 31)
            )
           )
          )
         )
         (block (result i32)
          (local.set $1
           (call $untagSimple_2676_14
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $1)
           )
          )
          (local.set $3
           (call $stringSize_1058_9
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (i32.const 3)
           )
          )
          (block $switch.10494_outer (result i32)
           (drop
            (block $switch.10494_branch_1 (result i32)
             (drop
              (block $switch.10494_branch_2 (result i32)
               (drop
                (block $switch.10494_branch_3 (result i32)
                 (drop
                  (block $switch.10494_branch_4 (result i32)
                   (drop
                    (block $switch.10494_branch_5 (result i32)
                     (drop
                      (block $switch.10494_default (result i32)
                       (br_table $switch.10494_branch_1 $switch.10494_branch_2 $switch.10494_branch_3 $switch.10494_branch_4 $switch.10494_branch_5 $switch.10494_default
                        (i32.const 0)
                        (i32.shr_s
                         (select
                          (i32.const 1)
                          (select
                           (i32.const 3)
                           (select
                            (i32.const 5)
                            (select
                             (i32.const 7)
                             (i32.const 9)
                             (i32.shr_u
                              (select
                               (i32.const -2)
                               (i32.const 2147483646)
                               (i32.eq
                                (local.get $3)
                                (global.get $_GRAIN_FLOAT64_BOXED_NUM_TAG_1028_1)
                               )
                              )
                              (i32.const 31)
                             )
                            )
                            (i32.shr_u
                             (select
                              (i32.const -2)
                              (i32.const 2147483646)
                              (i32.eq
                               (local.get $3)
                               (global.get $_GRAIN_RATIONAL_BOXED_NUM_TAG_1030_1)
                              )
                             )
                             (i32.const 31)
                            )
                           )
                           (i32.shr_u
                            (select
                             (i32.const -2)
                             (i32.const 2147483646)
                             (i32.eq
                              (local.get $3)
                              (global.get $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1)
                             )
                            )
                            (i32.const 31)
                           )
                          )
                          (i32.shr_u
                           (select
                            (i32.const -2)
                            (i32.const 2147483646)
                            (i32.eq
                             (local.get $3)
                             (global.get $_GRAIN_INT64_BOXED_NUM_TAG_1029_1)
                            )
                           )
                           (i32.const 31)
                          )
                         )
                         (i32.const 1)
                        )
                       )
                      )
                     )
                     (unreachable)
                    )
                   )
                   (br $folding-inner1)
                  )
                 )
                 (local.set $7
                  (call $boxedFloat64Number_2928_14
                   (call $incRef_1277_7
                    (i32.const 0)
                    (i32.const 0)
                   )
                   (i32.const 3)
                  )
                 )
                 (i32.store
                  (local.tee $3
                   (call $malloc_1268_7
                    (i32.const 0)
                    (i32.const 16)
                   )
                  )
                  (i32.const 5)
                 )
                 (i32.store offset=4
                  (local.get $3)
                  (i32.const 1)
                 )
                 (f64.store offset=8
                  (local.get $3)
                  (select
                   (f64.sub
                    (local.tee $8
                     (f64.convert_i32_s
                      (local.get $1)
                     )
                    )
                    (local.get $7)
                   )
                   (f64.add
                    (local.get $8)
                    (local.get $7)
                   )
                   (i32.shr_u
                    (local.get $2)
                    (i32.const 31)
                   )
                  )
                 )
                 (br $switch.10494_outer
                  (local.get $3)
                 )
                )
               )
               (local.set $3
                (call $makeWrappedInt32_1612_12
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (local.get $1)
                )
               )
               (local.set $5
                (call $getSize_1558_12
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (i32.const 3)
                )
               )
               (local.set $9
                (call $loadAdtVariant_1056_9
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (i32.const 3)
                )
               )
               (local.set $1
                (call $mul_1968_12
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (local.get $3)
                 (local.get $9)
                )
               )
               (drop
                (call $decRef_1330_7
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (local.get $3)
                )
               )
               (local.set $2
                (if (result i32)
                 (i32.shr_u
                  (local.get $2)
                  (i32.const 31)
                 )
                 (call $sub_1937_12
                  (call $incRef_1277_7
                   (i32.const 0)
                   (i32.const 0)
                  )
                  (local.get $1)
                  (local.get $5)
                 )
                 (call $add_1928_12
                  (call $incRef_1277_7
                   (i32.const 0)
                   (i32.const 0)
                  )
                  (local.get $1)
                  (local.get $5)
                 )
                )
               )
               (local.set $3
                (call $reducedFractionBigInt_2901_14
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (local.get $2)
                 (local.get $9)
                )
               )
               (drop
                (call $decRef_1330_7
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (local.get $1)
                )
               )
               (drop
                (call $decRef_1330_7
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (local.get $2)
                )
               )
               (br $switch.10494_outer
                (local.get $3)
               )
              )
             )
             (local.set $3
              (call $makeWrappedInt32_1612_12
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $1)
              )
             )
             (local.set $5
              (if (result i32)
               (i32.shr_u
                (local.get $2)
                (i32.const 31)
               )
               (call $sub_1937_12
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $3)
                (i32.const 3)
               )
               (call $add_1928_12
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $3)
                (i32.const 3)
               )
              )
             )
             (drop
              (call $decRef_1330_7
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $3)
              )
             )
             (drop
              (call $decRef_1330_7
               (i32.const 0)
               (local.get $0)
              )
             )
             (return_call $reducedBigInteger_2891_14
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $5)
             )
            )
           )
           (if
            (i32.shr_u
             (if (result i32)
              (i32.shr_u
               (local.tee $3
                (select
                 (select
                  (i32.const -2)
                  (i32.const 2147483646)
                  (i64.lt_s
                   (local.tee $10
                    (select
                     (i64.sub
                      (local.tee $6
                       (i64.extend_i32_s
                        (local.get $1)
                       )
                      )
                      (local.tee $4
                       (call $boxedInt64Number_2926_14
                        (call $incRef_1277_7
                         (i32.const 0)
                         (i32.const 0)
                        )
                        (i32.const 3)
                       )
                      )
                     )
                     (i64.add
                      (local.get $4)
                      (local.get $6)
                     )
                     (i32.shr_u
                      (local.get $2)
                      (i32.const 31)
                     )
                    )
                   )
                   (local.get $6)
                  )
                 )
                 (local.tee $3
                  (select
                   (i32.const -2)
                   (i32.const 2147483646)
                   (i64.ge_s
                    (local.get $4)
                    (i64.const 0)
                   )
                  )
                 )
                 (i32.shr_u
                  (local.get $3)
                  (i32.const 31)
                 )
                )
               )
               (i32.const 31)
              )
              (local.get $3)
              (select
               (select
                (i32.const -2)
                (i32.const 2147483646)
                (i64.lt_s
                 (local.get $6)
                 (local.get $10)
                )
               )
               (local.tee $3
                (select
                 (i32.const -2)
                 (i32.const 2147483646)
                 (i64.lt_s
                  (local.get $4)
                  (i64.const 0)
                 )
                )
               )
               (i32.shr_u
                (local.get $3)
                (i32.const 31)
               )
              )
             )
             (i32.const 31)
            )
            (block
             (local.set $1
              (call $makeWrappedInt32_1612_12
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $1)
              )
             )
             (local.set $3
              (call $makeWrappedInt64_1619_12
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $4)
              )
             )
             (local.set $2
              (if (result i32)
               (i32.shr_u
                (local.get $2)
                (i32.const 31)
               )
               (call $sub_1937_12
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $1)
                (local.get $3)
               )
               (call $add_1928_12
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $1)
                (local.get $3)
               )
              )
             )
             (drop
              (call $decRef_1330_7
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $1)
              )
             )
             (drop
              (call $decRef_1330_7
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $3)
              )
             )
             (drop
              (call $decRef_1330_7
               (i32.const 0)
               (local.get $0)
              )
             )
             (return_call $reducedBigInteger_2891_14
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $2)
             )
            )
            (block
             (drop
              (call $decRef_1330_7
               (i32.const 0)
               (local.get $0)
              )
             )
             (return_call $reducedInteger_2833_14
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $10)
             )
            )
           )
          )
         )
        )
        (block (result i32)
         (drop
          (call $decRef_1330_7
           (i32.const 0)
           (local.get $0)
          )
         )
         (i32.const 1879048190)
        )
       )
      )
     )
     (block (result i32)
      (local.set $3
       (call $stringSize_1058_9
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
       )
      )
      (drop
       (block $switch.11091_branch_1 (result i32)
        (drop
         (block $switch.11091_branch_2 (result i32)
          (drop
           (block $switch.11091_branch_3 (result i32)
            (drop
             (block $switch.11091_branch_4 (result i32)
              (drop
               (block $switch.11091_branch_5 (result i32)
                (drop
                 (block $switch.11091_default (result i32)
                  (br_table $switch.11091_branch_1 $switch.11091_branch_2 $switch.11091_branch_3 $switch.11091_branch_4 $switch.11091_branch_5 $switch.11091_default
                   (i32.const 0)
                   (i32.shr_s
                    (select
                     (i32.const 1)
                     (select
                      (i32.const 3)
                      (select
                       (i32.const 5)
                       (select
                        (i32.const 7)
                        (i32.const 9)
                        (i32.shr_u
                         (select
                          (i32.const -2)
                          (i32.const 2147483646)
                          (i32.eq
                           (local.get $3)
                           (global.get $_GRAIN_FLOAT64_BOXED_NUM_TAG_1028_1)
                          )
                         )
                         (i32.const 31)
                        )
                       )
                       (i32.shr_u
                        (select
                         (i32.const -2)
                         (i32.const 2147483646)
                         (i32.eq
                          (local.get $3)
                          (global.get $_GRAIN_RATIONAL_BOXED_NUM_TAG_1030_1)
                         )
                        )
                        (i32.const 31)
                       )
                      )
                      (i32.shr_u
                       (select
                        (i32.const -2)
                        (i32.const 2147483646)
                        (i32.eq
                         (local.get $3)
                         (global.get $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1)
                        )
                       )
                       (i32.const 31)
                      )
                     )
                     (i32.shr_u
                      (select
                       (i32.const -2)
                       (i32.const 2147483646)
                       (i32.eq
                        (local.get $3)
                        (global.get $_GRAIN_INT64_BOXED_NUM_TAG_1029_1)
                       )
                      )
                      (i32.const 31)
                     )
                    )
                    (i32.const 1)
                   )
                  )
                 )
                )
                (unreachable)
               )
              )
              (br $folding-inner1)
             )
            )
            (local.set $7
             (call $boxedFloat64Number_2928_14
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $1)
             )
            )
            (drop
             (call $decRef_1330_7
              (i32.const 0)
              (local.get $0)
             )
            )
            (local.set $1
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
            )
            (drop
             (call $incRef_1277_7
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (i32.const 3)
             )
            )
            (local.set $8
             (call $coerceNumberToWasmF64_2972_14
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (i32.const 3)
             )
            )
            (i32.store
             (local.tee $0
              (call $malloc_1268_7
               (i32.const 0)
               (i32.const 16)
              )
             )
             (i32.const 5)
            )
            (i32.store offset=4
             (local.get $0)
             (i32.const 1)
            )
            (f64.store offset=8
             (local.get $0)
             (select
              (f64.sub
               (local.get $7)
               (local.get $8)
              )
              (f64.add
               (local.get $7)
               (local.get $8)
              )
              (i32.shr_u
               (local.get $2)
               (i32.const 31)
              )
             )
            )
            (drop
             (call $decRef_1330_7
              (i32.const 0)
              (local.get $1)
             )
            )
            (return
             (tuple.extract 0
              (tuple.make
               (local.get $0)
               (i32.const 1879048190)
              )
             )
            )
           )
          )
          (drop
           (call $decRef_1330_7
            (i32.const 0)
            (local.get $0)
           )
          )
          (return
           (block $__inlined_func$numberAddSubRationalHelp_3239_14$100 (result i32)
            (local.set $9
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
            )
            (local.set $0
             (call $getSize_1558_12
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $1)
             )
            )
            (local.set $3
             (call $loadAdtVariant_1056_9
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $1)
             )
            )
            (tuple.extract 0
             (tuple.make
              (if (result i32)
               (i32.shr_u
                (call $isSimpleNumber_2678_14
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (i32.const 3)
                )
                (i32.const 31)
               )
               (block (result i32)
                (local.set $1
                 (call $untagSimple_2676_14
                  (call $incRef_1277_7
                   (i32.const 0)
                   (i32.const 0)
                  )
                  (i32.const 3)
                 )
                )
                (local.set $5
                 (call $makeWrappedInt32_1612_12
                  (call $incRef_1277_7
                   (i32.const 0)
                   (i32.const 0)
                  )
                  (local.get $1)
                 )
                )
                (local.set $1
                 (call $mul_1968_12
                  (call $incRef_1277_7
                   (i32.const 0)
                   (i32.const 0)
                  )
                  (local.get $3)
                  (local.get $5)
                 )
                )
                (local.set $0
                 (if (result i32)
                  (i32.shr_u
                   (local.get $2)
                   (i32.const 31)
                  )
                  (call $sub_1937_12
                   (call $incRef_1277_7
                    (i32.const 0)
                    (i32.const 0)
                   )
                   (local.get $0)
                   (local.get $1)
                  )
                  (call $add_1928_12
                   (call $incRef_1277_7
                    (i32.const 0)
                    (i32.const 0)
                   )
                   (local.get $0)
                   (local.get $1)
                  )
                 )
                )
                (drop
                 (call $decRef_1330_7
                  (call $incRef_1277_7
                   (i32.const 0)
                   (i32.const 0)
                  )
                  (local.get $1)
                 )
                )
                (drop
                 (call $decRef_1330_7
                  (call $incRef_1277_7
                   (i32.const 0)
                   (i32.const 0)
                  )
                  (local.get $5)
                 )
                )
                (local.set $1
                 (call $reducedFractionBigInt_2901_14
                  (call $incRef_1277_7
                   (i32.const 0)
                   (i32.const 0)
                  )
                  (local.get $0)
                  (local.get $3)
                 )
                )
                (drop
                 (call $decRef_1330_7
                  (call $incRef_1277_7
                   (i32.const 0)
                   (i32.const 0)
                  )
                  (local.get $0)
                 )
                )
                (local.get $1)
               )
               (block (result i32)
                (local.set $5
                 (call $stringSize_1058_9
                  (call $incRef_1277_7
                   (i32.const 0)
                   (i32.const 0)
                  )
                  (i32.const 3)
                 )
                )
                (block $switch.11004_outer (result i32)
                 (drop
                  (block $switch.11004_branch_1 (result i32)
                   (drop
                    (block $switch.11004_branch_2 (result i32)
                     (drop
                      (block $switch.11004_branch_3 (result i32)
                       (drop
                        (block $switch.11004_branch_4 (result i32)
                         (drop
                          (block $switch.11004_branch_5 (result i32)
                           (drop
                            (block $switch.11004_default (result i32)
                             (br_table $switch.11004_branch_1 $switch.11004_branch_2 $switch.11004_branch_3 $switch.11004_branch_4 $switch.11004_branch_5 $switch.11004_default
                              (i32.const 0)
                              (i32.shr_s
                               (select
                                (i32.const 1)
                                (select
                                 (i32.const 3)
                                 (select
                                  (i32.const 5)
                                  (select
                                   (i32.const 7)
                                   (i32.const 9)
                                   (i32.shr_u
                                    (select
                                     (i32.const -2)
                                     (i32.const 2147483646)
                                     (i32.eq
                                      (local.get $5)
                                      (global.get $_GRAIN_FLOAT64_BOXED_NUM_TAG_1028_1)
                                     )
                                    )
                                    (i32.const 31)
                                   )
                                  )
                                  (i32.shr_u
                                   (select
                                    (i32.const -2)
                                    (i32.const 2147483646)
                                    (i32.eq
                                     (local.get $5)
                                     (global.get $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1)
                                    )
                                   )
                                   (i32.const 31)
                                  )
                                 )
                                 (i32.shr_u
                                  (select
                                   (i32.const -2)
                                   (i32.const 2147483646)
                                   (i32.eq
                                    (local.get $5)
                                    (global.get $_GRAIN_INT64_BOXED_NUM_TAG_1029_1)
                                   )
                                  )
                                  (i32.const 31)
                                 )
                                )
                                (i32.shr_u
                                 (select
                                  (i32.const -2)
                                  (i32.const 2147483646)
                                  (i32.eq
                                   (local.get $5)
                                   (global.get $_GRAIN_RATIONAL_BOXED_NUM_TAG_1030_1)
                                  )
                                 )
                                 (i32.const 31)
                                )
                               )
                               (i32.const 1)
                              )
                             )
                            )
                           )
                           (unreachable)
                          )
                         )
                         (br $folding-inner1)
                        )
                       )
                       (local.set $7
                        (f64.div
                         (call $toFloat64_1662_12
                          (call $incRef_1277_7
                           (i32.const 0)
                           (i32.const 0)
                          )
                          (local.get $0)
                         )
                         (call $toFloat64_1662_12
                          (call $incRef_1277_7
                           (i32.const 0)
                           (i32.const 0)
                          )
                          (local.get $3)
                         )
                        )
                       )
                       (local.set $8
                        (call $boxedFloat64Number_2928_14
                         (call $incRef_1277_7
                          (i32.const 0)
                          (i32.const 0)
                         )
                         (i32.const 3)
                        )
                       )
                       (i32.store
                        (local.tee $0
                         (call $malloc_1268_7
                          (i32.const 0)
                          (i32.const 16)
                         )
                        )
                        (i32.const 5)
                       )
                       (i32.store offset=4
                        (local.get $0)
                        (i32.const 1)
                       )
                       (f64.store offset=8
                        (local.get $0)
                        (select
                         (f64.sub
                          (local.get $7)
                          (local.get $8)
                         )
                         (f64.add
                          (local.get $7)
                          (local.get $8)
                         )
                         (i32.shr_u
                          (local.get $2)
                          (i32.const 31)
                         )
                        )
                       )
                       (br $switch.11004_outer
                        (local.get $0)
                       )
                      )
                     )
                     (local.set $1
                      (call $mul_1968_12
                       (call $incRef_1277_7
                        (i32.const 0)
                        (i32.const 0)
                       )
                       (local.get $3)
                       (i32.const 3)
                      )
                     )
                     (local.set $0
                      (if (result i32)
                       (i32.shr_u
                        (local.get $2)
                        (i32.const 31)
                       )
                       (call $sub_1937_12
                        (call $incRef_1277_7
                         (i32.const 0)
                         (i32.const 0)
                        )
                        (local.get $0)
                        (local.get $1)
                       )
                       (call $add_1928_12
                        (call $incRef_1277_7
                         (i32.const 0)
                         (i32.const 0)
                        )
                        (local.get $0)
                        (local.get $1)
                       )
                      )
                     )
                     (drop
                      (call $decRef_1330_7
                       (call $incRef_1277_7
                        (i32.const 0)
                        (i32.const 0)
                       )
                       (local.get $1)
                      )
                     )
                     (local.set $1
                      (call $reducedFractionBigInt_2901_14
                       (call $incRef_1277_7
                        (i32.const 0)
                        (i32.const 0)
                       )
                       (local.get $0)
                       (local.get $3)
                      )
                     )
                     (drop
                      (call $decRef_1330_7
                       (call $incRef_1277_7
                        (i32.const 0)
                        (i32.const 0)
                       )
                       (local.get $0)
                      )
                     )
                     (br $switch.11004_outer
                      (local.get $1)
                     )
                    )
                   )
                   (local.set $4
                    (call $boxedInt64Number_2926_14
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (i32.const 3)
                    )
                   )
                   (local.set $5
                    (call $makeWrappedInt64_1619_12
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $4)
                    )
                   )
                   (local.set $1
                    (call $mul_1968_12
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $5)
                     (local.get $3)
                    )
                   )
                   (drop
                    (call $decRef_1330_7
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $5)
                    )
                   )
                   (local.set $0
                    (if (result i32)
                     (i32.shr_u
                      (local.get $2)
                      (i32.const 31)
                     )
                     (call $sub_1937_12
                      (call $incRef_1277_7
                       (i32.const 0)
                       (i32.const 0)
                      )
                      (local.get $0)
                      (local.get $1)
                     )
                     (call $add_1928_12
                      (call $incRef_1277_7
                       (i32.const 0)
                       (i32.const 0)
                      )
                      (local.get $0)
                      (local.get $1)
                     )
                    )
                   )
                   (local.set $2
                    (call $reducedFractionBigInt_2901_14
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $0)
                     (local.get $3)
                    )
                   )
                   (drop
                    (call $decRef_1330_7
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $1)
                    )
                   )
                   (drop
                    (call $decRef_1330_7
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $0)
                    )
                   )
                   (br $switch.11004_outer
                    (local.get $2)
                   )
                  )
                 )
                 (drop
                  (call $decRef_1330_7
                   (i32.const 0)
                   (local.get $9)
                  )
                 )
                 (local.set $11
                  (call $incRef_1277_7
                   (i32.const 0)
                   (i32.const 0)
                  )
                 )
                 (local.set $3
                  (call $getSize_1558_12
                   (call $incRef_1277_7
                    (i32.const 0)
                    (i32.const 0)
                   )
                   (local.get $1)
                  )
                 )
                 (local.set $0
                  (call $loadAdtVariant_1056_9
                   (call $incRef_1277_7
                    (i32.const 0)
                    (i32.const 0)
                   )
                   (local.get $1)
                  )
                 )
                 (local.set $1
                  (call $getSize_1558_12
                   (call $incRef_1277_7
                    (i32.const 0)
                    (i32.const 0)
                   )
                   (i32.const 3)
                  )
                 )
                 (local.set $5
                  (call $loadAdtVariant_1056_9
                   (call $incRef_1277_7
                    (i32.const 0)
                    (i32.const 0)
                   )
                   (i32.const 3)
                  )
                 )
                 (if
                  (i32.shr_u
                   (call $eq_1762_12
                    (call $incRef_1277_7
                     (i32.const 0)
                     (i32.const 0)
                    )
                    (local.get $0)
                    (local.get $5)
                   )
                   (i32.const 31)
                  )
                  (block
                   (local.set $1
                    (if (result i32)
                     (i32.shr_u
                      (local.get $2)
                      (i32.const 31)
                     )
                     (call $sub_1937_12
                      (call $incRef_1277_7
                       (i32.const 0)
                       (i32.const 0)
                      )
                      (local.get $3)
                      (local.get $1)
                     )
                     (call $add_1928_12
                      (call $incRef_1277_7
                       (i32.const 0)
                       (i32.const 0)
                      )
                      (local.get $3)
                      (local.get $1)
                     )
                    )
                   )
                   (local.set $0
                    (call $reducedFractionBigInt_2901_14
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $1)
                     (local.get $0)
                    )
                   )
                  )
                  (block
                   (local.set $3
                    (call $mul_1968_12
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $3)
                     (local.get $5)
                    )
                   )
                   (local.set $9
                    (call $mul_1968_12
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $1)
                     (local.get $0)
                    )
                   )
                   (local.set $1
                    (if (result i32)
                     (i32.shr_u
                      (local.get $2)
                      (i32.const 31)
                     )
                     (call $sub_1937_12
                      (call $incRef_1277_7
                       (i32.const 0)
                       (i32.const 0)
                      )
                      (local.get $3)
                      (local.get $9)
                     )
                     (call $add_1928_12
                      (call $incRef_1277_7
                       (i32.const 0)
                       (i32.const 0)
                      )
                      (local.get $3)
                      (local.get $9)
                     )
                    )
                   )
                   (local.set $0
                    (call $mul_1968_12
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $0)
                     (local.get $5)
                    )
                   )
                   (local.set $0
                    (call $reducedFractionBigInt_2901_14
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $1)
                     (local.get $0)
                    )
                   )
                   (drop
                    (call $decRef_1330_7
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $3)
                    )
                   )
                   (drop
                    (call $decRef_1330_7
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $9)
                    )
                   )
                  )
                 )
                 (drop
                  (call $decRef_1330_7
                   (call $incRef_1277_7
                    (i32.const 0)
                    (i32.const 0)
                   )
                   (local.get $1)
                  )
                 )
                 (drop
                  (call $decRef_1330_7
                   (i32.const 0)
                   (local.get $11)
                  )
                 )
                 (br $__inlined_func$numberAddSubRationalHelp_3239_14$100
                  (tuple.extract 0
                   (tuple.make
                    (local.get $0)
                    (i32.const 1879048190)
                   )
                  )
                 )
                )
               )
              )
              (block (result i32)
               (drop
                (call $decRef_1330_7
                 (i32.const 0)
                 (local.get $9)
                )
               )
               (i32.const 1879048190)
              )
             )
            )
           )
          )
         )
        )
        (drop
         (call $decRef_1330_7
          (i32.const 0)
          (local.get $0)
         )
        )
        (local.set $0
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
        )
        (return
         (tuple.extract 0
          (tuple.make
           (if (result i32)
            (i32.shr_u
             (call $isSimpleNumber_2678_14
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (i32.const 3)
             )
             (i32.const 31)
            )
            (block
             (local.set $4
              (i64.extend_i32_s
               (call $untagSimple_2676_14
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (i32.const 3)
               )
              )
             )
             (local.set $3
              (call $makeWrappedInt64_1619_12
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $4)
              )
             )
             (local.set $1
              (if (result i32)
               (i32.shr_u
                (local.get $2)
                (i32.const 31)
               )
               (call $sub_1937_12
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $1)
                (local.get $3)
               )
               (call $add_1928_12
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $1)
                (local.get $3)
               )
              )
             )
             (drop
              (call $decRef_1330_7
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $3)
              )
             )
             (drop
              (call $decRef_1330_7
               (i32.const 0)
               (local.get $0)
              )
             )
             (return_call $reducedBigInteger_2891_14
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $1)
             )
            )
            (block (result i32)
             (local.set $3
              (call $stringSize_1058_9
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (i32.const 3)
              )
             )
             (block $switch.10780_outer (result i32)
              (drop
               (block $switch.10780_branch_1 (result i32)
                (drop
                 (block $switch.10780_branch_2 (result i32)
                  (drop
                   (block $switch.10780_branch_3 (result i32)
                    (drop
                     (block $switch.10780_branch_4 (result i32)
                      (drop
                       (block $switch.10780_branch_5 (result i32)
                        (drop
                         (block $switch.10780_default (result i32)
                          (br_table $switch.10780_branch_1 $switch.10780_branch_2 $switch.10780_branch_3 $switch.10780_branch_4 $switch.10780_branch_5 $switch.10780_default
                           (i32.const 0)
                           (i32.shr_s
                            (select
                             (i32.const 1)
                             (select
                              (i32.const 3)
                              (select
                               (i32.const 5)
                               (select
                                (i32.const 7)
                                (i32.const 9)
                                (i32.shr_u
                                 (select
                                  (i32.const -2)
                                  (i32.const 2147483646)
                                  (i32.eq
                                   (local.get $3)
                                   (global.get $_GRAIN_FLOAT64_BOXED_NUM_TAG_1028_1)
                                  )
                                 )
                                 (i32.const 31)
                                )
                               )
                               (i32.shr_u
                                (select
                                 (i32.const -2)
                                 (i32.const 2147483646)
                                 (i32.eq
                                  (local.get $3)
                                  (global.get $_GRAIN_RATIONAL_BOXED_NUM_TAG_1030_1)
                                 )
                                )
                                (i32.const 31)
                               )
                              )
                              (i32.shr_u
                               (select
                                (i32.const -2)
                                (i32.const 2147483646)
                                (i32.eq
                                 (local.get $3)
                                 (global.get $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1)
                                )
                               )
                               (i32.const 31)
                              )
                             )
                             (i32.shr_u
                              (select
                               (i32.const -2)
                               (i32.const 2147483646)
                               (i32.eq
                                (local.get $3)
                                (global.get $_GRAIN_INT64_BOXED_NUM_TAG_1029_1)
                               )
                              )
                              (i32.const 31)
                             )
                            )
                            (i32.const 1)
                           )
                          )
                         )
                        )
                        (unreachable)
                       )
                      )
                      (br $folding-inner1)
                     )
                    )
                    (local.set $7
                     (call $toFloat64_1662_12
                      (call $incRef_1277_7
                       (i32.const 0)
                       (i32.const 0)
                      )
                      (local.get $1)
                     )
                    )
                    (local.set $8
                     (call $boxedFloat64Number_2928_14
                      (call $incRef_1277_7
                       (i32.const 0)
                       (i32.const 0)
                      )
                      (i32.const 3)
                     )
                    )
                    (i32.store
                     (local.tee $1
                      (call $malloc_1268_7
                       (i32.const 0)
                       (i32.const 16)
                      )
                     )
                     (i32.const 5)
                    )
                    (i32.store offset=4
                     (local.get $1)
                     (i32.const 1)
                    )
                    (f64.store offset=8
                     (local.get $1)
                     (select
                      (f64.sub
                       (local.get $7)
                       (local.get $8)
                      )
                      (f64.add
                       (local.get $7)
                       (local.get $8)
                      )
                      (i32.shr_u
                       (local.get $2)
                       (i32.const 31)
                      )
                     )
                    )
                    (br $switch.10780_outer
                     (local.get $1)
                    )
                   )
                  )
                  (local.set $3
                   (call $getSize_1558_12
                    (call $incRef_1277_7
                     (i32.const 0)
                     (i32.const 0)
                    )
                    (i32.const 3)
                   )
                  )
                  (local.set $5
                   (call $loadAdtVariant_1056_9
                    (call $incRef_1277_7
                     (i32.const 0)
                     (i32.const 0)
                    )
                    (i32.const 3)
                   )
                  )
                  (local.set $1
                   (call $mul_1968_12
                    (call $incRef_1277_7
                     (i32.const 0)
                     (i32.const 0)
                    )
                    (local.get $1)
                    (local.get $5)
                   )
                  )
                  (local.set $2
                   (if (result i32)
                    (i32.shr_u
                     (local.get $2)
                     (i32.const 31)
                    )
                    (call $sub_1937_12
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $1)
                     (local.get $3)
                    )
                    (call $add_1928_12
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $1)
                     (local.get $3)
                    )
                   )
                  )
                  (drop
                   (call $decRef_1330_7
                    (call $incRef_1277_7
                     (i32.const 0)
                     (i32.const 0)
                    )
                    (local.get $1)
                   )
                  )
                  (local.set $1
                   (call $reducedFractionBigInt_2901_14
                    (call $incRef_1277_7
                     (i32.const 0)
                     (i32.const 0)
                    )
                    (local.get $2)
                    (local.get $5)
                   )
                  )
                  (drop
                   (call $decRef_1330_7
                    (call $incRef_1277_7
                     (i32.const 0)
                     (i32.const 0)
                    )
                    (local.get $2)
                   )
                  )
                  (br $switch.10780_outer
                   (local.get $1)
                  )
                 )
                )
                (local.set $3
                 (if (result i32)
                  (i32.shr_u
                   (local.get $2)
                   (i32.const 31)
                  )
                  (call $sub_1937_12
                   (call $incRef_1277_7
                    (i32.const 0)
                    (i32.const 0)
                   )
                   (local.get $1)
                   (i32.const 3)
                  )
                  (call $add_1928_12
                   (call $incRef_1277_7
                    (i32.const 0)
                    (i32.const 0)
                   )
                   (local.get $1)
                   (i32.const 3)
                  )
                 )
                )
                (drop
                 (call $decRef_1330_7
                  (i32.const 0)
                  (local.get $0)
                 )
                )
                (return_call $reducedBigInteger_2891_14
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (local.get $3)
                )
               )
              )
              (local.set $4
               (call $boxedInt64Number_2926_14
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (i32.const 3)
               )
              )
              (local.set $3
               (call $makeWrappedInt64_1619_12
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $4)
               )
              )
              (local.set $1
               (if (result i32)
                (i32.shr_u
                 (local.get $2)
                 (i32.const 31)
                )
                (call $sub_1937_12
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (local.get $1)
                 (local.get $3)
                )
                (call $add_1928_12
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (local.get $1)
                 (local.get $3)
                )
               )
              )
              (drop
               (call $decRef_1330_7
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $3)
               )
              )
              (drop
               (call $decRef_1330_7
                (i32.const 0)
                (local.get $0)
               )
              )
              (return_call $reducedBigInteger_2891_14
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $1)
              )
             )
            )
           )
           (block (result i32)
            (drop
             (call $decRef_1330_7
              (i32.const 0)
              (local.get $0)
             )
            )
            (i32.const 1879048190)
           )
          )
         )
        )
       )
      )
      (local.set $4
       (call $boxedInt64Number_2926_14
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
       )
      )
      (drop
       (call $decRef_1330_7
        (i32.const 0)
        (local.get $0)
       )
      )
      (local.set $0
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
      )
      (tuple.extract 0
       (tuple.make
        (if (result i32)
         (i32.shr_u
          (call $isSimpleNumber_2678_14
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (i32.const 3)
          )
          (i32.const 31)
         )
         (if
          (i32.shr_u
           (if (result i32)
            (i32.shr_u
             (local.tee $1
              (select
               (select
                (i32.const -2)
                (i32.const 2147483646)
                (i64.lt_s
                 (local.tee $10
                  (select
                   (i64.sub
                    (local.get $4)
                    (local.tee $6
                     (i64.extend_i32_s
                      (call $untagSimple_2676_14
                       (call $incRef_1277_7
                        (i32.const 0)
                        (i32.const 0)
                       )
                       (i32.const 3)
                      )
                     )
                    )
                   )
                   (i64.add
                    (local.get $4)
                    (local.get $6)
                   )
                   (i32.shr_u
                    (local.get $2)
                    (i32.const 31)
                   )
                  )
                 )
                 (local.get $4)
                )
               )
               (local.tee $1
                (select
                 (i32.const -2)
                 (i32.const 2147483646)
                 (i64.ge_s
                  (local.get $6)
                  (i64.const 0)
                 )
                )
               )
               (i32.shr_u
                (local.get $1)
                (i32.const 31)
               )
              )
             )
             (i32.const 31)
            )
            (local.get $1)
            (select
             (select
              (i32.const -2)
              (i32.const 2147483646)
              (i64.lt_s
               (local.get $4)
               (local.get $10)
              )
             )
             (local.tee $1
              (select
               (i32.const -2)
               (i32.const 2147483646)
               (i64.lt_s
                (local.get $6)
                (i64.const 0)
               )
              )
             )
             (i32.shr_u
              (local.get $1)
              (i32.const 31)
             )
            )
           )
           (i32.const 31)
          )
          (block
           (local.set $1
            (call $makeWrappedInt64_1619_12
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $4)
            )
           )
           (local.set $3
            (call $makeWrappedInt64_1619_12
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $6)
            )
           )
           (local.set $2
            (if (result i32)
             (i32.shr_u
              (local.get $2)
              (i32.const 31)
             )
             (call $sub_1937_12
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $1)
              (local.get $3)
             )
             (call $add_1928_12
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $1)
              (local.get $3)
             )
            )
           )
           (drop
            (call $decRef_1330_7
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $1)
            )
           )
           (drop
            (call $decRef_1330_7
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $3)
            )
           )
           (drop
            (call $decRef_1330_7
             (i32.const 0)
             (local.get $0)
            )
           )
           (return_call $reducedBigInteger_2891_14
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $2)
           )
          )
          (block
           (drop
            (call $decRef_1330_7
             (i32.const 0)
             (local.get $0)
            )
           )
           (return_call $reducedInteger_2833_14
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $10)
           )
          )
         )
         (block (result i32)
          (local.set $1
           (call $stringSize_1058_9
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (i32.const 3)
           )
          )
          (block $switch.10644_outer (result i32)
           (drop
            (block $switch.10644_branch_1 (result i32)
             (drop
              (block $switch.10644_branch_2 (result i32)
               (drop
                (block $switch.10644_branch_3 (result i32)
                 (drop
                  (block $switch.10644_branch_4 (result i32)
                   (drop
                    (block $switch.10644_branch_5 (result i32)
                     (drop
                      (block $switch.10644_default (result i32)
                       (br_table $switch.10644_branch_1 $switch.10644_branch_2 $switch.10644_branch_3 $switch.10644_branch_4 $switch.10644_branch_5 $switch.10644_default
                        (i32.const 0)
                        (i32.shr_s
                         (select
                          (i32.const 1)
                          (select
                           (i32.const 3)
                           (select
                            (i32.const 5)
                            (select
                             (i32.const 7)
                             (i32.const 9)
                             (i32.shr_u
                              (select
                               (i32.const -2)
                               (i32.const 2147483646)
                               (i32.eq
                                (local.get $1)
                                (global.get $_GRAIN_FLOAT64_BOXED_NUM_TAG_1028_1)
                               )
                              )
                              (i32.const 31)
                             )
                            )
                            (i32.shr_u
                             (select
                              (i32.const -2)
                              (i32.const 2147483646)
                              (i32.eq
                               (local.get $1)
                               (global.get $_GRAIN_RATIONAL_BOXED_NUM_TAG_1030_1)
                              )
                             )
                             (i32.const 31)
                            )
                           )
                           (i32.shr_u
                            (select
                             (i32.const -2)
                             (i32.const 2147483646)
                             (i32.eq
                              (local.get $1)
                              (global.get $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1)
                             )
                            )
                            (i32.const 31)
                           )
                          )
                          (i32.shr_u
                           (select
                            (i32.const -2)
                            (i32.const 2147483646)
                            (i32.eq
                             (local.get $1)
                             (global.get $_GRAIN_INT64_BOXED_NUM_TAG_1029_1)
                            )
                           )
                           (i32.const 31)
                          )
                         )
                         (i32.const 1)
                        )
                       )
                      )
                     )
                     (unreachable)
                    )
                   )
                   (br $folding-inner1)
                  )
                 )
                 (local.set $7
                  (call $boxedFloat64Number_2928_14
                   (call $incRef_1277_7
                    (i32.const 0)
                    (i32.const 0)
                   )
                   (i32.const 3)
                  )
                 )
                 (i32.store
                  (local.tee $1
                   (call $malloc_1268_7
                    (i32.const 0)
                    (i32.const 16)
                   )
                  )
                  (i32.const 5)
                 )
                 (i32.store offset=4
                  (local.get $1)
                  (i32.const 1)
                 )
                 (f64.store offset=8
                  (local.get $1)
                  (select
                   (f64.sub
                    (local.tee $8
                     (f64.convert_i64_s
                      (local.get $4)
                     )
                    )
                    (local.get $7)
                   )
                   (f64.add
                    (local.get $8)
                    (local.get $7)
                   )
                   (i32.shr_u
                    (local.get $2)
                    (i32.const 31)
                   )
                  )
                 )
                 (br $switch.10644_outer
                  (local.get $1)
                 )
                )
               )
               (local.set $3
                (call $makeWrappedInt64_1619_12
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (local.get $4)
                )
               )
               (local.set $5
                (call $getSize_1558_12
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (i32.const 3)
                )
               )
               (local.set $9
                (call $loadAdtVariant_1056_9
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (i32.const 3)
                )
               )
               (local.set $1
                (call $mul_1968_12
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (local.get $3)
                 (local.get $9)
                )
               )
               (drop
                (call $decRef_1330_7
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (local.get $3)
                )
               )
               (local.set $2
                (if (result i32)
                 (i32.shr_u
                  (local.get $2)
                  (i32.const 31)
                 )
                 (call $sub_1937_12
                  (call $incRef_1277_7
                   (i32.const 0)
                   (i32.const 0)
                  )
                  (local.get $1)
                  (local.get $5)
                 )
                 (call $add_1928_12
                  (call $incRef_1277_7
                   (i32.const 0)
                   (i32.const 0)
                  )
                  (local.get $1)
                  (local.get $5)
                 )
                )
               )
               (local.set $3
                (call $reducedFractionBigInt_2901_14
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (local.get $2)
                 (local.get $9)
                )
               )
               (drop
                (call $decRef_1330_7
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (local.get $1)
                )
               )
               (drop
                (call $decRef_1330_7
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (local.get $2)
                )
               )
               (br $switch.10644_outer
                (local.get $3)
               )
              )
             )
             (local.set $1
              (call $makeWrappedInt64_1619_12
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $4)
              )
             )
             (local.set $3
              (if (result i32)
               (i32.shr_u
                (local.get $2)
                (i32.const 31)
               )
               (call $sub_1937_12
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $1)
                (i32.const 3)
               )
               (call $add_1928_12
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $1)
                (i32.const 3)
               )
              )
             )
             (drop
              (call $decRef_1330_7
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $1)
              )
             )
             (drop
              (call $decRef_1330_7
               (i32.const 0)
               (local.get $0)
              )
             )
             (return_call $reducedBigInteger_2891_14
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $3)
             )
            )
           )
           (if
            (i32.shr_u
             (if (result i32)
              (i32.shr_u
               (local.tee $1
                (select
                 (select
                  (i32.const -2)
                  (i32.const 2147483646)
                  (i64.lt_s
                   (local.tee $10
                    (select
                     (i64.sub
                      (local.get $4)
                      (local.tee $6
                       (call $boxedInt64Number_2926_14
                        (call $incRef_1277_7
                         (i32.const 0)
                         (i32.const 0)
                        )
                        (i32.const 3)
                       )
                      )
                     )
                     (i64.add
                      (local.get $4)
                      (local.get $6)
                     )
                     (i32.shr_u
                      (local.get $2)
                      (i32.const 31)
                     )
                    )
                   )
                   (local.get $4)
                  )
                 )
                 (local.tee $1
                  (select
                   (i32.const -2)
                   (i32.const 2147483646)
                   (i64.ge_s
                    (local.get $6)
                    (i64.const 0)
                   )
                  )
                 )
                 (i32.shr_u
                  (local.get $1)
                  (i32.const 31)
                 )
                )
               )
               (i32.const 31)
              )
              (local.get $1)
              (select
               (select
                (i32.const -2)
                (i32.const 2147483646)
                (i64.lt_s
                 (local.get $4)
                 (local.get $10)
                )
               )
               (local.tee $1
                (select
                 (i32.const -2)
                 (i32.const 2147483646)
                 (i64.lt_s
                  (local.get $6)
                  (i64.const 0)
                 )
                )
               )
               (i32.shr_u
                (local.get $1)
                (i32.const 31)
               )
              )
             )
             (i32.const 31)
            )
            (block
             (local.set $1
              (call $makeWrappedInt64_1619_12
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $4)
              )
             )
             (local.set $3
              (call $makeWrappedInt64_1619_12
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $6)
              )
             )
             (local.set $2
              (if (result i32)
               (i32.shr_u
                (local.get $2)
                (i32.const 31)
               )
               (call $sub_1937_12
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $1)
                (local.get $3)
               )
               (call $add_1928_12
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $1)
                (local.get $3)
               )
              )
             )
             (drop
              (call $decRef_1330_7
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $1)
              )
             )
             (drop
              (call $decRef_1330_7
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $3)
              )
             )
             (drop
              (call $decRef_1330_7
               (i32.const 0)
               (local.get $0)
              )
             )
             (return_call $reducedBigInteger_2891_14
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $2)
             )
            )
            (block
             (drop
              (call $decRef_1330_7
               (i32.const 0)
               (local.get $0)
              )
             )
             (return_call $reducedInteger_2833_14
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $10)
             )
            )
           )
          )
         )
        )
        (block (result i32)
         (drop
          (call $decRef_1330_7
           (i32.const 0)
           (local.get $0)
          )
         )
         (i32.const 1879048190)
        )
       )
      )
     )
    )
   )
  )
  (i32.store
   (local.tee $0
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 20)
    )
   )
   (i32.const 2)
  )
  (i32.store offset=4
   (local.get $0)
   (i32.const 1)
  )
  (i32.store offset=8
   (local.get $0)
   (i32.const 5)
  )
  (i32.store offset=12
   (local.get $0)
   (i32.const 5177)
  )
  (i32.store offset=16
   (local.get $0)
   (i32.const 0)
  )
  (call $throw_1387_12
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
   (local.get $0)
  )
  (unreachable)
 )
 (func $safeI64Multiply_3283_14 (; has Stack IR ;) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local.set $3
   (i64.mul
    (local.get $1)
    (local.get $2)
   )
  )
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i64.ne
        (local.get $1)
        (i64.const 0)
       )
      )
      (i32.const 31)
     )
     (if (result i32)
      (i32.shr_u
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (i64.ne
         (i64.div_s
          (local.get $3)
          (local.get $1)
         )
         (local.get $2)
        )
       )
       (i32.const 31)
      )
      (block (result i32)
       (local.set $4
        (call $makeWrappedInt64_1619_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $1)
        )
       )
       (local.set $5
        (call $makeWrappedInt64_1619_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $2)
        )
       )
       (local.set $6
        (call $mul_1968_12
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $4)
         (local.get $5)
        )
       )
       (drop
        (call $decRef_1330_7
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $4)
        )
       )
       (drop
        (call $decRef_1330_7
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $5)
        )
       )
       (local.get $6)
      )
      (block
       (drop
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $0)
        )
       )
       (return_call $reducedInteger_2833_14
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $3)
       )
      )
     )
     (block
      (drop
       (call $decRef_1330_7
        (i32.const 0)
        (local.get $0)
       )
      )
      (return_call $reducedInteger_2833_14
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $3)
      )
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $numberTimesDivideInt64Help_3290_14 (; has Stack IR ;) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 f64)
  (local $7 f64)
  (local $8 i32)
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (call $isSimpleNumber_2678_14
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $2)
      )
      (i32.const 31)
     )
     (if
      (i32.shr_u
       (local.get $3)
       (i32.const 31)
      )
      (block
       (local.set $5
        (i64.extend_i32_s
         (call $untagSimple_2676_14
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $2)
         )
        )
       )
       (drop
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $0)
        )
       )
       (return_call $reducedFraction64_2916_14
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
        (local.get $5)
       )
      )
      (block
       (local.set $5
        (i64.extend_i32_s
         (call $untagSimple_2676_14
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $2)
         )
        )
       )
       (drop
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $0)
        )
       )
       (return_call $safeI64Multiply_3283_14
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
        (local.get $5)
       )
      )
     )
     (block (result i32)
      (local.set $4
       (call $stringSize_1058_9
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $2)
       )
      )
      (block $switch.11193_outer (result i32)
       (drop
        (block $switch.11193_branch_1 (result i32)
         (drop
          (block $switch.11193_branch_2 (result i32)
           (drop
            (block $switch.11193_branch_3 (result i32)
             (drop
              (block $switch.11193_branch_4 (result i32)
               (drop
                (block $switch.11193_branch_5 (result i32)
                 (drop
                  (block $switch.11193_default (result i32)
                   (br_table $switch.11193_branch_1 $switch.11193_branch_2 $switch.11193_branch_3 $switch.11193_branch_4 $switch.11193_branch_5 $switch.11193_default
                    (i32.const 0)
                    (i32.shr_s
                     (select
                      (i32.const 1)
                      (select
                       (i32.const 3)
                       (select
                        (i32.const 5)
                        (select
                         (i32.const 7)
                         (i32.const 9)
                         (i32.shr_u
                          (select
                           (i32.const -2)
                           (i32.const 2147483646)
                           (i32.eq
                            (local.get $4)
                            (global.get $_GRAIN_FLOAT64_BOXED_NUM_TAG_1028_1)
                           )
                          )
                          (i32.const 31)
                         )
                        )
                        (i32.shr_u
                         (select
                          (i32.const -2)
                          (i32.const 2147483646)
                          (i32.eq
                           (local.get $4)
                           (global.get $_GRAIN_RATIONAL_BOXED_NUM_TAG_1030_1)
                          )
                         )
                         (i32.const 31)
                        )
                       )
                       (i32.shr_u
                        (select
                         (i32.const -2)
                         (i32.const 2147483646)
                         (i32.eq
                          (local.get $4)
                          (global.get $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1)
                         )
                        )
                        (i32.const 31)
                       )
                      )
                      (i32.shr_u
                       (select
                        (i32.const -2)
                        (i32.const 2147483646)
                        (i32.eq
                         (local.get $4)
                         (global.get $_GRAIN_INT64_BOXED_NUM_TAG_1029_1)
                        )
                       )
                       (i32.const 31)
                      )
                     )
                     (i32.const 1)
                    )
                   )
                  )
                 )
                 (unreachable)
                )
               )
               (i32.store
                (local.tee $0
                 (call $malloc_1268_7
                  (i32.const 0)
                  (i32.const 20)
                 )
                )
                (i32.const 2)
               )
               (i32.store offset=4
                (local.get $0)
                (i32.const 1)
               )
               (i32.store offset=8
                (local.get $0)
                (i32.const 5)
               )
               (i32.store offset=12
                (local.get $0)
                (i32.const 5177)
               )
               (i32.store offset=16
                (local.get $0)
                (i32.const 0)
               )
               (call $throw_1387_12
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $0)
               )
               (unreachable)
              )
             )
             (local.set $6
              (f64.convert_i64_s
               (local.get $1)
              )
             )
             (local.set $7
              (call $boxedFloat64Number_2928_14
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $2)
              )
             )
             (if
              (i32.shr_u
               (local.get $3)
               (i32.const 31)
              )
              (block
               (i32.store
                (local.tee $2
                 (call $malloc_1268_7
                  (i32.const 0)
                  (i32.const 16)
                 )
                )
                (i32.const 5)
               )
               (i32.store offset=4
                (local.get $2)
                (i32.const 1)
               )
               (f64.store offset=8
                (local.get $2)
                (f64.div
                 (local.get $6)
                 (local.get $7)
                )
               )
              )
              (block
               (i32.store
                (local.tee $2
                 (call $malloc_1268_7
                  (i32.const 0)
                  (i32.const 16)
                 )
                )
                (i32.const 5)
               )
               (i32.store offset=4
                (local.get $2)
                (i32.const 1)
               )
               (f64.store offset=8
                (local.get $2)
                (f64.mul
                 (local.get $6)
                 (local.get $7)
                )
               )
              )
             )
             (br $switch.11193_outer
              (local.get $2)
             )
            )
           )
           (local.set $4
            (call $getSize_1558_12
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $2)
            )
           )
           (local.set $8
            (call $loadAdtVariant_1056_9
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $2)
            )
           )
           (local.set $2
            (call $makeWrappedInt64_1619_12
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $1)
            )
           )
           (local.set $4
            (if (result i32)
             (i32.shr_u
              (local.get $3)
              (i32.const 31)
             )
             (block (result i32)
              (local.set $3
               (call $mul_1968_12
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $2)
                (local.get $8)
               )
              )
              (call $reducedFractionBigInt_2901_14
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $3)
               (local.get $4)
              )
             )
             (block (result i32)
              (local.set $3
               (call $mul_1968_12
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $2)
                (local.get $4)
               )
              )
              (call $reducedFractionBigInt_2901_14
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $3)
               (local.get $8)
              )
             )
            )
           )
           (drop
            (call $decRef_1330_7
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $3)
            )
           )
           (drop
            (call $decRef_1330_7
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $2)
            )
           )
           (br $switch.11193_outer
            (local.get $4)
           )
          )
         )
         (local.set $4
          (call $makeWrappedInt64_1619_12
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $1)
          )
         )
         (local.set $2
          (if (result i32)
           (i32.shr_u
            (local.get $3)
            (i32.const 31)
           )
           (call $reducedFractionBigInt_2901_14
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $4)
            (local.get $2)
           )
           (block (result i32)
            (local.set $2
             (call $mul_1968_12
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $4)
              (local.get $2)
             )
            )
            (call $reducedBigInteger_2891_14
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $2)
            )
           )
          )
         )
         (drop
          (call $decRef_1330_7
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $4)
          )
         )
         (br $switch.11193_outer
          (local.get $2)
         )
        )
       )
       (local.set $5
        (call $boxedInt64Number_2926_14
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $2)
        )
       )
       (if
        (i32.shr_u
         (local.get $3)
         (i32.const 31)
        )
        (block
         (drop
          (call $decRef_1330_7
           (i32.const 0)
           (local.get $0)
          )
         )
         (return_call $reducedFraction64_2916_14
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $1)
          (local.get $5)
         )
        )
        (block
         (drop
          (call $decRef_1330_7
           (i32.const 0)
           (local.get $0)
          )
         )
         (return_call $safeI64Multiply_3283_14
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $1)
          (local.get $5)
         )
        )
       )
      )
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $numberTimesDivideHelp_3372_14 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 i64)
  (local $8 f64)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (if
   (i32.shr_u
    (call $isSimpleNumber_2678_14
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $1)
    )
    (i32.const 31)
   )
   (block
    (drop
     (call $decRef_1330_7
      (i32.const 0)
      (local.get $0)
     )
    )
    (local.set $0
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
    )
    (local.set $7
     (i64.extend_i32_s
      (call $untagSimple_2676_14
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
      )
     )
    )
    (drop
     (call $decRef_1330_7
      (i32.const 0)
      (local.get $0)
     )
    )
    (return_call $numberTimesDivideInt64Help_3290_14
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $7)
     (local.get $2)
     (local.get $3)
    )
   )
   (block $folding-inner1
    (local.set $4
     (call $stringSize_1058_9
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (local.get $1)
     )
    )
    (drop
     (block $switch.11535_branch_1 (result i32)
      (drop
       (block $switch.11535_branch_2 (result i32)
        (drop
         (block $switch.11535_branch_3 (result i32)
          (drop
           (block $switch.11535_branch_4 (result i32)
            (drop
             (block $switch.11535_branch_5 (result i32)
              (drop
               (block $switch.11535_default (result i32)
                (br_table $switch.11535_branch_1 $switch.11535_branch_2 $switch.11535_branch_3 $switch.11535_branch_4 $switch.11535_branch_5 $switch.11535_default
                 (i32.const 0)
                 (i32.shr_s
                  (select
                   (i32.const 1)
                   (select
                    (i32.const 3)
                    (select
                     (i32.const 5)
                     (select
                      (i32.const 7)
                      (i32.const 9)
                      (i32.shr_u
                       (select
                        (i32.const -2)
                        (i32.const 2147483646)
                        (i32.eq
                         (local.get $4)
                         (global.get $_GRAIN_FLOAT64_BOXED_NUM_TAG_1028_1)
                        )
                       )
                       (i32.const 31)
                      )
                     )
                     (i32.shr_u
                      (select
                       (i32.const -2)
                       (i32.const 2147483646)
                       (i32.eq
                        (local.get $4)
                        (global.get $_GRAIN_RATIONAL_BOXED_NUM_TAG_1030_1)
                       )
                      )
                      (i32.const 31)
                     )
                    )
                    (i32.shr_u
                     (select
                      (i32.const -2)
                      (i32.const 2147483646)
                      (i32.eq
                       (local.get $4)
                       (global.get $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1)
                      )
                     )
                     (i32.const 31)
                    )
                   )
                   (i32.shr_u
                    (select
                     (i32.const -2)
                     (i32.const 2147483646)
                     (i32.eq
                      (local.get $4)
                      (global.get $_GRAIN_INT64_BOXED_NUM_TAG_1029_1)
                     )
                    )
                    (i32.const 31)
                   )
                  )
                  (i32.const 1)
                 )
                )
               )
              )
              (unreachable)
             )
            )
            (br $folding-inner1)
           )
          )
          (local.set $5
           (call $boxedFloat64Number_2928_14
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $1)
           )
          )
          (drop
           (call $decRef_1330_7
            (i32.const 0)
            (local.get $0)
           )
          )
          (local.set $1
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
          )
          (drop
           (call $incRef_1277_7
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $2)
           )
          )
          (local.set $8
           (call $coerceNumberToWasmF64_2972_14
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $2)
           )
          )
          (return
           (tuple.extract 0
            (tuple.make
             (if (result i32)
              (i32.shr_u
               (local.get $3)
               (i32.const 31)
              )
              (block (result i32)
               (i32.store
                (local.tee $0
                 (call $malloc_1268_7
                  (i32.const 0)
                  (i32.const 16)
                 )
                )
                (i32.const 5)
               )
               (i32.store offset=4
                (local.get $0)
                (i32.const 1)
               )
               (f64.store offset=8
                (local.get $0)
                (f64.div
                 (local.get $5)
                 (local.get $8)
                )
               )
               (local.get $0)
              )
              (block (result i32)
               (i32.store
                (local.tee $0
                 (call $malloc_1268_7
                  (i32.const 0)
                  (i32.const 16)
                 )
                )
                (i32.const 5)
               )
               (i32.store offset=4
                (local.get $0)
                (i32.const 1)
               )
               (f64.store offset=8
                (local.get $0)
                (f64.mul
                 (local.get $5)
                 (local.get $8)
                )
               )
               (local.get $0)
              )
             )
             (block (result i32)
              (drop
               (call $decRef_1330_7
                (i32.const 0)
                (local.get $1)
               )
              )
              (i32.const 1879048190)
             )
            )
           )
          )
         )
        )
        (drop
         (call $decRef_1330_7
          (i32.const 0)
          (local.get $0)
         )
        )
        (local.set $9
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
        )
        (local.set $4
         (call $getSize_1558_12
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $1)
         )
        )
        (local.set $6
         (call $loadAdtVariant_1056_9
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $1)
         )
        )
        (return
         (tuple.extract 0
          (tuple.make
           (if (result i32)
            (i32.shr_u
             (call $isSimpleNumber_2678_14
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $2)
             )
             (i32.const 31)
            )
            (block (result i32)
             (local.set $0
              (call $untagSimple_2676_14
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $2)
              )
             )
             (drop
              (if (result i32)
               (i32.shr_u
                (select
                 (i32.const -2)
                 (i32.const 2147483646)
                 (i32.ne
                  (local.tee $1
                   (call $makeWrappedInt32_1612_12
                    (call $incRef_1277_7
                     (i32.const 0)
                     (i32.const 0)
                    )
                    (local.get $0)
                   )
                  )
                  (block (result i32)
                   (local.set $2
                    (if (result i32)
                     (i32.shr_u
                      (local.get $3)
                      (i32.const 31)
                     )
                     (block (result i32)
                      (local.set $0
                       (call $mul_1968_12
                        (call $incRef_1277_7
                         (i32.const 0)
                         (i32.const 0)
                        )
                        (local.get $6)
                        (local.get $1)
                       )
                      )
                      (call $reducedFractionBigInt_2901_14
                       (call $incRef_1277_7
                        (i32.const 0)
                        (i32.const 0)
                       )
                       (local.get $4)
                       (local.get $0)
                      )
                     )
                     (block (result i32)
                      (local.set $0
                       (call $mul_1968_12
                        (call $incRef_1277_7
                         (i32.const 0)
                         (i32.const 0)
                        )
                        (local.get $4)
                        (local.get $1)
                       )
                      )
                      (call $reducedFractionBigInt_2901_14
                       (call $incRef_1277_7
                        (i32.const 0)
                        (i32.const 0)
                       )
                       (local.get $0)
                       (local.get $6)
                      )
                     )
                    )
                   )
                   (drop
                    (call $decRef_1330_7
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $0)
                    )
                   )
                   (local.get $2)
                  )
                 )
                )
                (i32.const 31)
               )
               (block (result i32)
                (drop
                 (call $decRef_1330_7
                  (call $incRef_1277_7
                   (i32.const 0)
                   (i32.const 0)
                  )
                  (local.get $1)
                 )
                )
                (i32.const 0)
               )
               (i32.const 1879048190)
              )
             )
             (local.get $2)
            )
            (block (result i32)
             (local.set $0
              (call $stringSize_1058_9
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $2)
              )
             )
             (block $switch.11423_outer (result i32)
              (drop
               (block $switch.11423_branch_1 (result i32)
                (drop
                 (block $switch.11423_branch_2 (result i32)
                  (drop
                   (block $switch.11423_branch_3 (result i32)
                    (drop
                     (block $switch.11423_branch_4 (result i32)
                      (drop
                       (block $switch.11423_branch_5 (result i32)
                        (drop
                         (block $switch.11423_default (result i32)
                          (br_table $switch.11423_branch_1 $switch.11423_branch_2 $switch.11423_branch_3 $switch.11423_branch_4 $switch.11423_branch_5 $switch.11423_default
                           (i32.const 0)
                           (i32.shr_s
                            (select
                             (i32.const 1)
                             (select
                              (i32.const 3)
                              (select
                               (i32.const 5)
                               (select
                                (i32.const 7)
                                (i32.const 9)
                                (i32.shr_u
                                 (select
                                  (i32.const -2)
                                  (i32.const 2147483646)
                                  (i32.eq
                                   (local.get $0)
                                   (global.get $_GRAIN_FLOAT64_BOXED_NUM_TAG_1028_1)
                                  )
                                 )
                                 (i32.const 31)
                                )
                               )
                               (i32.shr_u
                                (select
                                 (i32.const -2)
                                 (i32.const 2147483646)
                                 (i32.eq
                                  (local.get $0)
                                  (global.get $_GRAIN_RATIONAL_BOXED_NUM_TAG_1030_1)
                                 )
                                )
                                (i32.const 31)
                               )
                              )
                              (i32.shr_u
                               (select
                                (i32.const -2)
                                (i32.const 2147483646)
                                (i32.eq
                                 (local.get $0)
                                 (global.get $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1)
                                )
                               )
                               (i32.const 31)
                              )
                             )
                             (i32.shr_u
                              (select
                               (i32.const -2)
                               (i32.const 2147483646)
                               (i32.eq
                                (local.get $0)
                                (global.get $_GRAIN_INT64_BOXED_NUM_TAG_1029_1)
                               )
                              )
                              (i32.const 31)
                             )
                            )
                            (i32.const 1)
                           )
                          )
                         )
                        )
                        (unreachable)
                       )
                      )
                      (br $folding-inner1)
                     )
                    )
                    (local.set $5
                     (f64.div
                      (call $toFloat64_1662_12
                       (call $incRef_1277_7
                        (i32.const 0)
                        (i32.const 0)
                       )
                       (local.get $4)
                      )
                      (call $toFloat64_1662_12
                       (call $incRef_1277_7
                        (i32.const 0)
                        (i32.const 0)
                       )
                       (local.get $6)
                      )
                     )
                    )
                    (local.set $5
                     (if (result f64)
                      (i32.shr_u
                       (local.get $3)
                       (i32.const 31)
                      )
                      (f64.div
                       (local.get $5)
                       (call $boxedFloat64Number_2928_14
                        (call $incRef_1277_7
                         (i32.const 0)
                         (i32.const 0)
                        )
                        (local.get $2)
                       )
                      )
                      (f64.mul
                       (local.get $5)
                       (call $boxedFloat64Number_2928_14
                        (call $incRef_1277_7
                         (i32.const 0)
                         (i32.const 0)
                        )
                        (local.get $2)
                       )
                      )
                     )
                    )
                    (i32.store
                     (local.tee $0
                      (call $malloc_1268_7
                       (i32.const 0)
                       (i32.const 16)
                      )
                     )
                     (i32.const 5)
                    )
                    (i32.store offset=4
                     (local.get $0)
                     (i32.const 1)
                    )
                    (f64.store offset=8
                     (local.get $0)
                     (local.get $5)
                    )
                    (br $switch.11423_outer
                     (local.get $0)
                    )
                   )
                  )
                  (drop
                   (call $decRef_1330_7
                    (i32.const 0)
                    (local.get $9)
                   )
                  )
                  (local.set $12
                   (call $incRef_1277_7
                    (i32.const 0)
                    (i32.const 0)
                   )
                  )
                  (local.set $0
                   (call $getSize_1558_12
                    (call $incRef_1277_7
                     (i32.const 0)
                     (i32.const 0)
                    )
                    (local.get $1)
                   )
                  )
                  (local.set $1
                   (call $loadAdtVariant_1056_9
                    (call $incRef_1277_7
                     (i32.const 0)
                     (i32.const 0)
                    )
                    (local.get $1)
                   )
                  )
                  (local.set $10
                   (call $getSize_1558_12
                    (call $incRef_1277_7
                     (i32.const 0)
                     (i32.const 0)
                    )
                    (local.get $2)
                   )
                  )
                  (local.set $11
                   (call $loadAdtVariant_1056_9
                    (call $incRef_1277_7
                     (i32.const 0)
                     (i32.const 0)
                    )
                    (local.get $2)
                   )
                  )
                  (local.set $0
                   (if (result i32)
                    (i32.shr_u
                     (local.get $3)
                     (i32.const 31)
                    )
                    (call $mul_1968_12
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $0)
                     (local.get $11)
                    )
                    (call $mul_1968_12
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $0)
                     (local.get $10)
                    )
                   )
                  )
                  (local.set $1
                   (if (result i32)
                    (i32.shr_u
                     (local.get $3)
                     (i32.const 31)
                    )
                    (call $mul_1968_12
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $1)
                     (local.get $10)
                    )
                    (call $mul_1968_12
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $1)
                     (local.get $11)
                    )
                   )
                  )
                  (drop
                   (call $decRef_1330_7
                    (i32.const 0)
                    (local.get $12)
                   )
                  )
                  (return_call $reducedFractionBigInt_2901_14
                   (call $incRef_1277_7
                    (i32.const 0)
                    (i32.const 0)
                   )
                   (local.get $0)
                   (local.get $1)
                  )
                 )
                )
                (local.set $1
                 (if (result i32)
                  (i32.shr_u
                   (local.get $3)
                   (i32.const 31)
                  )
                  (block (result i32)
                   (local.set $0
                    (call $mul_1968_12
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $6)
                     (local.get $2)
                    )
                   )
                   (call $reducedFractionBigInt_2901_14
                    (call $incRef_1277_7
                     (i32.const 0)
                     (i32.const 0)
                    )
                    (local.get $4)
                    (local.get $0)
                   )
                  )
                  (block (result i32)
                   (local.set $0
                    (call $mul_1968_12
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $4)
                     (local.get $2)
                    )
                   )
                   (call $reducedFractionBigInt_2901_14
                    (call $incRef_1277_7
                     (i32.const 0)
                     (i32.const 0)
                    )
                    (local.get $0)
                    (local.get $6)
                   )
                  )
                 )
                )
                (drop
                 (call $decRef_1330_7
                  (call $incRef_1277_7
                   (i32.const 0)
                   (i32.const 0)
                  )
                  (local.get $0)
                 )
                )
                (br $switch.11423_outer
                 (local.get $1)
                )
               )
              )
              (local.set $7
               (call $boxedInt64Number_2926_14
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $2)
               )
              )
              (local.set $1
               (call $makeWrappedInt64_1619_12
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $7)
               )
              )
              (local.set $2
               (if (result i32)
                (i32.shr_u
                 (local.get $3)
                 (i32.const 31)
                )
                (block (result i32)
                 (local.set $0
                  (call $mul_1968_12
                   (call $incRef_1277_7
                    (i32.const 0)
                    (i32.const 0)
                   )
                   (local.get $6)
                   (local.get $1)
                  )
                 )
                 (call $reducedFractionBigInt_2901_14
                  (call $incRef_1277_7
                   (i32.const 0)
                   (i32.const 0)
                  )
                  (local.get $4)
                  (local.get $0)
                 )
                )
                (block (result i32)
                 (local.set $0
                  (call $mul_1968_12
                   (call $incRef_1277_7
                    (i32.const 0)
                    (i32.const 0)
                   )
                   (local.get $4)
                   (local.get $1)
                  )
                 )
                 (call $reducedFractionBigInt_2901_14
                  (call $incRef_1277_7
                   (i32.const 0)
                   (i32.const 0)
                  )
                  (local.get $0)
                  (local.get $6)
                 )
                )
               )
              )
              (drop
               (call $decRef_1330_7
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $0)
               )
              )
              (drop
               (call $decRef_1330_7
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $1)
               )
              )
              (local.get $2)
             )
            )
           )
           (block (result i32)
            (drop
             (call $decRef_1330_7
              (i32.const 0)
              (local.get $9)
             )
            )
            (i32.const 1879048190)
           )
          )
         )
        )
       )
      )
      (drop
       (call $decRef_1330_7
        (i32.const 0)
        (local.get $0)
       )
      )
      (local.set $4
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
      )
      (return
       (tuple.extract 0
        (tuple.make
         (if (result i32)
          (i32.shr_u
           (call $isSimpleNumber_2678_14
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $2)
           )
           (i32.const 31)
          )
          (block (result i32)
           (local.set $0
            (call $untagSimple_2676_14
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $2)
            )
           )
           (local.set $0
            (call $makeWrappedInt32_1612_12
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $0)
            )
           )
           (local.set $1
            (if (result i32)
             (i32.shr_u
              (local.get $3)
              (i32.const 31)
             )
             (call $reducedFractionBigInt_2901_14
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $1)
              (local.get $0)
             )
             (block (result i32)
              (local.set $1
               (call $mul_1968_12
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $1)
                (local.get $0)
               )
              )
              (call $reducedBigInteger_2891_14
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $1)
              )
             )
            )
           )
           (drop
            (call $decRef_1330_7
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $0)
            )
           )
           (local.get $1)
          )
          (block (result i32)
           (local.set $0
            (call $stringSize_1058_9
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $2)
            )
           )
           (block $switch.11299_outer (result i32)
            (drop
             (block $switch.11299_branch_1 (result i32)
              (drop
               (block $switch.11299_branch_2 (result i32)
                (drop
                 (block $switch.11299_branch_3 (result i32)
                  (drop
                   (block $switch.11299_branch_4 (result i32)
                    (drop
                     (block $switch.11299_branch_5 (result i32)
                      (drop
                       (block $switch.11299_default (result i32)
                        (br_table $switch.11299_branch_1 $switch.11299_branch_2 $switch.11299_branch_3 $switch.11299_branch_4 $switch.11299_branch_5 $switch.11299_default
                         (i32.const 0)
                         (i32.shr_s
                          (select
                           (i32.const 1)
                           (select
                            (i32.const 3)
                            (select
                             (i32.const 5)
                             (select
                              (i32.const 7)
                              (i32.const 9)
                              (i32.shr_u
                               (select
                                (i32.const -2)
                                (i32.const 2147483646)
                                (i32.eq
                                 (local.get $0)
                                 (global.get $_GRAIN_FLOAT64_BOXED_NUM_TAG_1028_1)
                                )
                               )
                               (i32.const 31)
                              )
                             )
                             (i32.shr_u
                              (select
                               (i32.const -2)
                               (i32.const 2147483646)
                               (i32.eq
                                (local.get $0)
                                (global.get $_GRAIN_RATIONAL_BOXED_NUM_TAG_1030_1)
                               )
                              )
                              (i32.const 31)
                             )
                            )
                            (i32.shr_u
                             (select
                              (i32.const -2)
                              (i32.const 2147483646)
                              (i32.eq
                               (local.get $0)
                               (global.get $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1)
                              )
                             )
                             (i32.const 31)
                            )
                           )
                           (i32.shr_u
                            (select
                             (i32.const -2)
                             (i32.const 2147483646)
                             (i32.eq
                              (local.get $0)
                              (global.get $_GRAIN_INT64_BOXED_NUM_TAG_1029_1)
                             )
                            )
                            (i32.const 31)
                           )
                          )
                          (i32.const 1)
                         )
                        )
                       )
                      )
                      (unreachable)
                     )
                    )
                    (br $folding-inner1)
                   )
                  )
                  (local.set $5
                   (call $toFloat64_1662_12
                    (call $incRef_1277_7
                     (i32.const 0)
                     (i32.const 0)
                    )
                    (local.get $1)
                   )
                  )
                  (local.set $8
                   (call $boxedFloat64Number_2928_14
                    (call $incRef_1277_7
                     (i32.const 0)
                     (i32.const 0)
                    )
                    (local.get $2)
                   )
                  )
                  (if
                   (i32.shr_u
                    (local.get $3)
                    (i32.const 31)
                   )
                   (block
                    (i32.store
                     (local.tee $0
                      (call $malloc_1268_7
                       (i32.const 0)
                       (i32.const 16)
                      )
                     )
                     (i32.const 5)
                    )
                    (i32.store offset=4
                     (local.get $0)
                     (i32.const 1)
                    )
                    (f64.store offset=8
                     (local.get $0)
                     (f64.div
                      (local.get $5)
                      (local.get $8)
                     )
                    )
                   )
                   (block
                    (i32.store
                     (local.tee $0
                      (call $malloc_1268_7
                       (i32.const 0)
                       (i32.const 16)
                      )
                     )
                     (i32.const 5)
                    )
                    (i32.store offset=4
                     (local.get $0)
                     (i32.const 1)
                    )
                    (f64.store offset=8
                     (local.get $0)
                     (f64.mul
                      (local.get $5)
                      (local.get $8)
                     )
                    )
                   )
                  )
                  (br $switch.11299_outer
                   (local.get $0)
                  )
                 )
                )
                (local.set $6
                 (call $getSize_1558_12
                  (call $incRef_1277_7
                   (i32.const 0)
                   (i32.const 0)
                  )
                  (local.get $2)
                 )
                )
                (local.set $2
                 (call $loadAdtVariant_1056_9
                  (call $incRef_1277_7
                   (i32.const 0)
                   (i32.const 0)
                  )
                  (local.get $2)
                 )
                )
                (local.set $1
                 (if (result i32)
                  (i32.shr_u
                   (local.get $3)
                   (i32.const 31)
                  )
                  (block (result i32)
                   (local.set $0
                    (call $mul_1968_12
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $1)
                     (local.get $2)
                    )
                   )
                   (call $reducedFractionBigInt_2901_14
                    (call $incRef_1277_7
                     (i32.const 0)
                     (i32.const 0)
                    )
                    (local.get $0)
                    (local.get $6)
                   )
                  )
                  (block (result i32)
                   (local.set $0
                    (call $mul_1968_12
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $1)
                     (local.get $6)
                    )
                   )
                   (call $reducedFractionBigInt_2901_14
                    (call $incRef_1277_7
                     (i32.const 0)
                     (i32.const 0)
                    )
                    (local.get $0)
                    (local.get $2)
                   )
                  )
                 )
                )
                (drop
                 (call $decRef_1330_7
                  (call $incRef_1277_7
                   (i32.const 0)
                   (i32.const 0)
                  )
                  (local.get $0)
                 )
                )
                (br $switch.11299_outer
                 (local.get $1)
                )
               )
              )
              (if
               (i32.shr_u
                (local.get $3)
                (i32.const 31)
               )
               (block
                (drop
                 (call $decRef_1330_7
                  (i32.const 0)
                  (local.get $4)
                 )
                )
                (return_call $reducedFractionBigInt_2901_14
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (local.get $1)
                 (local.get $2)
                )
               )
               (block
                (local.set $0
                 (call $mul_1968_12
                  (call $incRef_1277_7
                   (i32.const 0)
                   (i32.const 0)
                  )
                  (local.get $1)
                  (local.get $2)
                 )
                )
                (drop
                 (call $decRef_1330_7
                  (i32.const 0)
                  (local.get $4)
                 )
                )
                (return_call $reducedBigInteger_2891_14
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (local.get $0)
                )
               )
              )
             )
            )
            (local.set $7
             (call $boxedInt64Number_2926_14
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $2)
             )
            )
            (local.set $0
             (call $makeWrappedInt64_1619_12
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $7)
             )
            )
            (local.set $1
             (if (result i32)
              (i32.shr_u
               (local.get $3)
               (i32.const 31)
              )
              (call $reducedFractionBigInt_2901_14
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $1)
               (local.get $0)
              )
              (block (result i32)
               (local.set $1
                (call $mul_1968_12
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (local.get $1)
                 (local.get $0)
                )
               )
               (call $reducedBigInteger_2891_14
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $1)
               )
              )
             )
            )
            (drop
             (call $decRef_1330_7
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $0)
             )
            )
            (local.get $1)
           )
          )
         )
         (block (result i32)
          (drop
           (call $decRef_1330_7
            (i32.const 0)
            (local.get $4)
           )
          )
          (i32.const 1879048190)
         )
        )
       )
      )
     )
    )
    (local.set $7
     (call $boxedInt64Number_2926_14
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
      (local.get $1)
     )
    )
    (drop
     (call $decRef_1330_7
      (i32.const 0)
      (local.get $0)
     )
    )
    (return_call $numberTimesDivideInt64Help_3290_14
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $7)
     (local.get $2)
     (local.get $3)
    )
   )
  )
  (i32.store
   (local.tee $0
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 20)
    )
   )
   (i32.const 2)
  )
  (i32.store offset=4
   (local.get $0)
   (i32.const 1)
  )
  (i32.store offset=8
   (local.get $0)
   (i32.const 5)
  )
  (i32.store offset=12
   (local.get $0)
   (i32.const 5177)
  )
  (i32.store offset=16
   (local.get $0)
   (i32.const 0)
  )
  (call $throw_1387_12
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
   (local.get $0)
  )
  (unreachable)
 )
 (func $i64abs_3387_14 (; has Stack IR ;) (param $0 i32) (param $1 i64) (result i64)
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (select
     (local.get $1)
     (i64.sub
      (i64.const 0)
      (local.get $1)
     )
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i64.ge_s
        (local.get $1)
        (i64.const 0)
       )
      )
      (i32.const 31)
     )
    )
    (i32.const 1879048190)
   )
  )
 )
 (func $cmpBigInt_3401_14 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 f64)
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (call $isSimpleNumber_2678_14
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $2)
      )
      (i32.const 31)
     )
     (block
      (local.set $4
       (i64.extend_i32_s
        (call $untagSimple_2676_14
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $2)
        )
       )
      )
      (drop
       (call $decRef_1330_7
        (i32.const 0)
        (local.get $0)
       )
      )
      (return_call $cmpI64_1737_12
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
       (local.get $4)
      )
     )
     (block (result i32)
      (local.set $3
       (call $stringSize_1058_9
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $2)
       )
      )
      (block $switch.11716_outer (result i32)
       (drop
        (block $switch.11716_branch_1 (result i32)
         (drop
          (block $switch.11716_branch_2 (result i32)
           (drop
            (block $switch.11716_branch_3 (result i32)
             (drop
              (block $switch.11716_branch_4 (result i32)
               (drop
                (block $switch.11716_branch_5 (result i32)
                 (drop
                  (block $switch.11716_default (result i32)
                   (br_table $switch.11716_branch_1 $switch.11716_branch_2 $switch.11716_branch_3 $switch.11716_branch_4 $switch.11716_branch_5 $switch.11716_default
                    (i32.const 0)
                    (i32.shr_s
                     (select
                      (i32.const 1)
                      (select
                       (i32.const 3)
                       (select
                        (i32.const 5)
                        (select
                         (i32.const 7)
                         (i32.const 9)
                         (i32.shr_u
                          (select
                           (i32.const -2)
                           (i32.const 2147483646)
                           (i32.eq
                            (local.get $3)
                            (global.get $_GRAIN_FLOAT64_BOXED_NUM_TAG_1028_1)
                           )
                          )
                          (i32.const 31)
                         )
                        )
                        (i32.shr_u
                         (select
                          (i32.const -2)
                          (i32.const 2147483646)
                          (i32.eq
                           (local.get $3)
                           (global.get $_GRAIN_RATIONAL_BOXED_NUM_TAG_1030_1)
                          )
                         )
                         (i32.const 31)
                        )
                       )
                       (i32.shr_u
                        (select
                         (i32.const -2)
                         (i32.const 2147483646)
                         (i32.eq
                          (local.get $3)
                          (global.get $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1)
                         )
                        )
                        (i32.const 31)
                       )
                      )
                      (i32.shr_u
                       (select
                        (i32.const -2)
                        (i32.const 2147483646)
                        (i32.eq
                         (local.get $3)
                         (global.get $_GRAIN_INT64_BOXED_NUM_TAG_1029_1)
                        )
                       )
                       (i32.const 31)
                      )
                     )
                     (i32.const 1)
                    )
                   )
                  )
                 )
                 (unreachable)
                )
               )
               (i32.store
                (local.tee $0
                 (call $malloc_1268_7
                  (i32.const 0)
                  (i32.const 20)
                 )
                )
                (i32.const 2)
               )
               (i32.store offset=4
                (local.get $0)
                (i32.const 1)
               )
               (i32.store offset=8
                (local.get $0)
                (i32.const 5)
               )
               (i32.store offset=12
                (local.get $0)
                (i32.const 5177)
               )
               (i32.store offset=16
                (local.get $0)
                (i32.const 0)
               )
               (call $throw_1387_12
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $0)
               )
               (unreachable)
              )
             )
             (local.set $5
              (call $boxedFloat64Number_2928_14
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $2)
              )
             )
             (drop
              (call $decRef_1330_7
               (i32.const 0)
               (local.get $0)
              )
             )
             (return_call $cmpF64_1743_12
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $1)
              (local.get $5)
             )
            )
           )
           (local.set $3
            (call $loadAdtVariant_1056_9
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $2)
            )
           )
           (local.set $1
            (call $mul_1968_12
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $1)
             (local.get $3)
            )
           )
           (local.set $2
            (call $getSize_1558_12
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $2)
            )
           )
           (local.set $2
            (call $cmp_1759_12
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $1)
             (local.get $2)
            )
           )
           (drop
            (call $decRef_1330_7
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $1)
            )
           )
           (br $switch.11716_outer
            (local.get $2)
           )
          )
         )
         (drop
          (call $decRef_1330_7
           (i32.const 0)
           (local.get $0)
          )
         )
         (return_call $cmp_1759_12
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $1)
          (local.get $2)
         )
        )
       )
       (local.set $4
        (call $boxedInt64Number_2926_14
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $2)
        )
       )
       (drop
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $0)
        )
       )
       (return_call $cmpI64_1737_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
        (local.get $4)
       )
      )
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $cmpFloat_3411_14 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 i32)
  (local.set $4
   (call $boxedFloat64Number_2928_14
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $1)
   )
  )
  (block $folding-inner0
   (return
    (tuple.extract 0
     (tuple.make
      (if (result i32)
       (i32.shr_u
        (call $isSimpleNumber_2678_14
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $2)
        )
        (i32.const 31)
       )
       (select
        (select
         (i32.const 0)
         (i32.const -1)
         (local.tee $1
          (i32.shr_u
           (select
            (i32.const -2)
            (i32.const 2147483646)
            (f64.ne
             (local.tee $3
              (f64.convert_i32_s
               (call $untagSimple_2676_14
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $2)
               )
              )
             )
             (local.get $3)
            )
           )
           (i32.const 31)
          )
         )
        )
        (select
         (i32.eqz
          (local.tee $2
           (i32.shr_u
            (select
             (i32.const -2)
             (i32.const 2147483646)
             (f64.ne
              (local.get $4)
              (local.get $4)
             )
            )
            (i32.const 31)
           )
          )
         )
         (select
          (i32.const -1)
          (i32.shr_u
           (select
            (i32.const -2)
            (i32.const 2147483646)
            (f64.lt
             (local.get $3)
             (local.get $4)
            )
           )
           (i32.const 31)
          )
          (i32.shr_u
           (select
            (i32.const -2)
            (i32.const 2147483646)
            (f64.gt
             (local.get $3)
             (local.get $4)
            )
           )
           (i32.const 31)
          )
         )
         (local.get $1)
        )
        (local.get $2)
       )
       (block (result i32)
        (local.set $5
         (call $stringSize_1058_9
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $2)
         )
        )
        (if (result i32)
         (i32.shr_u
          (select
           (i32.const -2)
           (i32.const 2147483646)
           (i32.eq
            (local.get $5)
            (global.get $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1)
           )
          )
          (i32.const 31)
         )
         (i32.sub
          (i32.const 0)
          (call $cmpBigInt_3401_14
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $2)
           (local.get $1)
          )
         )
         (select
          (select
           (i32.const 0)
           (i32.const -1)
           (local.tee $1
            (i32.shr_u
             (select
              (i32.const -2)
              (i32.const 2147483646)
              (f64.ne
               (local.tee $3
                (block $switch.11818_outer (result f64)
                 (drop
                  (block $switch.11818_branch_1 (result f64)
                   (drop
                    (block $switch.11818_branch_2 (result f64)
                     (drop
                      (block $switch.11818_branch_3 (result f64)
                       (drop
                        (block $switch.11818_branch_4 (result f64)
                         (drop
                          (block $switch.11818_branch_5 (result f64)
                           (drop
                            (block $switch.11818_default (result f64)
                             (br_table $switch.11818_branch_1 $switch.11818_branch_2 $switch.11818_branch_3 $switch.11818_branch_4 $switch.11818_branch_5 $switch.11818_default
                              (f64.const 0)
                              (i32.shr_s
                               (select
                                (i32.const 1)
                                (select
                                 (i32.const 3)
                                 (select
                                  (i32.const 5)
                                  (select
                                   (i32.const 7)
                                   (i32.const 9)
                                   (i32.shr_u
                                    (select
                                     (i32.const -2)
                                     (i32.const 2147483646)
                                     (i32.eq
                                      (local.get $5)
                                      (global.get $_GRAIN_FLOAT64_BOXED_NUM_TAG_1028_1)
                                     )
                                    )
                                    (i32.const 31)
                                   )
                                  )
                                  (i32.shr_u
                                   (select
                                    (i32.const -2)
                                    (i32.const 2147483646)
                                    (i32.eq
                                     (local.get $5)
                                     (global.get $_GRAIN_RATIONAL_BOXED_NUM_TAG_1030_1)
                                    )
                                   )
                                   (i32.const 31)
                                  )
                                 )
                                 (i32.shr_u
                                  (select
                                   (i32.const -2)
                                   (i32.const 2147483646)
                                   (i32.eq
                                    (local.get $5)
                                    (global.get $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1)
                                   )
                                  )
                                  (i32.const 31)
                                 )
                                )
                                (i32.shr_u
                                 (select
                                  (i32.const -2)
                                  (i32.const 2147483646)
                                  (i32.eq
                                   (local.get $5)
                                   (global.get $_GRAIN_INT64_BOXED_NUM_TAG_1029_1)
                                  )
                                 )
                                 (i32.const 31)
                                )
                               )
                               (i32.const 1)
                              )
                             )
                            )
                           )
                           (unreachable)
                          )
                         )
                         (i32.store
                          (local.tee $0
                           (call $malloc_1268_7
                            (i32.const 0)
                            (i32.const 20)
                           )
                          )
                          (i32.const 2)
                         )
                         (i32.store offset=4
                          (local.get $0)
                          (i32.const 1)
                         )
                         (i32.store offset=8
                          (local.get $0)
                          (i32.const 5)
                         )
                         (i32.store offset=12
                          (local.get $0)
                          (i32.const 5177)
                         )
                         (br $folding-inner0)
                        )
                       )
                       (br $switch.11818_outer
                        (call $boxedFloat64Number_2928_14
                         (call $incRef_1277_7
                          (i32.const 0)
                          (i32.const 0)
                         )
                         (local.get $2)
                        )
                       )
                      )
                     )
                     (local.set $1
                      (call $getSize_1558_12
                       (call $incRef_1277_7
                        (i32.const 0)
                        (i32.const 0)
                       )
                       (local.get $2)
                      )
                     )
                     (local.set $3
                      (call $toFloat64_1662_12
                       (call $incRef_1277_7
                        (i32.const 0)
                        (i32.const 0)
                       )
                       (local.get $1)
                      )
                     )
                     (local.set $1
                      (call $loadAdtVariant_1056_9
                       (call $incRef_1277_7
                        (i32.const 0)
                        (i32.const 0)
                       )
                       (local.get $2)
                      )
                     )
                     (br $switch.11818_outer
                      (f64.div
                       (local.get $3)
                       (call $toFloat64_1662_12
                        (call $incRef_1277_7
                         (i32.const 0)
                         (i32.const 0)
                        )
                        (local.get $1)
                       )
                      )
                     )
                    )
                   )
                   (i32.store
                    (local.tee $0
                     (call $malloc_1268_7
                      (i32.const 0)
                      (i32.const 20)
                     )
                    )
                    (i32.const 2)
                   )
                   (i32.store offset=4
                    (local.get $0)
                    (i32.const 1)
                   )
                   (i32.store offset=8
                    (local.get $0)
                    (i32.const 5)
                   )
                   (i32.store offset=12
                    (local.get $0)
                    (i32.const 5179)
                   )
                   (br $folding-inner0)
                  )
                 )
                 (f64.convert_i64_s
                  (call $boxedInt64Number_2926_14
                   (call $incRef_1277_7
                    (i32.const 0)
                    (i32.const 0)
                   )
                   (local.get $2)
                  )
                 )
                )
               )
               (local.get $3)
              )
             )
             (i32.const 31)
            )
           )
          )
          (select
           (i32.eqz
            (local.tee $2
             (i32.shr_u
              (select
               (i32.const -2)
               (i32.const 2147483646)
               (f64.ne
                (local.get $4)
                (local.get $4)
               )
              )
              (i32.const 31)
             )
            )
           )
           (select
            (i32.const -1)
            (i32.shr_u
             (select
              (i32.const -2)
              (i32.const 2147483646)
              (f64.lt
               (local.get $3)
               (local.get $4)
              )
             )
             (i32.const 31)
            )
            (i32.shr_u
             (select
              (i32.const -2)
              (i32.const 2147483646)
              (f64.gt
               (local.get $3)
               (local.get $4)
              )
             )
             (i32.const 31)
            )
           )
           (local.get $1)
          )
          (local.get $2)
         )
        )
       )
      )
      (block (result i32)
       (drop
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $0)
        )
       )
       (i32.const 1879048190)
      )
     )
    )
   )
  )
  (i32.store offset=16
   (local.get $0)
   (i32.const 0)
  )
  (call $throw_1387_12
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
   (local.get $0)
  )
  (unreachable)
 )
 (func $cmpSmallInt_3422_14 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i64)
  (local $6 f64)
  (local.set $3
   (call $boxedInt64Number_2926_14
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $1)
   )
  )
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (call $isSimpleNumber_2678_14
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $2)
      )
      (i32.const 31)
     )
     (if (result i32)
      (i32.shr_u
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (i64.gt_s
         (local.tee $5
          (i64.extend_i32_s
           (call $untagSimple_2676_14
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $2)
           )
          )
         )
         (local.get $3)
        )
       )
       (i32.const 31)
      )
      (i32.const -1)
      (i32.shr_u
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (i64.gt_s
         (local.get $3)
         (local.get $5)
        )
       )
       (i32.const 31)
      )
     )
     (block (result i32)
      (local.set $4
       (call $stringSize_1058_9
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $2)
       )
      )
      (block $switch.11924_outer (result i32)
       (drop
        (block $switch.11924_branch_1 (result i32)
         (drop
          (block $switch.11924_branch_2 (result i32)
           (drop
            (block $switch.11924_branch_3 (result i32)
             (drop
              (block $switch.11924_branch_4 (result i32)
               (drop
                (block $switch.11924_branch_5 (result i32)
                 (drop
                  (block $switch.11924_default (result i32)
                   (br_table $switch.11924_branch_1 $switch.11924_branch_2 $switch.11924_branch_3 $switch.11924_branch_4 $switch.11924_branch_5 $switch.11924_default
                    (i32.const 0)
                    (i32.shr_s
                     (select
                      (i32.const 1)
                      (select
                       (i32.const 3)
                       (select
                        (i32.const 5)
                        (select
                         (i32.const 7)
                         (i32.const 9)
                         (i32.shr_u
                          (select
                           (i32.const -2)
                           (i32.const 2147483646)
                           (i32.eq
                            (local.get $4)
                            (global.get $_GRAIN_FLOAT64_BOXED_NUM_TAG_1028_1)
                           )
                          )
                          (i32.const 31)
                         )
                        )
                        (i32.shr_u
                         (select
                          (i32.const -2)
                          (i32.const 2147483646)
                          (i32.eq
                           (local.get $4)
                           (global.get $_GRAIN_RATIONAL_BOXED_NUM_TAG_1030_1)
                          )
                         )
                         (i32.const 31)
                        )
                       )
                       (i32.shr_u
                        (select
                         (i32.const -2)
                         (i32.const 2147483646)
                         (i32.eq
                          (local.get $4)
                          (global.get $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1)
                         )
                        )
                        (i32.const 31)
                       )
                      )
                      (i32.shr_u
                       (select
                        (i32.const -2)
                        (i32.const 2147483646)
                        (i32.eq
                         (local.get $4)
                         (global.get $_GRAIN_INT64_BOXED_NUM_TAG_1029_1)
                        )
                       )
                       (i32.const 31)
                      )
                     )
                     (i32.const 1)
                    )
                   )
                  )
                 )
                 (unreachable)
                )
               )
               (i32.store
                (local.tee $0
                 (call $malloc_1268_7
                  (i32.const 0)
                  (i32.const 20)
                 )
                )
                (i32.const 2)
               )
               (i32.store offset=4
                (local.get $0)
                (i32.const 1)
               )
               (i32.store offset=8
                (local.get $0)
                (i32.const 5)
               )
               (i32.store offset=12
                (local.get $0)
                (i32.const 5177)
               )
               (i32.store offset=16
                (local.get $0)
                (i32.const 0)
               )
               (call $throw_1387_12
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $0)
               )
               (unreachable)
              )
             )
             (br $switch.11924_outer
              (i32.sub
               (i32.const 0)
               (call $cmpFloat_3411_14
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $2)
                (local.get $1)
               )
              )
             )
            )
           )
           (local.set $1
            (call $getSize_1558_12
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $2)
            )
           )
           (local.set $6
            (call $toFloat64_1662_12
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $1)
            )
           )
           (local.set $1
            (call $loadAdtVariant_1056_9
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $2)
            )
           )
           (br $switch.11924_outer
            (select
             (i32.const -1)
             (i32.const 1)
             (i32.shr_u
              (select
               (i32.const -2)
               (i32.const 2147483646)
               (f64.lt
                (f64.convert_i64_s
                 (local.get $3)
                )
                (f64.div
                 (local.get $6)
                 (call $toFloat64_1662_12
                  (call $incRef_1277_7
                   (i32.const 0)
                   (i32.const 0)
                  )
                  (local.get $1)
                 )
                )
               )
              )
              (i32.const 31)
             )
            )
           )
          )
         )
         (br $switch.11924_outer
          (i32.sub
           (i32.const 0)
           (call $cmpBigInt_3401_14
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $2)
            (local.get $1)
           )
          )
         )
        )
       )
       (if (result i32)
        (i32.shr_u
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i64.gt_s
           (local.tee $5
            (call $boxedInt64Number_2926_14
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $2)
            )
           )
           (local.get $3)
          )
         )
         (i32.const 31)
        )
        (i32.const -1)
        (i32.shr_u
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i64.gt_s
           (local.get $3)
           (local.get $5)
          )
         )
         (i32.const 31)
        )
       )
      )
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $cmpRational_3433_14 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (call $isSimpleNumber_2678_14
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $2)
      )
      (i32.const 31)
     )
     (block (result i32)
      (local.set $3
       (call $getSize_1558_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
       )
      )
      (local.set $4
       (call $toFloat64_1662_12
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $3)
       )
      )
      (local.set $1
       (call $loadAdtVariant_1056_9
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
       )
      )
      (select
       (i32.const -1)
       (i32.const 1)
       (i32.shr_u
        (select
         (i32.const -2)
         (i32.const 2147483646)
         (f64.lt
          (f64.div
           (local.get $4)
           (call $toFloat64_1662_12
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $1)
           )
          )
          (f64.convert_i32_s
           (call $untagSimple_2676_14
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $2)
           )
          )
         )
        )
        (i32.const 31)
       )
      )
     )
     (block (result i32)
      (local.set $3
       (call $stringSize_1058_9
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $2)
       )
      )
      (block $switch.12024_outer (result i32)
       (drop
        (block $switch.12024_branch_1 (result i32)
         (drop
          (block $switch.12024_branch_2 (result i32)
           (drop
            (block $switch.12024_branch_3 (result i32)
             (drop
              (block $switch.12024_branch_4 (result i32)
               (drop
                (block $switch.12024_branch_5 (result i32)
                 (drop
                  (block $switch.12024_default (result i32)
                   (br_table $switch.12024_branch_1 $switch.12024_branch_2 $switch.12024_branch_3 $switch.12024_branch_4 $switch.12024_branch_5 $switch.12024_default
                    (i32.const 0)
                    (i32.shr_s
                     (select
                      (i32.const 1)
                      (select
                       (i32.const 3)
                       (select
                        (i32.const 5)
                        (select
                         (i32.const 7)
                         (i32.const 9)
                         (i32.shr_u
                          (select
                           (i32.const -2)
                           (i32.const 2147483646)
                           (i32.eq
                            (local.get $3)
                            (global.get $_GRAIN_FLOAT64_BOXED_NUM_TAG_1028_1)
                           )
                          )
                          (i32.const 31)
                         )
                        )
                        (i32.shr_u
                         (select
                          (i32.const -2)
                          (i32.const 2147483646)
                          (i32.eq
                           (local.get $3)
                           (global.get $_GRAIN_RATIONAL_BOXED_NUM_TAG_1030_1)
                          )
                         )
                         (i32.const 31)
                        )
                       )
                       (i32.shr_u
                        (select
                         (i32.const -2)
                         (i32.const 2147483646)
                         (i32.eq
                          (local.get $3)
                          (global.get $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1)
                         )
                        )
                        (i32.const 31)
                       )
                      )
                      (i32.shr_u
                       (select
                        (i32.const -2)
                        (i32.const 2147483646)
                        (i32.eq
                         (local.get $3)
                         (global.get $_GRAIN_INT64_BOXED_NUM_TAG_1029_1)
                        )
                       )
                       (i32.const 31)
                      )
                     )
                     (i32.const 1)
                    )
                   )
                  )
                 )
                 (unreachable)
                )
               )
               (i32.store
                (local.tee $0
                 (call $malloc_1268_7
                  (i32.const 0)
                  (i32.const 20)
                 )
                )
                (i32.const 2)
               )
               (i32.store offset=4
                (local.get $0)
                (i32.const 1)
               )
               (i32.store offset=8
                (local.get $0)
                (i32.const 5)
               )
               (i32.store offset=12
                (local.get $0)
                (i32.const 5177)
               )
               (i32.store offset=16
                (local.get $0)
                (i32.const 0)
               )
               (call $throw_1387_12
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $0)
               )
               (unreachable)
              )
             )
             (br $switch.12024_outer
              (i32.sub
               (i32.const 0)
               (call $cmpFloat_3411_14
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (local.get $2)
                (local.get $1)
               )
              )
             )
            )
           )
           (drop
            (call $decRef_1330_7
             (i32.const 0)
             (local.get $0)
            )
           )
           (local.set $5
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
           )
           (local.set $0
            (call $getSize_1558_12
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $1)
            )
           )
           (local.set $1
            (call $loadAdtVariant_1056_9
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $1)
            )
           )
           (local.set $3
            (call $getSize_1558_12
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $2)
            )
           )
           (local.set $2
            (call $loadAdtVariant_1056_9
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $2)
            )
           )
           (return
            (tuple.extract 0
             (tuple.make
              (if (result i32)
               (i32.shr_u
                (if (result i32)
                 (i32.shr_u
                  (local.tee $6
                   (select
                    (i32.const 2147483646)
                    (i32.const -2)
                    (call $cmp_1759_12
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $0)
                     (local.get $3)
                    )
                   )
                  )
                  (i32.const 31)
                 )
                 (select
                  (i32.const 2147483646)
                  (i32.const -2)
                  (call $cmp_1759_12
                   (call $incRef_1277_7
                    (i32.const 0)
                    (i32.const 0)
                   )
                   (local.get $1)
                   (local.get $2)
                  )
                 )
                 (local.get $6)
                )
                (i32.const 31)
               )
               (i32.const 0)
               (select
                (i32.const -1)
                (i32.const 1)
                (i32.shr_u
                 (select
                  (i32.const -2)
                  (i32.const 2147483646)
                  (f64.lt
                   (f64.div
                    (call $toFloat64_1662_12
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $0)
                    )
                    (call $toFloat64_1662_12
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $1)
                    )
                   )
                   (f64.div
                    (call $toFloat64_1662_12
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $3)
                    )
                    (call $toFloat64_1662_12
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $2)
                    )
                   )
                  )
                 )
                 (i32.const 31)
                )
               )
              )
              (block (result i32)
               (drop
                (call $decRef_1330_7
                 (i32.const 0)
                 (local.get $5)
                )
               )
               (i32.const 1879048190)
              )
             )
            )
           )
          )
         )
         (br $switch.12024_outer
          (i32.sub
           (i32.const 0)
           (call $cmpBigInt_3401_14
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $2)
            (local.get $1)
           )
          )
         )
        )
       )
       (i32.sub
        (i32.const 0)
        (call $cmpSmallInt_3422_14
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $2)
         (local.get $1)
        )
       )
      )
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $cmp_3442_14 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (block $folding-inner0
   (return
    (tuple.extract 0
     (tuple.make
      (if (result i32)
       (i32.shr_u
        (call $isSimpleNumber_2678_14
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $1)
        )
        (i32.const 31)
       )
       (if (result i32)
        (i32.shr_u
         (call $isSimpleNumber_2678_14
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $2)
         )
         (i32.const 31)
        )
        (i32.sub
         (local.get $1)
         (local.get $2)
        )
        (block (result i32)
         (local.set $3
          (call $stringSize_1058_9
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $2)
          )
         )
         (block $switch.12085_outer (result i32)
          (drop
           (block $switch.12085_branch_1 (result i32)
            (drop
             (block $switch.12085_branch_2 (result i32)
              (drop
               (block $switch.12085_branch_3 (result i32)
                (drop
                 (block $switch.12085_branch_4 (result i32)
                  (drop
                   (block $switch.12085_branch_5 (result i32)
                    (drop
                     (block $switch.12085_default (result i32)
                      (br_table $switch.12085_branch_1 $switch.12085_branch_2 $switch.12085_branch_3 $switch.12085_branch_4 $switch.12085_branch_5 $switch.12085_default
                       (i32.const 0)
                       (i32.shr_s
                        (select
                         (i32.const 1)
                         (select
                          (i32.const 3)
                          (select
                           (i32.const 5)
                           (select
                            (i32.const 7)
                            (i32.const 9)
                            (i32.shr_u
                             (select
                              (i32.const -2)
                              (i32.const 2147483646)
                              (i32.eq
                               (local.get $3)
                               (global.get $_GRAIN_FLOAT64_BOXED_NUM_TAG_1028_1)
                              )
                             )
                             (i32.const 31)
                            )
                           )
                           (i32.shr_u
                            (select
                             (i32.const -2)
                             (i32.const 2147483646)
                             (i32.eq
                              (local.get $3)
                              (global.get $_GRAIN_RATIONAL_BOXED_NUM_TAG_1030_1)
                             )
                            )
                            (i32.const 31)
                           )
                          )
                          (i32.shr_u
                           (select
                            (i32.const -2)
                            (i32.const 2147483646)
                            (i32.eq
                             (local.get $3)
                             (global.get $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1)
                            )
                           )
                           (i32.const 31)
                          )
                         )
                         (i32.shr_u
                          (select
                           (i32.const -2)
                           (i32.const 2147483646)
                           (i32.eq
                            (local.get $3)
                            (global.get $_GRAIN_INT64_BOXED_NUM_TAG_1029_1)
                           )
                          )
                          (i32.const 31)
                         )
                        )
                        (i32.const 1)
                       )
                      )
                     )
                    )
                    (unreachable)
                   )
                  )
                  (br $folding-inner0)
                 )
                )
                (br $switch.12085_outer
                 (i32.sub
                  (i32.const 0)
                  (call $cmpFloat_3411_14
                   (call $incRef_1277_7
                    (i32.const 0)
                    (i32.const 0)
                   )
                   (local.get $2)
                   (local.get $1)
                  )
                 )
                )
               )
              )
              (br $switch.12085_outer
               (i32.sub
                (i32.const 0)
                (call $cmpRational_3433_14
                 (call $incRef_1277_7
                  (i32.const 0)
                  (i32.const 0)
                 )
                 (local.get $2)
                 (local.get $1)
                )
               )
              )
             )
            )
            (br $switch.12085_outer
             (i32.sub
              (i32.const 0)
              (call $cmpBigInt_3401_14
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $2)
               (local.get $1)
              )
             )
            )
           )
          )
          (i32.sub
           (i32.const 0)
           (call $cmpSmallInt_3422_14
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $2)
            (local.get $1)
           )
          )
         )
        )
       )
       (block
        (local.set $3
         (call $stringSize_1058_9
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $1)
         )
        )
        (drop
         (block $switch.12141_branch_1 (result i32)
          (drop
           (block $switch.12141_branch_2 (result i32)
            (drop
             (block $switch.12141_branch_3 (result i32)
              (drop
               (block $switch.12141_branch_4 (result i32)
                (drop
                 (block $switch.12141_branch_5 (result i32)
                  (drop
                   (block $switch.12141_default (result i32)
                    (br_table $switch.12141_branch_1 $switch.12141_branch_2 $switch.12141_branch_3 $switch.12141_branch_4 $switch.12141_branch_5 $switch.12141_default
                     (i32.const 0)
                     (i32.shr_s
                      (select
                       (i32.const 1)
                       (select
                        (i32.const 3)
                        (select
                         (i32.const 5)
                         (select
                          (i32.const 7)
                          (i32.const 9)
                          (i32.shr_u
                           (select
                            (i32.const -2)
                            (i32.const 2147483646)
                            (i32.eq
                             (local.get $3)
                             (global.get $_GRAIN_FLOAT64_BOXED_NUM_TAG_1028_1)
                            )
                           )
                           (i32.const 31)
                          )
                         )
                         (i32.shr_u
                          (select
                           (i32.const -2)
                           (i32.const 2147483646)
                           (i32.eq
                            (local.get $3)
                            (global.get $_GRAIN_RATIONAL_BOXED_NUM_TAG_1030_1)
                           )
                          )
                          (i32.const 31)
                         )
                        )
                        (i32.shr_u
                         (select
                          (i32.const -2)
                          (i32.const 2147483646)
                          (i32.eq
                           (local.get $3)
                           (global.get $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1)
                          )
                         )
                         (i32.const 31)
                        )
                       )
                       (i32.shr_u
                        (select
                         (i32.const -2)
                         (i32.const 2147483646)
                         (i32.eq
                          (local.get $3)
                          (global.get $_GRAIN_INT64_BOXED_NUM_TAG_1029_1)
                         )
                        )
                        (i32.const 31)
                       )
                      )
                      (i32.const 1)
                     )
                    )
                   )
                  )
                  (unreachable)
                 )
                )
                (br $folding-inner0)
               )
              )
              (drop
               (call $decRef_1330_7
                (i32.const 0)
                (local.get $0)
               )
              )
              (return_call $cmpFloat_3411_14
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $1)
               (local.get $2)
              )
             )
            )
            (drop
             (call $decRef_1330_7
              (i32.const 0)
              (local.get $0)
             )
            )
            (return_call $cmpRational_3433_14
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $1)
             (local.get $2)
            )
           )
          )
          (drop
           (call $decRef_1330_7
            (i32.const 0)
            (local.get $0)
           )
          )
          (return_call $cmpBigInt_3401_14
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $1)
           (local.get $2)
          )
         )
        )
        (drop
         (call $decRef_1330_7
          (i32.const 0)
          (local.get $0)
         )
        )
        (return_call $cmpSmallInt_3422_14
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $1)
         (local.get $2)
        )
       )
      )
      (block (result i32)
       (drop
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $0)
        )
       )
       (i32.const 1879048190)
      )
     )
    )
   )
  )
  (i32.store
   (local.tee $0
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 20)
    )
   )
   (i32.const 2)
  )
  (i32.store offset=4
   (local.get $0)
   (i32.const 1)
  )
  (i32.store offset=8
   (local.get $0)
   (i32.const 5)
  )
  (i32.store offset=12
   (local.get $0)
   (i32.const 5177)
  )
  (i32.store offset=16
   (local.get $0)
   (i32.const 0)
  )
  (call $throw_1387_12
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
   (local.get $0)
  )
  (unreachable)
 )
 (func $+_3661_14 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (tuple.extract 0
     (tuple.make
      (call $numberAddSubHelp_3268_14
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
       (i32.const 2147483646)
      )
      (block (result i32)
       (drop
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $2)
        )
       )
       (i32.const 1879048190)
      )
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $1)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (i32.const 3)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $*_3669_14 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local.set $3
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (tuple.extract 0
     (tuple.make
      (call $numberTimesDivideHelp_3372_14
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
       (local.get $2)
       (i32.const 2147483646)
      )
      (block (result i32)
       (drop
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $3)
        )
       )
       (i32.const 1879048190)
      )
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $1)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $2)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $/_3673_14 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local.set $3
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (tuple.extract 0
     (tuple.make
      (call $numberTimesDivideHelp_3372_14
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
       (local.get $2)
       (i32.const -2)
      )
      (block (result i32)
       (drop
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $3)
        )
       )
       (i32.const 1879048190)
      )
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $1)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $2)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $%_3677_14 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 f64)
  (local $6 f64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (tuple.extract 0
   (tuple.make
    (block $__inlined_func$numberMod_3389_14$56 (result i32)
     (local.set $7
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
     )
     (drop
      (call $incRef_1277_7
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
      )
     )
     (drop
      (call $incRef_1277_7
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (i32.const 5)
      )
     )
     (if
      (i32.eqz
       (i32.shr_u
        (local.tee $2
         (call $isFloat_2714_14
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $1)
         )
        )
        (i32.const 31)
       )
      )
      (local.set $2
       (call $isFloat_2714_14
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (i32.const 5)
       )
      )
     )
     (if
      (i32.eqz
       (i32.shr_u
        (local.get $2)
        (i32.const 31)
       )
      )
      (local.set $2
       (call $isRational_2720_14
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
       )
      )
     )
     (tuple.extract 0
      (tuple.make
       (if (result i32)
        (i32.shr_u
         (if (result i32)
          (i32.shr_u
           (local.get $2)
           (i32.const 31)
          )
          (local.get $2)
          (call $isRational_2720_14
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (i32.const 5)
          )
         )
         (i32.const 31)
        )
        (block (result i32)
         (local.set $5
          (call $coerceNumberToWasmF64_2972_14
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $1)
          )
         )
         (local.set $2
          (select
           (local.tee $2
            (select
             (i32.const -2)
             (i32.const 2147483646)
             (f64.eq
              (local.tee $6
               (call $coerceNumberToWasmF64_2972_14
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
                (i32.const 5)
               )
              )
              (f64.const inf)
             )
            )
           )
           (select
            (i32.const -2)
            (i32.const 2147483646)
            (f64.eq
             (local.get $6)
             (f64.const -inf)
            )
           )
           (i32.shr_u
            (local.get $2)
            (i32.const 31)
           )
          )
         )
         (if (result i32)
          (i32.shr_u
           (if (result i32)
            (i32.shr_u
             (local.tee $8
              (select
               (i32.const -2)
               (i32.const 2147483646)
               (f64.eq
                (local.get $6)
                (f64.const 0)
               )
              )
             )
             (i32.const 31)
            )
            (local.get $8)
            (if (result i32)
             (i32.shr_u
              (local.get $2)
              (i32.const 31)
             )
             (select
              (local.tee $8
               (select
                (i32.const -2)
                (i32.const 2147483646)
                (f64.eq
                 (local.get $5)
                 (f64.const inf)
                )
               )
              )
              (select
               (i32.const -2)
               (i32.const 2147483646)
               (f64.eq
                (local.get $5)
                (f64.const -inf)
               )
              )
              (i32.shr_u
               (local.get $8)
               (i32.const 31)
              )
             )
             (local.get $2)
            )
           )
           (i32.const 31)
          )
          (block (result i32)
           (i32.store
            (local.tee $2
             (call $malloc_1268_7
              (i32.const 0)
              (i32.const 16)
             )
            )
            (i32.const 5)
           )
           (i32.store offset=4
            (local.get $2)
            (i32.const 1)
           )
           (f64.store offset=8
            (local.get $2)
            (f64.const nan:0x8000000000000)
           )
           (local.get $2)
          )
          (if (result i32)
           (i32.shr_u
            (local.get $2)
            (i32.const 31)
           )
           (block (result i32)
            (i32.store
             (local.tee $2
              (call $malloc_1268_7
               (i32.const 0)
               (i32.const 16)
              )
             )
             (i32.const 5)
            )
            (i32.store offset=4
             (local.get $2)
             (i32.const 1)
            )
            (f64.store offset=8
             (local.get $2)
             (local.get $5)
            )
            (local.get $2)
           )
           (block (result i32)
            (i32.store
             (local.tee $2
              (call $malloc_1268_7
               (i32.const 0)
               (i32.const 16)
              )
             )
             (i32.const 5)
            )
            (i32.store offset=4
             (local.get $2)
             (i32.const 1)
            )
            (f64.store offset=8
             (local.get $2)
             (f64.sub
              (local.get $5)
              (f64.mul
               (f64.trunc
                (f64.div
                 (local.get $5)
                 (local.get $6)
                )
               )
               (local.get $6)
              )
             )
            )
            (local.get $2)
           )
          )
         )
        )
        (block
         (local.set $3
          (call $coerceNumberToWasmI64_2981_14
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (local.get $1)
          )
         )
         (if
          (i32.shr_u
           (select
            (i32.const -2)
            (i32.const 2147483646)
            (i64.eqz
             (local.tee $4
              (call $coerceNumberToWasmI64_2981_14
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (i32.const 5)
              )
             )
            )
           )
           (i32.const 31)
          )
          (block
           (i32.store
            (local.tee $0
             (call $malloc_1268_7
              (i32.const 0)
              (i32.const 20)
             )
            )
            (i32.const 2)
           )
           (i32.store offset=4
            (local.get $0)
            (i32.const 1)
           )
           (i32.store offset=8
            (local.get $0)
            (i32.const 5)
           )
           (i32.store offset=12
            (local.get $0)
            (i32.const 2041)
           )
           (i32.store offset=16
            (local.get $0)
            (i32.const 0)
           )
           (call $throw_1387_12
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $0)
           )
           (unreachable)
          )
         )
         (if
          (i32.shr_u
           (select
            (i32.const -2)
            (i32.const 2147483646)
            (i64.lt_s
             (i64.xor
              (local.get $3)
              (local.get $4)
             )
             (i64.const 0)
            )
           )
           (i32.const 31)
          )
          (block
           (local.set $3
            (i64.rem_s
             (call $i64abs_3387_14
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $3)
             )
             (local.tee $9
              (call $i64abs_3387_14
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $4)
              )
             )
            )
           )
           (drop
            (call $decRef_1330_7
             (i32.const 0)
             (local.get $7)
            )
           )
           (br $__inlined_func$numberMod_3389_14$56
            (call $reducedInteger_2833_14
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (select
              (select
               (i64.sub
                (i64.const 0)
                (local.tee $9
                 (i64.sub
                  (local.get $9)
                  (local.get $3)
                 )
                )
               )
               (local.get $9)
               (i32.shr_u
                (select
                 (i32.const -2)
                 (i32.const 2147483646)
                 (i64.lt_s
                  (local.get $4)
                  (i64.const 0)
                 )
                )
                (i32.const 31)
               )
              )
              (i64.const 0)
              (i32.shr_u
               (select
                (i32.const -2)
                (i32.const 2147483646)
                (i64.ne
                 (local.get $3)
                 (i64.const 0)
                )
               )
               (i32.const 31)
              )
             )
            )
           )
          )
          (block
           (local.set $4
            (i64.rem_s
             (local.get $3)
             (local.get $4)
            )
           )
           (drop
            (call $decRef_1330_7
             (i32.const 0)
             (local.get $7)
            )
           )
           (br $__inlined_func$numberMod_3389_14$56
            (call $reducedInteger_2833_14
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $4)
            )
           )
          )
         )
        )
       )
       (block (result i32)
        (drop
         (call $decRef_1330_7
          (i32.const 0)
          (local.get $7)
         )
        )
        (i32.const 1879048190)
       )
      )
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $1)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (i32.const 5)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $equalHelp_3972_16 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (if (result i32)
       (i32.shr_u
        (local.tee $4
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i32.and
           (local.get $1)
           (global.get $_GRAIN_GENERIC_TAG_MASK_1005_1)
          )
         )
        )
        (i32.const 31)
       )
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (i32.and
         (local.get $2)
         (global.get $_GRAIN_GENERIC_TAG_MASK_1005_1)
        )
       )
       (local.get $4)
      )
      (i32.const 31)
     )
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (i32.eq
       (local.get $1)
       (local.get $2)
      )
     )
     (if (result i32)
      (i32.shr_u
       (call $isNumber_2758_14
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
       )
       (i32.const 31)
      )
      (block
       (drop
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $0)
        )
       )
       (return_call $numberEqual_3088_14
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $1)
        (local.get $2)
       )
      )
      (if (result i32)
       (i32.shr_u
        (select
         (i32.const -2)
         (i32.const 2147483646)
         (i32.eq
          (global.get $_GRAIN_FLOAT32_HEAP_TAG_1025_1)
          (i32.load
           (local.get $1)
          )
         )
        )
        (i32.const 31)
       )
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (f32.eq
         (f32.load offset=4
          (local.get $1)
         )
         (f32.load offset=4
          (local.get $2)
         )
        )
       )
       (if (result i32)
        (i32.shr_u
         (local.tee $4
          (select
           (i32.const -2)
           (i32.const 2147483646)
           (i32.eq
            (local.get $1)
            (local.get $2)
           )
          )
         )
         (i32.const 31)
        )
        (local.get $4)
        (block
         (local.set $4
          (i32.load
           (local.get $1)
          )
         )
         (drop
          (call $decRef_1330_7
           (i32.const 0)
           (local.get $0)
          )
         )
         (return
          (block $__inlined_func$heapEqualHelp_3971_16$62 (result i32)
           (local.set $8
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
           )
           (block $folding-inner3
            (block $folding-inner2
             (block $folding-inner1
              (block $folding-inner0
               (drop
                (block $switch.15312_branch_1 (result i32)
                 (drop
                  (block $switch.15312_branch_2 (result i32)
                   (drop
                    (block $switch.15312_branch_3 (result i32)
                     (drop
                      (block $switch.15312_branch_4 (result i32)
                       (drop
                        (block $switch.15312_branch_5 (result i32)
                         (drop
                          (block $switch.15312_branch_6 (result i32)
                           (drop
                            (block $switch.15312_branch_7 (result i32)
                             (drop
                              (block $switch.15312_branch_8 (result i32)
                               (drop
                                (block $switch.15312_default (result i32)
                                 (br_table $switch.15312_branch_1 $switch.15312_branch_2 $switch.15312_branch_3 $switch.15312_branch_4 $switch.15312_branch_5 $switch.15312_branch_6 $switch.15312_branch_7 $switch.15312_branch_8 $switch.15312_default
                                  (i32.const 0)
                                  (i32.shr_s
                                   (if (result i32)
                                    (i32.shr_u
                                     (select
                                      (i32.const -2)
                                      (i32.const 2147483646)
                                      (i32.eq
                                       (local.get $4)
                                       (global.get $_GRAIN_ADT_HEAP_TAG_1017_1)
                                      )
                                     )
                                     (i32.const 31)
                                    )
                                    (i32.const 1)
                                    (if (result i32)
                                     (i32.shr_u
                                      (select
                                       (i32.const -2)
                                       (i32.const 2147483646)
                                       (i32.eq
                                        (local.get $4)
                                        (global.get $_GRAIN_RECORD_HEAP_TAG_1018_1)
                                       )
                                      )
                                      (i32.const 31)
                                     )
                                     (i32.const 3)
                                     (if (result i32)
                                      (i32.shr_u
                                       (select
                                        (i32.const -2)
                                        (i32.const 2147483646)
                                        (i32.eq
                                         (local.get $4)
                                         (global.get $_GRAIN_ARRAY_HEAP_TAG_1019_1)
                                        )
                                       )
                                       (i32.const 31)
                                      )
                                      (i32.const 5)
                                      (if (result i32)
                                       (i32.shr_u
                                        (select
                                         (local.tee $0
                                          (select
                                           (i32.const -2)
                                           (i32.const 2147483646)
                                           (i32.eq
                                            (local.get $4)
                                            (global.get $_GRAIN_STRING_HEAP_TAG_1016_1)
                                           )
                                          )
                                         )
                                         (select
                                          (i32.const -2)
                                          (i32.const 2147483646)
                                          (i32.eq
                                           (local.get $4)
                                           (global.get $_GRAIN_BYTES_HEAP_TAG_1023_1)
                                          )
                                         )
                                         (i32.shr_u
                                          (local.get $0)
                                          (i32.const 31)
                                         )
                                        )
                                        (i32.const 31)
                                       )
                                       (i32.const 7)
                                       (if (result i32)
                                        (i32.shr_u
                                         (select
                                          (i32.const -2)
                                          (i32.const 2147483646)
                                          (i32.eq
                                           (local.get $4)
                                           (global.get $_GRAIN_TUPLE_HEAP_TAG_1022_1)
                                          )
                                         )
                                         (i32.const 31)
                                        )
                                        (i32.const 9)
                                        (select
                                         (i32.const 11)
                                         (select
                                          (i32.const 13)
                                          (i32.const 15)
                                          (i32.shr_u
                                           (select
                                            (i32.const -2)
                                            (i32.const 2147483646)
                                            (i32.eq
                                             (local.get $4)
                                             (global.get $_GRAIN_UINT64_HEAP_TAG_1027_1)
                                            )
                                           )
                                           (i32.const 31)
                                          )
                                         )
                                         (i32.shr_u
                                          (select
                                           (local.tee $0
                                            (select
                                             (i32.const -2)
                                             (i32.const 2147483646)
                                             (i32.eq
                                              (local.get $4)
                                              (global.get $_GRAIN_UINT32_HEAP_TAG_1026_1)
                                             )
                                            )
                                           )
                                           (select
                                            (i32.const -2)
                                            (i32.const 2147483646)
                                            (i32.eq
                                             (local.get $4)
                                             (global.get $_GRAIN_INT32_HEAP_TAG_1024_1)
                                            )
                                           )
                                           (i32.shr_u
                                            (local.get $0)
                                            (i32.const 31)
                                           )
                                          )
                                          (i32.const 31)
                                         )
                                        )
                                       )
                                      )
                                     )
                                    )
                                   )
                                   (i32.const 1)
                                  )
                                 )
                                )
                               )
                               (unreachable)
                              )
                             )
                             (drop
                              (call $decRef_1330_7
                               (i32.const 0)
                               (local.get $8)
                              )
                             )
                             (br $__inlined_func$heapEqualHelp_3971_16$62
                              (select
                               (i32.const -2)
                               (i32.const 2147483646)
                               (i32.eq
                                (local.get $1)
                                (local.get $2)
                               )
                              )
                             )
                            )
                           )
                           (local.set $3
                            (select
                             (i32.const -2)
                             (i32.const 2147483646)
                             (i64.eq
                              (i64.load offset=8
                               (local.get $1)
                              )
                              (i64.load offset=8
                               (local.get $2)
                              )
                             )
                            )
                           )
                           (br $folding-inner0)
                          )
                         )
                         (local.set $3
                          (select
                           (i32.const -2)
                           (i32.const 2147483646)
                           (i32.eq
                            (i32.load offset=4
                             (local.get $1)
                            )
                            (i32.load offset=4
                             (local.get $2)
                            )
                           )
                          )
                         )
                         (br $folding-inner0)
                        )
                       )
                       (local.set $0
                        (i32.load offset=4
                         (local.get $2)
                        )
                       )
                       (if
                        (i32.eqz
                         (i32.shr_u
                          (select
                           (i32.const -2)
                           (i32.const 2147483646)
                           (i32.eq
                            (i32.and
                             (local.tee $4
                              (i32.load offset=4
                               (local.get $1)
                              )
                             )
                             (i32.const -2147483648)
                            )
                            (i32.const -2147483648)
                           )
                          )
                          (i32.const 31)
                         )
                        )
                        (block
                         (i32.store offset=4
                          (local.get $1)
                          (i32.xor
                           (local.get $4)
                           (i32.const -2147483648)
                          )
                         )
                         (i32.store offset=4
                          (local.get $2)
                          (i32.xor
                           (local.get $0)
                           (i32.const -2147483648)
                          )
                         )
                         (local.set $5
                          (i32.shl
                           (local.get $4)
                           (i32.const 2)
                          )
                         )
                         (drop
                          (loop $MFor_loop.15635 (result i32)
                           (if (result i32)
                            (i32.shr_u
                             (select
                              (i32.const -2)
                              (i32.const 2147483646)
                              (i32.lt_s
                               (local.get $3)
                               (local.get $5)
                              )
                             )
                             (i32.const 31)
                            )
                            (block
                             (local.set $6
                              (i32.load offset=8
                               (i32.add
                                (local.get $1)
                                (local.get $3)
                               )
                              )
                             )
                             (local.set $7
                              (i32.load offset=8
                               (i32.add
                                (local.get $2)
                                (local.get $3)
                               )
                              )
                             )
                             (if
                              (i32.shr_u
                               (i32.xor
                                (call $equalHelp_3972_16
                                 (call $incRef_1277_7
                                  (i32.const 0)
                                  (i32.const 0)
                                 )
                                 (local.get $6)
                                 (local.get $7)
                                )
                                (i32.const -2147483648)
                               )
                               (i32.const 31)
                              )
                              (block
                               (i32.store offset=4
                                (local.get $1)
                                (local.get $4)
                               )
                               (br $folding-inner1)
                              )
                             )
                             (local.set $3
                              (i32.add
                               (local.get $3)
                               (i32.const 4)
                              )
                             )
                             (br $MFor_loop.15635)
                            )
                            (i32.const 1879048190)
                           )
                          )
                         )
                         (i32.store offset=4
                          (local.get $1)
                          (local.get $4)
                         )
                         (i32.store offset=4
                          (local.get $2)
                          (local.get $0)
                         )
                        )
                       )
                       (br $folding-inner2)
                      )
                     )
                     (local.set $3
                      (if (result i32)
                       (i32.shr_u
                        (select
                         (i32.const -2)
                         (i32.const 2147483646)
                         (i32.ne
                          (local.tee $3
                           (i32.load offset=4
                            (local.get $1)
                           )
                          )
                          (i32.load offset=4
                           (local.get $2)
                          )
                         )
                        )
                        (i32.const 31)
                       )
                       (i32.const 2147483646)
                       (select
                        (i32.const 2147483646)
                        (i32.const -2)
                        (block $memory_compare.15599 (result i32)
                         (local.set $1
                          (i32.add
                           (local.get $1)
                           (i32.const 8)
                          )
                         )
                         (local.set $0
                          (i32.add
                           (local.get $2)
                           (i32.const 8)
                          )
                         )
                         (loop $memory_compare_loop.15600 (result i32)
                          (drop
                           (br_if $memory_compare.15599
                            (i32.const 0)
                            (i32.eqz
                             (local.get $3)
                            )
                           )
                          )
                          (if (result i32)
                           (i32.ne
                            (i32.load8_u
                             (local.get $1)
                            )
                            (i32.load8_u
                             (local.get $0)
                            )
                           )
                           (select
                            (i32.const -1)
                            (i32.const 1)
                            (i32.lt_u
                             (i32.load8_u
                              (local.get $1)
                             )
                             (i32.load8_u
                              (local.get $0)
                             )
                            )
                           )
                           (block
                            (local.set $1
                             (i32.add
                              (local.get $1)
                              (i32.const 1)
                             )
                            )
                            (local.set $0
                             (i32.add
                              (local.get $0)
                              (i32.const 1)
                             )
                            )
                            (local.set $3
                             (i32.sub
                              (local.get $3)
                              (i32.const 1)
                             )
                            )
                            (br $memory_compare_loop.15600)
                           )
                          )
                         )
                        )
                       )
                      )
                     )
                     (br $folding-inner0)
                    )
                   )
                   (br_if $folding-inner3
                    (i32.shr_u
                     (select
                      (i32.const -2)
                      (i32.const 2147483646)
                      (i32.ne
                       (local.tee $3
                        (i32.load offset=4
                         (local.get $1)
                        )
                       )
                       (local.tee $0
                        (i32.load offset=4
                         (local.get $2)
                        )
                       )
                      )
                     )
                     (i32.const 31)
                    )
                   )
                   (br_if $folding-inner2
                    (i32.shr_u
                     (select
                      (i32.const -2)
                      (i32.const 2147483646)
                      (i32.eq
                       (i32.and
                        (local.get $3)
                        (i32.const -2147483648)
                       )
                       (i32.const -2147483648)
                      )
                     )
                     (i32.const 31)
                    )
                   )
                   (i32.store offset=4
                    (local.get $1)
                    (i32.xor
                     (local.get $3)
                     (i32.const -2147483648)
                    )
                   )
                   (i32.store offset=4
                    (local.get $2)
                    (i32.xor
                     (local.get $0)
                     (i32.const -2147483648)
                    )
                   )
                   (local.set $4
                    (i32.shl
                     (local.get $3)
                     (i32.const 2)
                    )
                   )
                   (drop
                    (loop $MFor_loop.15540 (result i32)
                     (if (result i32)
                      (i32.shr_u
                       (select
                        (i32.const -2)
                        (i32.const 2147483646)
                        (i32.gt_s
                         (local.get $4)
                         (local.get $5)
                        )
                       )
                       (i32.const 31)
                      )
                      (block
                       (local.set $6
                        (i32.load offset=8
                         (i32.add
                          (local.get $1)
                          (local.get $5)
                         )
                        )
                       )
                       (local.set $7
                        (i32.load offset=8
                         (i32.add
                          (local.get $2)
                          (local.get $5)
                         )
                        )
                       )
                       (if
                        (i32.shr_u
                         (i32.xor
                          (call $equalHelp_3972_16
                           (call $incRef_1277_7
                            (i32.const 0)
                            (i32.const 0)
                           )
                           (local.get $6)
                           (local.get $7)
                          )
                          (i32.const -2147483648)
                         )
                         (i32.const 31)
                        )
                        (block
                         (i32.store offset=4
                          (local.get $1)
                          (local.get $3)
                         )
                         (br $folding-inner1)
                        )
                       )
                       (local.set $5
                        (i32.add
                         (local.get $5)
                         (i32.const 4)
                        )
                       )
                       (br $MFor_loop.15540)
                      )
                      (i32.const 1879048190)
                     )
                    )
                   )
                   (i32.store offset=4
                    (local.get $1)
                    (local.get $3)
                   )
                   (i32.store offset=4
                    (local.get $2)
                    (local.get $0)
                   )
                   (br $folding-inner2)
                  )
                 )
                 (local.set $4
                  (i32.load offset=12
                   (local.get $2)
                  )
                 )
                 (br_if $folding-inner2
                  (i32.shr_u
                   (select
                    (i32.const -2)
                    (i32.const 2147483646)
                    (i32.eq
                     (i32.and
                      (local.tee $0
                       (i32.load offset=12
                        (local.get $1)
                       )
                      )
                      (i32.const -2147483648)
                     )
                     (i32.const -2147483648)
                    )
                   )
                   (i32.const 31)
                  )
                 )
                 (i32.store offset=12
                  (local.get $1)
                  (i32.xor
                   (local.get $0)
                   (i32.const -2147483648)
                  )
                 )
                 (i32.store offset=12
                  (local.get $2)
                  (i32.xor
                   (local.get $4)
                   (i32.const -2147483648)
                  )
                 )
                 (local.set $5
                  (i32.shl
                   (local.get $0)
                   (i32.const 2)
                  )
                 )
                 (drop
                  (loop $MFor_loop.15461 (result i32)
                   (if (result i32)
                    (i32.shr_u
                     (select
                      (i32.const -2)
                      (i32.const 2147483646)
                      (i32.lt_s
                       (local.get $3)
                       (local.get $5)
                      )
                     )
                     (i32.const 31)
                    )
                    (block
                     (local.set $6
                      (i32.load offset=16
                       (i32.add
                        (local.get $1)
                        (local.get $3)
                       )
                      )
                     )
                     (local.set $7
                      (i32.load offset=16
                       (i32.add
                        (local.get $2)
                        (local.get $3)
                       )
                      )
                     )
                     (if
                      (i32.shr_u
                       (i32.xor
                        (call $equalHelp_3972_16
                         (call $incRef_1277_7
                          (i32.const 0)
                          (i32.const 0)
                         )
                         (local.get $6)
                         (local.get $7)
                        )
                        (i32.const -2147483648)
                       )
                       (i32.const 31)
                      )
                      (block
                       (i32.store offset=12
                        (local.get $1)
                        (local.get $0)
                       )
                       (i32.store offset=12
                        (local.get $2)
                        (local.get $4)
                       )
                       (br $folding-inner3)
                      )
                     )
                     (local.set $3
                      (i32.add
                       (local.get $3)
                       (i32.const 4)
                      )
                     )
                     (br $MFor_loop.15461)
                    )
                    (i32.const 1879048190)
                   )
                  )
                 )
                 (i32.store offset=12
                  (local.get $1)
                  (local.get $0)
                 )
                 (i32.store offset=12
                  (local.get $2)
                  (local.get $4)
                 )
                 (br $folding-inner2)
                )
               )
               (br_if $folding-inner3
                (i32.shr_u
                 (select
                  (i32.const -2)
                  (i32.const 2147483646)
                  (i32.ne
                   (local.tee $0
                    (i32.load offset=12
                     (local.get $1)
                    )
                   )
                   (i32.load offset=12
                    (local.get $2)
                   )
                  )
                 )
                 (i32.const 31)
                )
               )
               (br $__inlined_func$heapEqualHelp_3971_16$62
                (if (result i32)
                 (i32.shr_u
                  (select
                   (i32.const -2)
                   (i32.const 2147483646)
                   (i32.eq
                    (global.get $_LIST_ID_3969_16)
                    (i32.load offset=8
                     (local.get $1)
                    )
                   )
                  )
                  (i32.const 31)
                 )
                 (block
                  (br_if $folding-inner2
                   (i32.shr_u
                    (select
                     (i32.const -2)
                     (i32.const 2147483646)
                     (i32.eq
                      (i32.shr_s
                       (local.get $0)
                       (i32.const 1)
                      )
                      (i32.const 1)
                     )
                    )
                    (i32.const 31)
                   )
                  )
                  (local.set $0
                   (i32.load offset=20
                    (local.get $1)
                   )
                  )
                  (local.set $3
                   (i32.load offset=20
                    (local.get $2)
                   )
                  )
                  (br_if $folding-inner3
                   (i32.shr_u
                    (i32.xor
                     (call $equalHelp_3972_16
                      (call $incRef_1277_7
                       (i32.const 0)
                       (i32.const 0)
                      )
                      (local.get $0)
                      (local.get $3)
                     )
                     (i32.const -2147483648)
                    )
                    (i32.const 31)
                   )
                  )
                  (local.set $0
                   (i32.load offset=24
                    (local.get $1)
                   )
                  )
                  (local.set $1
                   (i32.load offset=24
                    (local.get $2)
                   )
                  )
                  (drop
                   (call $decRef_1330_7
                    (i32.const 0)
                    (local.get $8)
                   )
                  )
                  (return_call $equalHelp_3972_16
                   (call $incRef_1277_7
                    (i32.const 0)
                    (i32.const 0)
                   )
                   (local.get $0)
                   (local.get $1)
                  )
                 )
                 (block (result i32)
                  (local.set $4
                   (i32.load offset=16
                    (local.get $2)
                   )
                  )
                  (br_if $folding-inner2
                   (i32.shr_u
                    (select
                     (i32.const -2)
                     (i32.const 2147483646)
                     (i32.eq
                      (i32.and
                       (local.tee $0
                        (i32.load offset=16
                         (local.get $1)
                        )
                       )
                       (i32.const -2147483648)
                      )
                      (i32.const -2147483648)
                     )
                    )
                    (i32.const 31)
                   )
                  )
                  (i32.store offset=16
                   (local.get $1)
                   (i32.xor
                    (local.get $0)
                    (i32.const -2147483648)
                   )
                  )
                  (i32.store offset=16
                   (local.get $2)
                   (i32.xor
                    (local.get $4)
                    (i32.const -2147483648)
                   )
                  )
                  (local.set $5
                   (i32.shl
                    (local.get $0)
                    (i32.const 2)
                   )
                  )
                  (drop
                   (loop $MFor_loop.15386 (result i32)
                    (if (result i32)
                     (i32.shr_u
                      (select
                       (i32.const -2)
                       (i32.const 2147483646)
                       (i32.lt_s
                        (local.get $3)
                        (local.get $5)
                       )
                      )
                      (i32.const 31)
                     )
                     (block
                      (local.set $6
                       (i32.load offset=20
                        (i32.add
                         (local.get $1)
                         (local.get $3)
                        )
                       )
                      )
                      (local.set $7
                       (i32.load offset=20
                        (i32.add
                         (local.get $2)
                         (local.get $3)
                        )
                       )
                      )
                      (if
                       (i32.shr_u
                        (i32.xor
                         (call $equalHelp_3972_16
                          (call $incRef_1277_7
                           (i32.const 0)
                           (i32.const 0)
                          )
                          (local.get $6)
                          (local.get $7)
                         )
                         (i32.const -2147483648)
                        )
                        (i32.const 31)
                       )
                       (block
                        (i32.store offset=16
                         (local.get $1)
                         (local.get $0)
                        )
                        (i32.store offset=16
                         (local.get $2)
                         (local.get $4)
                        )
                        (br $folding-inner3)
                       )
                      )
                      (local.set $3
                       (i32.add
                        (local.get $3)
                        (i32.const 4)
                       )
                      )
                      (br $MFor_loop.15386)
                     )
                     (i32.const 1879048190)
                    )
                   )
                  )
                  (i32.store offset=16
                   (local.get $1)
                   (local.get $0)
                  )
                  (i32.store offset=16
                   (local.get $2)
                   (local.get $4)
                  )
                  (drop
                   (call $decRef_1330_7
                    (i32.const 0)
                    (local.get $8)
                   )
                  )
                  (i32.const -2)
                 )
                )
               )
              )
              (drop
               (call $decRef_1330_7
                (i32.const 0)
                (local.get $8)
               )
              )
              (br $__inlined_func$heapEqualHelp_3971_16$62
               (local.get $3)
              )
             )
             (i32.store offset=4
              (local.get $2)
              (local.get $0)
             )
             (br $folding-inner3)
            )
            (drop
             (call $decRef_1330_7
              (i32.const 0)
              (local.get $8)
             )
            )
            (br $__inlined_func$heapEqualHelp_3971_16$62
             (i32.const -2)
            )
           )
           (drop
            (call $decRef_1330_7
             (i32.const 0)
             (local.get $8)
            )
           )
           (i32.const 2147483646)
          )
         )
        )
       )
      )
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $equal_4128_16 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (tuple.extract 0
   (tuple.make
    (call $equalHelp_3972_16
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $1)
     (local.get $2)
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $1)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $2)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $findTypeMetadata_4210_18 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $3
   (i32.add
    (i32.add
     (local.tee $4
      (i32.const 1032)
     )
     (i32.const 8)
    )
    (i32.shl
     (i32.rem_s
      (local.get $1)
      (i32.load
       (local.get $4)
      )
     )
     (i32.const 3)
    )
   )
  )
  (local.set $3
   (i32.add
    (local.tee $2
     (i32.add
      (i32.load
       (local.get $3)
      )
      (local.get $4)
     )
    )
    (i32.shl
     (i32.load offset=4
      (local.get $3)
     )
     (i32.const 3)
    )
   )
  )
  (drop
   (loop $MFor_loop.16044 (result i32)
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i32.lt_s
        (local.get $2)
        (local.get $3)
       )
      )
      (i32.const 31)
     )
     (if
      (i32.shr_u
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (i32.eq
         (i32.load
          (local.get $2)
         )
         (local.get $1)
        )
       )
       (i32.const 31)
      )
      (block
       (local.set $1
        (i32.add
         (i32.load offset=4
          (local.get $2)
         )
         (local.get $4)
        )
       )
       (drop
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $0)
        )
       )
       (return
        (local.get $1)
       )
      )
      (block
       (local.set $2
        (i32.add
         (local.get $2)
         (i32.const 8)
        )
       )
       (br $MFor_loop.16044)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (i32.const -1)
 )
 (func $vecLen_4258_18 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const 2147483646)
       (i32.const -2)
       (local.tee $1
        (i32.load
         (local.get $1)
        )
       )
      )
      (i32.const 31)
     )
     (i32.const 0)
     (i32.load
      (local.get $1)
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $vecFindIndex_4261_18 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $3
   (i32.load
    (local.get $1)
   )
  )
  (local.set $4
   (call $vecLen_4258_18
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $1)
   )
  )
  (local.set $1
   (i32.const 0)
  )
  (drop
   (loop $MFor_loop.16188 (result i32)
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i32.lt_s
        (local.get $1)
        (local.get $4)
       )
      )
      (i32.const 31)
     )
     (if
      (i32.shr_u
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (i32.eq
         (i32.load offset=8
          (i32.add
           (i32.shl
            (local.get $1)
            (i32.const 2)
           )
           (local.get $3)
          )
         )
         (local.get $2)
        )
       )
       (i32.const 31)
      )
      (block
       (drop
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $0)
        )
       )
       (return
        (local.get $1)
       )
      )
      (block
       (local.set $1
        (i32.add
         (local.get $1)
         (i32.const 1)
        )
       )
       (br $MFor_loop.16188)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (i32.const -1)
 )
 (func $getFieldArray_4279_18 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store
   (local.tee $4
    (call $malloc_1268_7
     (i32.const 0)
     (i32.shl
      (i32.add
       (local.get $2)
       (i32.const 2)
      )
      (i32.const 2)
     )
    )
   )
   (i32.const 4)
  )
  (i32.store offset=4
   (local.get $4)
   (local.get $2)
  )
  (drop
   (loop $MFor_loop.16347 (result i32)
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i32.gt_s
        (local.get $2)
        (local.get $6)
       )
      )
      (i32.const 31)
     )
     (block
      (i32.store
       (local.tee $3
        (call $malloc_1268_7
         (i32.const 0)
         (i32.add
          (local.tee $8
           (i32.load offset=4
            (local.tee $7
             (i32.add
              (local.get $1)
              (local.get $5)
             )
            )
           )
          )
          (i32.const 8)
         )
        )
       )
       (i32.const 1)
      )
      (i32.store offset=4
       (local.get $3)
       (local.get $8)
      )
      (drop
       (call $incRef_1277_7
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $3)
       )
      )
      (memory.copy
       (i32.add
        (local.get $3)
        (i32.const 8)
       )
       (i32.add
        (local.get $7)
        (i32.const 8)
       )
       (local.get $8)
      )
      (i32.store offset=8
       (i32.add
        (i32.shl
         (local.get $6)
         (i32.const 2)
        )
        (local.get $4)
       )
       (local.get $3)
      )
      (local.set $5
       (i32.add
        (i32.load
         (local.get $7)
        )
        (local.get $5)
       )
      )
      (local.set $6
       (i32.add
        (local.get $6)
        (i32.const 1)
       )
      )
      (br $MFor_loop.16347)
     )
     (i32.const 1879048190)
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (local.get $4)
    (i32.const 1879048190)
   )
  )
 )
 (func $totalBytes_4299_18 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $4
   (if (result i32)
    (i32.shr_u
     (i32.or
      (i32.shl
       (i32.eq
        (local.tee $4
         (i32.load offset=12
          (local.get $2)
         )
        )
        (i32.const 1)
       )
       (i32.const 31)
      )
      (i32.const 2147483646)
     )
     (i32.const 31)
    )
    (block (result i32)
     (local.set $3
      (call $incRef_1277_7
       (i32.const 0)
       (i32.load offset=20
        (local.get $2)
       )
      )
     )
     (local.set $5
      (tuple.extract 0
       (tuple.make
        (call $incRef_1277_7
         (i32.const 0)
         (call $incRef_1277_7
          (i32.const 0)
          (i32.load offset=24
           (local.get $2)
          )
         )
        )
        (call $decRef_1330_7
         (i32.const 0)
         (i32.const 0)
        )
       )
      )
     )
     (local.set $3
      (tuple.extract 0
       (tuple.make
        (call $incRef_1277_7
         (i32.const 0)
         (local.get $3)
        )
        (call $decRef_1330_7
         (i32.const 0)
         (i32.const 0)
        )
       )
      )
     )
     (i32.const 1)
    )
    (if (result i32)
     (i32.shr_u
      (i32.or
       (i32.shl
        (i32.eq
         (local.get $4)
         (i32.const 3)
        )
        (i32.const 31)
       )
       (i32.const 2147483646)
      )
      (i32.const 31)
     )
     (i32.const 3)
     (unreachable)
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $2)
   )
  )
  (tuple.extract 0
   (tuple.make
    (block $switch.16528_outer (result i32)
     (drop
      (block $switch.16528_branch_1 (result i32)
       (drop
        (block $switch.16528_branch_2 (result i32)
         (drop
          (block $switch.16528_default (result i32)
           (br_table $switch.16528_branch_1 $switch.16528_branch_2 $switch.16528_default
            (i32.const 0)
            (i32.shr_s
             (local.get $4)
             (i32.const 1)
            )
           )
          )
         )
         (unreachable)
        )
       )
       (br $switch.16528_outer
        (local.get $1)
       )
      )
     )
     (local.set $1
      (i32.add
       (i32.load offset=4
        (local.get $3)
       )
       (local.get $1)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $3)
      )
     )
     (return_call $totalBytes_4299_18
      (local.get $0)
      (local.get $1)
      (local.get $5)
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $3)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $5)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $writeStrings_4304_18 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $4
   (if (result i32)
    (i32.shr_u
     (i32.or
      (i32.shl
       (i32.eq
        (local.tee $4
         (i32.load offset=12
          (local.get $2)
         )
        )
        (i32.const 1)
       )
       (i32.const 31)
      )
      (i32.const 2147483646)
     )
     (i32.const 31)
    )
    (block (result i32)
     (local.set $3
      (call $incRef_1277_7
       (i32.const 0)
       (i32.load offset=20
        (local.get $2)
       )
      )
     )
     (local.set $5
      (tuple.extract 0
       (tuple.make
        (call $incRef_1277_7
         (i32.const 0)
         (call $incRef_1277_7
          (i32.const 0)
          (i32.load offset=24
           (local.get $2)
          )
         )
        )
        (call $decRef_1330_7
         (i32.const 0)
         (i32.const 0)
        )
       )
      )
     )
     (local.set $3
      (tuple.extract 0
       (tuple.make
        (call $incRef_1277_7
         (i32.const 0)
         (local.get $3)
        )
        (call $decRef_1330_7
         (i32.const 0)
         (i32.const 0)
        )
       )
      )
     )
     (i32.const 1)
    )
    (if (result i32)
     (i32.shr_u
      (i32.or
       (i32.shl
        (i32.eq
         (local.get $4)
         (i32.const 3)
        )
        (i32.const 31)
       )
       (i32.const 2147483646)
      )
      (i32.const 31)
     )
     (i32.const 3)
     (unreachable)
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $2)
   )
  )
  (tuple.extract 0
   (tuple.make
    (block $switch.16564_outer (result i32)
     (drop
      (block $switch.16564_branch_1 (result i32)
       (drop
        (block $switch.16564_branch_2 (result i32)
         (drop
          (block $switch.16564_default (result i32)
           (br_table $switch.16564_branch_1 $switch.16564_branch_2 $switch.16564_default
            (i32.const 0)
            (i32.shr_s
             (local.get $4)
             (i32.const 1)
            )
           )
          )
         )
         (unreachable)
        )
       )
       (br $switch.16564_outer
        (i32.const 1879048190)
       )
      )
     )
     (memory.copy
      (local.get $1)
      (i32.add
       (local.get $3)
       (i32.const 8)
      )
      (local.tee $2
       (i32.load offset=4
        (local.get $3)
       )
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $3)
      )
     )
     (return_call $writeStrings_4304_18
      (local.get $0)
      (i32.add
       (local.get $1)
       (local.get $2)
      )
      (local.get $5)
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $3)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $5)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $join_4311_18 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (i32.store
   (local.tee $2
    (call $malloc_1268_7
     (i32.const 0)
     (i32.add
      (local.tee $3
       (call $totalBytes_4299_18
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (i32.const 0)
        (call $incRef_1277_7
         (i32.const 0)
         (local.get $1)
        )
       )
      )
      (i32.const 8)
     )
    )
   )
   (i32.const 1)
  )
  (i32.store offset=4
   (local.get $2)
   (local.get $3)
  )
  (drop
   (call $writeStrings_4304_18
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (i32.add
     (local.get $2)
     (i32.const 8)
    )
    (local.get $1)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (local.get $2)
    (i32.const 1879048190)
   )
  )
 )
 (func $concat_4322_18 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (i32.store
   (local.tee $4
    (call $malloc_1268_7
     (i32.const 0)
     (i32.add
      (local.tee $3
       (i32.add
        (local.tee $5
         (i32.load offset=4
          (local.get $1)
         )
        )
        (local.tee $6
         (i32.load offset=4
          (local.get $2)
         )
        )
       )
      )
      (i32.const 8)
     )
    )
   )
   (i32.const 1)
  )
  (i32.store offset=4
   (local.get $4)
   (local.get $3)
  )
  (memory.copy
   (local.tee $3
    (i32.add
     (local.get $4)
     (i32.const 8)
    )
   )
   (i32.add
    (local.get $1)
    (i32.const 8)
   )
   (local.get $5)
  )
  (memory.copy
   (i32.add
    (local.get $3)
    (local.get $5)
   )
   (i32.add
    (local.get $2)
    (i32.const 8)
   )
   (local.get $6)
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $1)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $2)
   )
  )
  (tuple.extract 0
   (tuple.make
    (local.get $4)
    (i32.const 1879048190)
   )
  )
 )
 (func $escape_4330_18 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local.set $7
   (select
    (i32.const 34)
    (i32.const 39)
    (i32.shr_u
     (local.get $2)
     (i32.const 31)
    )
   )
  )
  (local.set $8
   (i32.load offset=4
    (local.get $1)
   )
  )
  (local.set $2
   (i32.const 2)
  )
  (drop
   (loop $MFor_loop.16633 (result i32)
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i32.lt_s
        (local.get $3)
        (local.get $8)
       )
      )
      (i32.const 31)
     )
     (block
      (local.set $5
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (i32.ge_u
         (local.tee $6
          (i32.load8_u offset=8
           (i32.add
            (local.get $1)
            (local.get $3)
           )
          )
         )
         (i32.const 8)
        )
       )
      )
      (local.set $2
       (select
        (i32.add
         (local.get $2)
         (i32.const 2)
        )
        (i32.add
         (local.get $2)
         (i32.const 1)
        )
        (i32.shr_u
         (select
          (local.tee $2
           (select
            (local.tee $2
             (select
              (select
               (i32.const -2)
               (i32.const 2147483646)
               (i32.le_u
                (local.get $6)
                (i32.const 13)
               )
              )
              (local.get $5)
              (i32.shr_u
               (local.get $5)
               (i32.const 31)
              )
             )
            )
            (select
             (i32.const -2)
             (i32.const 2147483646)
             (i32.eq
              (local.get $6)
              (i32.const 92)
             )
            )
            (i32.shr_u
             (local.get $2)
             (i32.const 31)
            )
           )
          )
          (select
           (i32.const -2)
           (i32.const 2147483646)
           (i32.eq
            (local.get $6)
            (local.get $7)
           )
          )
          (i32.shr_u
           (local.get $2)
           (i32.const 31)
          )
         )
         (i32.const 31)
        )
       )
      )
      (local.set $3
       (i32.add
        (local.get $3)
        (i32.const 1)
       )
      )
      (br $MFor_loop.16633)
     )
     (i32.const 1879048190)
    )
   )
  )
  (i32.store
   (local.tee $5
    (call $malloc_1268_7
     (i32.const 0)
     (i32.add
      (local.get $2)
      (i32.const 8)
     )
    )
   )
   (i32.const 1)
  )
  (i32.store offset=4
   (local.get $5)
   (local.get $2)
  )
  (local.set $3
   (i32.const 1)
  )
  (local.set $6
   (i32.const 0)
  )
  (drop
   (loop $MFor_loop.16690 (result i32)
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i32.lt_s
        (local.get $6)
        (local.get $8)
       )
      )
      (i32.const 31)
     )
     (block
      (local.set $2
       (select
        (i32.const -2)
        (i32.const 2147483646)
        (i32.ge_u
         (local.tee $4
          (i32.load8_u offset=8
           (i32.add
            (local.get $1)
            (local.get $6)
           )
          )
         )
         (i32.const 8)
        )
       )
      )
      (if
       (i32.shr_u
        (select
         (local.tee $2
          (select
           (local.tee $2
            (select
             (select
              (i32.const -2)
              (i32.const 2147483646)
              (i32.le_u
               (local.get $4)
               (i32.const 13)
              )
             )
             (local.get $2)
             (i32.shr_u
              (local.get $2)
              (i32.const 31)
             )
            )
           )
           (select
            (i32.const -2)
            (i32.const 2147483646)
            (i32.eq
             (local.get $4)
             (i32.const 92)
            )
           )
           (i32.shr_u
            (local.get $2)
            (i32.const 31)
           )
          )
         )
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i32.eq
           (local.get $4)
           (local.get $7)
          )
         )
         (i32.shr_u
          (local.get $2)
          (i32.const 31)
         )
        )
        (i32.const 31)
       )
       (block
        (i32.store8 offset=8
         (i32.add
          (local.get $3)
          (local.get $5)
         )
         (i32.const 92)
        )
        (i32.store8 offset=8
         (i32.add
          (local.tee $3
           (i32.add
            (local.get $3)
            (i32.const 1)
           )
          )
          (local.get $5)
         )
         (block $switch.16785_outer (result i32)
          (drop
           (block $switch.16785_branch_1 (result i32)
            (drop
             (block $switch.16785_branch_2 (result i32)
              (drop
               (block $switch.16785_branch_3 (result i32)
                (drop
                 (block $switch.16785_branch_4 (result i32)
                  (drop
                   (block $switch.16785_branch_5 (result i32)
                    (drop
                     (block $switch.16785_branch_6 (result i32)
                      (drop
                       (block $switch.16785_branch_7 (result i32)
                        (drop
                         (block $switch.16785_default (result i32)
                          (br_table $switch.16785_branch_1 $switch.16785_branch_2 $switch.16785_branch_3 $switch.16785_branch_4 $switch.16785_branch_5 $switch.16785_branch_6 $switch.16785_branch_7 $switch.16785_default
                           (i32.const 0)
                           (i32.shr_s
                            (select
                             (i32.const 1)
                             (select
                              (i32.const 3)
                              (select
                               (i32.const 5)
                               (select
                                (i32.const 7)
                                (select
                                 (i32.const 9)
                                 (select
                                  (i32.const 11)
                                  (i32.const 13)
                                  (i32.shr_u
                                   (select
                                    (i32.const -2)
                                    (i32.const 2147483646)
                                    (i32.eq
                                     (local.get $4)
                                     (i32.const 11)
                                    )
                                   )
                                   (i32.const 31)
                                  )
                                 )
                                 (i32.shr_u
                                  (select
                                   (i32.const -2)
                                   (i32.const 2147483646)
                                   (i32.eq
                                    (local.get $4)
                                    (i32.const 9)
                                   )
                                  )
                                  (i32.const 31)
                                 )
                                )
                                (i32.shr_u
                                 (select
                                  (i32.const -2)
                                  (i32.const 2147483646)
                                  (i32.eq
                                   (local.get $4)
                                   (i32.const 13)
                                  )
                                 )
                                 (i32.const 31)
                                )
                               )
                               (i32.shr_u
                                (select
                                 (i32.const -2)
                                 (i32.const 2147483646)
                                 (i32.eq
                                  (local.get $4)
                                  (i32.const 10)
                                 )
                                )
                                (i32.const 31)
                               )
                              )
                              (i32.shr_u
                               (select
                                (i32.const -2)
                                (i32.const 2147483646)
                                (i32.eq
                                 (local.get $4)
                                 (i32.const 12)
                                )
                               )
                               (i32.const 31)
                              )
                             )
                             (i32.shr_u
                              (select
                               (i32.const -2)
                               (i32.const 2147483646)
                               (i32.eq
                                (local.get $4)
                                (i32.const 8)
                               )
                              )
                              (i32.const 31)
                             )
                            )
                            (i32.const 1)
                           )
                          )
                         )
                        )
                        (unreachable)
                       )
                      )
                      (br $switch.16785_outer
                       (local.get $4)
                      )
                     )
                    )
                    (br $switch.16785_outer
                     (i32.const 118)
                    )
                   )
                  )
                  (br $switch.16785_outer
                   (i32.const 116)
                  )
                 )
                )
                (br $switch.16785_outer
                 (i32.const 114)
                )
               )
              )
              (br $switch.16785_outer
               (i32.const 110)
              )
             )
            )
            (br $switch.16785_outer
             (i32.const 102)
            )
           )
          )
          (i32.const 98)
         )
        )
       )
       (i32.store8 offset=8
        (i32.add
         (local.get $3)
         (local.get $5)
        )
        (local.get $4)
       )
      )
      (local.set $3
       (i32.add
        (local.get $3)
        (i32.const 1)
       )
      )
      (local.set $6
       (i32.add
        (local.get $6)
        (i32.const 1)
       )
      )
      (br $MFor_loop.16690)
     )
     (i32.const 1879048190)
    )
   )
  )
  (i32.store8 offset=8
   (local.get $5)
   (local.get $7)
  )
  (i32.store8 offset=8
   (i32.add
    (local.get $3)
    (local.get $5)
   )
   (local.get $7)
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (tuple.extract 0
   (tuple.make
    (local.get $5)
    (i32.const 1879048190)
   )
  )
 )
 (func $reportCycle_4364_18 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (drop
   (if (result i32)
    (i32.shr_u
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (i32.eq
       (local.tee $6
        (call $vecFindIndex_4261_18
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $2)
         (local.get $1)
        )
       )
       (i32.const -1)
      )
     )
     (i32.const 31)
    )
    (block (result i32)
     (local.set $6
      (call $vecLen_4258_18
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $2)
      )
     )
     (local.set $9
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
     )
     (drop
      (if (result i32)
       (i32.shr_u
        (select
         (i32.const 2147483646)
         (i32.const -2)
         (local.tee $3
          (i32.load
           (local.get $2)
          )
         )
        )
        (i32.const 31)
       )
       (block (result i32)
        (local.set $4
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
        )
        (i32.store
         (local.tee $3
          (call $malloc_1268_7
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (i32.const 24)
          )
         )
         (i32.const 0)
        )
        (i32.store offset=4
         (local.get $3)
         (i32.const 4)
        )
        (i32.store
         (local.get $2)
         (local.get $3)
        )
        (drop
         (call $decRef_1330_7
          (i32.const 0)
          (local.get $4)
         )
        )
        (local.set $3
         (tuple.extract 0
          (tuple.make
           (local.get $3)
           (i32.const 1879048190)
          )
         )
        )
        (i32.const 0)
       )
       (i32.const 1879048190)
      )
     )
     (drop
      (if (result i32)
       (i32.shr_u
        (select
         (i32.const -2)
         (i32.const 2147483646)
         (i32.eq
          (local.tee $7
           (i32.load
            (local.get $3)
           )
          )
          (local.tee $8
           (i32.load offset=4
            (local.get $3)
           )
          )
         )
        )
        (i32.const 31)
       )
       (block (result i32)
        (memory.copy
         (local.tee $4
          (call $malloc_1268_7
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
           (i32.add
            (i32.shl
             (local.tee $5
              (i32.shl
               (local.get $8)
               (i32.const 1)
              )
             )
             (i32.const 2)
            )
            (i32.const 8)
           )
          )
         )
         (local.get $3)
         (i32.add
          (i32.shl
           (local.get $8)
           (i32.const 2)
          )
          (i32.const 8)
         )
        )
        (i32.store offset=4
         (local.get $4)
         (local.get $5)
        )
        (drop
         (call $free_1275_7
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $3)
         )
        )
        (i32.store
         (local.get $2)
         (local.get $4)
        )
        (local.set $3
         (local.get $4)
        )
        (i32.const 0)
       )
       (i32.const 1879048190)
      )
     )
     (i32.store offset=8
      (i32.add
       (i32.shl
        (local.get $7)
        (i32.const 2)
       )
       (local.get $3)
      )
      (local.get $1)
     )
     (i32.store
      (local.get $3)
      (i32.add
       (local.get $7)
       (i32.const 1)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $9)
      )
     )
     (i32.const 0)
    )
    (i32.const 1879048190)
   )
  )
  (local.set $1
   (call $itoa32_2403_13
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (i32.add
     (local.get $6)
     (i32.const 1)
    )
    (i32.const 10)
   )
  )
  (i32.store
   (local.tee $4
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 24)
    )
   )
   (i32.const 1)
  )
  (i32.store offset=4
   (local.get $4)
   (i32.const 11)
  )
  (i64.store offset=8
   (local.get $4)
   (i64.const 8367799623854154556)
  )
  (i64.store offset=16
   (local.get $4)
   (i64.const 3940463)
  )
  (i32.store
   (local.tee $2
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 16)
    )
   )
   (i32.const 1)
  )
  (i32.store offset=4
   (local.get $2)
   (i32.const 2)
  )
  (i64.store offset=8
   (local.get $2)
   (i64.const 15934)
  )
  (i32.store
   (local.tee $3
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 20)
    )
   )
   (i32.const 2)
  )
  (i32.store offset=4
   (local.get $3)
   (i32.const 1638603609)
  )
  (i32.store offset=8
   (local.get $3)
   (i32.const 11)
  )
  (i32.store offset=12
   (local.get $3)
   (i32.const 3)
  )
  (i32.store offset=16
   (local.get $3)
   (i32.const 0)
  )
  (i32.store
   (local.tee $5
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 28)
    )
   )
   (i32.const 2)
  )
  (i32.store offset=4
   (local.get $5)
   (i32.const 1638603609)
  )
  (i32.store offset=8
   (local.get $5)
   (i32.const 11)
  )
  (i32.store offset=12
   (local.get $5)
   (i32.const 1)
  )
  (i32.store offset=16
   (local.get $5)
   (i32.const 2)
  )
  (i32.store offset=20
   (local.get $5)
   (local.get $2)
  )
  (i32.store offset=24
   (local.get $5)
   (local.get $3)
  )
  (i32.store
   (local.tee $2
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 28)
    )
   )
   (i32.const 2)
  )
  (i32.store offset=4
   (local.get $2)
   (i32.const 1638603609)
  )
  (i32.store offset=8
   (local.get $2)
   (i32.const 11)
  )
  (i32.store offset=12
   (local.get $2)
   (i32.const 1)
  )
  (i32.store offset=16
   (local.get $2)
   (i32.const 2)
  )
  (i32.store offset=20
   (local.get $2)
   (local.get $1)
  )
  (i32.store offset=24
   (local.get $2)
   (local.get $5)
  )
  (i32.store
   (local.tee $1
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 28)
    )
   )
   (i32.const 2)
  )
  (i32.store offset=4
   (local.get $1)
   (i32.const 1638603609)
  )
  (i32.store offset=8
   (local.get $1)
   (i32.const 11)
  )
  (i32.store offset=12
   (local.get $1)
   (i32.const 1)
  )
  (i32.store offset=16
   (local.get $1)
   (i32.const 2)
  )
  (i32.store offset=20
   (local.get $1)
   (local.get $4)
  )
  (i32.store offset=24
   (local.get $1)
   (local.get $2)
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (return_call $join_4311_18
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
   (local.get $1)
  )
 )
 (func $cyclePrefix_4381_18 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i32.ne
        (local.tee $1
         (call $vecFindIndex_4261_18
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $2)
          (local.get $1)
         )
        )
        (i32.const -1)
       )
      )
      (i32.const 31)
     )
     (block
      (i32.store
       (local.tee $3
        (call $malloc_1268_7
         (i32.const 0)
         (i32.const 16)
        )
       )
       (i32.const 1)
      )
      (i32.store offset=4
       (local.get $3)
       (i32.const 1)
      )
      (i64.store offset=8
       (local.get $3)
       (i64.const 60)
      )
      (local.set $5
       (call $itoa32_2403_13
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (i32.add
         (local.get $1)
         (i32.const 1)
        )
        (i32.const 10)
       )
      )
      (i32.store
       (local.tee $4
        (call $malloc_1268_7
         (i32.const 0)
         (i32.const 16)
        )
       )
       (i32.const 1)
      )
      (i32.store offset=4
       (local.get $4)
       (i32.const 2)
      )
      (i64.store offset=8
       (local.get $4)
       (i64.const 8254)
      )
      (i32.store
       (local.tee $2
        (call $malloc_1268_7
         (i32.const 0)
         (i32.const 20)
        )
       )
       (i32.const 2)
      )
      (i32.store offset=4
       (local.get $2)
       (i32.const 1638603609)
      )
      (i32.store offset=8
       (local.get $2)
       (i32.const 11)
      )
      (i32.store offset=12
       (local.get $2)
       (i32.const 3)
      )
      (i32.store offset=16
       (local.get $2)
       (i32.const 0)
      )
      (i32.store
       (local.tee $1
        (call $malloc_1268_7
         (i32.const 0)
         (i32.const 28)
        )
       )
       (i32.const 2)
      )
      (i32.store offset=4
       (local.get $1)
       (i32.const 1638603609)
      )
      (i32.store offset=8
       (local.get $1)
       (i32.const 11)
      )
      (i32.store offset=12
       (local.get $1)
       (i32.const 1)
      )
      (i32.store offset=16
       (local.get $1)
       (i32.const 2)
      )
      (i32.store offset=20
       (local.get $1)
       (local.get $4)
      )
      (i32.store offset=24
       (local.get $1)
       (local.get $2)
      )
      (i32.store
       (local.tee $2
        (call $malloc_1268_7
         (i32.const 0)
         (i32.const 28)
        )
       )
       (i32.const 2)
      )
      (i32.store offset=4
       (local.get $2)
       (i32.const 1638603609)
      )
      (i32.store offset=8
       (local.get $2)
       (i32.const 11)
      )
      (i32.store offset=12
       (local.get $2)
       (i32.const 1)
      )
      (i32.store offset=16
       (local.get $2)
       (i32.const 2)
      )
      (i32.store offset=20
       (local.get $2)
       (local.get $5)
      )
      (i32.store offset=24
       (local.get $2)
       (local.get $1)
      )
      (i32.store
       (local.tee $1
        (call $malloc_1268_7
         (i32.const 0)
         (i32.const 28)
        )
       )
       (i32.const 2)
      )
      (i32.store offset=4
       (local.get $1)
       (i32.const 1638603609)
      )
      (i32.store offset=8
       (local.get $1)
       (i32.const 11)
      )
      (i32.store offset=12
       (local.get $1)
       (i32.const 1)
      )
      (i32.store offset=16
       (local.get $1)
       (i32.const 2)
      )
      (i32.store offset=20
       (local.get $1)
       (local.get $3)
      )
      (i32.store offset=24
       (local.get $1)
       (local.get $2)
      )
      (drop
       (call $decRef_1330_7
        (i32.const 0)
        (local.get $0)
       )
      )
      (return_call $join_4311_18
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
      )
     )
     (block (result i32)
      (i32.store
       (local.tee $1
        (call $malloc_1268_7
         (i32.const 0)
         (i32.const 8)
        )
       )
       (i32.const 1)
      )
      (i32.store offset=4
       (local.get $1)
       (i32.const 0)
      )
      (local.get $1)
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $recordToString_4389_18 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (result i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local.set $11
   (if (result i32)
    (i32.shr_u
     (select
      (i32.const 2147483646)
      (i32.const -2)
      (local.tee $7
       (i32.shl
        (local.get $5)
        (i32.const 1)
       )
      )
     )
     (i32.const 31)
    )
    (block (result i32)
     (i32.store
      (local.tee $11
       (call $malloc_1268_7
        (i32.const 0)
        (i32.const 8)
       )
      )
      (i32.const 1)
     )
     (i32.store offset=4
      (local.get $11)
      (i32.const 0)
     )
     (local.get $11)
    )
    (block (result i32)
     (i32.store
      (local.tee $11
       (call $malloc_1268_7
        (i32.const 0)
        (i32.add
         (local.get $7)
         (i32.const 8)
        )
       )
      )
      (i32.const 1)
     )
     (i32.store offset=4
      (local.get $11)
      (local.get $7)
     )
     (memory.fill
      (i32.add
       (local.get $11)
       (i32.const 8)
      )
      (i32.const 32)
      (local.get $7)
     )
     (local.get $11)
    )
   )
  )
  (i32.store
   (local.tee $14
    (call $malloc_1268_7
     (i32.const 0)
     (i32.add
      (local.tee $7
       (i32.shl
        (i32.add
         (local.get $5)
         (i32.const 1)
        )
        (i32.const 1)
       )
      )
      (i32.const 8)
     )
    )
   )
   (i32.const 1)
  )
  (i32.store offset=4
   (local.get $14)
   (local.get $7)
  )
  (memory.fill
   (i32.add
    (local.get $14)
    (i32.const 8)
   )
   (i32.const 32)
   (local.get $7)
  )
  (i32.store
   (local.tee $8
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 16)
    )
   )
   (i32.const 1)
  )
  (i32.store offset=4
   (local.get $8)
   (i32.const 1)
  )
  (i64.store offset=8
   (local.get $8)
   (i64.const 10)
  )
  (i32.store
   (local.tee $7
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 16)
    )
   )
   (i32.const 1)
  )
  (i32.store offset=4
   (local.get $7)
   (i32.const 1)
  )
  (i64.store offset=8
   (local.get $7)
   (i64.const 125)
  )
  (i32.store
   (local.tee $12
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 20)
    )
   )
   (i32.const 2)
  )
  (i32.store offset=4
   (local.get $12)
   (i32.const 1638603609)
  )
  (i32.store offset=8
   (local.get $12)
   (i32.const 11)
  )
  (i32.store offset=12
   (local.get $12)
   (i32.const 3)
  )
  (i32.store offset=16
   (local.get $12)
   (i32.const 0)
  )
  (i32.store
   (local.tee $9
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 28)
    )
   )
   (i32.const 2)
  )
  (i32.store offset=4
   (local.get $9)
   (i32.const 1638603609)
  )
  (i32.store offset=8
   (local.get $9)
   (i32.const 11)
  )
  (i32.store offset=12
   (local.get $9)
   (i32.const 1)
  )
  (i32.store offset=16
   (local.get $9)
   (i32.const 2)
  )
  (i32.store offset=20
   (local.get $9)
   (local.get $7)
  )
  (i32.store offset=24
   (local.get $9)
   (local.get $12)
  )
  (i32.store
   (local.tee $7
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 28)
    )
   )
   (i32.const 2)
  )
  (i32.store offset=4
   (local.get $7)
   (i32.const 1638603609)
  )
  (i32.store offset=8
   (local.get $7)
   (i32.const 11)
  )
  (i32.store offset=12
   (local.get $7)
   (i32.const 1)
  )
  (i32.store offset=16
   (local.get $7)
   (i32.const 2)
  )
  (i32.store offset=20
   (local.get $7)
   (local.get $11)
  )
  (i32.store offset=24
   (local.get $7)
   (local.get $9)
  )
  (i32.store
   (local.tee $10
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 28)
    )
   )
   (i32.const 2)
  )
  (i32.store offset=4
   (local.get $10)
   (i32.const 1638603609)
  )
  (i32.store offset=8
   (local.get $10)
   (i32.const 11)
  )
  (i32.store offset=12
   (local.get $10)
   (i32.const 1)
  )
  (i32.store offset=16
   (local.get $10)
   (i32.const 2)
  )
  (i32.store offset=20
   (local.get $10)
   (local.get $8)
  )
  (i32.store offset=24
   (local.get $10)
   (local.get $7)
  )
  (i32.store
   (local.tee $7
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 16)
    )
   )
   (i32.const 1)
  )
  (i32.store offset=4
   (local.get $7)
   (i32.const 2)
  )
  (i64.store offset=8
   (local.get $7)
   (i64.const 8250)
  )
  (i32.store
   (local.tee $11
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 16)
    )
   )
   (i32.const 1)
  )
  (i32.store offset=4
   (local.get $11)
   (i32.const 2)
  )
  (i64.store offset=8
   (local.get $11)
   (i64.const 2604)
  )
  (local.set $9
   (i32.sub
    (i32.shl
     (local.get $2)
     (i32.const 2)
    )
    (i32.const 4)
   )
  )
  (drop
   (loop $MFor_loop.16979 (result i32)
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i32.ge_s
        (local.get $9)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (block
      (local.set $12
       (i32.load offset=8
        (i32.add
         (local.get $3)
         (local.get $9)
        )
       )
      )
      (local.set $2
       (i32.load
        (i32.add
         (i32.add
          (local.get $1)
          (local.get $9)
         )
         (local.get $4)
        )
       )
      )
      (local.set $8
       (call $toStringHelp_4386_18
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $2)
        (i32.add
         (local.get $5)
         (i32.const 1)
        )
        (i32.const 2147483646)
        (local.get $6)
       )
      )
      (local.set $2
       (call $incRef_1277_7
        (i32.const 0)
        (local.get $10)
       )
      )
      (i32.store
       (local.tee $13
        (call $malloc_1268_7
         (i32.const 0)
         (i32.const 28)
        )
       )
       (i32.const 2)
      )
      (i32.store offset=4
       (local.get $13)
       (i32.const 1638603609)
      )
      (i32.store offset=8
       (local.get $13)
       (i32.const 11)
      )
      (i32.store offset=12
       (local.get $13)
       (i32.const 1)
      )
      (i32.store offset=16
       (local.get $13)
       (i32.const 2)
      )
      (i32.store offset=20
       (local.get $13)
       (local.get $8)
      )
      (i32.store offset=24
       (local.get $13)
       (local.get $2)
      )
      (i32.store
       (local.tee $2
        (call $malloc_1268_7
         (i32.const 0)
         (i32.const 28)
        )
       )
       (i32.const 2)
      )
      (i32.store offset=4
       (local.get $2)
       (i32.const 1638603609)
      )
      (i32.store offset=8
       (local.get $2)
       (i32.const 11)
      )
      (i32.store offset=12
       (local.get $2)
       (i32.const 1)
      )
      (i32.store offset=16
       (local.get $2)
       (i32.const 2)
      )
      (i32.store offset=20
       (local.get $2)
       (call $incRef_1277_7
        (i32.const 0)
        (local.get $7)
       )
      )
      (i32.store offset=24
       (local.get $2)
       (local.get $13)
      )
      (i32.store
       (local.tee $8
        (call $malloc_1268_7
         (i32.const 0)
         (i32.const 28)
        )
       )
       (i32.const 2)
      )
      (i32.store offset=4
       (local.get $8)
       (i32.const 1638603609)
      )
      (i32.store offset=8
       (local.get $8)
       (i32.const 11)
      )
      (i32.store offset=12
       (local.get $8)
       (i32.const 1)
      )
      (i32.store offset=16
       (local.get $8)
       (i32.const 2)
      )
      (i32.store offset=20
       (local.get $8)
       (local.get $12)
      )
      (i32.store offset=24
       (local.get $8)
       (local.get $2)
      )
      (i32.store
       (local.tee $2
        (call $malloc_1268_7
         (i32.const 0)
         (i32.const 28)
        )
       )
       (i32.const 2)
      )
      (i32.store offset=4
       (local.get $2)
       (i32.const 1638603609)
      )
      (i32.store offset=8
       (local.get $2)
       (i32.const 11)
      )
      (i32.store offset=12
       (local.get $2)
       (i32.const 1)
      )
      (i32.store offset=16
       (local.get $2)
       (i32.const 2)
      )
      (i32.store offset=20
       (local.get $2)
       (call $incRef_1277_7
        (i32.const 0)
        (local.get $14)
       )
      )
      (i32.store offset=24
       (local.get $2)
       (local.get $8)
      )
      (local.set $10
       (tuple.extract 0
        (tuple.make
         (call $incRef_1277_7
          (i32.const 0)
          (local.get $2)
         )
         (call $decRef_1330_7
          (i32.const 0)
          (local.get $10)
         )
        )
       )
      )
      (drop
       (if (result i32)
        (i32.shr_u
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i32.gt_s
           (local.get $9)
           (i32.const 0)
          )
         )
         (i32.const 31)
        )
        (block (result i32)
         (local.set $2
          (call $incRef_1277_7
           (i32.const 0)
           (local.get $10)
          )
         )
         (i32.store
          (local.tee $8
           (call $malloc_1268_7
            (i32.const 0)
            (i32.const 28)
           )
          )
          (i32.const 2)
         )
         (i32.store offset=4
          (local.get $8)
          (i32.const 1638603609)
         )
         (i32.store offset=8
          (local.get $8)
          (i32.const 11)
         )
         (i32.store offset=12
          (local.get $8)
          (i32.const 1)
         )
         (i32.store offset=16
          (local.get $8)
          (i32.const 2)
         )
         (i32.store offset=20
          (local.get $8)
          (call $incRef_1277_7
           (i32.const 0)
           (local.get $11)
          )
         )
         (i32.store offset=24
          (local.get $8)
          (local.get $2)
         )
         (local.set $10
          (tuple.extract 0
           (tuple.make
            (call $incRef_1277_7
             (i32.const 0)
             (local.get $8)
            )
            (call $decRef_1330_7
             (i32.const 0)
             (local.get $10)
            )
           )
          )
         )
         (i32.const 0)
        )
        (i32.const 1879048190)
       )
      )
      (local.set $9
       (i32.sub
        (local.get $9)
        (i32.const 4)
       )
      )
      (br $MFor_loop.16979)
     )
     (i32.const 1879048190)
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $14)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $7)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $11)
   )
  )
  (i32.store
   (local.tee $2
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 16)
    )
   )
   (i32.const 1)
  )
  (i32.store offset=4
   (local.get $2)
   (i32.const 2)
  )
  (i64.store offset=8
   (local.get $2)
   (i64.const 2683)
  )
  (local.set $1
   (call $incRef_1277_7
    (i32.const 0)
    (local.get $10)
   )
  )
  (i32.store
   (local.tee $3
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 28)
    )
   )
   (i32.const 2)
  )
  (i32.store offset=4
   (local.get $3)
   (i32.const 1638603609)
  )
  (i32.store offset=8
   (local.get $3)
   (i32.const 11)
  )
  (i32.store offset=12
   (local.get $3)
   (i32.const 1)
  )
  (i32.store offset=16
   (local.get $3)
   (i32.const 2)
  )
  (i32.store offset=20
   (local.get $3)
   (local.get $2)
  )
  (i32.store offset=24
   (local.get $3)
   (local.get $1)
  )
  (local.set $1
   (tuple.extract 0
    (tuple.make
     (call $incRef_1277_7
      (i32.const 0)
      (local.get $3)
     )
     (call $decRef_1330_7
      (i32.const 0)
      (local.get $10)
     )
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (return_call $join_4311_18
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
   (local.get $1)
  )
 )
 (func $tupleVariantToString_4388_18 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const 2147483646)
       (i32.const -2)
       (local.tee $8
        (i32.load offset=16
         (local.get $1)
        )
       )
      )
      (i32.const 31)
     )
     (call $incRef_1277_7
      (i32.const 0)
      (local.get $2)
     )
     (block
      (i32.store
       (local.tee $9
        (call $malloc_1268_7
         (i32.const 0)
         (i32.const 16)
        )
       )
       (i32.const 1)
      )
      (i32.store offset=4
       (local.get $9)
       (i32.const 2)
      )
      (i64.store offset=8
       (local.get $9)
       (i64.const 8236)
      )
      (i32.store
       (local.tee $7
        (call $malloc_1268_7
         (i32.const 0)
         (i32.const 16)
        )
       )
       (i32.const 1)
      )
      (i32.store offset=4
       (local.get $7)
       (i32.const 1)
      )
      (i64.store offset=8
       (local.get $7)
       (i64.const 41)
      )
      (i32.store
       (local.tee $5
        (call $malloc_1268_7
         (i32.const 0)
         (i32.const 20)
        )
       )
       (i32.const 2)
      )
      (i32.store offset=4
       (local.get $5)
       (i32.const 1638603609)
      )
      (i32.store offset=8
       (local.get $5)
       (i32.const 11)
      )
      (i32.store offset=12
       (local.get $5)
       (i32.const 3)
      )
      (i32.store offset=16
       (local.get $5)
       (i32.const 0)
      )
      (i32.store
       (local.tee $6
        (call $malloc_1268_7
         (i32.const 0)
         (i32.const 28)
        )
       )
       (i32.const 2)
      )
      (i32.store offset=4
       (local.get $6)
       (i32.const 1638603609)
      )
      (i32.store offset=8
       (local.get $6)
       (i32.const 11)
      )
      (i32.store offset=12
       (local.get $6)
       (i32.const 1)
      )
      (i32.store offset=16
       (local.get $6)
       (i32.const 2)
      )
      (i32.store offset=20
       (local.get $6)
       (local.get $7)
      )
      (i32.store offset=24
       (local.get $6)
       (local.get $5)
      )
      (local.set $7
       (i32.sub
        (i32.shl
         (local.get $8)
         (i32.const 2)
        )
        (i32.const 4)
       )
      )
      (drop
       (loop $MFor_loop.17084 (result i32)
        (if (result i32)
         (i32.shr_u
          (select
           (i32.const -2)
           (i32.const 2147483646)
           (i32.ge_s
            (local.get $7)
            (i32.const 0)
           )
          )
          (i32.const 31)
         )
         (block
          (local.set $5
           (i32.load offset=20
            (i32.add
             (local.get $1)
             (local.get $7)
            )
           )
          )
          (local.set $8
           (call $toStringHelp_4386_18
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $5)
            (local.get $3)
            (i32.const 2147483646)
            (local.get $4)
           )
          )
          (local.set $10
           (call $incRef_1277_7
            (i32.const 0)
            (local.get $6)
           )
          )
          (i32.store
           (local.tee $5
            (call $malloc_1268_7
             (i32.const 0)
             (i32.const 28)
            )
           )
           (i32.const 2)
          )
          (i32.store offset=4
           (local.get $5)
           (i32.const 1638603609)
          )
          (i32.store offset=8
           (local.get $5)
           (i32.const 11)
          )
          (i32.store offset=12
           (local.get $5)
           (i32.const 1)
          )
          (i32.store offset=16
           (local.get $5)
           (i32.const 2)
          )
          (i32.store offset=20
           (local.get $5)
           (local.get $8)
          )
          (i32.store offset=24
           (local.get $5)
           (local.get $10)
          )
          (local.set $6
           (tuple.extract 0
            (tuple.make
             (call $incRef_1277_7
              (i32.const 0)
              (local.get $5)
             )
             (call $decRef_1330_7
              (i32.const 0)
              (local.get $6)
             )
            )
           )
          )
          (drop
           (if (result i32)
            (i32.shr_u
             (select
              (i32.const -2)
              (i32.const 2147483646)
              (i32.gt_s
               (local.get $7)
               (i32.const 0)
              )
             )
             (i32.const 31)
            )
            (block (result i32)
             (local.set $8
              (call $incRef_1277_7
               (i32.const 0)
               (local.get $6)
              )
             )
             (i32.store
              (local.tee $5
               (call $malloc_1268_7
                (i32.const 0)
                (i32.const 28)
               )
              )
              (i32.const 2)
             )
             (i32.store offset=4
              (local.get $5)
              (i32.const 1638603609)
             )
             (i32.store offset=8
              (local.get $5)
              (i32.const 11)
             )
             (i32.store offset=12
              (local.get $5)
              (i32.const 1)
             )
             (i32.store offset=16
              (local.get $5)
              (i32.const 2)
             )
             (i32.store offset=20
              (local.get $5)
              (call $incRef_1277_7
               (i32.const 0)
               (local.get $9)
              )
             )
             (i32.store offset=24
              (local.get $5)
              (local.get $8)
             )
             (local.set $6
              (tuple.extract 0
               (tuple.make
                (call $incRef_1277_7
                 (i32.const 0)
                 (local.get $5)
                )
                (call $decRef_1330_7
                 (i32.const 0)
                 (local.get $6)
                )
               )
              )
             )
             (i32.const 0)
            )
            (i32.const 1879048190)
           )
          )
          (local.set $7
           (i32.sub
            (local.get $7)
            (i32.const 4)
           )
          )
          (br $MFor_loop.17084)
         )
         (i32.const 1879048190)
        )
       )
      )
      (drop
       (call $decRef_1330_7
        (i32.const 0)
        (local.get $9)
       )
      )
      (i32.store
       (local.tee $3
        (call $malloc_1268_7
         (i32.const 0)
         (i32.const 16)
        )
       )
       (i32.const 1)
      )
      (i32.store offset=4
       (local.get $3)
       (i32.const 1)
      )
      (i64.store offset=8
       (local.get $3)
       (i64.const 40)
      )
      (local.set $4
       (call $incRef_1277_7
        (i32.const 0)
        (local.get $6)
       )
      )
      (i32.store
       (local.tee $1
        (call $malloc_1268_7
         (i32.const 0)
         (i32.const 28)
        )
       )
       (i32.const 2)
      )
      (i32.store offset=4
       (local.get $1)
       (i32.const 1638603609)
      )
      (i32.store offset=8
       (local.get $1)
       (i32.const 11)
      )
      (i32.store offset=12
       (local.get $1)
       (i32.const 1)
      )
      (i32.store offset=16
       (local.get $1)
       (i32.const 2)
      )
      (i32.store offset=20
       (local.get $1)
       (local.get $3)
      )
      (i32.store offset=24
       (local.get $1)
       (local.get $4)
      )
      (i32.store
       (local.tee $3
        (call $malloc_1268_7
         (i32.const 0)
         (i32.const 28)
        )
       )
       (i32.const 2)
      )
      (i32.store offset=4
       (local.get $3)
       (i32.const 1638603609)
      )
      (i32.store offset=8
       (local.get $3)
       (i32.const 11)
      )
      (i32.store offset=12
       (local.get $3)
       (i32.const 1)
      )
      (i32.store offset=16
       (local.get $3)
       (i32.const 2)
      )
      (i32.store offset=20
       (local.get $3)
       (call $incRef_1277_7
        (i32.const 0)
        (local.get $2)
       )
      )
      (i32.store offset=24
       (local.get $3)
       (local.get $1)
      )
      (local.set $1
       (tuple.extract 0
        (tuple.make
         (call $incRef_1277_7
          (i32.const 0)
          (local.get $3)
         )
         (call $decRef_1330_7
          (i32.const 0)
          (local.get $6)
         )
        )
       )
      )
      (drop
       (call $decRef_1330_7
        (i32.const 0)
        (local.get $0)
       )
      )
      (drop
       (call $decRef_1330_7
        (i32.const 0)
        (local.get $2)
       )
      )
      (return_call $join_4311_18
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
      )
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $2)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $toStringHelp_4386_18 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  (local $12 f64)
  (local $13 i32)
  (tuple.extract 0
   (tuple.make
    (if (result i32)
     (i32.shr_u
      (select
       (i32.const -2)
       (i32.const 2147483646)
       (i32.and
        (local.get $1)
        (i32.const 1)
       )
      )
      (i32.const 31)
     )
     (block
      (drop
       (call $decRef_1330_7
        (i32.const 0)
        (local.get $0)
       )
      )
      (return_call $itoa32_2403_13
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (i32.shr_s
        (local.get $1)
        (i32.const 1)
       )
       (i32.const 10)
      )
     )
     (if (result i32)
      (i32.shr_u
       (select
        (i32.const 2147483646)
        (i32.const -2)
        (local.tee $7
         (i32.and
          (local.get $1)
          (i32.const 7)
         )
        )
       )
       (i32.const 31)
      )
      (block
       (drop
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $0)
        )
       )
       (local.set $7
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
       )
       (return
        (tuple.extract 0
         (tuple.make
          (block $switch.17422_outer (result i32)
           (drop
            (block $switch.17422_branch_1 (result i32)
             (drop
              (block $switch.17422_branch_2 (result i32)
               (drop
                (block $switch.17422_branch_3 (result i32)
                 (drop
                  (block $switch.17422_branch_4 (result i32)
                   (drop
                    (block $switch.17422_branch_5 (result i32)
                     (drop
                      (block $switch.17422_branch_6 (result i32)
                       (drop
                        (block $switch.17422_branch_7 (result i32)
                         (drop
                          (block $switch.17422_branch_8 (result i32)
                           (drop
                            (block $switch.17422_branch_9 (result i32)
                             (drop
                              (block $switch.17422_branch_10 (result i32)
                               (drop
                                (block $switch.17422_branch_11 (result i32)
                                 (drop
                                  (block $switch.17422_branch_12 (result i32)
                                   (drop
                                    (block $switch.17422_branch_13 (result i32)
                                     (drop
                                      (block $switch.17422_default (result i32)
                                       (br_table $switch.17422_branch_1 $switch.17422_branch_2 $switch.17422_branch_3 $switch.17422_branch_4 $switch.17422_branch_5 $switch.17422_branch_6 $switch.17422_branch_7 $switch.17422_branch_8 $switch.17422_branch_9 $switch.17422_branch_10 $switch.17422_branch_11 $switch.17422_branch_12 $switch.17422_branch_13 $switch.17422_default
                                        (i32.const 0)
                                        (i32.shr_s
                                         (if (result i32)
                                          (i32.shr_u
                                           (select
                                            (i32.const -2)
                                            (i32.const 2147483646)
                                            (i32.eq
                                             (local.tee $0
                                              (i32.load
                                               (local.get $1)
                                              )
                                             )
                                             (global.get $_GRAIN_STRING_HEAP_TAG_1016_1)
                                            )
                                           )
                                           (i32.const 31)
                                          )
                                          (i32.const 1)
                                          (select
                                           (i32.const 3)
                                           (select
                                            (i32.const 5)
                                            (select
                                             (i32.const 7)
                                             (select
                                              (i32.const 9)
                                              (select
                                               (i32.const 11)
                                               (select
                                                (i32.const 13)
                                                (select
                                                 (i32.const 15)
                                                 (select
                                                  (i32.const 17)
                                                  (select
                                                   (i32.const 19)
                                                   (select
                                                    (i32.const 21)
                                                    (select
                                                     (i32.const 23)
                                                     (i32.const 25)
                                                     (i32.shr_u
                                                      (select
                                                       (i32.const -2)
                                                       (i32.const 2147483646)
                                                       (i32.eq
                                                        (local.get $0)
                                                        (global.get $_GRAIN_LAMBDA_HEAP_TAG_1021_1)
                                                       )
                                                      )
                                                      (i32.const 31)
                                                     )
                                                    )
                                                    (i32.shr_u
                                                     (select
                                                      (i32.const -2)
                                                      (i32.const 2147483646)
                                                      (i32.eq
                                                       (local.get $0)
                                                       (global.get $_GRAIN_TUPLE_HEAP_TAG_1022_1)
                                                      )
                                                     )
                                                     (i32.const 31)
                                                    )
                                                   )
                                                   (i32.shr_u
                                                    (select
                                                     (i32.const -2)
                                                     (i32.const 2147483646)
                                                     (i32.eq
                                                      (local.get $0)
                                                      (global.get $_GRAIN_UINT64_HEAP_TAG_1027_1)
                                                     )
                                                    )
                                                    (i32.const 31)
                                                   )
                                                  )
                                                  (i32.shr_u
                                                   (select
                                                    (i32.const -2)
                                                    (i32.const 2147483646)
                                                    (i32.eq
                                                     (local.get $0)
                                                     (global.get $_GRAIN_UINT32_HEAP_TAG_1026_1)
                                                    )
                                                   )
                                                   (i32.const 31)
                                                  )
                                                 )
                                                 (i32.shr_u
                                                  (select
                                                   (i32.const -2)
                                                   (i32.const 2147483646)
                                                   (i32.eq
                                                    (local.get $0)
                                                    (global.get $_GRAIN_FLOAT32_HEAP_TAG_1025_1)
                                                   )
                                                  )
                                                  (i32.const 31)
                                                 )
                                                )
                                                (i32.shr_u
                                                 (select
                                                  (i32.const -2)
                                                  (i32.const 2147483646)
                                                  (i32.eq
                                                   (local.get $0)
                                                   (global.get $_GRAIN_INT32_HEAP_TAG_1024_1)
                                                  )
                                                 )
                                                 (i32.const 31)
                                                )
                                               )
                                               (i32.shr_u
                                                (select
                                                 (i32.const -2)
                                                 (i32.const 2147483646)
                                                 (i32.eq
                                                  (local.get $0)
                                                  (global.get $_GRAIN_BOXED_NUM_HEAP_TAG_1020_1)
                                                 )
                                                )
                                                (i32.const 31)
                                               )
                                              )
                                              (i32.shr_u
                                               (select
                                                (i32.const -2)
                                                (i32.const 2147483646)
                                                (i32.eq
                                                 (local.get $0)
                                                 (global.get $_GRAIN_ARRAY_HEAP_TAG_1019_1)
                                                )
                                               )
                                               (i32.const 31)
                                              )
                                             )
                                             (i32.shr_u
                                              (select
                                               (i32.const -2)
                                               (i32.const 2147483646)
                                               (i32.eq
                                                (local.get $0)
                                                (global.get $_GRAIN_RECORD_HEAP_TAG_1018_1)
                                               )
                                              )
                                              (i32.const 31)
                                             )
                                            )
                                            (i32.shr_u
                                             (select
                                              (i32.const -2)
                                              (i32.const 2147483646)
                                              (i32.eq
                                               (local.get $0)
                                               (global.get $_GRAIN_ADT_HEAP_TAG_1017_1)
                                              )
                                             )
                                             (i32.const 31)
                                            )
                                           )
                                           (i32.shr_u
                                            (select
                                             (i32.const -2)
                                             (i32.const 2147483646)
                                             (i32.eq
                                              (local.get $0)
                                              (global.get $_GRAIN_BYTES_HEAP_TAG_1023_1)
                                             )
                                            )
                                            (i32.const 31)
                                           )
                                          )
                                         )
                                         (i32.const 1)
                                        )
                                       )
                                      )
                                     )
                                     (unreachable)
                                    )
                                   )
                                   (i32.store
                                    (local.tee $2
                                     (call $malloc_1268_7
                                      (i32.const 0)
                                      (i32.const 40)
                                     )
                                    )
                                    (i32.const 1)
                                   )
                                   (i32.store offset=4
                                    (local.get $2)
                                    (i32.const 26)
                                   )
                                   (i64.store offset=8
                                    (local.get $2)
                                    (i64.const 7959953386440127804)
                                   )
                                   (i64.store offset=16
                                    (local.get $2)
                                    (i64.const 7022273386019907616)
                                   )
                                   (i64.store offset=24
                                    (local.get $2)
                                    (i64.const 2322280091611308135)
                                   )
                                   (i64.store offset=32
                                    (local.get $2)
                                    (i64.const 30768)
                                   )
                                   (local.set $5
                                    (call $itoa32_2403_13
                                     (call $incRef_1277_7
                                      (i32.const 0)
                                      (i32.const 0)
                                     )
                                     (local.get $0)
                                     (i32.const 16)
                                    )
                                   )
                                   (i32.store
                                    (local.tee $3
                                     (call $malloc_1268_7
                                      (i32.const 0)
                                      (i32.const 24)
                                     )
                                    )
                                    (i32.const 1)
                                   )
                                   (i32.store offset=4
                                    (local.get $3)
                                    (i32.const 12)
                                   )
                                   (i64.store offset=8
                                    (local.get $3)
                                    (i64.const 7310868735955336224)
                                   )
                                   (i64.store offset=16
                                    (local.get $3)
                                    (i64.const 2016419898)
                                   )
                                   (local.set $6
                                    (call $itoa32_2403_13
                                     (call $incRef_1277_7
                                      (i32.const 0)
                                      (i32.const 0)
                                     )
                                     (local.get $1)
                                     (i32.const 16)
                                    )
                                   )
                                   (i32.store
                                    (local.tee $4
                                     (call $malloc_1268_7
                                      (i32.const 0)
                                      (i32.const 16)
                                     )
                                    )
                                    (i32.const 1)
                                   )
                                   (i32.store offset=4
                                    (local.get $4)
                                    (i32.const 1)
                                   )
                                   (i64.store offset=8
                                    (local.get $4)
                                    (i64.const 62)
                                   )
                                   (i32.store
                                    (local.tee $1
                                     (call $malloc_1268_7
                                      (i32.const 0)
                                      (i32.const 20)
                                     )
                                    )
                                    (i32.const 2)
                                   )
                                   (i32.store offset=4
                                    (local.get $1)
                                    (i32.const 1638603609)
                                   )
                                   (i32.store offset=8
                                    (local.get $1)
                                    (i32.const 11)
                                   )
                                   (i32.store offset=12
                                    (local.get $1)
                                    (i32.const 3)
                                   )
                                   (i32.store offset=16
                                    (local.get $1)
                                    (i32.const 0)
                                   )
                                   (i32.store
                                    (local.tee $0
                                     (call $malloc_1268_7
                                      (i32.const 0)
                                      (i32.const 28)
                                     )
                                    )
                                    (i32.const 2)
                                   )
                                   (i32.store offset=4
                                    (local.get $0)
                                    (i32.const 1638603609)
                                   )
                                   (i32.store offset=8
                                    (local.get $0)
                                    (i32.const 11)
                                   )
                                   (i32.store offset=12
                                    (local.get $0)
                                    (i32.const 1)
                                   )
                                   (i32.store offset=16
                                    (local.get $0)
                                    (i32.const 2)
                                   )
                                   (i32.store offset=20
                                    (local.get $0)
                                    (local.get $4)
                                   )
                                   (i32.store offset=24
                                    (local.get $0)
                                    (local.get $1)
                                   )
                                   (i32.store
                                    (local.tee $1
                                     (call $malloc_1268_7
                                      (i32.const 0)
                                      (i32.const 28)
                                     )
                                    )
                                    (i32.const 2)
                                   )
                                   (i32.store offset=4
                                    (local.get $1)
                                    (i32.const 1638603609)
                                   )
                                   (i32.store offset=8
                                    (local.get $1)
                                    (i32.const 11)
                                   )
                                   (i32.store offset=12
                                    (local.get $1)
                                    (i32.const 1)
                                   )
                                   (i32.store offset=16
                                    (local.get $1)
                                    (i32.const 2)
                                   )
                                   (i32.store offset=20
                                    (local.get $1)
                                    (local.get $6)
                                   )
                                   (i32.store offset=24
                                    (local.get $1)
                                    (local.get $0)
                                   )
                                   (i32.store
                                    (local.tee $0
                                     (call $malloc_1268_7
                                      (i32.const 0)
                                      (i32.const 28)
                                     )
                                    )
                                    (i32.const 2)
                                   )
                                   (i32.store offset=4
                                    (local.get $0)
                                    (i32.const 1638603609)
                                   )
                                   (i32.store offset=8
                                    (local.get $0)
                                    (i32.const 11)
                                   )
                                   (i32.store offset=12
                                    (local.get $0)
                                    (i32.const 1)
                                   )
                                   (i32.store offset=16
                                    (local.get $0)
                                    (i32.const 2)
                                   )
                                   (i32.store offset=20
                                    (local.get $0)
                                    (local.get $3)
                                   )
                                   (i32.store offset=24
                                    (local.get $0)
                                    (local.get $1)
                                   )
                                   (i32.store
                                    (local.tee $1
                                     (call $malloc_1268_7
                                      (i32.const 0)
                                      (i32.const 28)
                                     )
                                    )
                                    (i32.const 2)
                                   )
                                   (i32.store offset=4
                                    (local.get $1)
                                    (i32.const 1638603609)
                                   )
                                   (i32.store offset=8
                                    (local.get $1)
                                    (i32.const 11)
                                   )
                                   (i32.store offset=12
                                    (local.get $1)
                                    (i32.const 1)
                                   )
                                   (i32.store offset=16
                                    (local.get $1)
                                    (i32.const 2)
                                   )
                                   (i32.store offset=20
                                    (local.get $1)
                                    (local.get $5)
                                   )
                                   (i32.store offset=24
                                    (local.get $1)
                                    (local.get $0)
                                   )
                                   (i32.store
                                    (local.tee $0
                                     (call $malloc_1268_7
                                      (i32.const 0)
                                      (i32.const 28)
                                     )
                                    )
                                    (i32.const 2)
                                   )
                                   (i32.store offset=4
                                    (local.get $0)
                                    (i32.const 1638603609)
                                   )
                                   (i32.store offset=8
                                    (local.get $0)
                                    (i32.const 11)
                                   )
                                   (i32.store offset=12
                                    (local.get $0)
                                    (i32.const 1)
                                   )
                                   (i32.store offset=16
                                    (local.get $0)
                                    (i32.const 2)
                                   )
                                   (i32.store offset=20
                                    (local.get $0)
                                    (local.get $2)
                                   )
                                   (i32.store offset=24
                                    (local.get $0)
                                    (local.get $1)
                                   )
                                   (drop
                                    (call $decRef_1330_7
                                     (i32.const 0)
                                     (local.get $7)
                                    )
                                   )
                                   (drop
                                    (call $decRef_1330_7
                                     (i32.const 0)
                                     (i32.const 0)
                                    )
                                   )
                                   (return_call $join_4311_18
                                    (call $incRef_1277_7
                                     (i32.const 0)
                                     (i32.const 0)
                                    )
                                    (local.get $0)
                                   )
                                  )
                                 )
                                 (i32.store
                                  (local.tee $0
                                   (call $malloc_1268_7
                                    (i32.const 0)
                                    (i32.const 16)
                                   )
                                  )
                                  (i32.const 1)
                                 )
                                 (i32.store offset=4
                                  (local.get $0)
                                  (i32.const 8)
                                 )
                                 (i64.store offset=8
                                  (local.get $0)
                                  (i64.const 4494984276997139516)
                                 )
                                 (br $switch.17422_outer
                                  (local.get $0)
                                 )
                                )
                               )
                               (if
                                (i32.shr_u
                                 (select
                                  (i32.const -2)
                                  (i32.const 2147483646)
                                  (i32.and
                                   (local.tee $6
                                    (i32.load offset=4
                                     (local.get $1)
                                    )
                                   )
                                   (i32.const -2147483648)
                                  )
                                 )
                                 (i32.const 31)
                                )
                                (block
                                 (drop
                                  (call $decRef_1330_7
                                   (i32.const 0)
                                   (local.get $7)
                                  )
                                 )
                                 (drop
                                  (call $decRef_1330_7
                                   (i32.const 0)
                                   (i32.const 0)
                                  )
                                 )
                                 (return_call $reportCycle_4364_18
                                  (call $incRef_1277_7
                                   (i32.const 0)
                                   (i32.const 0)
                                  )
                                  (local.get $1)
                                  (local.get $4)
                                 )
                                )
                                (block
                                 (i32.store offset=4
                                  (local.get $1)
                                  (i32.or
                                   (local.get $6)
                                   (i32.const -2147483648)
                                  )
                                 )
                                 (i32.store
                                  (local.tee $8
                                   (call $malloc_1268_7
                                    (i32.const 0)
                                    (i32.const 16)
                                   )
                                  )
                                  (i32.const 1)
                                 )
                                 (i32.store offset=4
                                  (local.get $8)
                                  (i32.const 2)
                                 )
                                 (i64.store offset=8
                                  (local.get $8)
                                  (i64.const 8236)
                                 )
                                 (i32.store
                                  (local.tee $5
                                   (call $malloc_1268_7
                                    (i32.const 0)
                                    (i32.const 16)
                                   )
                                  )
                                  (i32.const 1)
                                 )
                                 (i32.store offset=4
                                  (local.get $5)
                                  (i32.const 1)
                                 )
                                 (i64.store offset=8
                                  (local.get $5)
                                  (i64.const 41)
                                 )
                                 (i32.store
                                  (local.tee $10
                                   (call $malloc_1268_7
                                    (i32.const 0)
                                    (i32.const 16)
                                   )
                                  )
                                  (i32.const 1)
                                 )
                                 (i32.store offset=4
                                  (local.get $10)
                                  (i32.const 1)
                                 )
                                 (i64.store offset=8
                                  (local.get $10)
                                  (i64.const 40)
                                 )
                                 (i32.store
                                  (local.tee $3
                                   (call $malloc_1268_7
                                    (i32.const 0)
                                    (i32.const 20)
                                   )
                                  )
                                  (i32.const 2)
                                 )
                                 (i32.store offset=4
                                  (local.get $3)
                                  (i32.const 1638603609)
                                 )
                                 (i32.store offset=8
                                  (local.get $3)
                                  (i32.const 11)
                                 )
                                 (i32.store offset=12
                                  (local.get $3)
                                  (i32.const 3)
                                 )
                                 (i32.store offset=16
                                  (local.get $3)
                                  (i32.const 0)
                                 )
                                 (i32.store
                                  (local.tee $0
                                   (call $malloc_1268_7
                                    (i32.const 0)
                                    (i32.const 28)
                                   )
                                  )
                                  (i32.const 2)
                                 )
                                 (i32.store offset=4
                                  (local.get $0)
                                  (i32.const 1638603609)
                                 )
                                 (i32.store offset=8
                                  (local.get $0)
                                  (i32.const 11)
                                 )
                                 (i32.store offset=12
                                  (local.get $0)
                                  (i32.const 1)
                                 )
                                 (i32.store offset=16
                                  (local.get $0)
                                  (i32.const 2)
                                 )
                                 (i32.store offset=20
                                  (local.get $0)
                                  (local.get $5)
                                 )
                                 (i32.store offset=24
                                  (local.get $0)
                                  (local.get $3)
                                 )
                                 (local.set $3
                                  (i32.sub
                                   (i32.shl
                                    (local.get $6)
                                    (i32.const 2)
                                   )
                                   (i32.const 4)
                                  )
                                 )
                                 (drop
                                  (loop $MFor_loop.17854 (result i32)
                                   (if (result i32)
                                    (i32.shr_u
                                     (select
                                      (i32.const -2)
                                      (i32.const 2147483646)
                                      (i32.ge_s
                                       (local.get $3)
                                       (i32.const 0)
                                      )
                                     )
                                     (i32.const 31)
                                    )
                                    (block
                                     (local.set $5
                                      (i32.load offset=8
                                       (i32.add
                                        (local.get $1)
                                        (local.get $3)
                                       )
                                      )
                                     )
                                     (local.set $11
                                      (call $toStringHelp_4386_18
                                       (call $incRef_1277_7
                                        (i32.const 0)
                                        (i32.const 0)
                                       )
                                       (local.get $5)
                                       (local.get $2)
                                       (i32.const 2147483646)
                                       (local.get $4)
                                      )
                                     )
                                     (local.set $13
                                      (call $incRef_1277_7
                                       (i32.const 0)
                                       (local.get $0)
                                      )
                                     )
                                     (i32.store
                                      (local.tee $5
                                       (call $malloc_1268_7
                                        (i32.const 0)
                                        (i32.const 28)
                                       )
                                      )
                                      (i32.const 2)
                                     )
                                     (i32.store offset=4
                                      (local.get $5)
                                      (i32.const 1638603609)
                                     )
                                     (i32.store offset=8
                                      (local.get $5)
                                      (i32.const 11)
                                     )
                                     (i32.store offset=12
                                      (local.get $5)
                                      (i32.const 1)
                                     )
                                     (i32.store offset=16
                                      (local.get $5)
                                      (i32.const 2)
                                     )
                                     (i32.store offset=20
                                      (local.get $5)
                                      (local.get $11)
                                     )
                                     (i32.store offset=24
                                      (local.get $5)
                                      (local.get $13)
                                     )
                                     (local.set $0
                                      (tuple.extract 0
                                       (tuple.make
                                        (call $incRef_1277_7
                                         (i32.const 0)
                                         (local.get $5)
                                        )
                                        (call $decRef_1330_7
                                         (i32.const 0)
                                         (local.get $0)
                                        )
                                       )
                                      )
                                     )
                                     (drop
                                      (if (result i32)
                                       (i32.shr_u
                                        (select
                                         (i32.const -2)
                                         (i32.const 2147483646)
                                         (i32.gt_s
                                          (local.get $3)
                                          (i32.const 0)
                                         )
                                        )
                                        (i32.const 31)
                                       )
                                       (block (result i32)
                                        (local.set $11
                                         (call $incRef_1277_7
                                          (i32.const 0)
                                          (local.get $0)
                                         )
                                        )
                                        (i32.store
                                         (local.tee $5
                                          (call $malloc_1268_7
                                           (i32.const 0)
                                           (i32.const 28)
                                          )
                                         )
                                         (i32.const 2)
                                        )
                                        (i32.store offset=4
                                         (local.get $5)
                                         (i32.const 1638603609)
                                        )
                                        (i32.store offset=8
                                         (local.get $5)
                                         (i32.const 11)
                                        )
                                        (i32.store offset=12
                                         (local.get $5)
                                         (i32.const 1)
                                        )
                                        (i32.store offset=16
                                         (local.get $5)
                                         (i32.const 2)
                                        )
                                        (i32.store offset=20
                                         (local.get $5)
                                         (call $incRef_1277_7
                                          (i32.const 0)
                                          (local.get $8)
                                         )
                                        )
                                        (i32.store offset=24
                                         (local.get $5)
                                         (local.get $11)
                                        )
                                        (local.set $0
                                         (tuple.extract 0
                                          (tuple.make
                                           (call $incRef_1277_7
                                            (i32.const 0)
                                            (local.get $5)
                                           )
                                           (call $decRef_1330_7
                                            (i32.const 0)
                                            (local.get $0)
                                           )
                                          )
                                         )
                                        )
                                        (i32.const 0)
                                       )
                                       (i32.const 1879048190)
                                      )
                                     )
                                     (local.set $3
                                      (i32.sub
                                       (local.get $3)
                                       (i32.const 4)
                                      )
                                     )
                                     (br $MFor_loop.17854)
                                    )
                                    (i32.const 1879048190)
                                   )
                                  )
                                 )
                                 (drop
                                  (call $decRef_1330_7
                                   (i32.const 0)
                                   (local.get $8)
                                  )
                                 )
                                 (i32.store offset=4
                                  (local.get $1)
                                  (local.get $6)
                                 )
                                 (local.set $5
                                  (call $incRef_1277_7
                                   (i32.const 0)
                                   (local.get $0)
                                  )
                                 )
                                 (drop
                                  (call $incRef_1277_7
                                   (call $incRef_1277_7
                                    (i32.const 0)
                                    (i32.const 0)
                                   )
                                   (local.get $5)
                                  )
                                 )
                                 (local.set $3
                                  (call $incRef_1277_7
                                   (i32.const 0)
                                   (local.get $0)
                                  )
                                 )
                                 (i32.store
                                  (local.tee $2
                                   (call $malloc_1268_7
                                    (i32.const 0)
                                    (i32.const 28)
                                   )
                                  )
                                  (i32.const 2)
                                 )
                                 (i32.store offset=4
                                  (local.get $2)
                                  (i32.const 1638603609)
                                 )
                                 (i32.store offset=8
                                  (local.get $2)
                                  (i32.const 11)
                                 )
                                 (i32.store offset=12
                                  (local.get $2)
                                  (i32.const 1)
                                 )
                                 (i32.store offset=16
                                  (local.get $2)
                                  (i32.const 2)
                                 )
                                 (i32.store offset=20
                                  (local.get $2)
                                  (local.get $10)
                                 )
                                 (i32.store offset=24
                                  (local.get $2)
                                  (local.get $3)
                                 )
                                 (local.set $0
                                  (tuple.extract 0
                                   (tuple.make
                                    (call $incRef_1277_7
                                     (i32.const 0)
                                     (local.get $2)
                                    )
                                    (call $decRef_1330_7
                                     (i32.const 0)
                                     (local.get $0)
                                    )
                                   )
                                  )
                                 )
                                 (drop
                                  (if (result i32)
                                   (i32.shr_u
                                    (select
                                     (i32.const -2)
                                     (i32.const 2147483646)
                                     (i32.le_s
                                      (local.get $6)
                                      (i32.const 1)
                                     )
                                    )
                                    (i32.const 31)
                                   )
                                   (block (result i32)
                                    (i32.store
                                     (local.tee $3
                                      (call $malloc_1268_7
                                       (i32.const 0)
                                       (i32.const 16)
                                      )
                                     )
                                     (i32.const 1)
                                    )
                                    (i32.store offset=4
                                     (local.get $3)
                                     (i32.const 3)
                                    )
                                    (i64.store offset=8
                                     (local.get $3)
                                     (i64.const 7892834)
                                    )
                                    (local.set $6
                                     (call $incRef_1277_7
                                      (i32.const 0)
                                      (local.get $0)
                                     )
                                    )
                                    (i32.store
                                     (local.tee $2
                                      (call $malloc_1268_7
                                       (i32.const 0)
                                       (i32.const 28)
                                      )
                                     )
                                     (i32.const 2)
                                    )
                                    (i32.store offset=4
                                     (local.get $2)
                                     (i32.const 1638603609)
                                    )
                                    (i32.store offset=8
                                     (local.get $2)
                                     (i32.const 11)
                                    )
                                    (i32.store offset=12
                                     (local.get $2)
                                     (i32.const 1)
                                    )
                                    (i32.store offset=16
                                     (local.get $2)
                                     (i32.const 2)
                                    )
                                    (i32.store offset=20
                                     (local.get $2)
                                     (local.get $3)
                                    )
                                    (i32.store offset=24
                                     (local.get $2)
                                     (local.get $6)
                                    )
                                    (local.set $0
                                     (tuple.extract 0
                                      (tuple.make
                                       (call $incRef_1277_7
                                        (i32.const 0)
                                        (local.get $2)
                                       )
                                       (call $decRef_1330_7
                                        (i32.const 0)
                                        (local.get $0)
                                       )
                                      )
                                     )
                                    )
                                    (i32.const 0)
                                   )
                                   (i32.const 1879048190)
                                  )
                                 )
                                 (local.set $3
                                  (call $cyclePrefix_4381_18
                                   (call $incRef_1277_7
                                    (i32.const 0)
                                    (i32.const 0)
                                   )
                                   (local.get $1)
                                   (local.get $4)
                                  )
                                 )
                                 (i32.store
                                  (local.tee $2
                                   (call $malloc_1268_7
                                    (i32.const 0)
                                    (i32.const 28)
                                   )
                                  )
                                  (i32.const 2)
                                 )
                                 (i32.store offset=4
                                  (local.get $2)
                                  (i32.const 1638603609)
                                 )
                                 (i32.store offset=8
                                  (local.get $2)
                                  (i32.const 11)
                                 )
                                 (i32.store offset=12
                                  (local.get $2)
                                  (i32.const 1)
                                 )
                                 (i32.store offset=16
                                  (local.get $2)
                                  (i32.const 2)
                                 )
                                 (i32.store offset=20
                                  (local.get $2)
                                  (local.get $3)
                                 )
                                 (i32.store offset=24
                                  (local.get $2)
                                  (local.get $0)
                                 )
                                 (drop
                                  (call $decRef_1330_7
                                   (i32.const 0)
                                   (local.get $7)
                                  )
                                 )
                                 (drop
                                  (call $decRef_1330_7
                                   (i32.const 0)
                                   (local.get $5)
                                  )
                                 )
                                 (return_call $join_4311_18
                                  (call $incRef_1277_7
                                   (i32.const 0)
                                   (i32.const 0)
                                  )
                                  (local.get $2)
                                 )
                                )
                               )
                              )
                             )
                             (local.set $9
                              (i64.load offset=8
                               (local.get $1)
                              )
                             )
                             (drop
                              (call $decRef_1330_7
                               (i32.const 0)
                               (local.get $7)
                              )
                             )
                             (local.set $2
                              (call $incRef_1277_7
                               (i32.const 0)
                               (i32.const 0)
                              )
                             )
                             (return
                              (tuple.extract 0
                               (tuple.make
                                (if (result i32)
                                 (i32.shr_u
                                  (select
                                   (i32.const -2)
                                   (i32.const 2147483646)
                                   (i64.eqz
                                    (local.get $9)
                                   )
                                  )
                                  (i32.const 31)
                                 )
                                 (block (result i32)
                                  (i32.store
                                   (local.tee $0
                                    (call $malloc_1268_7
                                     (i32.const 0)
                                     (i32.const 16)
                                    )
                                   )
                                   (i32.const 1)
                                  )
                                  (i32.store offset=4
                                   (local.get $0)
                                   (i32.const 1)
                                  )
                                  (i64.store offset=8
                                   (local.get $0)
                                   (i64.const 48)
                                  )
                                  (local.get $0)
                                 )
                                 (if (result i32)
                                  (i32.shr_u
                                   (select
                                    (i32.const -2)
                                    (i32.const 2147483646)
                                    (i64.le_u
                                     (local.get $9)
                                     (i64.const 4294967295)
                                    )
                                   )
                                   (i32.const 31)
                                  )
                                  (block (result i32)
                                   (i32.store
                                    (local.tee $0
                                     (call $malloc_1268_7
                                      (i32.const 0)
                                      (i32.add
                                       (local.tee $1
                                        (call $decimalCount32_2302_13
                                         (call $incRef_1277_7
                                          (i32.const 0)
                                          (i32.const 0)
                                         )
                                         (local.tee $3
                                          (i32.wrap_i64
                                           (local.get $9)
                                          )
                                         )
                                        )
                                       )
                                       (i32.const 8)
                                      )
                                     )
                                    )
                                    (i32.const 1)
                                   )
                                   (i32.store offset=4
                                    (local.get $0)
                                    (local.get $1)
                                   )
                                   (drop
                                    (call $utoa32_dec_core_2353_13
                                     (call $incRef_1277_7
                                      (i32.const 0)
                                      (i32.const 0)
                                     )
                                     (i32.add
                                      (local.get $0)
                                      (i32.const 8)
                                     )
                                     (local.get $3)
                                     (local.get $1)
                                    )
                                   )
                                   (local.get $0)
                                  )
                                  (block (result i32)
                                   (i32.store
                                    (local.tee $0
                                     (call $malloc_1268_7
                                      (i32.const 0)
                                      (i32.add
                                       (local.tee $1
                                        (call $decimalCount64High_2304_13
                                         (call $incRef_1277_7
                                          (i32.const 0)
                                          (i32.const 0)
                                         )
                                         (local.get $9)
                                        )
                                       )
                                       (i32.const 8)
                                      )
                                     )
                                    )
                                    (i32.const 1)
                                   )
                                   (i32.store offset=4
                                    (local.get $0)
                                    (local.get $1)
                                   )
                                   (drop
                                    (call $utoa64_dec_core_2361_13
                                     (call $incRef_1277_7
                                      (i32.const 0)
                                      (i32.const 0)
                                     )
                                     (i32.add
                                      (local.get $0)
                                      (i32.const 8)
                                     )
                                     (local.get $9)
                                     (local.get $1)
                                    )
                                   )
                                   (local.get $0)
                                  )
                                 )
                                )
                                (block (result i32)
                                 (drop
                                  (call $decRef_1330_7
                                   (i32.const 0)
                                   (local.get $2)
                                  )
                                 )
                                 (i32.const 1879048190)
                                )
                               )
                              )
                             )
                            )
                           )
                           (local.set $0
                            (i32.load offset=4
                             (local.get $1)
                            )
                           )
                           (drop
                            (call $decRef_1330_7
                             (i32.const 0)
                             (local.get $7)
                            )
                           )
                           (return_call $utoa32_2393_13
                            (call $incRef_1277_7
                             (i32.const 0)
                             (i32.const 0)
                            )
                            (local.get $0)
                           )
                          )
                         )
                         (local.set $12
                          (f64.promote_f32
                           (f32.load offset=4
                            (local.get $1)
                           )
                          )
                         )
                         (drop
                          (call $decRef_1330_7
                           (i32.const 0)
                           (local.get $7)
                          )
                         )
                         (return_call $dtoa_2576_13
                          (call $incRef_1277_7
                           (i32.const 0)
                           (i32.const 0)
                          )
                          (local.get $12)
                         )
                        )
                       )
                       (local.set $0
                        (i32.load offset=4
                         (local.get $1)
                        )
                       )
                       (drop
                        (call $decRef_1330_7
                         (i32.const 0)
                         (local.get $7)
                        )
                       )
                       (return_call $itoa32_2403_13
                        (call $incRef_1277_7
                         (i32.const 0)
                         (i32.const 0)
                        )
                        (local.get $0)
                        (i32.const 10)
                       )
                      )
                     )
                     (br $switch.17422_outer
                      (block $switch.17757_outer (result i32)
                       (drop
                        (block $switch.17757_branch_1 (result i32)
                         (drop
                          (block $switch.17757_branch_2 (result i32)
                           (drop
                            (block $switch.17757_branch_3 (result i32)
                             (drop
                              (block $switch.17757_branch_4 (result i32)
                               (drop
                                (block $switch.17757_branch_5 (result i32)
                                 (drop
                                  (block $switch.17757_default (result i32)
                                   (br_table $switch.17757_branch_1 $switch.17757_branch_2 $switch.17757_branch_3 $switch.17757_branch_4 $switch.17757_branch_5 $switch.17757_default
                                    (i32.const 0)
                                    (i32.shr_s
                                     (if (result i32)
                                      (i32.shr_u
                                       (select
                                        (i32.const -2)
                                        (i32.const 2147483646)
                                        (i32.eq
                                         (local.tee $0
                                          (i32.load offset=4
                                           (local.get $1)
                                          )
                                         )
                                         (global.get $_GRAIN_INT64_BOXED_NUM_TAG_1029_1)
                                        )
                                       )
                                       (i32.const 31)
                                      )
                                      (i32.const 1)
                                      (select
                                       (i32.const 3)
                                       (select
                                        (i32.const 5)
                                        (select
                                         (i32.const 7)
                                         (i32.const 9)
                                         (i32.shr_u
                                          (select
                                           (i32.const -2)
                                           (i32.const 2147483646)
                                           (i32.eq
                                            (local.get $0)
                                            (global.get $_GRAIN_FLOAT64_BOXED_NUM_TAG_1028_1)
                                           )
                                          )
                                          (i32.const 31)
                                         )
                                        )
                                        (i32.shr_u
                                         (select
                                          (i32.const -2)
                                          (i32.const 2147483646)
                                          (i32.eq
                                           (local.get $0)
                                           (global.get $_GRAIN_RATIONAL_BOXED_NUM_TAG_1030_1)
                                          )
                                         )
                                         (i32.const 31)
                                        )
                                       )
                                       (i32.shr_u
                                        (select
                                         (i32.const -2)
                                         (i32.const 2147483646)
                                         (i32.eq
                                          (local.get $0)
                                          (global.get $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1)
                                         )
                                        )
                                        (i32.const 31)
                                       )
                                      )
                                     )
                                     (i32.const 1)
                                    )
                                   )
                                  )
                                 )
                                 (unreachable)
                                )
                               )
                               (i32.store
                                (local.tee $0
                                 (call $malloc_1268_7
                                  (i32.const 0)
                                  (i32.const 32)
                                 )
                                )
                                (i32.const 1)
                               )
                               (i32.store offset=4
                                (local.get $0)
                                (i32.const 22)
                               )
                               (i64.store offset=8
                                (local.get $0)
                                (i64.const 7959953386440127804)
                               )
                               (i64.store offset=16
                                (local.get $0)
                                (i64.const 7935452930401853984)
                               )
                               (i64.store offset=24
                                (local.get $0)
                                (i64.const 68661048143221)
                               )
                               (br $switch.17757_outer
                                (local.get $0)
                               )
                              )
                             )
                             (local.set $12
                              (f64.load offset=8
                               (local.get $1)
                              )
                             )
                             (drop
                              (call $decRef_1330_7
                               (i32.const 0)
                               (local.get $7)
                              )
                             )
                             (return_call $dtoa_2576_13
                              (call $incRef_1277_7
                               (i32.const 0)
                               (i32.const 0)
                              )
                              (local.get $12)
                             )
                            )
                           )
                           (local.set $0
                            (i32.load offset=8
                             (local.get $1)
                            )
                           )
                           (local.set $4
                            (call $bigIntToString10_1862_12
                             (call $incRef_1277_7
                              (i32.const 0)
                              (i32.const 0)
                             )
                             (local.get $0)
                            )
                           )
                           (local.set $0
                            (i32.load offset=12
                             (local.get $1)
                            )
                           )
                           (local.set $5
                            (call $bigIntToString10_1862_12
                             (call $incRef_1277_7
                              (i32.const 0)
                              (i32.const 0)
                             )
                             (local.get $0)
                            )
                           )
                           (i32.store
                            (local.tee $3
                             (call $malloc_1268_7
                              (i32.const 0)
                              (i32.const 16)
                             )
                            )
                            (i32.const 1)
                           )
                           (i32.store offset=4
                            (local.get $3)
                            (i32.const 1)
                           )
                           (i64.store offset=8
                            (local.get $3)
                            (i64.const 47)
                           )
                           (i32.store
                            (local.tee $2
                             (call $malloc_1268_7
                              (i32.const 0)
                              (i32.const 20)
                             )
                            )
                            (i32.const 2)
                           )
                           (i32.store offset=4
                            (local.get $2)
                            (i32.const 1638603609)
                           )
                           (i32.store offset=8
                            (local.get $2)
                            (i32.const 11)
                           )
                           (i32.store offset=12
                            (local.get $2)
                            (i32.const 3)
                           )
                           (i32.store offset=16
                            (local.get $2)
                            (i32.const 0)
                           )
                           (i32.store
                            (local.tee $0
                             (call $malloc_1268_7
                              (i32.const 0)
                              (i32.const 28)
                             )
                            )
                            (i32.const 2)
                           )
                           (i32.store offset=4
                            (local.get $0)
                            (i32.const 1638603609)
                           )
                           (i32.store offset=8
                            (local.get $0)
                            (i32.const 11)
                           )
                           (i32.store offset=12
                            (local.get $0)
                            (i32.const 1)
                           )
                           (i32.store offset=16
                            (local.get $0)
                            (i32.const 2)
                           )
                           (i32.store offset=20
                            (local.get $0)
                            (local.get $5)
                           )
                           (i32.store offset=24
                            (local.get $0)
                            (local.get $2)
                           )
                           (i32.store
                            (local.tee $2
                             (call $malloc_1268_7
                              (i32.const 0)
                              (i32.const 28)
                             )
                            )
                            (i32.const 2)
                           )
                           (i32.store offset=4
                            (local.get $2)
                            (i32.const 1638603609)
                           )
                           (i32.store offset=8
                            (local.get $2)
                            (i32.const 11)
                           )
                           (i32.store offset=12
                            (local.get $2)
                            (i32.const 1)
                           )
                           (i32.store offset=16
                            (local.get $2)
                            (i32.const 2)
                           )
                           (i32.store offset=20
                            (local.get $2)
                            (local.get $3)
                           )
                           (i32.store offset=24
                            (local.get $2)
                            (local.get $0)
                           )
                           (i32.store
                            (local.tee $0
                             (call $malloc_1268_7
                              (i32.const 0)
                              (i32.const 28)
                             )
                            )
                            (i32.const 2)
                           )
                           (i32.store offset=4
                            (local.get $0)
                            (i32.const 1638603609)
                           )
                           (i32.store offset=8
                            (local.get $0)
                            (i32.const 11)
                           )
                           (i32.store offset=12
                            (local.get $0)
                            (i32.const 1)
                           )
                           (i32.store offset=16
                            (local.get $0)
                            (i32.const 2)
                           )
                           (i32.store offset=20
                            (local.get $0)
                            (local.get $4)
                           )
                           (i32.store offset=24
                            (local.get $0)
                            (local.get $2)
                           )
                           (drop
                            (call $decRef_1330_7
                             (i32.const 0)
                             (local.get $7)
                            )
                           )
                           (return_call $join_4311_18
                            (call $incRef_1277_7
                             (i32.const 0)
                             (i32.const 0)
                            )
                            (local.get $0)
                           )
                          )
                         )
                         (drop
                          (call $decRef_1330_7
                           (i32.const 0)
                           (local.get $7)
                          )
                         )
                         (return_call $bigIntToString10_1862_12
                          (call $incRef_1277_7
                           (i32.const 0)
                           (i32.const 0)
                          )
                          (local.get $1)
                         )
                        )
                       )
                       (local.set $9
                        (i64.load offset=8
                         (local.get $1)
                        )
                       )
                       (drop
                        (call $decRef_1330_7
                         (i32.const 0)
                         (local.get $7)
                        )
                       )
                       (local.set $3
                        (call $incRef_1277_7
                         (i32.const 0)
                         (i32.const 0)
                        )
                       )
                       (drop
                        (if (result i32)
                         (i32.shr_u
                          (select
                           (i32.const -2)
                           (i32.const 2147483646)
                           (local.tee $0
                            (i32.wrap_i64
                             (i64.shr_u
                              (local.get $9)
                              (i64.const 63)
                             )
                            )
                           )
                          )
                          (i32.const 31)
                         )
                         (block (result i32)
                          (local.set $9
                           (i64.sub
                            (i64.const 0)
                            (local.get $9)
                           )
                          )
                          (i32.const 0)
                         )
                         (i32.const 1879048190)
                        )
                       )
                       (local.set $1
                        (if (result i32)
                         (i32.shr_u
                          (select
                           (i32.const -2)
                           (i32.const 2147483646)
                           (i64.eqz
                            (local.get $9)
                           )
                          )
                          (i32.const 31)
                         )
                         (block (result i32)
                          (i32.store
                           (local.tee $1
                            (call $malloc_1268_7
                             (i32.const 0)
                             (i32.const 16)
                            )
                           )
                           (i32.const 1)
                          )
                          (i32.store offset=4
                           (local.get $1)
                           (i32.const 1)
                          )
                          (i64.store offset=8
                           (local.get $1)
                           (i64.const 48)
                          )
                          (local.get $1)
                         )
                         (if (result i32)
                          (i32.shr_u
                           (select
                            (i32.const -2)
                            (i32.const 2147483646)
                            (i64.le_u
                             (local.get $9)
                             (i64.const 4294967295)
                            )
                           )
                           (i32.const 31)
                          )
                          (block (result i32)
                           (i32.store
                            (local.tee $1
                             (call $malloc_1268_7
                              (i32.const 0)
                              (i32.add
                               (local.tee $2
                                (i32.add
                                 (call $decimalCount32_2302_13
                                  (call $incRef_1277_7
                                   (i32.const 0)
                                   (i32.const 0)
                                  )
                                  (local.tee $4
                                   (i32.wrap_i64
                                    (local.get $9)
                                   )
                                  )
                                 )
                                 (local.get $0)
                                )
                               )
                               (i32.const 8)
                              )
                             )
                            )
                            (i32.const 1)
                           )
                           (i32.store offset=4
                            (local.get $1)
                            (local.get $2)
                           )
                           (drop
                            (call $utoa32_dec_core_2353_13
                             (call $incRef_1277_7
                              (i32.const 0)
                              (i32.const 0)
                             )
                             (i32.add
                              (local.get $1)
                              (i32.const 8)
                             )
                             (local.get $4)
                             (local.get $2)
                            )
                           )
                           (local.get $1)
                          )
                          (block (result i32)
                           (i32.store
                            (local.tee $1
                             (call $malloc_1268_7
                              (i32.const 0)
                              (i32.add
                               (local.tee $2
                                (i32.add
                                 (call $decimalCount64High_2304_13
                                  (call $incRef_1277_7
                                   (i32.const 0)
                                   (i32.const 0)
                                  )
                                  (local.get $9)
                                 )
                                 (local.get $0)
                                )
                               )
                               (i32.const 8)
                              )
                             )
                            )
                            (i32.const 1)
                           )
                           (i32.store offset=4
                            (local.get $1)
                            (local.get $2)
                           )
                           (drop
                            (call $utoa64_dec_core_2361_13
                             (call $incRef_1277_7
                              (i32.const 0)
                              (i32.const 0)
                             )
                             (i32.add
                              (local.get $1)
                              (i32.const 8)
                             )
                             (local.get $9)
                             (local.get $2)
                            )
                           )
                           (local.get $1)
                          )
                         )
                        )
                       )
                       (drop
                        (if (result i32)
                         (i32.shr_u
                          (select
                           (i32.const -2)
                           (i32.const 2147483646)
                           (local.get $0)
                          )
                          (i32.const 31)
                         )
                         (block (result i32)
                          (i32.store8 offset=8
                           (local.get $1)
                           (i32.const 45)
                          )
                          (i32.const 0)
                         )
                         (i32.const 1879048190)
                        )
                       )
                       (drop
                        (call $decRef_1330_7
                         (i32.const 0)
                         (local.get $3)
                        )
                       )
                       (return
                        (tuple.extract 0
                         (tuple.make
                          (local.get $1)
                          (i32.const 1879048190)
                         )
                        )
                       )
                      )
                     )
                    )
                   )
                   (if
                    (i32.shr_u
                     (select
                      (i32.const -2)
                      (i32.const 2147483646)
                      (i32.and
                       (local.tee $8
                        (i32.load offset=4
                         (local.get $1)
                        )
                       )
                       (i32.const -2147483648)
                      )
                     )
                     (i32.const 31)
                    )
                    (block
                     (drop
                      (call $decRef_1330_7
                       (i32.const 0)
                       (local.get $7)
                      )
                     )
                     (return_call $reportCycle_4364_18
                      (call $incRef_1277_7
                       (i32.const 0)
                       (i32.const 0)
                      )
                      (local.get $1)
                      (local.get $4)
                     )
                    )
                    (block
                     (i32.store offset=4
                      (local.get $1)
                      (i32.or
                       (local.get $8)
                       (i32.const -2147483648)
                      )
                     )
                     (i32.store
                      (local.tee $5
                       (call $malloc_1268_7
                        (i32.const 0)
                        (i32.const 16)
                       )
                      )
                      (i32.const 1)
                     )
                     (i32.store offset=4
                      (local.get $5)
                      (i32.const 1)
                     )
                     (i64.store offset=8
                      (local.get $5)
                      (i64.const 93)
                     )
                     (i32.store
                      (local.tee $3
                       (call $malloc_1268_7
                        (i32.const 0)
                        (i32.const 20)
                       )
                      )
                      (i32.const 2)
                     )
                     (i32.store offset=4
                      (local.get $3)
                      (i32.const 1638603609)
                     )
                     (i32.store offset=8
                      (local.get $3)
                      (i32.const 11)
                     )
                     (i32.store offset=12
                      (local.get $3)
                      (i32.const 3)
                     )
                     (i32.store offset=16
                      (local.get $3)
                      (i32.const 0)
                     )
                     (i32.store
                      (local.tee $0
                       (call $malloc_1268_7
                        (i32.const 0)
                        (i32.const 28)
                       )
                      )
                      (i32.const 2)
                     )
                     (i32.store offset=4
                      (local.get $0)
                      (i32.const 1638603609)
                     )
                     (i32.store offset=8
                      (local.get $0)
                      (i32.const 11)
                     )
                     (i32.store offset=12
                      (local.get $0)
                      (i32.const 1)
                     )
                     (i32.store offset=16
                      (local.get $0)
                      (i32.const 2)
                     )
                     (i32.store offset=20
                      (local.get $0)
                      (local.get $5)
                     )
                     (i32.store offset=24
                      (local.get $0)
                      (local.get $3)
                     )
                     (i32.store
                      (local.tee $6
                       (call $malloc_1268_7
                        (i32.const 0)
                        (i32.const 16)
                       )
                      )
                      (i32.const 1)
                     )
                     (i32.store offset=4
                      (local.get $6)
                      (i32.const 2)
                     )
                     (i64.store offset=8
                      (local.get $6)
                      (i64.const 8236)
                     )
                     (local.set $3
                      (i32.sub
                       (i32.shl
                        (local.get $8)
                        (i32.const 2)
                       )
                       (i32.const 4)
                      )
                     )
                     (drop
                      (loop $MFor_loop.17653 (result i32)
                       (if (result i32)
                        (i32.shr_u
                         (select
                          (i32.const -2)
                          (i32.const 2147483646)
                          (i32.ge_s
                           (local.get $3)
                           (i32.const 0)
                          )
                         )
                         (i32.const 31)
                        )
                        (block
                         (local.set $5
                          (i32.load offset=8
                           (i32.add
                            (local.get $1)
                            (local.get $3)
                           )
                          )
                         )
                         (local.set $10
                          (call $toStringHelp_4386_18
                           (call $incRef_1277_7
                            (i32.const 0)
                            (i32.const 0)
                           )
                           (local.get $5)
                           (local.get $2)
                           (i32.const 2147483646)
                           (local.get $4)
                          )
                         )
                         (local.set $11
                          (call $incRef_1277_7
                           (i32.const 0)
                           (local.get $0)
                          )
                         )
                         (i32.store
                          (local.tee $5
                           (call $malloc_1268_7
                            (i32.const 0)
                            (i32.const 28)
                           )
                          )
                          (i32.const 2)
                         )
                         (i32.store offset=4
                          (local.get $5)
                          (i32.const 1638603609)
                         )
                         (i32.store offset=8
                          (local.get $5)
                          (i32.const 11)
                         )
                         (i32.store offset=12
                          (local.get $5)
                          (i32.const 1)
                         )
                         (i32.store offset=16
                          (local.get $5)
                          (i32.const 2)
                         )
                         (i32.store offset=20
                          (local.get $5)
                          (local.get $10)
                         )
                         (i32.store offset=24
                          (local.get $5)
                          (local.get $11)
                         )
                         (local.set $0
                          (tuple.extract 0
                           (tuple.make
                            (call $incRef_1277_7
                             (i32.const 0)
                             (local.get $5)
                            )
                            (call $decRef_1330_7
                             (i32.const 0)
                             (local.get $0)
                            )
                           )
                          )
                         )
                         (drop
                          (if (result i32)
                           (i32.shr_u
                            (select
                             (i32.const -2)
                             (i32.const 2147483646)
                             (i32.gt_s
                              (local.get $3)
                              (i32.const 0)
                             )
                            )
                            (i32.const 31)
                           )
                           (block (result i32)
                            (local.set $10
                             (call $incRef_1277_7
                              (i32.const 0)
                              (local.get $0)
                             )
                            )
                            (i32.store
                             (local.tee $5
                              (call $malloc_1268_7
                               (i32.const 0)
                               (i32.const 28)
                              )
                             )
                             (i32.const 2)
                            )
                            (i32.store offset=4
                             (local.get $5)
                             (i32.const 1638603609)
                            )
                            (i32.store offset=8
                             (local.get $5)
                             (i32.const 11)
                            )
                            (i32.store offset=12
                             (local.get $5)
                             (i32.const 1)
                            )
                            (i32.store offset=16
                             (local.get $5)
                             (i32.const 2)
                            )
                            (i32.store offset=20
                             (local.get $5)
                             (call $incRef_1277_7
                              (i32.const 0)
                              (local.get $6)
                             )
                            )
                            (i32.store offset=24
                             (local.get $5)
                             (local.get $10)
                            )
                            (local.set $0
                             (tuple.extract 0
                              (tuple.make
                               (call $incRef_1277_7
                                (i32.const 0)
                                (local.get $5)
                               )
                               (call $decRef_1330_7
                                (i32.const 0)
                                (local.get $0)
                               )
                              )
                             )
                            )
                            (i32.const 0)
                           )
                           (i32.const 1879048190)
                          )
                         )
                         (local.set $3
                          (i32.sub
                           (local.get $3)
                           (i32.const 4)
                          )
                         )
                         (br $MFor_loop.17653)
                        )
                        (i32.const 1879048190)
                       )
                      )
                     )
                     (drop
                      (call $decRef_1330_7
                       (i32.const 0)
                       (local.get $6)
                      )
                     )
                     (i32.store offset=4
                      (local.get $1)
                      (local.get $8)
                     )
                     (i32.store
                      (local.tee $5
                       (call $malloc_1268_7
                        (i32.const 0)
                        (i32.const 16)
                       )
                      )
                      (i32.const 1)
                     )
                     (i32.store offset=4
                      (local.get $5)
                      (i32.const 3)
                     )
                     (i64.store offset=8
                      (local.get $5)
                      (i64.const 2113115)
                     )
                     (local.set $6
                      (call $incRef_1277_7
                       (i32.const 0)
                       (local.get $0)
                      )
                     )
                     (i32.store
                      (local.tee $3
                       (call $malloc_1268_7
                        (i32.const 0)
                        (i32.const 28)
                       )
                      )
                      (i32.const 2)
                     )
                     (i32.store offset=4
                      (local.get $3)
                      (i32.const 1638603609)
                     )
                     (i32.store offset=8
                      (local.get $3)
                      (i32.const 11)
                     )
                     (i32.store offset=12
                      (local.get $3)
                      (i32.const 1)
                     )
                     (i32.store offset=16
                      (local.get $3)
                      (i32.const 2)
                     )
                     (i32.store offset=20
                      (local.get $3)
                      (local.get $5)
                     )
                     (i32.store offset=24
                      (local.get $3)
                      (local.get $6)
                     )
                     (local.set $3
                      (tuple.extract 0
                       (tuple.make
                        (call $incRef_1277_7
                         (i32.const 0)
                         (local.get $3)
                        )
                        (call $decRef_1330_7
                         (i32.const 0)
                         (local.get $0)
                        )
                       )
                      )
                     )
                     (local.set $5
                      (call $cyclePrefix_4381_18
                       (call $incRef_1277_7
                        (i32.const 0)
                        (i32.const 0)
                       )
                       (local.get $1)
                       (local.get $4)
                      )
                     )
                     (i32.store
                      (local.tee $0
                       (call $malloc_1268_7
                        (i32.const 0)
                        (i32.const 28)
                       )
                      )
                      (i32.const 2)
                     )
                     (i32.store offset=4
                      (local.get $0)
                      (i32.const 1638603609)
                     )
                     (i32.store offset=8
                      (local.get $0)
                      (i32.const 11)
                     )
                     (i32.store offset=12
                      (local.get $0)
                      (i32.const 1)
                     )
                     (i32.store offset=16
                      (local.get $0)
                      (i32.const 2)
                     )
                     (i32.store offset=20
                      (local.get $0)
                      (local.get $5)
                     )
                     (i32.store offset=24
                      (local.get $0)
                      (local.get $3)
                     )
                     (drop
                      (call $decRef_1330_7
                       (i32.const 0)
                       (local.get $7)
                      )
                     )
                     (return_call $join_4311_18
                      (call $incRef_1277_7
                       (i32.const 0)
                       (i32.const 0)
                      )
                      (local.get $0)
                     )
                    )
                   )
                  )
                 )
                 (local.set $0
                  (i32.load offset=12
                   (local.get $1)
                  )
                 )
                 (br $switch.17422_outer
                  (if (result i32)
                   (i32.shr_u
                    (select
                     (i32.const -2)
                     (i32.const 2147483646)
                     (i32.eq
                      (local.tee $3
                       (block $__inlined_func$getRecordFieldNames_4294_18$106 (result i32)
                        (local.set $3
                         (call $incRef_1277_7
                          (i32.const 0)
                          (i32.const 0)
                         )
                        )
                        (local.set $5
                         (i32.shr_s
                          (i32.load offset=4
                           (local.get $1)
                          )
                          (i32.const 1)
                         )
                        )
                        (local.set $6
                         (call $incRef_1277_7
                          (i32.const 0)
                          (i32.const 0)
                         )
                        )
                        (if (result i32)
                         (i32.shr_u
                          (tuple.extract 0
                           (tuple.make
                            (select
                             (i32.const -2)
                             (i32.const 2147483646)
                             (i32.eq
                              (global.get $_RANGE_ID_4224_18)
                              (i32.shr_s
                               (i32.load offset=8
                                (local.get $1)
                               )
                               (i32.const 1)
                              )
                             )
                            )
                            (block (result i32)
                             (drop
                              (call $decRef_1330_7
                               (i32.const 0)
                               (local.get $6)
                              )
                             )
                             (i32.const 1879048190)
                            )
                           )
                          )
                          (i32.const 31)
                         )
                         (block (result i32)
                          (local.set $5
                           (global.get $_RANGE_FIELDS_4229_18)
                          )
                          (drop
                           (call $decRef_1330_7
                            (i32.const 0)
                            (local.get $3)
                           )
                          )
                          (call $incRef_1277_7
                           (call $incRef_1277_7
                            (i32.const 0)
                            (i32.const 0)
                           )
                           (local.get $5)
                          )
                         )
                         (block (result i32)
                          (local.set $6
                           (i32.load offset=12
                            (local.get $1)
                           )
                          )
                          (if
                           (i32.shr_u
                            (select
                             (i32.const -2)
                             (i32.const 2147483646)
                             (i32.eq
                              (local.tee $5
                               (call $findTypeMetadata_4210_18
                                (call $incRef_1277_7
                                 (i32.const 0)
                                 (i32.const 0)
                                )
                                (local.get $5)
                               )
                              )
                              (i32.const -1)
                             )
                            )
                            (i32.const 31)
                           )
                           (block
                            (drop
                             (call $decRef_1330_7
                              (i32.const 0)
                              (local.get $3)
                             )
                            )
                            (br $__inlined_func$getRecordFieldNames_4294_18$106
                             (i32.const -1)
                            )
                           )
                          )
                          (drop
                           (call $decRef_1330_7
                            (i32.const 0)
                            (local.get $3)
                           )
                          )
                          (call $getFieldArray_4279_18
                           (call $incRef_1277_7
                            (i32.const 0)
                            (i32.const 0)
                           )
                           (i32.add
                            (local.get $5)
                            (i32.const 4)
                           )
                           (local.get $6)
                          )
                         )
                        )
                       )
                      )
                      (i32.const -1)
                     )
                    )
                    (i32.const 31)
                   )
                   (block (result i32)
                    (i32.store
                     (local.tee $0
                      (call $malloc_1268_7
                       (i32.const 0)
                       (i32.const 24)
                      )
                     )
                     (i32.const 1)
                    )
                    (i32.store offset=4
                     (local.get $0)
                     (i32.const 14)
                    )
                    (i64.store offset=8
                     (local.get $0)
                     (i64.const 2334116329619288636)
                    )
                    (i64.store offset=16
                     (local.get $0)
                     (i64.const 68605482656118)
                    )
                    (local.get $0)
                   )
                   (if
                    (i32.shr_u
                     (select
                      (i32.const -2)
                      (i32.const 2147483646)
                      (i32.and
                       (local.get $0)
                       (i32.const -2147483648)
                      )
                     )
                     (i32.const 31)
                    )
                    (block
                     (drop
                      (call $decRef_1330_7
                       (i32.const 0)
                       (local.get $7)
                      )
                     )
                     (return_call $reportCycle_4364_18
                      (call $incRef_1277_7
                       (i32.const 0)
                       (i32.const 0)
                      )
                      (local.get $1)
                      (local.get $4)
                     )
                    )
                    (block
                     (i32.store offset=12
                      (local.get $1)
                      (i32.or
                       (local.get $0)
                       (i32.const -2147483648)
                      )
                     )
                     (local.set $2
                      (call $recordToString_4389_18
                       (call $incRef_1277_7
                        (i32.const 0)
                        (i32.const 0)
                       )
                       (local.get $1)
                       (local.get $0)
                       (local.get $3)
                       (i32.const 16)
                       (local.get $2)
                       (local.get $4)
                      )
                     )
                     (drop
                      (call $decRef_1330_7
                       (call $incRef_1277_7
                        (i32.const 0)
                        (i32.const 0)
                       )
                       (local.get $3)
                      )
                     )
                     (i32.store offset=12
                      (local.get $1)
                      (local.get $0)
                     )
                     (local.set $3
                      (call $cyclePrefix_4381_18
                       (call $incRef_1277_7
                        (i32.const 0)
                        (i32.const 0)
                       )
                       (local.get $1)
                       (local.get $4)
                      )
                     )
                     (i32.store
                      (local.tee $1
                       (call $malloc_1268_7
                        (i32.const 0)
                        (i32.const 20)
                       )
                      )
                      (i32.const 2)
                     )
                     (i32.store offset=4
                      (local.get $1)
                      (i32.const 1638603609)
                     )
                     (i32.store offset=8
                      (local.get $1)
                      (i32.const 11)
                     )
                     (i32.store offset=12
                      (local.get $1)
                      (i32.const 3)
                     )
                     (i32.store offset=16
                      (local.get $1)
                      (i32.const 0)
                     )
                     (i32.store
                      (local.tee $0
                       (call $malloc_1268_7
                        (i32.const 0)
                        (i32.const 28)
                       )
                      )
                      (i32.const 2)
                     )
                     (i32.store offset=4
                      (local.get $0)
                      (i32.const 1638603609)
                     )
                     (i32.store offset=8
                      (local.get $0)
                      (i32.const 11)
                     )
                     (i32.store offset=12
                      (local.get $0)
                      (i32.const 1)
                     )
                     (i32.store offset=16
                      (local.get $0)
                      (i32.const 2)
                     )
                     (i32.store offset=20
                      (local.get $0)
                      (local.get $2)
                     )
                     (i32.store offset=24
                      (local.get $0)
                      (local.get $1)
                     )
                     (i32.store
                      (local.tee $1
                       (call $malloc_1268_7
                        (i32.const 0)
                        (i32.const 28)
                       )
                      )
                      (i32.const 2)
                     )
                     (i32.store offset=4
                      (local.get $1)
                      (i32.const 1638603609)
                     )
                     (i32.store offset=8
                      (local.get $1)
                      (i32.const 11)
                     )
                     (i32.store offset=12
                      (local.get $1)
                      (i32.const 1)
                     )
                     (i32.store offset=16
                      (local.get $1)
                      (i32.const 2)
                     )
                     (i32.store offset=20
                      (local.get $1)
                      (local.get $3)
                     )
                     (i32.store offset=24
                      (local.get $1)
                      (local.get $0)
                     )
                     (drop
                      (call $decRef_1330_7
                       (i32.const 0)
                       (local.get $7)
                      )
                     )
                     (return_call $join_4311_18
                      (call $incRef_1277_7
                       (i32.const 0)
                       (i32.const 0)
                      )
                      (local.get $1)
                     )
                    )
                   )
                  )
                 )
                )
               )
               (br $switch.17422_outer
                (if (result i32)
                 (i32.shr_u
                  (select
                   (i32.const -2)
                   (i32.const 2147483646)
                   (i32.ne
                    (local.tee $0
                     (block $__inlined_func$getBuiltinVariantName_4273_18$107 (result i32)
                      (local.set $3
                       (call $incRef_1277_7
                        (i32.const 0)
                        (i32.load offset=28
                         (local.tee $0
                          (call $incRef_1277_7
                           (i32.const 0)
                           (global.get $getBuiltinVariantName_4273_18)
                          )
                         )
                        )
                       )
                      )
                      (local.set $5
                       (call $incRef_1277_7
                        (i32.const 0)
                        (i32.load offset=24
                         (local.get $0)
                        )
                       )
                      )
                      (local.set $6
                       (call $incRef_1277_7
                        (i32.const 0)
                        (i32.load offset=20
                         (local.get $0)
                        )
                       )
                      )
                      (local.set $8
                       (call $incRef_1277_7
                        (i32.const 0)
                        (i32.load offset=16
                         (local.get $0)
                        )
                       )
                      )
                      (local.set $10
                       (i32.shr_s
                        (i32.load offset=12
                         (local.get $1)
                        )
                        (i32.const 1)
                       )
                      )
                      (tuple.extract 0
                       (tuple.make
                        (block $switch.16312_outer (result i32)
                         (drop
                          (block $switch.16312_branch_1 (result i32)
                           (drop
                            (block $switch.16312_branch_2 (result i32)
                             (drop
                              (block $switch.16312_branch_3 (result i32)
                               (drop
                                (block $switch.16312_default (result i32)
                                 (br_table $switch.16312_branch_1 $switch.16312_branch_2 $switch.16312_branch_3 $switch.16312_default
                                  (i32.const 0)
                                  (i32.shr_s
                                   (if (result i32)
                                    (i32.shr_u
                                     (select
                                      (i32.const -2)
                                      (i32.const 2147483646)
                                      (i32.eq
                                       (local.tee $11
                                        (i32.shr_s
                                         (i32.load offset=8
                                          (local.get $1)
                                         )
                                         (i32.const 1)
                                        )
                                       )
                                       (global.get $_OPTION_ID_4222_18)
                                      )
                                     )
                                     (i32.const 31)
                                    )
                                    (i32.const 1)
                                    (select
                                     (i32.const 3)
                                     (i32.const 5)
                                     (i32.shr_u
                                      (select
                                       (i32.const -2)
                                       (i32.const 2147483646)
                                       (i32.eq
                                        (local.get $11)
                                        (global.get $_RESULT_ID_4223_18)
                                       )
                                      )
                                      (i32.const 31)
                                     )
                                    )
                                   )
                                   (i32.const 1)
                                  )
                                 )
                                )
                               )
                               (unreachable)
                              )
                             )
                             (br $switch.16312_outer
                              (i32.const -1)
                             )
                            )
                           )
                           (if
                            (i32.shr_u
                             (select
                              (i32.const 2147483646)
                              (i32.const -2)
                              (local.get $10)
                             )
                             (i32.const 31)
                            )
                            (block
                             (drop
                              (call $decRef_1330_7
                               (i32.const 0)
                               (local.get $0)
                              )
                             )
                             (drop
                              (call $decRef_1330_7
                               (i32.const 0)
                               (local.get $8)
                              )
                             )
                             (drop
                              (call $decRef_1330_7
                               (i32.const 0)
                               (local.get $6)
                              )
                             )
                             (drop
                              (call $decRef_1330_7
                               (i32.const 0)
                               (local.get $5)
                              )
                             )
                             (drop
                              (call $decRef_1330_7
                               (i32.const 0)
                               (local.get $3)
                              )
                             )
                             (br $__inlined_func$getBuiltinVariantName_4273_18$107
                              (call $incRef_1277_7
                               (call $incRef_1277_7
                                (i32.const 0)
                                (i32.const 0)
                               )
                               (local.get $5)
                              )
                             )
                            )
                            (block
                             (drop
                              (call $decRef_1330_7
                               (i32.const 0)
                               (local.get $0)
                              )
                             )
                             (drop
                              (call $decRef_1330_7
                               (i32.const 0)
                               (local.get $8)
                              )
                             )
                             (drop
                              (call $decRef_1330_7
                               (i32.const 0)
                               (local.get $6)
                              )
                             )
                             (drop
                              (call $decRef_1330_7
                               (i32.const 0)
                               (local.get $5)
                              )
                             )
                             (drop
                              (call $decRef_1330_7
                               (i32.const 0)
                               (local.get $3)
                              )
                             )
                             (br $__inlined_func$getBuiltinVariantName_4273_18$107
                              (call $incRef_1277_7
                               (call $incRef_1277_7
                                (i32.const 0)
                                (i32.const 0)
                               )
                               (local.get $3)
                              )
                             )
                            )
                           )
                          )
                         )
                         (if
                          (i32.shr_u
                           (select
                            (i32.const 2147483646)
                            (i32.const -2)
                            (local.get $10)
                           )
                           (i32.const 31)
                          )
                          (block
                           (drop
                            (call $decRef_1330_7
                             (i32.const 0)
                             (local.get $0)
                            )
                           )
                           (drop
                            (call $decRef_1330_7
                             (i32.const 0)
                             (local.get $8)
                            )
                           )
                           (drop
                            (call $decRef_1330_7
                             (i32.const 0)
                             (local.get $6)
                            )
                           )
                           (drop
                            (call $decRef_1330_7
                             (i32.const 0)
                             (local.get $5)
                            )
                           )
                           (drop
                            (call $decRef_1330_7
                             (i32.const 0)
                             (local.get $3)
                            )
                           )
                           (br $__inlined_func$getBuiltinVariantName_4273_18$107
                            (call $incRef_1277_7
                             (call $incRef_1277_7
                              (i32.const 0)
                              (i32.const 0)
                             )
                             (local.get $8)
                            )
                           )
                          )
                          (block
                           (drop
                            (call $decRef_1330_7
                             (i32.const 0)
                             (local.get $0)
                            )
                           )
                           (drop
                            (call $decRef_1330_7
                             (i32.const 0)
                             (local.get $8)
                            )
                           )
                           (drop
                            (call $decRef_1330_7
                             (i32.const 0)
                             (local.get $6)
                            )
                           )
                           (drop
                            (call $decRef_1330_7
                             (i32.const 0)
                             (local.get $5)
                            )
                           )
                           (drop
                            (call $decRef_1330_7
                             (i32.const 0)
                             (local.get $3)
                            )
                           )
                           (br $__inlined_func$getBuiltinVariantName_4273_18$107
                            (call $incRef_1277_7
                             (call $incRef_1277_7
                              (i32.const 0)
                              (i32.const 0)
                             )
                             (local.get $6)
                            )
                           )
                          )
                         )
                        )
                        (block (result i32)
                         (drop
                          (call $decRef_1330_7
                           (i32.const 0)
                           (local.get $0)
                          )
                         )
                         (drop
                          (call $decRef_1330_7
                           (i32.const 0)
                           (local.get $8)
                          )
                         )
                         (drop
                          (call $decRef_1330_7
                           (i32.const 0)
                           (local.get $6)
                          )
                         )
                         (drop
                          (call $decRef_1330_7
                           (i32.const 0)
                           (local.get $5)
                          )
                         )
                         (drop
                          (call $decRef_1330_7
                           (i32.const 0)
                           (local.get $3)
                          )
                         )
                         (i32.const 1879048190)
                        )
                       )
                      )
                     )
                    )
                    (i32.const -1)
                   )
                  )
                  (i32.const 31)
                 )
                 (block
                  (drop
                   (call $decRef_1330_7
                    (i32.const 0)
                    (local.get $7)
                   )
                  )
                  (return_call $tupleVariantToString_4388_18
                   (call $incRef_1277_7
                    (i32.const 0)
                    (i32.const 0)
                   )
                   (local.get $1)
                   (local.get $0)
                   (local.get $2)
                   (local.get $4)
                  )
                 )
                 (block (result i32)
                  (local.set $0
                   (call $incRef_1277_7
                    (i32.const 0)
                    (i32.const 0)
                   )
                  )
                  (if (result i32)
                   (i32.shr_u
                    (tuple.extract 0
                     (tuple.make
                      (select
                       (i32.const -2)
                       (i32.const 2147483646)
                       (i32.eq
                        (global.get $_LIST_ID_4221_18)
                        (i32.shr_s
                         (i32.load offset=8
                          (local.get $1)
                         )
                         (i32.const 1)
                        )
                       )
                      )
                      (block (result i32)
                       (drop
                        (call $decRef_1330_7
                         (i32.const 0)
                         (local.get $0)
                        )
                       )
                       (i32.const 1879048190)
                      )
                     )
                    )
                    (i32.const 31)
                   )
                   (block
                    (drop
                     (call $decRef_1330_7
                      (i32.const 0)
                      (local.get $7)
                     )
                    )
                    (local.set $10
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                    )
                    (local.set $8
                     (i32.const -2)
                    )
                    (i32.store
                     (local.tee $6
                      (call $malloc_1268_7
                       (i32.const 0)
                       (i32.const 16)
                      )
                     )
                     (i32.const 1)
                    )
                    (i32.store offset=4
                     (local.get $6)
                     (i32.const 1)
                    )
                    (i64.store offset=8
                     (local.get $6)
                     (i64.const 91)
                    )
                    (i32.store
                     (local.tee $5
                      (call $malloc_1268_7
                       (i32.const 0)
                       (i32.const 16)
                      )
                     )
                     (i32.const 1)
                    )
                    (i32.store offset=4
                     (local.get $5)
                     (i32.const 2)
                    )
                    (i64.store offset=8
                     (local.get $5)
                     (i64.const 8236)
                    )
                    (i32.store
                     (local.tee $3
                      (call $malloc_1268_7
                       (i32.const 0)
                       (i32.const 20)
                      )
                     )
                     (i32.const 2)
                    )
                    (i32.store offset=4
                     (local.get $3)
                     (i32.const 1638603609)
                    )
                    (i32.store offset=8
                     (local.get $3)
                     (i32.const 11)
                    )
                    (i32.store offset=12
                     (local.get $3)
                     (i32.const 3)
                    )
                    (i32.store offset=16
                     (local.get $3)
                     (i32.const 0)
                    )
                    (i32.store
                     (local.tee $0
                      (call $malloc_1268_7
                       (i32.const 0)
                       (i32.const 28)
                      )
                     )
                     (i32.const 2)
                    )
                    (i32.store offset=4
                     (local.get $0)
                     (i32.const 1638603609)
                    )
                    (i32.store offset=8
                     (local.get $0)
                     (i32.const 11)
                    )
                    (i32.store offset=12
                     (local.get $0)
                     (i32.const 1)
                    )
                    (i32.store offset=16
                     (local.get $0)
                     (i32.const 2)
                    )
                    (i32.store offset=20
                     (local.get $0)
                     (local.get $6)
                    )
                    (i32.store offset=24
                     (local.get $0)
                     (local.get $3)
                    )
                    (drop
                     (loop $MFor_loop.17166 (result i32)
                      (if (result i32)
                       (i32.shr_u
                        (select
                         (i32.const -2)
                         (i32.const 2147483646)
                         (i32.eq
                          (i32.shr_s
                           (i32.load offset=12
                            (local.get $1)
                           )
                           (i32.const 1)
                          )
                          (i32.const 1)
                         )
                        )
                        (i32.const 31)
                       )
                       (i32.const 1879048190)
                       (block
                        (drop
                         (if (result i32)
                          (i32.shr_u
                           (i32.xor
                            (local.get $8)
                            (i32.const -2147483648)
                           )
                           (i32.const 31)
                          )
                          (block (result i32)
                           (local.set $6
                            (call $incRef_1277_7
                             (i32.const 0)
                             (local.get $0)
                            )
                           )
                           (i32.store
                            (local.tee $3
                             (call $malloc_1268_7
                              (i32.const 0)
                              (i32.const 28)
                             )
                            )
                            (i32.const 2)
                           )
                           (i32.store offset=4
                            (local.get $3)
                            (i32.const 1638603609)
                           )
                           (i32.store offset=8
                            (local.get $3)
                            (i32.const 11)
                           )
                           (i32.store offset=12
                            (local.get $3)
                            (i32.const 1)
                           )
                           (i32.store offset=16
                            (local.get $3)
                            (i32.const 2)
                           )
                           (i32.store offset=20
                            (local.get $3)
                            (call $incRef_1277_7
                             (i32.const 0)
                             (local.get $5)
                            )
                           )
                           (i32.store offset=24
                            (local.get $3)
                            (local.get $6)
                           )
                           (local.set $0
                            (tuple.extract 0
                             (tuple.make
                              (call $incRef_1277_7
                               (i32.const 0)
                               (local.get $3)
                              )
                              (call $decRef_1330_7
                               (i32.const 0)
                               (local.get $0)
                              )
                             )
                            )
                           )
                           (i32.const 0)
                          )
                          (i32.const 1879048190)
                         )
                        )
                        (local.set $8
                         (i32.const 2147483646)
                        )
                        (local.set $3
                         (i32.load offset=20
                          (local.get $1)
                         )
                        )
                        (local.set $6
                         (call $toStringHelp_4386_18
                          (call $incRef_1277_7
                           (i32.const 0)
                           (i32.const 0)
                          )
                          (local.get $3)
                          (local.get $2)
                          (i32.const 2147483646)
                          (local.get $4)
                         )
                        )
                        (local.set $11
                         (call $incRef_1277_7
                          (i32.const 0)
                          (local.get $0)
                         )
                        )
                        (i32.store
                         (local.tee $3
                          (call $malloc_1268_7
                           (i32.const 0)
                           (i32.const 28)
                          )
                         )
                         (i32.const 2)
                        )
                        (i32.store offset=4
                         (local.get $3)
                         (i32.const 1638603609)
                        )
                        (i32.store offset=8
                         (local.get $3)
                         (i32.const 11)
                        )
                        (i32.store offset=12
                         (local.get $3)
                         (i32.const 1)
                        )
                        (i32.store offset=16
                         (local.get $3)
                         (i32.const 2)
                        )
                        (i32.store offset=20
                         (local.get $3)
                         (local.get $6)
                        )
                        (i32.store offset=24
                         (local.get $3)
                         (local.get $11)
                        )
                        (local.set $0
                         (tuple.extract 0
                          (tuple.make
                           (call $incRef_1277_7
                            (i32.const 0)
                            (local.get $3)
                           )
                           (call $decRef_1330_7
                            (i32.const 0)
                            (local.get $0)
                           )
                          )
                         )
                        )
                        (local.set $1
                         (i32.load offset=24
                          (local.get $1)
                         )
                        )
                        (br $MFor_loop.17166)
                       )
                      )
                     )
                    )
                    (drop
                     (call $decRef_1330_7
                      (i32.const 0)
                      (local.get $5)
                     )
                    )
                    (i32.store
                     (local.tee $2
                      (call $malloc_1268_7
                       (i32.const 0)
                       (i32.const 16)
                      )
                     )
                     (i32.const 1)
                    )
                    (i32.store offset=4
                     (local.get $2)
                     (i32.const 1)
                    )
                    (i64.store offset=8
                     (local.get $2)
                     (i64.const 93)
                    )
                    (local.set $3
                     (call $incRef_1277_7
                      (i32.const 0)
                      (local.get $0)
                     )
                    )
                    (i32.store
                     (local.tee $1
                      (call $malloc_1268_7
                       (i32.const 0)
                       (i32.const 28)
                      )
                     )
                     (i32.const 2)
                    )
                    (i32.store offset=4
                     (local.get $1)
                     (i32.const 1638603609)
                    )
                    (i32.store offset=8
                     (local.get $1)
                     (i32.const 11)
                    )
                    (i32.store offset=12
                     (local.get $1)
                     (i32.const 1)
                    )
                    (i32.store offset=16
                     (local.get $1)
                     (i32.const 2)
                    )
                    (i32.store offset=20
                     (local.get $1)
                     (local.get $2)
                    )
                    (i32.store offset=24
                     (local.get $1)
                     (local.get $3)
                    )
                    (local.set $1
                     (tuple.extract 0
                      (tuple.make
                       (call $incRef_1277_7
                        (i32.const 0)
                        (local.get $1)
                       )
                       (call $decRef_1330_7
                        (i32.const 0)
                        (local.get $0)
                       )
                      )
                     )
                    )
                    (local.set $2
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                    )
                    (i32.store
                     (local.tee $0
                      (call $malloc_1268_7
                       (i32.const 0)
                       (i32.const 20)
                      )
                     )
                     (i32.const 2)
                    )
                    (i32.store offset=4
                     (local.get $0)
                     (i32.const 1638603609)
                    )
                    (i32.store offset=8
                     (local.get $0)
                     (i32.const 11)
                    )
                    (i32.store offset=12
                     (local.get $0)
                     (i32.const 3)
                    )
                    (i32.store offset=16
                     (local.get $0)
                     (i32.const 0)
                    )
                    (drop
                     (call $decRef_1330_7
                      (i32.const 0)
                      (local.get $2)
                     )
                    )
                    (local.set $0
                     (call $iter_4317_18
                      (i32.const 0)
                      (local.get $1)
                      (local.get $0)
                     )
                    )
                    (drop
                     (call $decRef_1330_7
                      (i32.const 0)
                      (local.get $10)
                     )
                    )
                    (return_call $join_4311_18
                     (call $incRef_1277_7
                      (i32.const 0)
                      (i32.const 0)
                     )
                     (local.get $0)
                    )
                   )
                   (if (result i32)
                    (i32.shr_u
                     (select
                      (i32.const -2)
                      (i32.const 2147483646)
                      (i32.eq
                       (local.tee $0
                        (block $__inlined_func$getVariantMetadata_4287_18$110 (result i32)
                         (local.set $3
                          (call $incRef_1277_7
                           (i32.const 0)
                           (i32.const 0)
                          )
                         )
                         (local.set $0
                          (i32.shr_s
                           (i32.load offset=4
                            (local.get $1)
                           )
                           (i32.const 1)
                          )
                         )
                         (local.set $6
                          (i32.shr_s
                           (i32.load offset=12
                            (local.get $1)
                           )
                           (i32.const 1)
                          )
                         )
                         (if
                          (i32.shr_u
                           (select
                            (i32.const -2)
                            (i32.const 2147483646)
                            (i32.eq
                             (local.tee $5
                              (call $findTypeMetadata_4210_18
                               (call $incRef_1277_7
                                (i32.const 0)
                                (i32.const 0)
                               )
                               (local.get $0)
                              )
                             )
                             (i32.const -1)
                            )
                           )
                           (i32.const 31)
                          )
                          (block
                           (drop
                            (call $decRef_1330_7
                             (i32.const 0)
                             (local.get $3)
                            )
                           )
                           (br $__inlined_func$getVariantMetadata_4287_18$110
                            (i32.const -1)
                           )
                          )
                         )
                         (local.set $5
                          (i32.add
                           (local.tee $0
                            (i32.add
                             (local.get $5)
                             (i32.const 4)
                            )
                           )
                           (i32.load
                            (local.get $5)
                           )
                          )
                         )
                         (drop
                          (loop $MFor_loop.16437 (result i32)
                           (if (result i32)
                            (i32.shr_u
                             (select
                              (i32.const -2)
                              (i32.const 2147483646)
                              (i32.lt_s
                               (local.get $0)
                               (local.get $5)
                              )
                             )
                             (i32.const 31)
                            )
                            (if
                             (i32.shr_u
                              (select
                               (i32.const -2)
                               (i32.const 2147483646)
                               (i32.eq
                                (i32.load offset=8
                                 (local.get $0)
                                )
                                (local.get $6)
                               )
                              )
                              (i32.const 31)
                             )
                             (block
                              (drop
                               (call $decRef_1330_7
                                (i32.const 0)
                                (local.get $3)
                               )
                              )
                              (br $__inlined_func$getVariantMetadata_4287_18$110
                               (local.get $0)
                              )
                             )
                             (block
                              (local.set $0
                               (i32.add
                                (i32.load
                                 (local.get $0)
                                )
                                (local.get $0)
                               )
                              )
                              (br $MFor_loop.16437)
                             )
                            )
                            (i32.const 1879048190)
                           )
                          )
                         )
                         (drop
                          (call $decRef_1330_7
                           (i32.const 0)
                           (local.get $3)
                          )
                         )
                         (i32.const -1)
                        )
                       )
                       (i32.const -1)
                      )
                     )
                     (i32.const 31)
                    )
                    (block (result i32)
                     (i32.store
                      (local.tee $0
                       (call $malloc_1268_7
                        (i32.const 0)
                        (i32.const 24)
                       )
                      )
                      (i32.const 1)
                     )
                     (i32.store offset=4
                      (local.get $0)
                      (i32.const 12)
                     )
                     (i64.store offset=8
                      (local.get $0)
                      (i64.const 7022836323424560444)
                     )
                     (i64.store offset=16
                      (local.get $0)
                      (i64.const 1046836588)
                     )
                     (local.get $0)
                    )
                    (block
                     (i32.store
                      (local.tee $3
                       (call $malloc_1268_7
                        (i32.const 0)
                        (i32.add
                         (local.tee $5
                          (i32.load offset=12
                           (local.get $0)
                          )
                         )
                         (i32.const 8)
                        )
                       )
                      )
                      (i32.const 1)
                     )
                     (i32.store offset=4
                      (local.get $3)
                      (local.get $5)
                     )
                     (memory.copy
                      (i32.add
                       (local.get $3)
                       (i32.const 8)
                      )
                      (i32.add
                       (local.get $0)
                       (i32.const 16)
                      )
                      (local.get $5)
                     )
                     (if
                      (i32.shr_u
                       (select
                        (i32.const -2)
                        (i32.const 2147483646)
                        (local.tee $6
                         (i32.load offset=4
                          (local.get $0)
                         )
                        )
                       )
                       (i32.const 31)
                      )
                      (block
                       (local.set $5
                        (i32.load offset=16
                         (local.get $1)
                        )
                       )
                       (local.set $0
                        (call $getFieldArray_4279_18
                         (call $incRef_1277_7
                          (i32.const 0)
                          (i32.const 0)
                         )
                         (i32.add
                          (local.get $0)
                          (local.get $6)
                         )
                         (local.get $5)
                        )
                       )
                       (local.set $2
                        (call $recordToString_4389_18
                         (call $incRef_1277_7
                          (i32.const 0)
                          (i32.const 0)
                         )
                         (local.get $1)
                         (local.get $5)
                         (local.get $0)
                         (i32.const 20)
                         (local.get $2)
                         (local.get $4)
                        )
                       )
                       (drop
                        (call $decRef_1330_7
                         (call $incRef_1277_7
                          (i32.const 0)
                          (i32.const 0)
                         )
                         (local.get $0)
                        )
                       )
                       (i32.store
                        (local.tee $1
                         (call $malloc_1268_7
                          (i32.const 0)
                          (i32.const 20)
                         )
                        )
                        (i32.const 2)
                       )
                       (i32.store offset=4
                        (local.get $1)
                        (i32.const 1638603609)
                       )
                       (i32.store offset=8
                        (local.get $1)
                        (i32.const 11)
                       )
                       (i32.store offset=12
                        (local.get $1)
                        (i32.const 3)
                       )
                       (i32.store offset=16
                        (local.get $1)
                        (i32.const 0)
                       )
                       (i32.store
                        (local.tee $0
                         (call $malloc_1268_7
                          (i32.const 0)
                          (i32.const 28)
                         )
                        )
                        (i32.const 2)
                       )
                       (i32.store offset=4
                        (local.get $0)
                        (i32.const 1638603609)
                       )
                       (i32.store offset=8
                        (local.get $0)
                        (i32.const 11)
                       )
                       (i32.store offset=12
                        (local.get $0)
                        (i32.const 1)
                       )
                       (i32.store offset=16
                        (local.get $0)
                        (i32.const 2)
                       )
                       (i32.store offset=20
                        (local.get $0)
                        (local.get $2)
                       )
                       (i32.store offset=24
                        (local.get $0)
                        (local.get $1)
                       )
                       (i32.store
                        (local.tee $1
                         (call $malloc_1268_7
                          (i32.const 0)
                          (i32.const 28)
                         )
                        )
                        (i32.const 2)
                       )
                       (i32.store offset=4
                        (local.get $1)
                        (i32.const 1638603609)
                       )
                       (i32.store offset=8
                        (local.get $1)
                        (i32.const 11)
                       )
                       (i32.store offset=12
                        (local.get $1)
                        (i32.const 1)
                       )
                       (i32.store offset=16
                        (local.get $1)
                        (i32.const 2)
                       )
                       (i32.store offset=20
                        (local.get $1)
                        (call $incRef_1277_7
                         (i32.const 0)
                         (local.get $3)
                        )
                       )
                       (i32.store offset=24
                        (local.get $1)
                        (local.get $0)
                       )
                       (drop
                        (call $decRef_1330_7
                         (i32.const 0)
                         (local.get $7)
                        )
                       )
                       (drop
                        (call $decRef_1330_7
                         (i32.const 0)
                         (local.get $3)
                        )
                       )
                       (return_call $join_4311_18
                        (call $incRef_1277_7
                         (i32.const 0)
                         (i32.const 0)
                        )
                        (local.get $1)
                       )
                      )
                      (block
                       (drop
                        (call $decRef_1330_7
                         (i32.const 0)
                         (local.get $7)
                        )
                       )
                       (return_call $tupleVariantToString_4388_18
                        (call $incRef_1277_7
                         (i32.const 0)
                         (i32.const 0)
                        )
                        (local.get $1)
                        (local.get $3)
                        (local.get $2)
                        (local.get $4)
                       )
                      )
                     )
                    )
                   )
                  )
                 )
                )
               )
              )
             )
             (local.set $3
              (i32.const 2147483646)
             )
             (drop
              (if (result i32)
               (i32.shr_u
                (select
                 (i32.const -2)
                 (i32.const 2147483646)
                 (i32.gt_s
                  (local.tee $0
                   (i32.load offset=4
                    (local.get $1)
                   )
                  )
                  (i32.const 32)
                 )
                )
                (i32.const 31)
               )
               (block (result i32)
                (local.set $0
                 (i32.const 32)
                )
                (local.set $3
                 (i32.const -2)
                )
                (i32.const 0)
               )
               (i32.const 1879048190)
              )
             )
             (local.set $6
              (i32.add
               (local.get $1)
               (i32.const 8)
              )
             )
             (i32.store
              (local.tee $1
               (call $malloc_1268_7
                (i32.const 0)
                (i32.add
                 (local.tee $2
                  (i32.add
                   (i32.add
                    (local.tee $5
                     (i32.sub
                      (i32.mul
                       (local.get $0)
                       (i32.const 3)
                      )
                      (i32.const 1)
                     )
                    )
                    (i32.const 8)
                   )
                   (select
                    (i32.const 4)
                    (i32.const 1)
                    (i32.shr_u
                     (local.get $3)
                     (i32.const 31)
                    )
                   )
                  )
                 )
                 (i32.const 8)
                )
               )
              )
              (i32.const 1)
             )
             (i32.store offset=4
              (local.get $1)
              (local.get $2)
             )
             (local.set $4
              (i32.add
               (local.get $1)
               (i32.const 16)
              )
             )
             (local.set $8
              (call $get_HEX_DIGITS_2240_13
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
              )
             )
             (memory.fill
              (i32.add
               (local.get $1)
               (i32.const 8)
              )
              (i32.const 32)
              (local.get $2)
             )
             (i64.store offset=8
              (local.get $1)
              (i64.const 2322295437445915196)
             )
             (local.set $2
              (i32.const 0)
             )
             (drop
              (loop $MFor_loop.17479 (result i32)
               (if (result i32)
                (i32.shr_u
                 (select
                  (i32.const -2)
                  (i32.const 2147483646)
                  (i32.gt_s
                   (local.get $0)
                   (local.get $2)
                  )
                 )
                 (i32.const 31)
                )
                (block
                 (i32.store16
                  (i32.add
                   (i32.mul
                    (local.get $2)
                    (i32.const 3)
                   )
                   (local.get $4)
                  )
                  (i32.load16_u
                   (i32.add
                    (i32.shl
                     (i32.load8_u
                      (i32.add
                       (local.get $2)
                       (local.get $6)
                      )
                     )
                     (i32.const 1)
                    )
                    (local.get $8)
                   )
                  )
                 )
                 (local.set $2
                  (i32.add
                   (local.get $2)
                   (i32.const 1)
                  )
                 )
                 (br $MFor_loop.17479)
                )
                (i32.const 1879048190)
               )
              )
             )
             (if
              (i32.shr_u
               (local.get $3)
               (i32.const 31)
              )
              (i32.store
               (i32.add
                (local.get $4)
                (local.get $5)
               )
               (i32.const 1043213870)
              )
              (i32.store8
               (i32.add
                (local.get $4)
                (local.get $5)
               )
               (i32.const 62)
              )
             )
             (br $switch.17422_outer
              (local.get $1)
             )
            )
           )
           (drop
            (call $incRef_1277_7
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $1)
            )
           )
           (if (result i32)
            (i32.shr_u
             (local.get $3)
             (i32.const 31)
            )
            (local.get $1)
            (block
             (drop
              (call $decRef_1330_7
               (i32.const 0)
               (local.get $7)
              )
             )
             (drop
              (call $decRef_1330_7
               (i32.const 0)
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
              )
             )
             (drop
              (call $decRef_1330_7
               (i32.const 0)
               (local.get $1)
              )
             )
             (return_call $escape_4330_18
              (call $incRef_1277_7
               (i32.const 0)
               (i32.const 0)
              )
              (local.get $1)
              (i32.const -2)
             )
            )
           )
          )
          (block (result i32)
           (drop
            (call $decRef_1330_7
             (i32.const 0)
             (local.get $7)
            )
           )
           (drop
            (call $decRef_1330_7
             (i32.const 0)
             (i32.const 0)
            )
           )
           (i32.const 1879048190)
          )
         )
        )
       )
      )
      (if (result i32)
       (i32.shr_u
        (select
         (i32.const -2)
         (i32.const 2147483646)
         (i32.eq
          (local.get $7)
          (global.get $_GRAIN_SHORTVAL_TAG_TYPE_1001_1)
         )
        )
        (i32.const 31)
       )
       (block (result i32)
        (local.set $2
         (i32.shr_s
          (local.get $1)
          (i32.const 8)
         )
        )
        (if (result i32)
         (i32.shr_u
          (select
           (i32.const 2147483646)
           (i32.const -2)
           (local.tee $1
            (i32.shr_u
             (i32.and
              (local.get $1)
              (i32.const 248)
             )
             (i32.const 3)
            )
           )
          )
          (i32.const 31)
         )
         (block (result i32)
          (drop
           (call $decRef_1330_7
            (i32.const 0)
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
           )
          )
          (i32.store
           (local.tee $1
            (call $malloc_1268_7
             (i32.const 0)
             (i32.add
              (local.tee $4
               (tuple.extract 0
                (tuple.make
                 (select
                  (i32.const 1)
                  (select
                   (i32.const 2)
                   (select
                    (i32.const 3)
                    (i32.const 4)
                    (i32.shr_u
                     (select
                      (i32.const -2)
                      (i32.const 2147483646)
                      (i32.le_s
                       (local.get $2)
                       (i32.const 65535)
                      )
                     )
                     (i32.const 31)
                    )
                   )
                   (i32.shr_u
                    (select
                     (i32.const -2)
                     (i32.const 2147483646)
                     (i32.le_s
                      (local.get $2)
                      (i32.const 2047)
                     )
                    )
                    (i32.const 31)
                   )
                  )
                  (i32.shr_u
                   (select
                    (i32.const -2)
                    (i32.const 2147483646)
                    (i32.le_s
                     (local.get $2)
                     (i32.const 127)
                    )
                   )
                   (i32.const 31)
                  )
                 )
                 (i32.const 1879048190)
                )
               )
              )
              (i32.const 8)
             )
            )
           )
           (i32.const 1)
          )
          (i32.store offset=4
           (local.get $1)
           (local.get $4)
          )
          (local.set $4
           (call $incRef_1277_7
            (i32.const 0)
            (i32.const 0)
           )
          )
          (drop
           (if (result i32)
            (i32.shr_u
             (select
              (i32.const -2)
              (i32.const 2147483646)
              (i32.le_u
               (local.get $2)
               (i32.const 127)
              )
             )
             (i32.const 31)
            )
            (block (result i32)
             (i32.store8 offset=8
              (local.get $1)
              (local.get $2)
             )
             (i32.const 0)
            )
            (if (result i32)
             (i32.shr_u
              (select
               (i32.const -2)
               (i32.const 2147483646)
               (i32.le_u
                (local.get $2)
                (i32.const 2047)
               )
              )
              (i32.const 31)
             )
             (block (result i32)
              (i32.store8 offset=8
               (local.get $1)
               (i32.or
                (i32.and
                 (i32.shr_u
                  (local.get $2)
                  (i32.const 6)
                 )
                 (i32.const 31)
                )
                (i32.const 192)
               )
              )
              (i32.store8 offset=9
               (local.get $1)
               (i32.or
                (i32.and
                 (local.get $2)
                 (i32.const 63)
                )
                (i32.const 128)
               )
              )
              (i32.const 0)
             )
             (if (result i32)
              (i32.shr_u
               (select
                (i32.const -2)
                (i32.const 2147483646)
                (i32.le_u
                 (local.get $2)
                 (i32.const 65535)
                )
               )
               (i32.const 31)
              )
              (block (result i32)
               (i32.store8 offset=8
                (local.get $1)
                (i32.or
                 (i32.and
                  (i32.shr_u
                   (local.get $2)
                   (i32.const 12)
                  )
                  (i32.const 15)
                 )
                 (i32.const 224)
                )
               )
               (i32.store8 offset=9
                (local.get $1)
                (i32.or
                 (i32.and
                  (i32.shr_u
                   (local.get $2)
                   (i32.const 6)
                  )
                  (i32.const 63)
                 )
                 (i32.const 128)
                )
               )
               (i32.store8 offset=10
                (local.get $1)
                (i32.or
                 (i32.and
                  (local.get $2)
                  (i32.const 63)
                 )
                 (i32.const 128)
                )
               )
               (i32.const 0)
              )
              (block (result i32)
               (i32.store8 offset=8
                (local.get $1)
                (i32.or
                 (i32.and
                  (i32.shr_u
                   (local.get $2)
                   (i32.const 18)
                  )
                  (i32.const 7)
                 )
                 (i32.const 240)
                )
               )
               (i32.store8 offset=9
                (local.get $1)
                (i32.or
                 (i32.and
                  (i32.shr_u
                   (local.get $2)
                   (i32.const 12)
                  )
                  (i32.const 63)
                 )
                 (i32.const 128)
                )
               )
               (i32.store8 offset=10
                (local.get $1)
                (i32.or
                 (i32.and
                  (i32.shr_u
                   (local.get $2)
                   (i32.const 6)
                  )
                  (i32.const 63)
                 )
                 (i32.const 128)
                )
               )
               (i32.store8 offset=11
                (local.get $1)
                (i32.or
                 (i32.and
                  (local.get $2)
                  (i32.const 63)
                 )
                 (i32.const 128)
                )
               )
               (i32.const 0)
              )
             )
            )
           )
          )
          (drop
           (call $decRef_1330_7
            (i32.const 0)
            (local.get $4)
           )
          )
          (tuple.extract 0
           (tuple.make
            (if (result i32)
             (i32.shr_u
              (local.get $3)
              (i32.const 31)
             )
             (call $incRef_1277_7
              (i32.const 0)
              (local.get $1)
             )
             (block
              (drop
               (call $decRef_1330_7
                (i32.const 0)
                (local.get $0)
               )
              )
              (drop
               (call $decRef_1330_7
                (i32.const 0)
                (call $incRef_1277_7
                 (i32.const 0)
                 (i32.const 0)
                )
               )
              )
              (drop
               (call $decRef_1330_7
                (i32.const 0)
                (local.get $1)
               )
              )
              (return_call $escape_4330_18
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $1)
               (i32.const 2147483646)
              )
             )
            )
            (block (result i32)
             (drop
              (call $decRef_1330_7
               (i32.const 0)
               (local.get $1)
              )
             )
             (i32.const 1879048190)
            )
           )
          )
         )
         (if (result i32)
          (i32.shr_u
           (select
            (local.tee $3
             (select
              (i32.const -2)
              (i32.const 2147483646)
              (i32.eq
               (local.get $1)
               (global.get $_GRAIN_INT8_SHORTVAL_TAG_1007_1)
              )
             )
            )
            (select
             (i32.const -2)
             (i32.const 2147483646)
             (i32.eq
              (local.get $1)
              (global.get $_GRAIN_INT16_SHORTVAL_TAG_1008_1)
             )
            )
            (i32.shr_u
             (local.get $3)
             (i32.const 31)
            )
           )
           (i32.const 31)
          )
          (block
           (drop
            (call $decRef_1330_7
             (i32.const 0)
             (local.get $0)
            )
           )
           (return_call $itoa32_2403_13
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $2)
            (i32.const 10)
           )
          )
          (if (result i32)
           (i32.shr_u
            (select
             (local.tee $3
              (select
               (i32.const -2)
               (i32.const 2147483646)
               (i32.eq
                (local.get $1)
                (global.get $_GRAIN_UINT8_SHORTVAL_TAG_1009_1)
               )
              )
             )
             (select
              (i32.const -2)
              (i32.const 2147483646)
              (i32.eq
               (local.get $1)
               (global.get $_GRAIN_UINT16_SHORTVAL_TAG_1010_1)
              )
             )
             (i32.shr_u
              (local.get $3)
              (i32.const 31)
             )
            )
            (i32.const 31)
           )
           (block
            (drop
             (call $decRef_1330_7
              (i32.const 0)
              (local.get $0)
             )
            )
            (return_call $utoa32_2393_13
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (local.get $2)
            )
           )
           (block (result i32)
            (i32.store
             (local.tee $1
              (call $malloc_1268_7
               (i32.const 0)
               (i32.const 32)
              )
             )
             (i32.const 1)
            )
            (i32.store offset=4
             (local.get $1)
             (i32.const 21)
            )
            (i64.store offset=8
             (local.get $1)
             (i64.const 7959953386440127804)
            )
            (i64.store offset=16
             (local.get $1)
             (i64.const 8511922508477068064)
            )
            (i64.store offset=24
             (local.get $1)
             (i64.const 267990166625)
            )
            (local.get $1)
           )
          )
         )
        )
       )
       (if (result i32)
        (i32.shr_u
         (select
          (i32.const -2)
          (i32.const 2147483646)
          (i32.eq
           (local.get $1)
           (i32.const -2)
          )
         )
         (i32.const 31)
        )
        (block (result i32)
         (i32.store
          (local.tee $1
           (call $malloc_1268_7
            (i32.const 0)
            (i32.const 16)
           )
          )
          (i32.const 1)
         )
         (i32.store offset=4
          (local.get $1)
          (i32.const 4)
         )
         (i64.store offset=8
          (local.get $1)
          (i64.const 1702195828)
         )
         (local.get $1)
        )
        (if (result i32)
         (i32.shr_u
          (select
           (i32.const -2)
           (i32.const 2147483646)
           (i32.eq
            (local.get $1)
            (i32.const 2147483646)
           )
          )
          (i32.const 31)
         )
         (block (result i32)
          (i32.store
           (local.tee $1
            (call $malloc_1268_7
             (i32.const 0)
             (i32.const 16)
            )
           )
           (i32.const 1)
          )
          (i32.store offset=4
           (local.get $1)
           (i32.const 5)
          )
          (i64.store offset=8
           (local.get $1)
           (i64.const 435728179558)
          )
          (local.get $1)
         )
         (if (result i32)
          (i32.shr_u
           (select
            (i32.const -2)
            (i32.const 2147483646)
            (i32.eq
             (local.get $1)
             (i32.const 1879048190)
            )
           )
           (i32.const 31)
          )
          (block (result i32)
           (i32.store
            (local.tee $1
             (call $malloc_1268_7
              (i32.const 0)
              (i32.const 16)
             )
            )
            (i32.const 1)
           )
           (i32.store offset=4
            (local.get $1)
            (i32.const 4)
           )
           (i64.store offset=8
            (local.get $1)
            (i64.const 1684631414)
           )
           (local.get $1)
          )
          (block (result i32)
           (i32.store
            (local.tee $1
             (call $malloc_1268_7
              (i32.const 0)
              (i32.const 24)
             )
            )
            (i32.const 1)
           )
           (i32.store offset=4
            (local.get $1)
            (i32.const 15)
           )
           (i64.store offset=8
            (local.get $1)
            (i64.const 7959953386440127804)
           )
           (i64.store offset=16
            (local.get $1)
            (i64.const 17563003559966240)
           )
           (local.get $1)
          )
         )
        )
       )
      )
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $toString_4706_18 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $2
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
  )
  (i32.store
   (local.tee $3
    (call $malloc_1268_7
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (i32.const 4)
    )
   )
   (i32.const 0)
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $2)
   )
  )
  (local.set $3
   (call $toStringHelp_4386_18
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $1)
    (i32.const 0)
    (i32.const -2)
    (local.tee $2
     (tuple.extract 0
      (tuple.make
       (local.get $3)
       (i32.const 1879048190)
      )
     )
    )
   )
  )
  (local.set $4
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
  )
  (drop
   (if (result i32)
    (i32.shr_u
     (select
      (i32.const -2)
      (i32.const 2147483646)
      (local.tee $5
       (i32.load
        (local.get $2)
       )
      )
     )
     (i32.const 31)
    )
    (call $free_1275_7
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (local.get $5)
    )
    (i32.const 1879048190)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $4)
   )
  )
  (drop
   (call $free_1275_7
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $2)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $1)
   )
  )
  (tuple.extract 0
   (tuple.make
    (local.get $3)
    (i32.const 1879048190)
   )
  )
 )
 (func $iter_4317_18 (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $4
   (if (result i32)
    (i32.shr_u
     (i32.or
      (i32.shl
       (i32.eq
        (local.tee $4
         (i32.load offset=12
          (local.get $1)
         )
        )
        (i32.const 1)
       )
       (i32.const 31)
      )
      (i32.const 2147483646)
     )
     (i32.const 31)
    )
    (block (result i32)
     (local.set $3
      (call $incRef_1277_7
       (i32.const 0)
       (i32.load offset=20
        (local.get $1)
       )
      )
     )
     (local.set $5
      (tuple.extract 0
       (tuple.make
        (call $incRef_1277_7
         (i32.const 0)
         (call $incRef_1277_7
          (i32.const 0)
          (i32.load offset=24
           (local.get $1)
          )
         )
        )
        (call $decRef_1330_7
         (i32.const 0)
         (i32.const 0)
        )
       )
      )
     )
     (local.set $3
      (tuple.extract 0
       (tuple.make
        (call $incRef_1277_7
         (i32.const 0)
         (local.get $3)
        )
        (call $decRef_1330_7
         (i32.const 0)
         (i32.const 0)
        )
       )
      )
     )
     (i32.const 3)
    )
    (if (result i32)
     (i32.shr_u
      (i32.or
       (i32.shl
        (i32.eq
         (local.get $4)
         (i32.const 3)
        )
        (i32.const 31)
       )
       (i32.const 2147483646)
      )
      (i32.const 31)
     )
     (i32.const 1)
     (unreachable)
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $1)
   )
  )
  (drop
   (block $switch.18060_branch_1 (result i32)
    (drop
     (block $switch.18060_branch_2 (result i32)
      (drop
       (block $switch.18060_default (result i32)
        (br_table $switch.18060_branch_1 $switch.18060_branch_2 $switch.18060_default
         (i32.const 0)
         (i32.shr_s
          (local.get $4)
          (i32.const 1)
         )
        )
       )
      )
      (unreachable)
     )
    )
    (i32.store
     (local.tee $1
      (call $malloc_1268_7
       (i32.const 0)
       (i32.const 28)
      )
     )
     (i32.const 2)
    )
    (i32.store offset=4
     (local.get $1)
     (i32.const 1638603609)
    )
    (i32.store offset=8
     (local.get $1)
     (i32.const 11)
    )
    (i32.store offset=12
     (local.get $1)
     (i32.const 1)
    )
    (i32.store offset=16
     (local.get $1)
     (i32.const 2)
    )
    (i32.store offset=20
     (local.get $1)
     (call $incRef_1277_7
      (i32.const 0)
      (local.get $3)
     )
    )
    (i32.store offset=24
     (local.get $1)
     (call $incRef_1277_7
      (i32.const 0)
      (local.get $2)
     )
    )
    (drop
     (call $decRef_1330_7
      (i32.const 0)
      (local.get $2)
     )
    )
    (drop
     (call $decRef_1330_7
      (i32.const 0)
      (local.get $3)
     )
    )
    (return_call $iter_4317_18
     (local.get $0)
     (local.get $5)
     (local.get $1)
    )
   )
  )
  (tuple.extract 0
   (tuple.make
    (call $incRef_1277_7
     (i32.const 0)
     (local.get $2)
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $2)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $3)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $5)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $lam_lambda_4826_19 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $2
   (if (result i32)
    (i32.shr_u
     (i32.or
      (i32.shl
       (i32.eq
        (local.tee $2
         (i32.load offset=12
          (local.get $1)
         )
        )
        (i32.const 9513)
       )
       (i32.const 31)
      )
      (i32.const 2147483646)
     )
     (i32.const 31)
    )
    (block (result i32)
     (local.set $3
      (tuple.extract 0
       (tuple.make
        (call $incRef_1277_7
         (i32.const 0)
         (call $incRef_1277_7
          (i32.const 0)
          (i32.load offset=20
           (local.get $1)
          )
         )
        )
        (call $decRef_1330_7
         (i32.const 0)
         (i32.const 0)
        )
       )
      )
     )
     (i32.const 1)
    )
    (if (result i32)
     (i32.shr_u
      (i32.or
       (i32.shl
        (i32.eq
         (local.get $2)
         (i32.const 9515)
        )
        (i32.const 31)
       )
       (i32.const 2147483646)
      )
      (i32.const 31)
     )
     (block (result i32)
      (local.set $4
       (tuple.extract 0
        (tuple.make
         (call $incRef_1277_7
          (i32.const 0)
          (call $incRef_1277_7
           (i32.const 0)
           (i32.load offset=20
            (local.get $1)
           )
          )
         )
         (call $decRef_1330_7
          (i32.const 0)
          (i32.const 0)
         )
        )
       )
      )
      (i32.const 3)
     )
     (i32.const 5)
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $1)
   )
  )
  (tuple.extract 0
   (tuple.make
    (block $switch.18194_outer (result i32)
     (drop
      (block $switch.18194_branch_1 (result i32)
       (drop
        (block $switch.18194_branch_2 (result i32)
         (drop
          (block $switch.18194_branch_3 (result i32)
           (drop
            (block $switch.18194_default (result i32)
             (br_table $switch.18194_branch_1 $switch.18194_branch_2 $switch.18194_branch_3 $switch.18194_default
              (i32.const 0)
              (i32.shr_s
               (local.get $2)
               (i32.const 1)
              )
             )
            )
           )
           (unreachable)
          )
         )
         (i32.store
          (local.tee $1
           (call $malloc_1268_7
            (i32.const 0)
            (i32.const 20)
           )
          )
          (i32.const 2)
         )
         (i32.store offset=4
          (local.get $1)
          (i32.const 501102191)
         )
         (i32.store offset=8
          (local.get $1)
          (i32.const 7)
         )
         (i32.store offset=12
          (local.get $1)
          (i32.const 3)
         )
         (i32.store offset=16
          (local.get $1)
          (i32.const 0)
         )
         (br $switch.18194_outer
          (local.get $1)
         )
        )
       )
       (i32.store
        (local.tee $1
         (call $malloc_1268_7
          (i32.const 0)
          (i32.const 32)
         )
        )
        (i32.const 1)
       )
       (i32.store offset=4
        (local.get $1)
        (i32.const 18)
       )
       (i64.store offset=8
        (local.get $1)
        (i64.const 2334106421097295433)
       )
       (i64.store offset=16
        (local.get $1)
        (i64.const 8389754676633367137)
       )
       (i64.store offset=24
        (local.get $1)
        (i64.const 8250)
       )
       (local.set $2
        (call $concat_4322_18
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (local.get $1)
         (call $incRef_1277_7
          (i32.const 0)
          (local.get $4)
         )
        )
       )
       (i32.store
        (local.tee $1
         (call $malloc_1268_7
          (i32.const 0)
          (i32.const 24)
         )
        )
        (i32.const 2)
       )
       (i32.store offset=4
        (local.get $1)
        (i32.const 501102191)
       )
       (i32.store offset=8
        (local.get $1)
        (i32.const 7)
       )
       (i32.store offset=12
        (local.get $1)
        (i32.const 1)
       )
       (i32.store offset=16
        (local.get $1)
        (i32.const 1)
       )
       (i32.store offset=20
        (local.get $1)
        (local.get $2)
       )
       (br $switch.18194_outer
        (local.get $1)
       )
      )
     )
     (i32.store
      (local.tee $1
       (call $malloc_1268_7
        (i32.const 0)
        (i32.const 24)
       )
      )
      (i32.const 1)
     )
     (i32.store offset=4
      (local.get $1)
      (i32.const 9)
     )
     (i64.store offset=8
      (local.get $1)
      (i64.const 4207895275503182150)
     )
     (i64.store offset=16
      (local.get $1)
      (i64.const 32)
     )
     (local.set $2
      (call $concat_4322_18
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $1)
       (call $incRef_1277_7
        (i32.const 0)
        (local.get $3)
       )
      )
     )
     (i32.store
      (local.tee $1
       (call $malloc_1268_7
        (i32.const 0)
        (i32.const 24)
       )
      )
      (i32.const 2)
     )
     (i32.store offset=4
      (local.get $1)
      (i32.const 501102191)
     )
     (i32.store offset=8
      (local.get $1)
      (i32.const 7)
     )
     (i32.store offset=12
      (local.get $1)
      (i32.const 1)
     )
     (i32.store offset=16
      (local.get $1)
      (i32.const 1)
     )
     (i32.store offset=20
      (local.get $1)
      (local.get $2)
     )
     (local.get $1)
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $3)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $4)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $lam_lambda_4844_19 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (return_call $toString_4706_18
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
   (local.get $1)
  )
 )
 (func $collatz_1113_20 (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $3
   (i32.const 1)
  )
  (drop
   (loop $MFor_loop.18224 (result i32)
    (block $MFor.18223 (result i32)
     (local.set $2
      (call $incRef_1277_7
       (i32.const 0)
       (local.get $1)
      )
     )
     (local.set $5
      (call $incRef_1277_7
       (i32.const 0)
       (i32.const 0)
      )
     )
     (if
      (i32.shr_u
       (local.tee $4
        (i32.xor
         (call $isNaN_2723_14
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $2)
         )
         (i32.const -2147483648)
        )
       )
       (i32.const 31)
      )
      (local.set $4
       (i32.xor
        (call $isNaN_2723_14
         (call $incRef_1277_7
          (i32.const 0)
          (i32.const 0)
         )
         (i32.const 3)
        )
        (i32.const -2147483648)
       )
      )
     )
     (drop
      (br_if $MFor.18223
       (i32.const 1879048190)
       (i32.eqz
        (i32.shr_u
         (tuple.extract 0
          (tuple.make
           (if (result i32)
            (i32.shr_u
             (local.get $4)
             (i32.const 31)
            )
            (select
             (i32.const -2)
             (i32.const 2147483646)
             (i32.gt_s
              (call $cmp_3442_14
               (call $incRef_1277_7
                (i32.const 0)
                (i32.const 0)
               )
               (local.get $2)
               (i32.const 3)
              )
              (i32.const 0)
             )
            )
            (local.get $4)
           )
           (block (result i32)
            (drop
             (call $decRef_1330_7
              (i32.const 0)
              (local.get $5)
             )
            )
            (drop
             (call $decRef_1330_7
              (i32.const 0)
              (local.get $2)
             )
            )
            (drop
             (call $decRef_1330_7
              (i32.const 0)
              (i32.const 3)
             )
            )
            (i32.const 1879048190)
           )
          )
         )
         (i32.const 31)
        )
       )
      )
     )
     (local.set $2
      (call $incRef_1277_7
       (i32.const 0)
       (local.get $3)
      )
     )
     (local.set $3
      (tuple.extract 0
       (tuple.make
        (call $incRef_1277_7
         (i32.const 0)
         (call $+_3661_14
          (call $incRef_1277_7
           (i32.const 0)
           (i32.const 0)
          )
          (local.get $2)
         )
        )
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $3)
        )
       )
      )
     )
     (local.set $2
      (call $incRef_1277_7
       (i32.const 0)
       (local.get $1)
      )
     )
     (local.set $2
      (call $%_3677_14
       (call $incRef_1277_7
        (i32.const 0)
        (i32.const 0)
       )
       (local.get $2)
      )
     )
     (local.set $1
      (tuple.extract 0
       (tuple.make
        (call $incRef_1277_7
         (i32.const 0)
         (if (result i32)
          (i32.shr_u
           (call $equal_4128_16
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $2)
            (i32.const 1)
           )
           (i32.const 31)
          )
          (block (result i32)
           (local.set $2
            (call $incRef_1277_7
             (i32.const 0)
             (local.get $1)
            )
           )
           (call $/_3673_14
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $2)
            (i32.const 5)
           )
          )
          (block (result i32)
           (local.set $2
            (call $incRef_1277_7
             (i32.const 0)
             (local.get $1)
            )
           )
           (local.set $2
            (call $*_3669_14
             (call $incRef_1277_7
              (i32.const 0)
              (i32.const 0)
             )
             (i32.const 7)
             (local.get $2)
            )
           )
           (call $+_3661_14
            (call $incRef_1277_7
             (i32.const 0)
             (i32.const 0)
            )
            (local.get $2)
           )
          )
         )
        )
        (call $decRef_1330_7
         (i32.const 0)
         (local.get $1)
        )
       )
      )
     )
     (br $MFor_loop.18224)
    )
   )
  )
  (local.set $2
   (call $incRef_1277_7
    (i32.const 0)
    (local.get $3)
   )
  )
  (tuple.extract 0
   (tuple.make
    (tuple.extract 0
     (tuple.make
      (call $incRef_1277_7
       (i32.const 0)
       (call $+_3661_14
        (call $incRef_1277_7
         (i32.const 0)
         (i32.const 0)
        )
        (local.get $2)
       )
      )
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $3)
      )
     )
    )
    (block (result i32)
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $0)
      )
     )
     (drop
      (call $decRef_1330_7
       (i32.const 0)
       (local.get $1)
      )
     )
     (i32.const 1879048190)
    )
   )
  )
 )
 (func $_start.19540 (; has Stack IR ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (global.set $_SMAX_I32_1001_0
   (i32.const 2147483647)
  )
  (global.set $_SMIN8_I32_1004_0
   (i32.const -127)
  )
  (global.set $_SMAX8_I32_1005_0
   (i32.const 127)
  )
  (global.set $_UMAX8_I32_1006_0
   (i32.const 255)
  )
  (global.set $_SMIN16_I32_1007_0
   (i32.const -32767)
  )
  (global.set $_SMAX16_I32_1008_0
   (i32.const 32767)
  )
  (global.set $_UMAX16_I32_1009_0
   (i32.const 65535)
  )
  (global.set $_SMAX_I64_1011_0
   (i64.const 9223372036854775807)
  )
  (global.set $_UMAX_I64_1013_0
   (i64.const -1)
  )
  (global.set $_SMIN8_I64_1014_0
   (i64.const -127)
  )
  (global.set $_SMAX8_I64_1015_0
   (i64.const 127)
  )
  (global.set $_UMAX8_I64_1016_0
   (i64.const 255)
  )
  (global.set $_SMIN16_I64_1017_0
   (i64.const -32767)
  )
  (global.set $_SMAX16_I64_1018_0
   (i64.const 32767)
  )
  (global.set $_UMAX16_I64_1019_0
   (i64.const 65535)
  )
  (global.set $_SMIN32_I64_1020_0
   (i64.const -2147483648)
  )
  (global.set $_SMAX32_I64_1021_0
   (i64.const 2147483647)
  )
  (global.set $_UMAX32_I64_1023_0
   (i64.const 4294967295)
  )
  (global.set $_GRAIN_NUMBER_TAG_TYPE_1000_1
   (i32.const 1)
  )
  (global.set $_GRAIN_SHORTVAL_TAG_TYPE_1001_1
   (i32.const 2)
  )
  (global.set $_GRAIN_NUMBER_TAG_MASK_1004_1
   (i32.const 1)
  )
  (global.set $_GRAIN_GENERIC_TAG_MASK_1005_1
   (i32.const 7)
  )
  (global.set $_GRAIN_INT8_SHORTVAL_TAG_1007_1
   (i32.const 1)
  )
  (global.set $_GRAIN_INT16_SHORTVAL_TAG_1008_1
   (i32.const 2)
  )
  (global.set $_GRAIN_UINT8_SHORTVAL_TAG_1009_1
   (i32.const 3)
  )
  (global.set $_GRAIN_UINT16_SHORTVAL_TAG_1010_1
   (i32.const 4)
  )
  (global.set $_GRAIN_GENERIC_SHORTVAL_TAG_MASK_1011_1
   (i32.const 248)
  )
  (global.set $_GRAIN_INT8_TAG_MASK_1012_1
   (i32.const 8)
  )
  (global.set $_GRAIN_INT16_TAG_MASK_1013_1
   (i32.const 16)
  )
  (global.set $_GRAIN_STRING_HEAP_TAG_1016_1
   (i32.const 1)
  )
  (global.set $_GRAIN_ADT_HEAP_TAG_1017_1
   (i32.const 2)
  )
  (global.set $_GRAIN_RECORD_HEAP_TAG_1018_1
   (i32.const 3)
  )
  (global.set $_GRAIN_ARRAY_HEAP_TAG_1019_1
   (i32.const 4)
  )
  (global.set $_GRAIN_BOXED_NUM_HEAP_TAG_1020_1
   (i32.const 5)
  )
  (global.set $_GRAIN_LAMBDA_HEAP_TAG_1021_1
   (i32.const 6)
  )
  (global.set $_GRAIN_TUPLE_HEAP_TAG_1022_1
   (i32.const 7)
  )
  (global.set $_GRAIN_BYTES_HEAP_TAG_1023_1
   (i32.const 8)
  )
  (global.set $_GRAIN_INT32_HEAP_TAG_1024_1
   (i32.const 9)
  )
  (global.set $_GRAIN_FLOAT32_HEAP_TAG_1025_1
   (i32.const 10)
  )
  (global.set $_GRAIN_UINT32_HEAP_TAG_1026_1
   (i32.const 11)
  )
  (global.set $_GRAIN_UINT64_HEAP_TAG_1027_1
   (i32.const 12)
  )
  (global.set $_GRAIN_FLOAT64_BOXED_NUM_TAG_1028_1
   (i32.const 1)
  )
  (global.set $_GRAIN_INT64_BOXED_NUM_TAG_1029_1
   (i32.const 2)
  )
  (global.set $_GRAIN_RATIONAL_BOXED_NUM_TAG_1030_1
   (i32.const 3)
  )
  (global.set $_GRAIN_BIGINT_BOXED_NUM_TAG_1031_1
   (i32.const 4)
  )
  (i32.store
   (global.get $runtimeHeapNextPtr_0)
   (i32.const 2)
  )
  (i32.store
   (local.tee $0
    (tuple.extract 0
     (tuple.make
      (i32.add
       (global.get $runtimeHeapNextPtr_0)
       (i32.const 8)
      )
      (block (result i32)
       (global.set $runtimeHeapNextPtr_0
        (i32.add
         (global.get $runtimeHeapNextPtr_0)
         (i32.const 24)
        )
       )
       (i32.const 0)
      )
     )
    )
   )
   (i32.const 6)
  )
  (i32.store offset=4
   (local.get $0)
   (i32.const 5)
  )
  (i32.store offset=8
   (local.get $0)
   (i32.const -1)
  )
  (i32.store offset=12
   (local.get $0)
   (i32.const 0)
  )
  (global.set $fd_write_1141_5
   (local.get $0)
  )
  (i32.store
   (global.get $runtimeHeapNextPtr_0)
   (i32.const 2)
  )
  (i32.store
   (local.tee $0
    (tuple.extract 0
     (tuple.make
      (i32.add
       (global.get $runtimeHeapNextPtr_0)
       (i32.const 8)
      )
      (block (result i32)
       (global.set $runtimeHeapNextPtr_0
        (i32.add
         (global.get $runtimeHeapNextPtr_0)
         (i32.const 56)
        )
       )
       (i32.const 0)
      )
     )
    )
   )
   (i32.const 4)
  )
  (i32.store offset=4
   (local.get $0)
   (i32.const 10)
  )
  (i32.store offset=8
   (local.get $0)
   (i32.const 0)
  )
  (i32.store offset=12
   (local.get $0)
   (i32.const 0)
  )
  (i32.store offset=16
   (local.get $0)
   (i32.const 0)
  )
  (i32.store offset=20
   (local.get $0)
   (i32.const 0)
  )
  (i32.store offset=24
   (local.get $0)
   (i32.const 0)
  )
  (i32.store offset=28
   (local.get $0)
   (i32.const 0)
  )
  (i32.store offset=32
   (local.get $0)
   (i32.const 0)
  )
  (i32.store offset=36
   (local.get $0)
   (i32.const 0)
  )
  (i32.store offset=40
   (local.get $0)
   (i32.const 0)
  )
  (i32.store offset=44
   (local.get $0)
   (i32.const 0)
  )
  (global.set $iov_1143_5
   (local.get $0)
  )
  (global.set $smallBlockFreePtr_1157_6
   (i32.const 1)
  )
  (global.set $largeBlockFreePtr_1158_6
   (i32.const 1)
  )
  (global.set $heapSize_1160_6
   (i32.const 0)
  )
  (global.set $_HEAP_START_1163_6
   (i32.const 3504)
  )
  (i32.store
   (local.tee $1
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 24)
    )
   )
   (i32.const 1)
  )
  (i32.store offset=4
   (local.get $1)
   (i32.const 14)
  )
  (i64.store offset=8
   (local.get $1)
   (i64.const 7167555147476857415)
  )
  (i64.store offset=16
   (local.get $1)
   (i64.const 121424789663845)
  )
  (i32.store
   (local.tee $0
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 20)
    )
   )
   (i32.const 2)
  )
  (i32.store offset=4
   (local.get $0)
   (i32.const 501102191)
  )
  (i32.store offset=8
   (local.get $0)
   (i32.const 7)
  )
  (i32.store offset=12
   (local.get $0)
   (i32.const 3)
  )
  (i32.store offset=16
   (local.get $0)
   (i32.const 0)
  )
  (global.set $basePrinter_1001_8
   (local.get $0)
  )
  (i32.store
   (local.tee $0
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 20)
    )
   )
   (i32.const 2)
  )
  (i32.store offset=4
   (local.get $0)
   (i32.const 1638603609)
  )
  (i32.store offset=8
   (local.get $0)
   (i32.const 11)
  )
  (i32.store offset=12
   (local.get $0)
   (i32.const 3)
  )
  (i32.store offset=16
   (local.get $0)
   (i32.const 0)
  )
  (global.set $printers_1002_8
   (local.get $0)
  )
  (i32.store
   (local.tee $0
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 20)
    )
   )
   (i32.const 6)
  )
  (i32.store offset=4
   (local.get $0)
   (i32.const 2)
  )
  (i32.store offset=8
   (local.get $0)
   (i32.const -1)
  )
  (i32.store offset=12
   (local.get $0)
   (i32.const 1)
  )
  (global.set $toString_1007_8
   (local.get $0)
  )
  (i32.store offset=16
   (global.get $toString_1007_8)
   (local.get $1)
  )
  (i32.store
   (local.tee $0
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 16)
    )
   )
   (i32.const 6)
  )
  (i32.store offset=4
   (local.get $0)
   (i32.const 2)
  )
  (i32.store offset=8
   (local.get $0)
   (i32.const 0)
  )
  (i32.store offset=12
   (local.get $0)
   (i32.const 0)
  )
  (global.set $runtimeErrorPrinter_1026_8
   (local.get $0)
  )
  (drop
   (call $registerPrinter_1005_8
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (call $incRef_1277_7
     (i32.const 0)
     (global.get $runtimeErrorPrinter_1026_8)
    )
   )
  )
  (i32.store
   (local.tee $0
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 48)
    )
   )
   (i32.const 1)
  )
  (i32.store offset=4
   (local.get $0)
   (i32.const 36)
  )
  (i64.store offset=8
   (local.get $0)
   (i64.const 3978425819141910832)
  )
  (i64.store offset=16
   (local.get $0)
   (i64.const 7378413942531504440)
  )
  (i64.store offset=24
   (local.get $0)
   (i64.const 7957135325236127847)
  )
  (i64.store offset=32
   (local.get $0)
   (i64.const 8535856707940741231)
  )
  (i64.store offset=40
   (local.get $0)
   (i64.const 2054781047)
  )
  (i32.store
   (local.tee $1
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 20)
    )
   )
   (i32.const 6)
  )
  (i32.store offset=4
   (local.get $1)
   (i32.const 3)
  )
  (i32.store offset=8
   (local.get $1)
   (i32.const -1)
  )
  (i32.store offset=12
   (local.get $1)
   (i32.const 1)
  )
  (global.set $bigIntToString_1788_12
   (local.get $1)
  )
  (i32.store offset=16
   (global.get $bigIntToString_1788_12)
   (local.get $0)
  )
  (global.set $_POWERS10_2227_13
   (i32.const -1)
  )
  (global.set $_DIGITS_2236_13
   (i32.const -1)
  )
  (global.set $_HEX_DIGITS_2239_13
   (i32.const -1)
  )
  (global.set $_ANY_DIGITS_2242_13
   (i32.const -1)
  )
  (global.set $_EXP_POWERS_2245_13
   (i32.const -1)
  )
  (global.set $_FRC_POWERS_2248_13
   (i32.const -1)
  )
  (global.set $_K_2443_13
   (i32.const 0)
  )
  (global.set $_dtoa_buf_2569_13
   (i32.const -1)
  )
  (global.set $zero_3786_15
   (i32.const 1)
  )
  (global.set $_LIST_ID_3969_16
   (i32.const 11)
  )
  (i32.store
   (local.tee $0
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 16)
    )
   )
   (i32.const 6)
  )
  (i32.store offset=4
   (local.get $0)
   (i32.const 5)
  )
  (i32.store offset=8
   (local.get $0)
   (i32.const -1)
  )
  (i32.store offset=12
   (local.get $0)
   (i32.const 0)
  )
  (global.set $fd_write_1120_18
   (local.get $0)
  )
  (global.set $_LIST_ID_4221_18
   (i32.const 5)
  )
  (global.set $_OPTION_ID_4222_18
   (i32.const 3)
  )
  (global.set $_RESULT_ID_4223_18
   (i32.const 4)
  )
  (global.set $_RANGE_ID_4224_18
   (i32.const 6)
  )
  (i32.store
   (local.tee $2
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 16)
    )
   )
   (i32.const 1)
  )
  (i32.store offset=4
   (local.get $2)
   (i32.const 4)
  )
  (i64.store offset=8
   (local.get $2)
   (i64.const 1701670739)
  )
  (i32.store
   (local.tee $3
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 16)
    )
   )
   (i32.const 1)
  )
  (i32.store offset=4
   (local.get $3)
   (i32.const 4)
  )
  (i64.store offset=8
   (local.get $3)
   (i64.const 1701736270)
  )
  (i32.store
   (local.tee $4
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 16)
    )
   )
   (i32.const 1)
  )
  (i32.store offset=4
   (local.get $4)
   (i32.const 2)
  )
  (i64.store offset=8
   (local.get $4)
   (i64.const 27471)
  )
  (i32.store
   (local.tee $5
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 16)
    )
   )
   (i32.const 1)
  )
  (i32.store offset=4
   (local.get $5)
   (i32.const 3)
  )
  (i64.store offset=8
   (local.get $5)
   (i64.const 7500357)
  )
  (i32.store
   (local.tee $0
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 24)
    )
   )
   (i32.const 1)
  )
  (i32.store offset=4
   (local.get $0)
   (i32.const 10)
  )
  (i64.store offset=8
   (local.get $0)
   (i64.const 7022329413969535346)
  )
  (i64.store offset=16
   (local.get $0)
   (i64.const 29810)
  )
  (i32.store
   (local.tee $6
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 16)
    )
   )
   (i32.const 1)
  )
  (i32.store offset=4
   (local.get $6)
   (i32.const 8)
  )
  (i64.store offset=8
   (local.get $6)
   (i64.const 7236797953060266354)
  )
  (i32.store
   (local.tee $1
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 16)
    )
   )
   (i32.const 4)
  )
  (i32.store offset=4
   (local.get $1)
   (i32.const 2)
  )
  (i32.store offset=8
   (local.get $1)
   (local.get $0)
  )
  (i32.store offset=12
   (local.get $1)
   (local.get $6)
  )
  (global.set $_RANGE_FIELDS_4229_18
   (local.get $1)
  )
  (i32.store
   (local.tee $0
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 32)
    )
   )
   (i32.const 6)
  )
  (i32.store offset=4
   (local.get $0)
   (i32.const 2)
  )
  (i32.store offset=8
   (local.get $0)
   (i32.const -1)
  )
  (i32.store offset=12
   (local.get $0)
   (i32.const 4)
  )
  (global.set $getBuiltinVariantName_4273_18
   (local.get $0)
  )
  (i32.store offset=16
   (local.tee $0
    (global.get $getBuiltinVariantName_4273_18)
   )
   (local.get $2)
  )
  (i32.store offset=20
   (local.get $0)
   (local.get $3)
  )
  (i32.store offset=24
   (local.get $0)
   (local.get $4)
  )
  (i32.store offset=28
   (local.get $0)
   (local.get $5)
  )
  (local.set $2
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
  )
  (i32.store
   (local.tee $0
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 16)
    )
   )
   (i32.const 6)
  )
  (i32.store offset=4
   (local.get $0)
   (i32.const 2)
  )
  (i32.store offset=8
   (local.get $0)
   (i32.const 1)
  )
  (i32.store offset=12
   (local.get $0)
   (i32.const 0)
  )
  (drop
   (call $registerPrinter_1005_8
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $0)
   )
  )
  (i32.store
   (local.tee $1
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 16)
    )
   )
   (i32.const 6)
  )
  (i32.store offset=4
   (local.get $1)
   (i32.const 2)
  )
  (i32.store offset=8
   (local.get $1)
   (i32.const 2)
  )
  (i32.store offset=12
   (local.get $1)
   (i32.const 0)
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $2)
   )
  )
  (local.set $2
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
  )
  (i32.store
   (local.tee $0
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 24)
    )
   )
   (i32.const 2)
  )
  (i32.store offset=4
   (local.get $0)
   (i32.const 501102191)
  )
  (i32.store offset=8
   (local.get $0)
   (i32.const 7)
  )
  (i32.store offset=12
   (local.get $0)
   (i32.const 1)
  )
  (i32.store offset=16
   (local.get $0)
   (i32.const 1)
  )
  (i32.store offset=20
   (local.get $0)
   (local.get $1)
  )
  (global.set $basePrinter_1001_8
   (tuple.extract 0
    (tuple.make
     (call $incRef_1277_7
      (i32.const 0)
      (local.get $0)
     )
     (call $decRef_1330_7
      (i32.const 0)
      (global.get $basePrinter_1001_8)
     )
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $2)
   )
  )
  (local.set $1
   (i32.const 0)
  )
  (i32.store
   (local.tee $0
    (call $malloc_1268_7
     (i32.const 0)
     (i32.const 20)
    )
   )
   (i32.const 2)
  )
  (i32.store offset=4
   (local.get $0)
   (i32.const 501102191)
  )
  (i32.store offset=8
   (local.get $0)
   (i32.const 7)
  )
  (i32.store offset=12
   (local.get $0)
   (i32.const 3)
  )
  (i32.store offset=16
   (local.get $0)
   (i32.const 0)
  )
  (local.set $2
   (call $collatz_1113_20
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (i32.const 1743)
   )
  )
  (local.set $4
   (call $incRef_1277_7
    (i32.const 0)
    (i32.const 0)
   )
  )
  (local.set $3
   (if (result i32)
    (i32.shr_u
     (i32.or
      (i32.shl
       (i32.eq
        (local.tee $3
         (i32.load offset=12
          (local.get $0)
         )
        )
        (i32.const 3)
       )
       (i32.const 31)
      )
      (i32.const 2147483646)
     )
     (i32.const 31)
    )
    (i32.const 3)
    (if (result i32)
     (i32.shr_u
      (i32.or
       (i32.shl
        (i32.eq
         (local.get $3)
         (i32.const 1)
        )
        (i32.const 31)
       )
       (i32.const 2147483646)
      )
      (i32.const 31)
     )
     (block (result i32)
      (local.set $1
       (tuple.extract 0
        (tuple.make
         (call $incRef_1277_7
          (i32.const 0)
          (call $incRef_1277_7
           (i32.const 0)
           (i32.load offset=20
            (local.get $0)
           )
          )
         )
         (call $decRef_1330_7
          (i32.const 0)
          (i32.const 0)
         )
        )
       )
      )
      (i32.const 1)
     )
     (unreachable)
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $0)
   )
  )
  (local.set $3
   (block $switch.18002_outer (result i32)
    (drop
     (block $switch.18002_branch_1 (result i32)
      (drop
       (block $switch.18002_branch_2 (result i32)
        (drop
         (block $switch.18002_default (result i32)
          (br_table $switch.18002_branch_1 $switch.18002_branch_2 $switch.18002_default
           (i32.const 0)
           (i32.shr_s
            (local.get $3)
            (i32.const 1)
           )
          )
         )
        )
        (unreachable)
       )
      )
      (i32.store
       (local.tee $0
        (call $malloc_1268_7
         (i32.const 0)
         (i32.const 16)
        )
       )
       (i32.const 1)
      )
      (i32.store offset=4
       (local.get $0)
       (i32.const 1)
      )
      (i64.store offset=8
       (local.get $0)
       (i64.const 10)
      )
      (br $switch.18002_outer
       (local.get $0)
      )
     )
    )
    (call $incRef_1277_7
     (i32.const 0)
     (local.get $1)
    )
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $1)
   )
  )
  (local.set $0
   (call $toString_4706_18
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (call $incRef_1277_7
     (i32.const 0)
     (local.get $2)
    )
   )
  )
  (local.set $1
   (call $concat_4322_18
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $0)
    (call $incRef_1277_7
     (i32.const 0)
     (local.get $3)
    )
   )
  )
  (i32.store
   (local.tee $0
    (call $malloc_1268_7
     (call $incRef_1277_7
      (i32.const 0)
      (i32.const 0)
     )
     (i32.const 20)
    )
   )
   (i32.add
    (local.get $1)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
  (call $fd_write_1141_5
   (call $incRef_1277_7
    (i32.const 0)
    (global.get $fd_write_1120_18)
   )
   (i32.const 1)
   (local.get $0)
   (i32.const 1)
   (i32.add
    (local.get $0)
    (i32.const 16)
   )
  )
  (drop
   (call $free_1275_7
    (call $incRef_1277_7
     (i32.const 0)
     (i32.const 0)
    )
    (local.get $0)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $2)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $3)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $4)
   )
  )
  (drop
   (call $decRef_1330_7
    (i32.const 0)
    (local.get $1)
   )
  )
 )
 (func $collatz (; has Stack IR ;) (param $0 i32) (result i32)
  (call $collatz_1113_20
   (i32.const 0)
   (local.get $0)
  )
 )
)
