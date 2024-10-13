(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3866 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var1791 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1791 null-String)))
(assert true)
(define-const var1209 Bool (= var1791 "JDataStore")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("JDataStore") 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var1209 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return class "Lorg/hibernate/dialect/JDataStoreDialect;" 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1791=r0, var3866=null_type, var1209=$z0}
; {r0=var1791, null_type=var3866, $z0=var1209}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("JDataStore");	if $z0 == 0 goto return null;	return class "Lorg/hibernate/dialect/JDataStoreDialect;"
;block_num 2