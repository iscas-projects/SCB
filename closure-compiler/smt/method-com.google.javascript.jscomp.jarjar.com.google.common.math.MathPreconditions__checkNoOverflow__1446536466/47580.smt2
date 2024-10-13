(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1980 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3357 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3357 null-Bool)))
(declare-const var1174 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1174 null-String)))
(declare-const var3259 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3259 null-Int)))
(declare-const var240 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var240 null-Int)))
 ; Statement: if z0 != 0 goto return 
(assert (not (= (ite var3357 1 0) 0))) ; Cond: z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3357=z0, var1174=r2, var1980=null_type, var3259=i0, var240=i1}
; {z0=var3357, r2=var1174, null_type=var1980, i0=var3259, i1=var240}
;seq 
;cnt {}
;stmts z0 := @parameter0: boolean;	r2 := @parameter1: java.lang.String;	i0 := @parameter2: int;	i1 := @parameter3: int;	if z0 != 0 goto return;	return
;block_num 2