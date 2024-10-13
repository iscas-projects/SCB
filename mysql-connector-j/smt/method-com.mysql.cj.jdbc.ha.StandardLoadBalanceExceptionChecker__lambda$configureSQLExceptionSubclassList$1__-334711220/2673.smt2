(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var153 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-String String)
(declare-const var3493 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3493 null-String)))
(assert true)
(define-const var1461 Bool (isEmpty/-1285796103 var3493)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var1461 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2779 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3493=r0, var153=null_type, var1461=$z0, var2779=$z1}
; {r0=var3493, null_type=var153, $z0=var1461, $z1=var2779}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 3