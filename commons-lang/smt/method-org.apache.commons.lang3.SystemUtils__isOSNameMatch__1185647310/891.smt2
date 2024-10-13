(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1305 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var2410 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2410 null-String)))
(declare-const var1703 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1703 null-String)))
 ; Statement: if r0 != null goto $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
(assert (not (= var2410 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var2267 Bool (startsWith/-1785782452 var2410 var1703)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var2410=r0, var1305=null_type, var1703=r1, var2267=$z0}
; {r0=var2410, null_type=var1305, r1=var1703, $z0=var2267}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	if r0 != null goto $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	return $z0
;block_num 2