(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var484 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-String String)
(declare-const var3541 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3541 null-String)))
(declare-const var2829 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2829 null-String)))
(define-const var421 String (str.++ ".\u0001" var2829)) ; Statement: $r2 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>(".\u0001") 
(assert true)
(define-const var3046 Bool (endsWith/985337093 var3541 var421)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>($r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var3541=r0, var484=null_type, var2829=r1, var421=$r2, var3046=$z0}
; {r0=var3541, null_type=var484, r1=var2829, $r2=var421, $z0=var3046}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$r2 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>(".\u0001");	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>($r2);	return $z0
;block_num 1