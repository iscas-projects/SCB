(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var934 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var3258 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3258 null-String)))
(assert true)
(define-const var1967 Bool (startsWith/-1785782452 var3258 "set")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("set") 
 ; Statement: if $z0 == 0 goto $z1 = 0 
(assert (= (ite var1967 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2286 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3258=r0, var934=null_type, var1967=$z0, var2286=$z1}
; {r0=var3258, null_type=var934, $z0=var1967, $z1=var2286}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("set");	if $z0 == 0 goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 3