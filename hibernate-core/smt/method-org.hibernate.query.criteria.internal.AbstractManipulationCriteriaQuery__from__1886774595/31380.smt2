(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var483 0)
(declare-sort var1325 0)
(declare-sort var2259 0)
(declare-sort var2743 0)
(declare-sort var450 0)
(declare-sort var2016 0)
(declare-sort var1449 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun criteriaBuilder/-1090410980 (var483) var1325)
(declare-fun getEntityManagerFactory/-1647005728 (var1325) var2259)
(declare-fun getMetamodel/1307526412 (var2259) var2743)
(declare-fun var2743_entity/1887793415 (var2743 ClassObject) var450)
(declare-fun from/-504970215 (var483 var1449) var2016)
(declare-fun cast-from-var450-to-var1449 (var450) var1449)
(declare-const null-var483 var483)
(declare-const null-ClassObject ClassObject)
(declare-const null-var450 var450)
(declare-const var1695 var483) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery 
(assert (not (= var1695 null-var483)))
(declare-const var3158 ClassObject) ; Statement: r3 := @parameter0: java.lang.Class 
(assert (not (= var3158 null-ClassObject)))
(define-const var1202 var1325 (criteriaBuilder/-1090410980 var1695)) ; Statement: $r1 = r0.<org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery: org.hibernate.query.criteria.internal.CriteriaBuilderImpl criteriaBuilder> 
(assert true)
(define-const var1930 var2259 (getEntityManagerFactory/-1647005728 var1202)) ; Statement: $r2 = virtualinvoke $r1.<org.hibernate.query.criteria.internal.CriteriaBuilderImpl: org.hibernate.internal.SessionFactoryImpl getEntityManagerFactory()>() 
(assert true)
(define-const var3918 var2743 (getMetamodel/1307526412 var1930)) ; Statement: $r4 = virtualinvoke $r2.<org.hibernate.internal.SessionFactoryImpl: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>() 
(define-const var1998 var450 (var2743_entity/1887793415 var3918 var3158)) ; Statement: r5 = interfaceinvoke $r4.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor entity(java.lang.Class)>(r3) 
 ; Statement: if r5 != null goto $r6 = virtualinvoke r0.<org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery: javax.persistence.criteria.Root 'from'(javax.persistence.metamodel.EntityType)>(r5) 
(assert (not (= var1998 null-var450))) ; Cond: r5 != null 
(assert true)
(define-const var3751 var2016 (from/-504970215 var1695 (cast-from-var450-to-var1449 var1998))) ; Statement: $r6 = virtualinvoke r0.<org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery: javax.persistence.criteria.Root 'from'(javax.persistence.metamodel.EntityType)>(r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {criteriaBuilder/-1090410980=([org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery], org.hibernate.query.criteria.internal.CriteriaBuilderImpl), getEntityManagerFactory/-1647005728=([org.hibernate.query.criteria.internal.CriteriaBuilderImpl], org.hibernate.internal.SessionFactoryImpl), getMetamodel/1307526412=([org.hibernate.internal.SessionFactoryImpl], org.hibernate.metamodel.spi.MetamodelImplementor), var2743_entity/1887793415=([org.hibernate.metamodel.spi.MetamodelImplementor, java.lang.Class], org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor), from/-504970215=([org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery, javax.persistence.metamodel.EntityType], javax.persistence.criteria.Root), cast-from-var450-to-var1449=([org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor], javax.persistence.metamodel.EntityType)}
; {var483=org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery, var1695=r0, var3158=r3, var1325=org.hibernate.query.criteria.internal.CriteriaBuilderImpl, var1202=$r1, var2259=org.hibernate.internal.SessionFactoryImpl, var1930=$r2, var2743=org.hibernate.metamodel.spi.MetamodelImplementor, var3918=$r4, var450=org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor, var1998=r5, var2016=javax.persistence.criteria.Root, var1449=javax.persistence.metamodel.EntityType, var3751=$r6}
; {org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery=var483, r0=var1695, r3=var3158, org.hibernate.query.criteria.internal.CriteriaBuilderImpl=var1325, $r1=var1202, org.hibernate.internal.SessionFactoryImpl=var2259, $r2=var1930, org.hibernate.metamodel.spi.MetamodelImplementor=var2743, $r4=var3918, org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor=var450, r5=var1998, javax.persistence.criteria.Root=var2016, javax.persistence.metamodel.EntityType=var1449, $r6=var3751}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery;	r3 := @parameter0: java.lang.Class;	$r1 = r0.<org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery: org.hibernate.query.criteria.internal.CriteriaBuilderImpl criteriaBuilder>;	$r2 = virtualinvoke $r1.<org.hibernate.query.criteria.internal.CriteriaBuilderImpl: org.hibernate.internal.SessionFactoryImpl getEntityManagerFactory()>();	$r4 = virtualinvoke $r2.<org.hibernate.internal.SessionFactoryImpl: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>();	r5 = interfaceinvoke $r4.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor entity(java.lang.Class)>(r3);	if r5 != null goto $r6 = virtualinvoke r0.<org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery: javax.persistence.criteria.Root 'from'(javax.persistence.metamodel.EntityType)>(r5);	$r6 = virtualinvoke r0.<org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery: javax.persistence.criteria.Root 'from'(javax.persistence.metamodel.EntityType)>(r5);	return $r6
;block_num 2