(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1232 0)
(declare-sort var3184 0)
(declare-sort var3040 0)
(declare-sort var3164 0)
(declare-sort var3772 0)
(declare-sort var3460 0)
(declare-sort var133 0)
(declare-sort var2016 0)
(declare-sort var1597 0)
(declare-sort var554 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun log/-65407072 (var3164 var3772 String var3460) void)
(declare-fun cast-from-var3040-to-var3460 (var3040) var3460)
(declare-fun getBytes/-163691139 (String var133) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var554-init () var554)
(declare-fun <init>/1812293911 (var554 var3460) void)
(declare-fun cast-from-var1597-to-var3460 (var1597) var3460)
(declare-const null-var1232 var1232)
(declare-const null-String String)
(declare-const null-var3040 var3040)
(declare-const var1232-logger var3164)
(declare-const var3772-WARNING var3772)
(declare-const var2016-UTF_8 var133)
(declare-const null-var1597 var1597)
(declare-const var159 var1232) ; Statement: r6 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream 
(assert (not (= var159 null-var1232)))
(declare-const var3417 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3417 null-String)))
(declare-const var3090 var3040) ; Statement: r0 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnpairedSurrogateException 
(assert (not (= var3090 null-var3040)))
(define-const var3850 var3164 var1232-logger) ; Statement: $r2 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream: java.util.logging.Logger logger> 
(define-const var1858 var3772 var3772-WARNING) ; Statement: $r1 = <java.util.logging.Level: java.util.logging.Level WARNING> 
(assert true)
;(assert (log/-65407072 var3850 var1858 "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!" (cast-from-var3040-to-var3460 var3090))) ; Statement: virtualinvoke $r2.<java.util.logging.Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r1, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", r0) 

(declare-const var3850!1 var3164)
(declare-const var1858!1 var3772)
(declare-const var2243 String)
(declare-const var3090!1 var3040)
(define-const var3231 var133 var2016-UTF_8) ; Statement: $r4 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset UTF_8> 
(assert true)
(define-const var728 (Array Int Int) (getBytes/-163691139 var3417 var3231)) ; Statement: r5 = virtualinvoke r3.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r4) 
(define-const var3804 Int (getLength-Arr-Int-1 var728)) ; Statement: $i0 = lengthof r5 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2908 var1597) ; Statement: $r8 := @caughtexception 
(assert (not (= var2908 null-var1597)))
(define-const var2009 var554 var554-init) ; Statement: $r9 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException 
(assert true)
;(assert (<init>/1812293911 var2009 (cast-from-var1597-to-var3460 var2908))) ; Statement: specialinvoke $r9.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.Throwable)>($r8) 

(declare-const var2009!1 var554)
(declare-const var2908!1 var1597)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {log/-65407072=([java.util.logging.Logger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void), cast-from-var3040-to-var3460=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnpairedSurrogateException], java.lang.Throwable), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), getLength-Arr-Int-1=([byte[]], int), var554-init=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException), <init>/1812293911=([com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, java.lang.Throwable], void), cast-from-var1597-to-var3460=([java.lang.IndexOutOfBoundsException], java.lang.Throwable)}
; {var1232=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream, var159=r6, var3417=r3, var3184=null_type, var3040=com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnpairedSurrogateException, var3090=r0, var3164=java.util.logging.Logger, var3850=$r2, var3772=java.util.logging.Level, var1858=$r1, var3460=java.lang.Throwable, var2243="Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", var133=java.nio.charset.Charset, var2016=com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal, var3231=$r4, var728=r5, var3804=$i0, var1597=java.lang.IndexOutOfBoundsException, var2908=$r8, var554=com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException, var2009=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream=var1232, r6=var159, r3=var3417, null_type=var3184, com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnpairedSurrogateException=var3040, r0=var3090, java.util.logging.Logger=var3164, $r2=var3850, java.util.logging.Level=var3772, $r1=var1858, java.lang.Throwable=var3460, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"=var2243, java.nio.charset.Charset=var133, com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal=var2016, $r4=var3231, r5=var728, $i0=var3804, java.lang.IndexOutOfBoundsException=var1597, $r8=var2908, com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException=var554, $r9=var2009}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Utf8$UnpairedSurrogateException;	$r2 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream: java.util.logging.Logger logger>;	$r1 = <java.util.logging.Level: java.util.logging.Level WARNING>;	virtualinvoke $r2.<java.util.logging.Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r1, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", r0);	$r4 = <com.google.javascript.jscomp.jarjar.com.google.protobuf.Internal: java.nio.charset.Charset UTF_8>;	r5 = virtualinvoke r3.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r4);	$i0 = lengthof r5;	$r8 := @caughtexception;	$r9 = new com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException;	specialinvoke $r9.<com.google.javascript.jscomp.jarjar.com.google.protobuf.CodedOutputStream$OutOfSpaceException: void <init>(java.lang.Throwable)>($r8);	throw $r9
;block_num 2