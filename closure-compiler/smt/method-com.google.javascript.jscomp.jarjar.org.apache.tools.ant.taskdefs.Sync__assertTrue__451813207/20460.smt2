(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1214 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2379 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2379 null-String)))
(declare-const var1639 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1639 null-Bool)))
 ; Statement: if z0 != 0 goto return 
(assert (not (= (ite var1639 1 0) 0))) ; Cond: z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2379=r2, var1214=null_type, var1639=z0}
; {r2=var2379, null_type=var1214, z0=var1639}
;seq 
;cnt {}
;stmts r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	if z0 != 0 goto return;	return
;block_num 2