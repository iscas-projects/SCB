(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1495 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const null-Float64 Float64)
(declare-const var2361 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2361 null-Bool)))
(declare-const var3259 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3259 null-String)))
(declare-const var2060 Float64) ; Statement: d0 := @parameter2: double 
(assert (not (= var2060 null-Float64)))
 ; Statement: if z0 != 0 goto return 
(assert (not (= (ite var2361 1 0) 0))) ; Cond: z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2361=z0, var3259=r1, var1495=null_type, var2060=d0}
; {z0=var2361, r1=var3259, null_type=var1495, d0=var2060}
;seq 
;cnt {}
;stmts z0 := @parameter0: boolean;	r1 := @parameter1: java.lang.String;	d0 := @parameter2: double;	if z0 != 0 goto return;	return
;block_num 2