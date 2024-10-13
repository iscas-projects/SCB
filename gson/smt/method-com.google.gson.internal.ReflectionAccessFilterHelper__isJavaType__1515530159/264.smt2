(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3508 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var1498 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1498 null-String)))
(assert true)
(define-const var3094 Bool (startsWith/-1785782452 var1498 "java.")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("java.") 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var3094 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2761 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1498=r0, var3508=null_type, var3094=$z0, var2761=$z2}
; {r0=var1498, null_type=var3508, $z0=var3094, $z2=var2761}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("java.");	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3