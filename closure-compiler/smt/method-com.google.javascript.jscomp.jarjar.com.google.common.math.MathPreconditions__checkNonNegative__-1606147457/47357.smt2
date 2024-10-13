(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1065 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1016 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1016 null-String)))
(declare-const var1156 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1156 null-Int)))
 ; Statement: if i0 >= 0 goto return i0 
(assert (>= var1156 0)) ; Cond: i0 >= 0 
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1016=r2, var1065=null_type, var1156=i0}
; {r2=var1016, null_type=var1065, i0=var1156}
;seq 
;cnt {}
;stmts r2 := @parameter0: java.lang.String;	i0 := @parameter1: int;	if i0 >= 0 goto return i0;	return i0
;block_num 2