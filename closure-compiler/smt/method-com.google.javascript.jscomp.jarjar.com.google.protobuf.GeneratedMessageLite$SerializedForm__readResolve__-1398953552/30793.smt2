(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var513 0)
(declare-sort var3493 0)
(declare-sort var445 0)
(declare-sort var6 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var445-init () var445)
(declare-fun <init>/1642269841 (var445 String var6) void)
(declare-fun cast-from-var3493-to-var6 (var3493) var6)
(declare-const null-var513 var513)
(declare-const null-var3493 var3493)
(declare-const var2481 var513) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm 
(assert (not (= var2481 null-var513)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var355 var3493) ; Statement: $r8 := @caughtexception 
(assert (not (= var355 null-var3493)))
(define-const var1133 var445 var445-init) ; Statement: $r9 = new java.lang.RuntimeException 
(assert true)
;(assert (<init>/1642269841 var1133 "Unable to understand proto buffer" (cast-from-var3493-to-var6 var355))) ; Statement: specialinvoke $r9.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>("Unable to understand proto buffer", $r8) 

(declare-const var1133!1 var445)
(declare-const var1173 String)
(declare-const var355!1 var3493)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var445-init=([], java.lang.RuntimeException), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var3493-to-var6=([com.google.javascript.jscomp.jarjar.com.google.protobuf.InvalidProtocolBufferException], java.lang.Throwable)}
; {var513=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm, var2481=r0, var3493=com.google.javascript.jscomp.jarjar.com.google.protobuf.InvalidProtocolBufferException, var355=$r8, var445=java.lang.RuntimeException, var1133=$r9, var6=java.lang.Throwable, var1173="Unable to understand proto buffer"}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm=var513, r0=var2481, com.google.javascript.jscomp.jarjar.com.google.protobuf.InvalidProtocolBufferException=var3493, $r8=var355, java.lang.RuntimeException=var445, $r9=var1133, java.lang.Throwable=var6, "Unable to understand proto buffer"=var1173}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm;	$r8 := @caughtexception;	$r9 = new java.lang.RuntimeException;	specialinvoke $r9.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>("Unable to understand proto buffer", $r8);	throw $r9
;block_num 2