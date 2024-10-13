(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1783 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-Bool Bool)
(declare-const null-Float64 Float64)
(declare-const null-var1783 var1783)
(declare-const var192 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var192 null-Bool)))
(declare-const var455 Float64) ; Statement: d0 := @parameter1: double 
(assert (not (= var455 null-Float64)))
(declare-const var139 var1783) ; Statement: r4 := @parameter2: java.math.RoundingMode 
(assert (not (= var139 null-var1783)))
 ; Statement: if z0 != 0 goto return 
(assert (not (= (ite var192 1 0) 0))) ; Cond: z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var192=z0, var455=d0, var1783=java.math.RoundingMode, var139=r4}
; {z0=var192, d0=var455, java.math.RoundingMode=var1783, r4=var139}
;seq 
;cnt {}
;stmts z0 := @parameter0: boolean;	d0 := @parameter1: double;	r4 := @parameter2: java.math.RoundingMode;	if z0 != 0 goto return;	return
;block_num 2