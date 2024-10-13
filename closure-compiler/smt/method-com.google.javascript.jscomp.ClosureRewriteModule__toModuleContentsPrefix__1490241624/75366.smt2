(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3170 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-String String)
(declare-const var590 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var590 null-String)))
(assert true)
(define-const var3043 String (replace/1524665721 var590 46 36)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(46, 36) 
(define-const var1565 String (str.++ "module$contents$\u0001_" var3043)) ; Statement: $r2 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("module$contents$\u0001_") 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var590=r0, var3170=null_type, var3043=$r1, var1565=$r2}
; {r0=var590, null_type=var3170, $r1=var3043, $r2=var1565}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(46, 36);	$r2 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("module$contents$\u0001_");	return $r2
;block_num 1