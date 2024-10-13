(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2841 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-String String)
(declare-const var2161 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2161 null-String)))
(assert true)
(define-const var2827 Bool (isEmpty/-1285796103 var2161)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var2827 1 0) 0))) ; Cond: $z0 != 0 
(define-const var157 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean)}
; {var2161=r0, var2841=null_type, var2827=$z0, var157=$z1}
; {r0=var2161, null_type=var2841, $z0=var2827, $z1=var157}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 3