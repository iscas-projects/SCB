(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2289 0)
(declare-sort var1667 0)
(declare-sort var1779 0)
(declare-sort var3605 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1779-init () var1779)
(declare-fun <init>/1642269841 (var1779 String var3605) void)
(declare-fun cast-from-var1667-to-var3605 (var1667) var3605)
(declare-const null-var2289 var2289)
(declare-const null-var1667 var1667)
(declare-const var1545 var2289) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm 
(assert (not (= var1545 null-var2289)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1793 var1667) ; Statement: $r10 := @caughtexception 
(assert (not (= var1793 null-var1667)))
(define-const var691 var1779 var1779-init) ; Statement: $r11 = new java.lang.RuntimeException 
(assert true)
;(assert (<init>/1642269841 var691 "Unable to call parsePartialFrom" (cast-from-var1667-to-var3605 var1793))) ; Statement: specialinvoke $r11.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>("Unable to call parsePartialFrom", $r10) 

(declare-const var691!1 var1779)
(declare-const var1412 String)
(declare-const var1793!1 var1667)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var1779-init=([], java.lang.RuntimeException), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var1667-to-var3605=([java.lang.IllegalAccessException], java.lang.Throwable)}
; {var2289=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm, var1545=r0, var1667=java.lang.IllegalAccessException, var1793=$r10, var1779=java.lang.RuntimeException, var691=$r11, var3605=java.lang.Throwable, var1412="Unable to call parsePartialFrom"}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm=var2289, r0=var1545, java.lang.IllegalAccessException=var1667, $r10=var1793, java.lang.RuntimeException=var1779, $r11=var691, java.lang.Throwable=var3605, "Unable to call parsePartialFrom"=var1412}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm;	$r10 := @caughtexception;	$r11 = new java.lang.RuntimeException;	specialinvoke $r11.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>("Unable to call parsePartialFrom", $r10);	throw $r11
;block_num 2