(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1405 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var1595 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1595 null-String)))
(assert true)
(define-const var1484 Bool (startsWith/-1785782452 var1595 "\u0022")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("\"") 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (= (ite var1484 1 0) 0)) ; Cond: $z0 == 0 
(define-const var513 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1595=r0, var1405=null_type, var1484=$z0, var513=$z2}
; {r0=var1595, null_type=var1405, $z0=var1484, $z2=var513}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("\"");	if $z0 == 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3