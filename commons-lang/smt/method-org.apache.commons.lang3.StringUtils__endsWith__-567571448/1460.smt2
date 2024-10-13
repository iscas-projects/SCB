(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var184 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var184 null-String)))
(declare-const var720 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var720 null-String)))
(declare-const var2886 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2886 null-Bool)))
 ; Statement: if r0 == null goto (branch) 
(assert (= var184 null-String)) ; Cond: r0 == null 
 ; Statement: if r0 != r1 goto $z2 = 0 
(assert (not (not (= var184 var720)))) ; Negate: Cond: r0 != r1  
(define-const var3585 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var184=r0, var720=r1, var2886=z0, var3585=$z2}
; {r0=var184, r1=var720, z0=var2886, $z2=var3585}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.CharSequence;	z0 := @parameter2: boolean;	if r0 == null goto (branch);	if r0 != r1 goto $z2 = 0;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 4