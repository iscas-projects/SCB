(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-String String)
(declare-const var509 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var509 null-String)))
 ; Statement: if null != r0 goto $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert (not (= null-String var509))) ; Cond: null != r0 
(define-const var1624 String (String_toString/-1426662429 var509)) ; Statement: $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var509=r0, var1624=$r1}
; {r0=var509, $r1=var1624}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	if null != r0 goto $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	return $r1
;block_num 3