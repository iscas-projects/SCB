(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var26 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-String String)
(declare-const var3458 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3458 null-String)))
(assert true)
(define-const var1864 Bool (isEmpty/-1285796103 var3458)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (= (ite var1864 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3458=r0, var26=null_type, var1864=$z0}
; {r0=var3458, null_type=var26, $z0=var1864}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto return r0;	return r0
;block_num 2