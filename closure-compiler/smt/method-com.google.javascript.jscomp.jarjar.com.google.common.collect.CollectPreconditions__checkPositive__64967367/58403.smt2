(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2850 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1359 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1359 null-Int)))
(declare-const var2252 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2252 null-String)))
 ; Statement: if i0 > 0 goto return 
(assert (> var1359 0)) ; Cond: i0 > 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1359=i0, var2252=r2, var2850=null_type}
; {i0=var1359, r2=var2252, null_type=var2850}
;seq 
;cnt {}
;stmts i0 := @parameter0: int;	r2 := @parameter1: java.lang.String;	if i0 > 0 goto return;	return
;block_num 2