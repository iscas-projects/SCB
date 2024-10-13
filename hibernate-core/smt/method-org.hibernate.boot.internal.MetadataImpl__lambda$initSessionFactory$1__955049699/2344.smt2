(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1853 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var708 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var708 null-String)))
(assert true)
(define-const var85 Bool (startsWith/-1785782452 var708 "hibernate.ejb.event")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("hibernate.ejb.event") 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var85 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var708=r0, var1853=null_type, var85=$z0}
; {r0=var708, null_type=var1853, $z0=var85}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("hibernate.ejb.event");	if $z0 == 0 goto return null;	return null
;block_num 2