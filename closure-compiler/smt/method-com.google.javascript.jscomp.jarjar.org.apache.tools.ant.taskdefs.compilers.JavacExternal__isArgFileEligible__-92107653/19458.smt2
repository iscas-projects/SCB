(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1755 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var3513 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3513 null-String)))
(assert true)
(define-const var118 Bool (startsWith/-1785782452 var3513 "-J")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("-J") 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (= (ite var118 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2660 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3513=r0, var1755=null_type, var118=$z0, var2660=$z2}
; {r0=var3513, null_type=var1755, $z0=var118, $z2=var2660}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("-J");	if $z0 != 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3