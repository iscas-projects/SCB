(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1266 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-String String)
(declare-const var1487 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1487 null-String)))
(assert true)
(define-const var2396 Bool (isEmpty/-1285796103 var1487)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (= (ite var2396 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1487=r1, var1266=null_type, var2396=$z0}
; {r1=var1487, null_type=var1266, $z0=var2396}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto i0 = virtualinvoke r1.<java.lang.String: int length()>();	return 0
;block_num 2