(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2754 0)
(declare-sort var2073 0)
(declare-sort var2414 0)
(declare-sort var184 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2414-init () var2414)
(declare-fun <init>/1642269841 (var2414 String var184) void)
(declare-fun cast-from-var2073-to-var184 (var2073) var184)
(declare-const null-var2754 var2754)
(declare-const null-var2073 var2073)
(declare-const var1490 var2754) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm 
(assert (not (= var1490 null-var2754)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var960 var2073) ; Statement: $r8 := @caughtexception 
(assert (not (= var960 null-var2073)))
(define-const var3961 var2414 var2414-init) ; Statement: $r9 = new java.lang.RuntimeException 
(assert true)
;(assert (<init>/1642269841 var3961 "Unable to understand proto buffer" (cast-from-var2073-to-var184 var960))) ; Statement: specialinvoke $r9.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>("Unable to understand proto buffer", $r8) 

(declare-const var3961!1 var2414)
(declare-const var3889 String)
(declare-const var960!1 var2073)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2414-init=([], java.lang.RuntimeException), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var2073-to-var184=([com.google.javascript.jscomp.jarjar.com.google.protobuf.InvalidProtocolBufferException], java.lang.Throwable)}
; {var2754=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm, var1490=r0, var2073=com.google.javascript.jscomp.jarjar.com.google.protobuf.InvalidProtocolBufferException, var960=$r8, var2414=java.lang.RuntimeException, var3961=$r9, var184=java.lang.Throwable, var3889="Unable to understand proto buffer"}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm=var2754, r0=var1490, com.google.javascript.jscomp.jarjar.com.google.protobuf.InvalidProtocolBufferException=var2073, $r8=var960, java.lang.RuntimeException=var2414, $r9=var3961, java.lang.Throwable=var184, "Unable to understand proto buffer"=var3889}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm;	$r8 := @caughtexception;	$r9 = new java.lang.RuntimeException;	specialinvoke $r9.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>("Unable to understand proto buffer", $r8);	throw $r9
;block_num 2