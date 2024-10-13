(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2200 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var1673 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1673 null-String)))
(assert true)
(define-const var58 Bool (= var1673 "Teradata")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Teradata") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("TimesTen") 
(assert (not (= (ite var58 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return class "Lorg/hibernate/dialect/TeradataDialect;" 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1673=r0, var2200=null_type, var58=$z0}
; {r0=var1673, null_type=var2200, $z0=var58}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Teradata");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("TimesTen");	return class "Lorg/hibernate/dialect/TeradataDialect;"
;block_num 2