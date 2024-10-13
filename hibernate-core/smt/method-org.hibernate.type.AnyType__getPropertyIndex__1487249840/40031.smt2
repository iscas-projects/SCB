(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var456 0)
(declare-sort var1941 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var456 var456)
(declare-const null-String String)
(declare-const var456-PROPERTY_NAMES (Array Int String))
(declare-const var2136 var456) ; Statement: r11 := @this: org.hibernate.type.AnyType 
(assert (not (= var2136 null-var456)))
(declare-const var569 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var569 null-String)))
(define-const var657 (Array Int String) var456-PROPERTY_NAMES) ; Statement: $r0 = <org.hibernate.type.AnyType: java.lang.String[] PROPERTY_NAMES> 
(define-const var3549 String (select var657 0)) ; Statement: $r2 = $r0[0] 
(assert true)
(define-const var2112 Bool (= var3549 var569)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = <org.hibernate.type.AnyType: java.lang.String[] PROPERTY_NAMES> 
(assert (not (= (ite var2112 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var456=org.hibernate.type.AnyType, var2136=r11, var569=r1, var1941=null_type, var657=$r0, var3549=$r2, var2112=$z0}
; {org.hibernate.type.AnyType=var456, r11=var2136, r1=var569, null_type=var1941, $r0=var657, $r2=var3549, $z0=var2112}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r11 := @this: org.hibernate.type.AnyType;	r1 := @parameter0: java.lang.String;	$r0 = <org.hibernate.type.AnyType: java.lang.String[] PROPERTY_NAMES>;	$r2 = $r0[0];	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = <org.hibernate.type.AnyType: java.lang.String[] PROPERTY_NAMES>;	return 0
;block_num 2