(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var645 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var2214 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2214 null-String)))
(declare-const var3003 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3003 null-String)))
 ; Statement: if r0 != null goto $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
(assert (not (= var2214 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var459 Bool (startsWith/-1785782452 var2214 var3003)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var2214=r0, var645=null_type, var3003=r1, var459=$z0}
; {r0=var2214, null_type=var645, r1=var3003, $z0=var459}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	if r0 != null goto $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	return $z0
;block_num 2