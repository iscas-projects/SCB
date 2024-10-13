(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var58 0)
(declare-sort var2630 0)
(declare-sort var636 0)
(declare-sort var2963 0)
(declare-sort var860 0)
(declare-sort var3992 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getExternalName/-941970162 (var2963) String)
(declare-fun var860_isManagedType/1133918658 (ClassObject) Bool)
(declare-const null-var58 var58)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var636 var636)
(declare-const var2963-BASIC var2963)
(declare-const var3992-INSTANCE var3992)
(declare-const var1429 var58) ; Statement: r10 := @this: org.hibernate.property.access.internal.PropertyAccessStrategyResolverStandardImpl 
(assert (not (= var1429 null-var58)))
(declare-const var1959 ClassObject) ; Statement: r3 := @parameter0: java.lang.Class 
(assert (not (= var1959 null-ClassObject)))
(declare-const var3201 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3201 null-String)))
(declare-const var3893 var636) ; Statement: r4 := @parameter2: org.hibernate.EntityMode 
(assert (not (= var3893 null-var636)))
(define-const var1188 var2963 var2963-BASIC) ; Statement: $r0 = <org.hibernate.property.access.spi.BuiltInPropertyAccessStrategies: org.hibernate.property.access.spi.BuiltInPropertyAccessStrategies BASIC> 
(assert true)
(define-const var2356 String (getExternalName/-941970162 var1188)) ; Statement: $r2 = virtualinvoke $r0.<org.hibernate.property.access.spi.BuiltInPropertyAccessStrategies: java.lang.String getExternalName()>() 
(assert true)
(define-const var759 Bool (= var2356 var3201)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto $z4 = staticinvoke <org.hibernate.engine.internal.ManagedTypeHelper: boolean isManagedType(java.lang.Class)>(r3) 
(assert (not (= (ite var759 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1657 Bool (var860_isManagedType/1133918658 var1959)) ; Statement: $z4 = staticinvoke <org.hibernate.engine.internal.ManagedTypeHelper: boolean isManagedType(java.lang.Class)>(r3) 
 ; Statement: if $z4 == 0 goto $z1 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>(r1) 
(assert (not (= (ite var1657 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var2966 var3992 var3992-INSTANCE) ; Statement: $r12 = <org.hibernate.property.access.internal.PropertyAccessStrategyEnhancedImpl: org.hibernate.property.access.internal.PropertyAccessStrategyEnhancedImpl INSTANCE> 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getExternalName/-941970162=([org.hibernate.property.access.spi.BuiltInPropertyAccessStrategies], java.lang.String), var860_isManagedType/1133918658=([java.lang.Class], boolean)}
; {var58=org.hibernate.property.access.internal.PropertyAccessStrategyResolverStandardImpl, var1429=r10, var1959=r3, var3201=r1, var2630=null_type, var636=org.hibernate.EntityMode, var3893=r4, var2963=org.hibernate.property.access.spi.BuiltInPropertyAccessStrategies, var1188=$r0, var2356=$r2, var759=$z0, var860=org.hibernate.engine.internal.ManagedTypeHelper, var1657=$z4, var3992=org.hibernate.property.access.internal.PropertyAccessStrategyEnhancedImpl, var2966=$r12}
; {org.hibernate.property.access.internal.PropertyAccessStrategyResolverStandardImpl=var58, r10=var1429, r3=var1959, r1=var3201, null_type=var2630, org.hibernate.EntityMode=var636, r4=var3893, org.hibernate.property.access.spi.BuiltInPropertyAccessStrategies=var2963, $r0=var1188, $r2=var2356, $z0=var759, org.hibernate.engine.internal.ManagedTypeHelper=var860, $z4=var1657, org.hibernate.property.access.internal.PropertyAccessStrategyEnhancedImpl=var3992, $r12=var2966}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r10 := @this: org.hibernate.property.access.internal.PropertyAccessStrategyResolverStandardImpl;	r3 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.String;	r4 := @parameter2: org.hibernate.EntityMode;	$r0 = <org.hibernate.property.access.spi.BuiltInPropertyAccessStrategies: org.hibernate.property.access.spi.BuiltInPropertyAccessStrategies BASIC>;	$r2 = virtualinvoke $r0.<org.hibernate.property.access.spi.BuiltInPropertyAccessStrategies: java.lang.String getExternalName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto $z4 = staticinvoke <org.hibernate.engine.internal.ManagedTypeHelper: boolean isManagedType(java.lang.Class)>(r3);	$z4 = staticinvoke <org.hibernate.engine.internal.ManagedTypeHelper: boolean isManagedType(java.lang.Class)>(r3);	if $z4 == 0 goto $z1 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>(r1);	$r12 = <org.hibernate.property.access.internal.PropertyAccessStrategyEnhancedImpl: org.hibernate.property.access.internal.PropertyAccessStrategyEnhancedImpl INSTANCE>;	return $r12
;block_num 3