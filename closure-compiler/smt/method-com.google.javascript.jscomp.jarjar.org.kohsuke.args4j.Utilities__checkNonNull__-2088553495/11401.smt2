(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3747 0)
(declare-sort var1030 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3747 var3747)
(declare-const null-String String)
(declare-const var2636 var3747) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2636 null-var3747)))
(declare-const var2498 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2498 null-String)))
 ; Statement: if r0 != null goto return 
(assert (not (= var2636 null-var3747))) ; Cond: r0 != null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3747=java.lang.Object, var2636=r0, var2498=r3, var1030=null_type}
; {java.lang.Object=var3747, r0=var2636, r3=var2498, null_type=var1030}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Object;	r3 := @parameter1: java.lang.String;	if r0 != null goto return;	return
;block_num 2