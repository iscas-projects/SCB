(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2396 0)
(declare-sort var3682 0)
(declare-sort var1400 0)
(declare-sort var2246 0)
(declare-sort var271 0)
(declare-sort var1804 0)
(declare-sort var3107 0)
(declare-sort var3019 0)
(declare-sort var2624 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun log/-65407072 (var2246 var271 String var1804) void)
(declare-fun cast-from-var1400-to-var1804 (var1400) var1804)
(declare-fun getBytes/-163691139 (String var3107) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var2396 var2396)
(declare-const null-String String)
(declare-const null-var1400 var1400)
(declare-const var2396-logger var2246)
(declare-const var271-WARNING var271)
(declare-const var3019-UTF_8 var3107)
(declare-const null-var2624 var2624)
(declare-const var2793 var2396) ; Statement: r6 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream 
(assert (not (= var2793 null-var2396)))
(declare-const var594 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var594 null-String)))
(declare-const var1120 var1400) ; Statement: r0 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnpairedSurrogateException 
(assert (not (= var1120 null-var1400)))
(define-const var66 var2246 var2396-logger) ; Statement: $r2 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream: java.util.logging.Logger logger> 
(define-const var3952 var271 var271-WARNING) ; Statement: $r1 = <java.util.logging.Level: java.util.logging.Level WARNING> 
(assert true)
;(assert (log/-65407072 var66 var3952 "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!" (cast-from-var1400-to-var1804 var1120))) ; Statement: virtualinvoke $r2.<java.util.logging.Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r1, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", r0) 

(declare-const var66!1 var2246)
(declare-const var3952!1 var271)
(declare-const var3481 String)
(declare-const var1120!1 var1400)
(define-const var3453 var3107 var3019-UTF_8) ; Statement: $r4 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset UTF_8> 
(assert true)
(define-const var1990 (Array Int Int) (getBytes/-163691139 var594 var3453)) ; Statement: r5 = virtualinvoke r3.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r4) 
(define-const var1115 Int (getLength-Arr-Int-1 var1990)) ; Statement: $i0 = lengthof r5 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var32 var2624) ; Statement: $r7 := @caughtexception 
(assert (not (= var32 null-var2624)))
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {log/-65407072=([java.util.logging.Logger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void), cast-from-var1400-to-var1804=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnpairedSurrogateException], java.lang.Throwable), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), getLength-Arr-Int-1=([byte[]], int)}
; {var2396=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream, var2793=r6, var594=r3, var3682=null_type, var1400=com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnpairedSurrogateException, var1120=r0, var2246=java.util.logging.Logger, var66=$r2, var271=java.util.logging.Level, var3952=$r1, var1804=java.lang.Throwable, var3481="Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", var3107=java.nio.charset.Charset, var3019=com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal, var3453=$r4, var1990=r5, var1115=$i0, var2624=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, var32=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream=var2396, r6=var2793, r3=var594, null_type=var3682, com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnpairedSurrogateException=var1400, r0=var1120, java.util.logging.Logger=var2246, $r2=var66, java.util.logging.Level=var271, $r1=var3952, java.lang.Throwable=var1804, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"=var3481, java.nio.charset.Charset=var3107, com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal=var3019, $r4=var3453, r5=var1990, $i0=var1115, com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException=var2624, $r7=var32}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnpairedSurrogateException;	$r2 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream: java.util.logging.Logger logger>;	$r1 = <java.util.logging.Level: java.util.logging.Level WARNING>;	virtualinvoke $r2.<java.util.logging.Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r1, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", r0);	$r4 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset UTF_8>;	r5 = virtualinvoke r3.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r4);	$i0 = lengthof r5;	$r7 := @caughtexception;	throw $r7
;block_num 2