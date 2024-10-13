(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1866 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var1866 var1866)
(declare-const var3078 var1866) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3078 null-var1866)))
(declare-const var331 var1866) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var331 null-var1866)))
 ; Statement: if r0 != null goto return r0 
(assert (not (= var3078 null-var1866))) ; Cond: r0 != null 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1866=java.lang.Object, var3078=r0, var331=r2}
; {java.lang.Object=var1866, r0=var3078, r2=var331}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	if r0 != null goto return r0;	return r0
;block_num 2