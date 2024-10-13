(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1773 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var2743 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2743 null-String)))
(assert true)
(define-const var2175 Bool (startsWith/-1785782452 var2743 "\r\n")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("\r\n") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("\n") 
(assert (= (ite var2175 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1317 Bool (startsWith/-1785782452 var2743 "\n")) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("\n") 
 ; Statement: if $z1 == 0 goto return r0 
(assert (= (ite var1317 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var2743=r0, var1773=null_type, var2175=$z0, var1317=$z1}
; {r0=var2743, null_type=var1773, $z0=var2175, $z1=var1317}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("\r\n");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("\n");	$z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("\n");	if $z1 == 0 goto return r0;	return r0
;block_num 3