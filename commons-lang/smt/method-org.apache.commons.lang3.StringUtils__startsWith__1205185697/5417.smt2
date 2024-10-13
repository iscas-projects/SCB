(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var762 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var762 null-String)))
(declare-const var1660 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var1660 null-String)))
(declare-const var2758 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2758 null-Bool)))
 ; Statement: if r0 == null goto (branch) 
(assert (= var762 null-String)) ; Cond: r0 == null 
 ; Statement: if r0 != r1 goto $z2 = 0 
(assert (not (= var762 var1660))) ; Cond: r0 != r1 
(define-const var3275 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var762=r0, var1660=r1, var2758=z0, var3275=$z2}
; {r0=var762, r1=var1660, z0=var2758, $z2=var3275}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.CharSequence;	z0 := @parameter2: boolean;	if r0 == null goto (branch);	if r0 != r1 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 4