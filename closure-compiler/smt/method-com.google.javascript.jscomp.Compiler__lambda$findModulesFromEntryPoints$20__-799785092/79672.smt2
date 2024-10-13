(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2484 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var1568 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1568 null-String)))
(assert true)
(define-const var2490 Bool (startsWith/-1785782452 var1568 "module$")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("module$") 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var2490 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1403 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1568=r0, var2484=null_type, var2490=$z0, var1403=$z1}
; {r0=var1568, null_type=var2484, $z0=var2490, $z1=var1403}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("module$");	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 3