(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2196 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-String String)
(declare-const var2481 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2481 null-String)))
(assert true)
(define-const var1083 Bool (isEmpty/-1285796103 var2481)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto c2 = 0 
(assert (not (= (ite var1083 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return "\'\'" 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean)}
; {var2481=r0, var2196=null_type, var1083=$z0}
; {r0=var2481, null_type=var2196, $z0=var1083}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto c2 = 0;	return "\'\'"
;block_num 2