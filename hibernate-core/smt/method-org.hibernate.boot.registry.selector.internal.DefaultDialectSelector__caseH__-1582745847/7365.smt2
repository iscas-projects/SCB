(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3339 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var2989 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2989 null-String)))
(assert true)
(define-const var2375 Bool (= var2989 "H2")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("H2") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("HANACloudColumnStore") 
(assert (not (= (ite var2375 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return class "Lorg/hibernate/dialect/H2Dialect;" 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2989=r0, var3339=null_type, var2375=$z0}
; {r0=var2989, null_type=var3339, $z0=var2375}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("H2");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("HANACloudColumnStore");	return class "Lorg/hibernate/dialect/H2Dialect;"
;block_num 2