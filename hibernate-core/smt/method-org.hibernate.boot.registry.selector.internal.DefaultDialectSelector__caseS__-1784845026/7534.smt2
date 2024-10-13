(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3469 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var730 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var730 null-String)))
(assert true)
(define-const var3267 Bool (= var730 "SAPDB")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("SAPDB") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("SQLServer") 
(assert (not (= (ite var3267 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return class "Lorg/hibernate/dialect/SAPDBDialect;" 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var730=r0, var3469=null_type, var3267=$z0}
; {r0=var730, null_type=var3469, $z0=var3267}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("SAPDB");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("SQLServer");	return class "Lorg/hibernate/dialect/SAPDBDialect;"
;block_num 2