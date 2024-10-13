(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var412 0)
(declare-sort var3863 0)
(declare-sort var428 0)
(declare-sort var1933 0)
(declare-sort var1629 0)
(declare-sort var3622 0)
(declare-sort var2389 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun criteriaBuilder/-597068103 (var412) var3863)
(declare-fun getEntityManagerFactory/-1647005728 (var3863) var428)
(declare-fun getMetamodel/1307526412 (var428) var1933)
(declare-fun var1933_entity/1887793415 (var1933 ClassObject) var1629)
(declare-fun from/1692353060 (var412 var2389) var3622)
(declare-fun cast-from-var1629-to-var2389 (var1629) var2389)
(declare-const null-var412 var412)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1629 var1629)
(declare-const var3867 var412) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.QueryStructure 
(assert (not (= var3867 null-var412)))
(declare-const var2646 ClassObject) ; Statement: r3 := @parameter0: java.lang.Class 
(assert (not (= var2646 null-ClassObject)))
(define-const var2074 var3863 (criteriaBuilder/-597068103 var3867)) ; Statement: $r1 = r0.<org.hibernate.query.criteria.internal.QueryStructure: org.hibernate.query.criteria.internal.CriteriaBuilderImpl criteriaBuilder> 
(assert true)
(define-const var965 var428 (getEntityManagerFactory/-1647005728 var2074)) ; Statement: $r2 = virtualinvoke $r1.<org.hibernate.query.criteria.internal.CriteriaBuilderImpl: org.hibernate.internal.SessionFactoryImpl getEntityManagerFactory()>() 
(assert true)
(define-const var1108 var1933 (getMetamodel/1307526412 var965)) ; Statement: $r4 = virtualinvoke $r2.<org.hibernate.internal.SessionFactoryImpl: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>() 
(define-const var928 var1629 (var1933_entity/1887793415 var1108 var2646)) ; Statement: r5 = interfaceinvoke $r4.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor entity(java.lang.Class)>(r3) 
 ; Statement: if r5 != null goto $r6 = virtualinvoke r0.<org.hibernate.query.criteria.internal.QueryStructure: javax.persistence.criteria.Root 'from'(javax.persistence.metamodel.EntityType)>(r5) 
(assert (not (= var928 null-var1629))) ; Cond: r5 != null 
(assert true)
(define-const var2950 var3622 (from/1692353060 var3867 (cast-from-var1629-to-var2389 var928))) ; Statement: $r6 = virtualinvoke r0.<org.hibernate.query.criteria.internal.QueryStructure: javax.persistence.criteria.Root 'from'(javax.persistence.metamodel.EntityType)>(r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {criteriaBuilder/-597068103=([org.hibernate.query.criteria.internal.QueryStructure], org.hibernate.query.criteria.internal.CriteriaBuilderImpl), getEntityManagerFactory/-1647005728=([org.hibernate.query.criteria.internal.CriteriaBuilderImpl], org.hibernate.internal.SessionFactoryImpl), getMetamodel/1307526412=([org.hibernate.internal.SessionFactoryImpl], org.hibernate.metamodel.spi.MetamodelImplementor), var1933_entity/1887793415=([org.hibernate.metamodel.spi.MetamodelImplementor, java.lang.Class], org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor), from/1692353060=([org.hibernate.query.criteria.internal.QueryStructure, javax.persistence.metamodel.EntityType], javax.persistence.criteria.Root), cast-from-var1629-to-var2389=([org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor], javax.persistence.metamodel.EntityType)}
; {var412=org.hibernate.query.criteria.internal.QueryStructure, var3867=r0, var2646=r3, var3863=org.hibernate.query.criteria.internal.CriteriaBuilderImpl, var2074=$r1, var428=org.hibernate.internal.SessionFactoryImpl, var965=$r2, var1933=org.hibernate.metamodel.spi.MetamodelImplementor, var1108=$r4, var1629=org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor, var928=r5, var3622=javax.persistence.criteria.Root, var2389=javax.persistence.metamodel.EntityType, var2950=$r6}
; {org.hibernate.query.criteria.internal.QueryStructure=var412, r0=var3867, r3=var2646, org.hibernate.query.criteria.internal.CriteriaBuilderImpl=var3863, $r1=var2074, org.hibernate.internal.SessionFactoryImpl=var428, $r2=var965, org.hibernate.metamodel.spi.MetamodelImplementor=var1933, $r4=var1108, org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor=var1629, r5=var928, javax.persistence.criteria.Root=var3622, javax.persistence.metamodel.EntityType=var2389, $r6=var2950}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.query.criteria.internal.QueryStructure;	r3 := @parameter0: java.lang.Class;	$r1 = r0.<org.hibernate.query.criteria.internal.QueryStructure: org.hibernate.query.criteria.internal.CriteriaBuilderImpl criteriaBuilder>;	$r2 = virtualinvoke $r1.<org.hibernate.query.criteria.internal.CriteriaBuilderImpl: org.hibernate.internal.SessionFactoryImpl getEntityManagerFactory()>();	$r4 = virtualinvoke $r2.<org.hibernate.internal.SessionFactoryImpl: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>();	r5 = interfaceinvoke $r4.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor entity(java.lang.Class)>(r3);	if r5 != null goto $r6 = virtualinvoke r0.<org.hibernate.query.criteria.internal.QueryStructure: javax.persistence.criteria.Root 'from'(javax.persistence.metamodel.EntityType)>(r5);	$r6 = virtualinvoke r0.<org.hibernate.query.criteria.internal.QueryStructure: javax.persistence.criteria.Root 'from'(javax.persistence.metamodel.EntityType)>(r5);	return $r6
;block_num 2