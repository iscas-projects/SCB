(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1451 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var3979 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3979 null-String)))
(assert true)
(define-const var3601 Bool (= var3979 "Firebird")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Firebird") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("FrontBase") 
(assert (not (= (ite var3601 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return class "Lorg/hibernate/dialect/FirebirdDialect;" 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3979=r0, var1451=null_type, var3601=$z0}
; {r0=var3979, null_type=var1451, $z0=var3601}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Firebird");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("FrontBase");	return class "Lorg/hibernate/dialect/FirebirdDialect;"
;block_num 2