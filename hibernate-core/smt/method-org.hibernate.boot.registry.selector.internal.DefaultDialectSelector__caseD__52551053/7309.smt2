(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1129 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var1798 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1798 null-String)))
(assert true)
(define-const var186 Bool (= var1798 "DB2")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("DB2") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("DB2390") 
(assert (not (= (ite var186 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return class "Lorg/hibernate/dialect/DB2Dialect;" 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1798=r0, var1129=null_type, var186=$z0}
; {r0=var1798, null_type=var1129, $z0=var186}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("DB2");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("DB2390");	return class "Lorg/hibernate/dialect/DB2Dialect;"
;block_num 2