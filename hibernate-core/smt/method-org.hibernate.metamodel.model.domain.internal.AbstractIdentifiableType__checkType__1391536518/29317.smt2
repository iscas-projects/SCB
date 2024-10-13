(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1735 0)
(declare-sort var619 0)
(declare-sort var1295 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var619_getType/81413620 (var619) var1295)
(declare-fun var1295_getJavaType/565496227 (var1295) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-const null-var1735 var1735)
(declare-const null-var619 var619)
(declare-const null-ClassObject ClassObject)
(declare-const var109 var1735) ; Statement: r6 := @this: org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType 
(assert (not (= var109 null-var1735)))
(declare-const var2101 var619) ; Statement: r1 := @parameter0: org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute 
(assert (not (= var2101 null-var619)))
(declare-const var1725 ClassObject) ; Statement: r0 := @parameter1: java.lang.Class 
(assert (not (= var1725 null-ClassObject)))
(define-const var1014 var1295 (var619_getType/81413620 var2101)) ; Statement: $r2 = interfaceinvoke r1.<org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute: org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor getType()>() 
(define-const var2844 ClassObject (var1295_getJavaType/565496227 var1014)) ; Statement: $r3 = interfaceinvoke $r2.<org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor: java.lang.Class getJavaType()>() 
(assert true)
(define-const var1669 Bool (isAssignableFrom/-1028998700 var1725 var2844)) ; Statement: $z0 = virtualinvoke r0.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r3) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1669 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var619_getType/81413620=([org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute], org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor), var1295_getJavaType/565496227=([org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean)}
; {var1735=org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType, var109=r6, var619=org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute, var2101=r1, var1725=r0, var1295=org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor, var1014=$r2, var2844=$r3, var1669=$z0}
; {org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType=var1735, r6=var109, org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute=var619, r1=var2101, r0=var1725, org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor=var1295, $r2=var1014, $r3=var2844, $z0=var1669}
;seq 
;cnt {}
;stmts r6 := @this: org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType;	r1 := @parameter0: org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute;	r0 := @parameter1: java.lang.Class;	$r2 = interfaceinvoke r1.<org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute: org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor getType()>();	$r3 = interfaceinvoke $r2.<org.hibernate.metamodel.model.domain.spi.SimpleTypeDescriptor: java.lang.Class getJavaType()>();	$z0 = virtualinvoke r0.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r3);	if $z0 != 0 goto return;	return
;block_num 2