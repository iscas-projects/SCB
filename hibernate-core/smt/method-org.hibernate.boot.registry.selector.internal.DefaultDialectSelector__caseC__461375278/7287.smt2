(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var654 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var3970 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3970 null-String)))
(assert true)
(define-const var1948 Bool (= var3970 "Cache71")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Cache71") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("CockroachDB192") 
(assert (not (= (ite var1948 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return class "Lorg/hibernate/dialect/Cache71Dialect;" 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3970=r0, var654=null_type, var1948=$z0}
; {r0=var3970, null_type=var654, $z0=var1948}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Cache71");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("CockroachDB192");	return class "Lorg/hibernate/dialect/Cache71Dialect;"
;block_num 2