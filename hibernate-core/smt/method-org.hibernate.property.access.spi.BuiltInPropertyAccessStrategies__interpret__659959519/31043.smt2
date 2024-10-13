(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3333 0)
(declare-sort var2738 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun externalName/1682576340 (var2738) String)
(declare-const null-String String)
(declare-const var2738-BASIC var2738)
(declare-const var3496 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3496 null-String)))
(define-const var1191 var2738 var2738-BASIC) ; Statement: $r0 = <org.hibernate.property.access.spi.BuiltInPropertyAccessStrategies: org.hibernate.property.access.spi.BuiltInPropertyAccessStrategies BASIC> 
(define-const var1923 String (externalName/1682576340 var1191)) ; Statement: $r2 = $r0.<org.hibernate.property.access.spi.BuiltInPropertyAccessStrategies: java.lang.String externalName> 
(assert true)
(define-const var582 Bool (= var1923 var3496)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = <org.hibernate.property.access.spi.BuiltInPropertyAccessStrategies: org.hibernate.property.access.spi.BuiltInPropertyAccessStrategies FIELD> 
(assert (not (= (ite var582 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var384 var2738 var2738-BASIC) ; Statement: $r15 = <org.hibernate.property.access.spi.BuiltInPropertyAccessStrategies: org.hibernate.property.access.spi.BuiltInPropertyAccessStrategies BASIC> 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {externalName/1682576340=([org.hibernate.property.access.spi.BuiltInPropertyAccessStrategies], java.lang.String)}
; {var3496=r1, var3333=null_type, var2738=org.hibernate.property.access.spi.BuiltInPropertyAccessStrategies, var1191=$r0, var1923=$r2, var582=$z0, var384=$r15}
; {r1=var3496, null_type=var3333, org.hibernate.property.access.spi.BuiltInPropertyAccessStrategies=var2738, $r0=var1191, $r2=var1923, $z0=var582, $r15=var384}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = <org.hibernate.property.access.spi.BuiltInPropertyAccessStrategies: org.hibernate.property.access.spi.BuiltInPropertyAccessStrategies BASIC>;	$r2 = $r0.<org.hibernate.property.access.spi.BuiltInPropertyAccessStrategies: java.lang.String externalName>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = <org.hibernate.property.access.spi.BuiltInPropertyAccessStrategies: org.hibernate.property.access.spi.BuiltInPropertyAccessStrategies FIELD>;	$r15 = <org.hibernate.property.access.spi.BuiltInPropertyAccessStrategies: org.hibernate.property.access.spi.BuiltInPropertyAccessStrategies BASIC>;	return $r15
;block_num 2