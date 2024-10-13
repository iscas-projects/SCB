(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3066 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3066 null-String)))
(declare-const var1002 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var1002 null-String)))
(declare-const var3618 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3618 null-Bool)))
 ; Statement: if r0 == null goto (branch) 
(assert (= var3066 null-String)) ; Cond: r0 == null 
 ; Statement: if r0 != r1 goto $z2 = 0 
(assert (not (not (= var3066 var1002)))) ; Negate: Cond: r0 != r1  
(define-const var2959 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3066=r0, var1002=r1, var3618=z0, var2959=$z2}
; {r0=var3066, r1=var1002, z0=var3618, $z2=var2959}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.CharSequence;	z0 := @parameter2: boolean;	if r0 == null goto (branch);	if r0 != r1 goto $z2 = 0;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 4