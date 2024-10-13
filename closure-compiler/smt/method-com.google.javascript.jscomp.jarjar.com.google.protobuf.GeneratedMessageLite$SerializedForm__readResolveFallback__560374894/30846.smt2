(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3207 0)
(declare-sort var570 0)
(declare-sort var1157 0)
(declare-sort var1821 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1157-init () var1157)
(declare-fun <init>/1642269841 (var1157 String var1821) void)
(declare-fun cast-from-var570-to-var1821 (var570) var1821)
(declare-const null-var3207 var3207)
(declare-const null-var570 var570)
(declare-const var3102 var3207) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm 
(assert (not (= var3102 null-var3207)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var100 var570) ; Statement: $r10 := @caughtexception 
(assert (not (= var100 null-var570)))
(define-const var324 var1157 var1157-init) ; Statement: $r11 = new java.lang.RuntimeException 
(assert true)
;(assert (<init>/1642269841 var324 "Unable to call parsePartialFrom" (cast-from-var570-to-var1821 var100))) ; Statement: specialinvoke $r11.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>("Unable to call parsePartialFrom", $r10) 

(declare-const var324!1 var1157)
(declare-const var1684 String)
(declare-const var100!1 var570)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var1157-init=([], java.lang.RuntimeException), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var570-to-var1821=([java.lang.IllegalAccessException], java.lang.Throwable)}
; {var3207=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm, var3102=r0, var570=java.lang.IllegalAccessException, var100=$r10, var1157=java.lang.RuntimeException, var324=$r11, var1821=java.lang.Throwable, var1684="Unable to call parsePartialFrom"}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm=var3207, r0=var3102, java.lang.IllegalAccessException=var570, $r10=var100, java.lang.RuntimeException=var1157, $r11=var324, java.lang.Throwable=var1821, "Unable to call parsePartialFrom"=var1684}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm;	$r10 := @caughtexception;	$r11 = new java.lang.RuntimeException;	specialinvoke $r11.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>("Unable to call parsePartialFrom", $r10);	throw $r11
;block_num 2