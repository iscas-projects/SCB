(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1000 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3905 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3905 null-Int)))
(declare-const var3206 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3206 null-String)))
 ; Statement: if i0 >= 0 goto return i0 
(assert (>= var3905 0)) ; Cond: i0 >= 0 
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3905=i0, var3206=r2, var1000=null_type}
; {i0=var3905, r2=var3206, null_type=var1000}
;seq 
;cnt {}
;stmts i0 := @parameter0: int;	r2 := @parameter1: java.lang.String;	if i0 >= 0 goto return i0;	return i0
;block_num 2