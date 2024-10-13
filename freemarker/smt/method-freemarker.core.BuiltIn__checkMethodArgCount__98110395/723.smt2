(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var745 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var745 var745)
(declare-const null-Int Int)
(declare-const var1588 var745) ; Statement: r1 := @this: freemarker.core.BuiltIn 
(assert (not (= var1588 null-var745)))
(declare-const var110 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var110 null-Int)))
(declare-const var3056 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3056 null-Int)))
 ; Statement: if i0 == i1 goto return 
(assert (= var110 var3056)) ; Cond: i0 == i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var745=freemarker.core.BuiltIn, var1588=r1, var110=i0, var3056=i1}
; {freemarker.core.BuiltIn=var745, r1=var1588, i0=var110, i1=var3056}
;seq 
;cnt {}
;stmts r1 := @this: freemarker.core.BuiltIn;	i0 := @parameter0: int;	i1 := @parameter1: int;	if i0 == i1 goto return;	return
;block_num 2