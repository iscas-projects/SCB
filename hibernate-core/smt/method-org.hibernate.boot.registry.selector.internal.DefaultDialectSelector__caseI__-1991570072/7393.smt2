(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2244 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var2040 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2040 null-String)))
(assert true)
(define-const var113 Bool (= var2040 "Informix")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Informix") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Ingres") 
(assert (not (= (ite var113 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return class "Lorg/hibernate/dialect/InformixDialect;" 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2040=r0, var2244=null_type, var113=$z0}
; {r0=var2040, null_type=var2244, $z0=var113}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Informix");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Ingres");	return class "Lorg/hibernate/dialect/InformixDialect;"
;block_num 2