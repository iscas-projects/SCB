(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3316 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1110 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1110 null-Int)))
(declare-const var1046 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1046 null-String)))
 ; Statement: if i0 >= 0 goto return i0 
(assert (>= var1110 0)) ; Cond: i0 >= 0 
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1110=i0, var1046=r2, var3316=null_type}
; {i0=var1110, r2=var1046, null_type=var3316}
;seq 
;cnt {}
;stmts i0 := @parameter0: int;	r2 := @parameter1: java.lang.String;	if i0 >= 0 goto return i0;	return i0
;block_num 2