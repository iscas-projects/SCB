(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3089 0)
(declare-sort var1295 0)
(declare-sort var1212 0)
(declare-sort var1911 0)
(declare-sort var2031 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBindableJavaType/-1643913493 (var3089) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var1295-init () var1295)
(declare-fun sessionFactory/-681656776 (var1911) var1212)
(declare-fun cast-from-var3089-to-var1911 (var3089) var1911)
(declare-fun <init>/71380081 (var1295 var2031 Bool var1212) void)
(declare-fun cast-from-var3089-to-var2031 (var3089) var2031)
(declare-const null-var3089 var3089)
(declare-const null-ClassObject ClassObject)
(declare-const var2344 var3089) ; Statement: r0 := @this: org.hibernate.metamodel.model.domain.internal.EntityTypeImpl 
(assert (not (= var2344 null-var3089)))
(declare-const var3090 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var3090 null-ClassObject)))
(assert true)
(define-const var3833 ClassObject (getBindableJavaType/-1643913493 var2344)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.metamodel.model.domain.internal.EntityTypeImpl: java.lang.Class getBindableJavaType()>() 
(assert true)
(define-const var3910 Bool (isAssignableFrom/-1028998700 var3833 var3090)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1) 
 ; Statement: if $z0 != 0 goto $r3 = new org.hibernate.graph.internal.SubGraphImpl 
(assert (not (= (ite var3910 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2282 var1295 var1295-init) ; Statement: $r3 = new org.hibernate.graph.internal.SubGraphImpl 
(assert true)
(define-const var3457 var1212 (sessionFactory/-681656776 (cast-from-var3089-to-var1911 var2344))) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.metamodel.model.domain.internal.EntityTypeImpl: org.hibernate.engine.spi.SessionFactoryImplementor sessionFactory()>() 
(assert true)
;(assert (<init>/71380081 var2282 (cast-from-var3089-to-var2031 var2344) (ite (= 1 1) true false) var3457)) ; Statement: specialinvoke $r3.<org.hibernate.graph.internal.SubGraphImpl: void <init>(org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor,boolean,org.hibernate.engine.spi.SessionFactoryImplementor)>(r0, 1, $r4) 

(declare-const var2282!1 var1295)
(declare-const var2344!1 var3089)
(declare-const var1653 Int)
(declare-const var3457!1 var1212)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getBindableJavaType/-1643913493=([org.hibernate.metamodel.model.domain.internal.EntityTypeImpl], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var1295-init=([], org.hibernate.graph.internal.SubGraphImpl), sessionFactory/-681656776=([org.hibernate.metamodel.model.domain.internal.AbstractManagedType], org.hibernate.engine.spi.SessionFactoryImplementor), cast-from-var3089-to-var1911=([org.hibernate.metamodel.model.domain.internal.EntityTypeImpl], org.hibernate.metamodel.model.domain.internal.AbstractManagedType), <init>/71380081=([org.hibernate.graph.internal.SubGraphImpl, org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor, boolean, org.hibernate.engine.spi.SessionFactoryImplementor], void), cast-from-var3089-to-var2031=([org.hibernate.metamodel.model.domain.internal.EntityTypeImpl], org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor)}
; {var3089=org.hibernate.metamodel.model.domain.internal.EntityTypeImpl, var2344=r0, var3090=r1, var3833=$r2, var3910=$z0, var1295=org.hibernate.graph.internal.SubGraphImpl, var2282=$r3, var1212=org.hibernate.engine.spi.SessionFactoryImplementor, var1911=org.hibernate.metamodel.model.domain.internal.AbstractManagedType, var3457=$r4, var2031=org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor, var1653=1}
; {org.hibernate.metamodel.model.domain.internal.EntityTypeImpl=var3089, r0=var2344, r1=var3090, $r2=var3833, $z0=var3910, org.hibernate.graph.internal.SubGraphImpl=var1295, $r3=var2282, org.hibernate.engine.spi.SessionFactoryImplementor=var1212, org.hibernate.metamodel.model.domain.internal.AbstractManagedType=var1911, $r4=var3457, org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor=var2031, 1=var1653}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.metamodel.model.domain.internal.EntityTypeImpl;	r1 := @parameter0: java.lang.Class;	$r2 = virtualinvoke r0.<org.hibernate.metamodel.model.domain.internal.EntityTypeImpl: java.lang.Class getBindableJavaType()>();	$z0 = virtualinvoke $r2.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r1);	if $z0 != 0 goto $r3 = new org.hibernate.graph.internal.SubGraphImpl;	$r3 = new org.hibernate.graph.internal.SubGraphImpl;	$r4 = virtualinvoke r0.<org.hibernate.metamodel.model.domain.internal.EntityTypeImpl: org.hibernate.engine.spi.SessionFactoryImplementor sessionFactory()>();	specialinvoke $r3.<org.hibernate.graph.internal.SubGraphImpl: void <init>(org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor,boolean,org.hibernate.engine.spi.SessionFactoryImplementor)>(r0, 1, $r4);	return $r3
;block_num 2