(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2790 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var1482 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1482 null-String)))
(assert true)
(define-const var1342 Bool (startsWith/-1785782452 var1482 "file:/")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("file:/") 
 ; Statement: if $z0 == 0 goto i7 = 0 
(assert (not (= (ite var1342 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1482=r0, var2790=null_type, var1342=$z0}
; {r0=var1482, null_type=var2790, $z0=var1342}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("file:/");	if $z0 == 0 goto i7 = 0;	return 1
;block_num 2