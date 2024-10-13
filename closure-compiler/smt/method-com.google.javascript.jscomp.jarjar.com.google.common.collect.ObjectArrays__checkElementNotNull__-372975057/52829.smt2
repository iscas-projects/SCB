(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var835 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var835 var835)
(declare-const null-Int Int)
(declare-const var259 var835) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var259 null-var835)))
(declare-const var2100 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2100 null-Int)))
 ; Statement: if r0 != null goto return r0 
(assert (not (= var259 null-var835))) ; Cond: r0 != null 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var835=java.lang.Object, var259=r0, var2100=i0}
; {java.lang.Object=var835, r0=var259, i0=var2100}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Object;	i0 := @parameter1: int;	if r0 != null goto return r0;	return r0
;block_num 2