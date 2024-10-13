(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1217 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var896 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var896 null-String)))
(assert true)
(define-const var3971 Bool (= var896 "Pointbase")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Pointbase") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("PostgresPlus") 
(assert (not (= (ite var3971 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return class "Lorg/hibernate/dialect/PointbaseDialect;" 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var896=r0, var1217=null_type, var3971=$z0}
; {r0=var896, null_type=var1217, $z0=var3971}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Pointbase");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("PostgresPlus");	return class "Lorg/hibernate/dialect/PointbaseDialect;"
;block_num 2