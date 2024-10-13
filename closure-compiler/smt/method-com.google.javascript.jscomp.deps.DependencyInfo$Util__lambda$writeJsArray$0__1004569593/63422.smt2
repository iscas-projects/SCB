(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2001 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-String String)
(declare-const var3360 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3360 null-String)))
(assert true)
(define-const var2479 String (replace/2138489945 var3360 (cast-from-String-to-String "\u0027") (cast-from-String-to-String "\u005c\u0027"))) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\'", "\\\'") 
(define-const var2761 String (str.++ "\u0027\u0001\u0027" var2479)) ; Statement: $r2 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\'\u0001\'") 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var3360=r0, var2001=null_type, var2479=$r1, var2761=$r2}
; {r0=var3360, null_type=var2001, $r1=var2479, $r2=var2761}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\'", "\\\'");	$r2 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\'\u0001\'");	return $r2
;block_num 1