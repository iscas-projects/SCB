(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var709 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var3493 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3493 null-String)))
(assert true)
(define-const var3977 Bool (= var3493 "Oracle8i")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Oracle8i") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Oracle9i") 
(assert (not (= (ite var3977 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return class "Lorg/hibernate/dialect/Oracle8iDialect;" 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3493=r0, var709=null_type, var3977=$z0}
; {r0=var3493, null_type=var709, $z0=var3977}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Oracle8i");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Oracle9i");	return class "Lorg/hibernate/dialect/Oracle8iDialect;"
;block_num 2