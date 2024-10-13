(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2438 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var2282 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2282 null-String)))
(assert true)
(define-const var3600 Bool (startsWith/-1785782452 var2282 "data:")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("data:") 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var3600 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var2282=r0, var2438=null_type, var3600=$z0}
; {r0=var2282, null_type=var2438, $z0=var3600}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("data:");	if $z0 == 0 goto return null;	return null
;block_num 2