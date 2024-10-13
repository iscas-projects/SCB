(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1768 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var3854 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3854 null-String)))
(declare-const var1916 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1916 null-String)))
(assert true)
(define-const var3470 Bool (startsWith/-1785782452 var3854 var1916)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: if $z0 == 0 goto return r0 
(assert (= (ite var3470 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3854=r0, var1768=null_type, var1916=r1, var3470=$z0}
; {r0=var3854, null_type=var1768, r1=var1916, $z0=var3470}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	if $z0 == 0 goto return r0;	return r0
;block_num 2