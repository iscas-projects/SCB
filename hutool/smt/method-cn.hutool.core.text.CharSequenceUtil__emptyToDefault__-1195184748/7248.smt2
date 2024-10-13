(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3204 0)
(declare-sort var2098 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2098_isEmpty/1540305040 (String) Bool)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-String String)
(declare-const var2823 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2823 null-String)))
(declare-const var382 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var382 null-String)))
(define-const var2360 Bool (var2098_isEmpty/1540305040 var2823)) ; Statement: $z0 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert (= (ite var2360 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3050 String (String_toString/-1426662429 var2823)) ; Statement: $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2098_isEmpty/1540305040=([java.lang.CharSequence], boolean), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var2823=r0, var382=r1, var3204=null_type, var2098=cn.hutool.core.text.CharSequenceUtil, var2360=$z0, var3050=$r2}
; {r0=var2823, r1=var382, null_type=var3204, cn.hutool.core.text.CharSequenceUtil=var2098, $z0=var2360, $r2=var3050}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 == 0 goto $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	return $r2
;block_num 3