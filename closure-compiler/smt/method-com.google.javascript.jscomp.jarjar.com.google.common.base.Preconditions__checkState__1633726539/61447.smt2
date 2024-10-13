(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1977 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-Bool Bool)
(declare-const null-var1977 var1977)
(declare-const var2193 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2193 null-Bool)))
(declare-const var3505 var1977) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var3505 null-var1977)))
 ; Statement: if z0 != 0 goto return 
(assert (not (= (ite var2193 1 0) 0))) ; Cond: z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2193=z0, var1977=java.lang.Object, var3505=r1}
; {z0=var2193, java.lang.Object=var1977, r1=var3505}
;seq 
;cnt {}
;stmts z0 := @parameter0: boolean;	r1 := @parameter1: java.lang.Object;	if z0 != 0 goto return;	return
;block_num 2