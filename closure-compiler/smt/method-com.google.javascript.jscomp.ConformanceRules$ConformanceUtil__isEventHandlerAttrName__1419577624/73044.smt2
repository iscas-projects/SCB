(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3558 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var1249 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1249 null-String)))
(assert true)
(define-const var62 Bool (= var1249 "on")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("on") 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (= (ite var62 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2658 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1249=r0, var3558=null_type, var62=$z0, var2658=$z2}
; {r0=var1249, null_type=var3558, $z0=var62, $z2=var2658}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("on");	if $z0 != 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3