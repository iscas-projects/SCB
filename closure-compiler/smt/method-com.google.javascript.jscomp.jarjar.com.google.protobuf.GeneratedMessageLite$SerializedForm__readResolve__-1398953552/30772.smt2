(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3460 0)
(declare-sort var1526 0)
(declare-sort var3772 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readResolveFallback/560374894 (var3460) var3772)
(declare-const null-var3460 var3460)
(declare-const null-var1526 var1526)
(declare-const var1088 var3460) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm 
(assert (not (= var1088 null-var3460)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1181 var1526) ; Statement: $r19 := @caughtexception 
(assert (not (= var1181 null-var1526)))
(assert true)
(define-const var3030 var3772 (readResolveFallback/560374894 var1088)) ; Statement: $r20 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm: java.lang.Object readResolveFallback()>() 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {readResolveFallback/560374894=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm], java.lang.Object)}
; {var3460=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm, var1088=r0, var1526=java.lang.NoSuchFieldException, var1181=$r19, var3772=java.lang.Object, var3030=$r20}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm=var3460, r0=var1088, java.lang.NoSuchFieldException=var1526, $r19=var1181, java.lang.Object=var3772, $r20=var3030}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm;	$r19 := @caughtexception;	$r20 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageLite$SerializedForm: java.lang.Object readResolveFallback()>();	return $r20
;block_num 2