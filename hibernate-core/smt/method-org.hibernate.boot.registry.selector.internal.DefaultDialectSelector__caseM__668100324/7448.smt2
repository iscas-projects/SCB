(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3777 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var1881 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1881 null-String)))
(assert true)
(define-const var1227 Bool (= var1881 "Mckoi")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Mckoi") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("MimerSQL") 
(assert (not (= (ite var1227 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return class "Lorg/hibernate/dialect/MckoiDialect;" 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1881=r0, var3777=null_type, var1227=$z0}
; {r0=var1881, null_type=var3777, $z0=var1227}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Mckoi");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("MimerSQL");	return class "Lorg/hibernate/dialect/MckoiDialect;"
;block_num 2