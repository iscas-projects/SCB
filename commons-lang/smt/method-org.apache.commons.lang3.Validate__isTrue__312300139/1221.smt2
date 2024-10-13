(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var503 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var631 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var631 null-Bool)))
(declare-const var1896 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1896 null-String)))
(declare-const var3722 Int) ; Statement: l0 := @parameter2: long 
(assert (not (= var3722 null-Int)))
 ; Statement: if z0 != 0 goto return 
(assert (not (= (ite var631 1 0) 0))) ; Cond: z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var631=z0, var1896=r1, var503=null_type, var3722=l0}
; {z0=var631, r1=var1896, null_type=var503, l0=var3722}
;seq 
;cnt {}
;stmts z0 := @parameter0: boolean;	r1 := @parameter1: java.lang.String;	l0 := @parameter2: long;	if z0 != 0 goto return;	return
;block_num 2