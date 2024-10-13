(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3300 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var126 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var126 null-Bool)))
(declare-const var1299 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1299 null-String)))
(declare-const var705 Int) ; Statement: l0 := @parameter2: long 
(assert (not (= var705 null-Int)))
(declare-const var1293 Int) ; Statement: l1 := @parameter3: long 
(assert (not (= var1293 null-Int)))
 ; Statement: if z0 != 0 goto return 
(assert (not (= (ite var126 1 0) 0))) ; Cond: z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var126=z0, var1299=r2, var3300=null_type, var705=l0, var1293=l1}
; {z0=var126, r2=var1299, null_type=var3300, l0=var705, l1=var1293}
;seq 
;cnt {}
;stmts z0 := @parameter0: boolean;	r2 := @parameter1: java.lang.String;	l0 := @parameter2: long;	l1 := @parameter3: long;	if z0 != 0 goto return;	return
;block_num 2