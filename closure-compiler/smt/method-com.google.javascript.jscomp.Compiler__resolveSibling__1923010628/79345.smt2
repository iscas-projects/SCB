(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3645 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var644 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var644 null-String)))
(declare-const var2630 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2630 null-String)))
(assert true)
(define-const var363 Bool (startsWith/-1785782452 var2630 "/")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto $r1 = new java.util.ArrayList 
(assert (not (= (ite var363 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var644=r2, var3645=null_type, var2630=r0, var363=$z0}
; {r2=var644, null_type=var3645, r0=var2630, $z0=var363}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto $r1 = new java.util.ArrayList;	return r0
;block_num 2