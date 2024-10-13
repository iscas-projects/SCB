(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2069 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var1749 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1749 null-String)))
(assert true)
(define-const var2347 Bool (startsWith/-1785782452 var1749 "{")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("{") 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var2347 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1749=r0, var2069=null_type, var2347=$z0}
; {r0=var1749, null_type=var2069, $z0=var2347}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("{");	if $z0 == 0 goto return 0;	return 0
;block_num 2