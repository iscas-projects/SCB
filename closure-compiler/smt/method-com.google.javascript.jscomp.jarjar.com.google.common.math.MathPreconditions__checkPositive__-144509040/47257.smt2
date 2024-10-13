(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3850 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var688 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var688 null-String)))
(declare-const var1575 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1575 null-Int)))
 ; Statement: if i0 > 0 goto return i0 
(assert (> var1575 0)) ; Cond: i0 > 0 
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var688=r2, var3850=null_type, var1575=i0}
; {r2=var688, null_type=var3850, i0=var1575}
;seq 
;cnt {}
;stmts r2 := @parameter0: java.lang.String;	i0 := @parameter1: int;	if i0 > 0 goto return i0;	return i0
;block_num 2