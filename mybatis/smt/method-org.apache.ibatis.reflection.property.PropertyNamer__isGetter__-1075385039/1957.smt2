(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var205 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var1164 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1164 null-String)))
(assert true)
(define-const var1400 Bool (startsWith/-1785782452 var1164 "get")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("get") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("is") 
(assert (= (ite var1400 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var991 Bool (startsWith/-1785782452 var1164 "is")) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("is") 
 ; Statement: if $z1 == 0 goto $z2 = 0 
(assert (= (ite var991 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3835 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1164=r0, var205=null_type, var1400=$z0, var991=$z1, var3835=$z2}
; {r0=var1164, null_type=var205, $z0=var1400, $z1=var991, $z2=var3835}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("get");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("is");	$z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("is");	if $z1 == 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 4