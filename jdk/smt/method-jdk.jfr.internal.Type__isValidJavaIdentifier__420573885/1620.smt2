(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3736 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-String String)
(declare-const var1668 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1668 null-String)))
(assert true)
(define-const var2542 Bool (isEmpty/-1285796103 var1668)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert (not (= (ite var2542 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1668=r0, var3736=null_type, var2542=$z0}
; {r0=var1668, null_type=var3736, $z0=var2542}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	return 0
;block_num 2