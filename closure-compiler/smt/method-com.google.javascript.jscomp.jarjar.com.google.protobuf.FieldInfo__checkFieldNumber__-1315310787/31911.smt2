(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-Int Int)
(declare-const var1271 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1271 null-Int)))
 ; Statement: if i0 > 0 goto return 
(assert (> var1271 0)) ; Cond: i0 > 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1271=i0}
; {i0=var1271}
;seq 
;cnt {}
;stmts i0 := @parameter0: int;	if i0 > 0 goto return;	return
;block_num 2