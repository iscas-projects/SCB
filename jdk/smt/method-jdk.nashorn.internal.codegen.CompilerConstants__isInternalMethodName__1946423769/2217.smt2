(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var423 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var1609 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1609 null-String)))
(assert true)
(define-const var1543 Bool (startsWith/-1785782452 var1609 ":")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(":") 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (= (ite var1543 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1001 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1609=r0, var423=null_type, var1543=$z0, var1001=$z2}
; {r0=var1609, null_type=var423, $z0=var1543, $z2=var1001}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(":");	if $z0 == 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3