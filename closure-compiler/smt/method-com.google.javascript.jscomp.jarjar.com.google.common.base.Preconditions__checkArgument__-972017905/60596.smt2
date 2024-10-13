(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3029 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-Bool Bool)
(declare-const null-var3029 var3029)
(declare-const var2602 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2602 null-Bool)))
(declare-const var1448 var3029) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var1448 null-var3029)))
 ; Statement: if z0 != 0 goto return 
(assert (not (= (ite var2602 1 0) 0))) ; Cond: z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2602=z0, var3029=java.lang.Object, var1448=r1}
; {z0=var2602, java.lang.Object=var3029, r1=var1448}
;seq 
;cnt {}
;stmts z0 := @parameter0: boolean;	r1 := @parameter1: java.lang.Object;	if z0 != 0 goto return;	return
;block_num 2