(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var522 0)
(declare-sort var126 0)
(declare-sort var3017 0)
(declare-sort var3601 0)
(declare-sort var602 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var126_getRootEntityName/775871466 (var126) String)
(declare-fun var126_getEntityName/-1914780628 (var126) String)
(declare-fun var126_getFactory/1868753243 (var126) var3017)
(declare-fun var3017_getMetamodel/1171873935 (var3017) var3601)
(declare-fun var3601_entityPersister/1947554472 (var3601 String) var126)
(declare-fun var126_getNavigableRole/482652230 (var126) var602)
(declare-const null-var522 var522)
(declare-const null-var126 var126)
(declare-const var84 var522) ; Statement: r8 := @this: org.hibernate.stat.internal.StatsHelper 
(assert (not (= var84 null-var522)))
(declare-const var3449 var126) ; Statement: r0 := @parameter0: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var3449 null-var126)))
(define-const var1494 String (var126_getRootEntityName/775871466 var3449)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: java.lang.String getRootEntityName()>() 
(define-const var3296 String (var126_getEntityName/-1914780628 var3449)) ; Statement: $r2 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(assert true)
(define-const var2122 Bool (= var3296 var1494)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(assert (= (ite var2122 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1471 var3017 (var126_getFactory/1868753243 var3449)) ; Statement: $r3 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var2952 var3601 (var3017_getMetamodel/1171873935 var1471)) ; Statement: $r4 = interfaceinvoke $r3.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>() 
(define-const var2424 var126 (var3601_entityPersister/1947554472 var2952 var1494)) ; Statement: r5 = interfaceinvoke $r4.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>(r1) 
(define-const var3898 var602 (var126_getNavigableRole/482652230 var2424)) ; Statement: $r6 = interfaceinvoke r5.<org.hibernate.persister.entity.EntityPersister: org.hibernate.metamodel.model.domain.NavigableRole getNavigableRole()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var126_getRootEntityName/775871466=([org.hibernate.persister.entity.EntityPersister], java.lang.String), var126_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), var126_getFactory/1868753243=([org.hibernate.persister.entity.EntityPersister], org.hibernate.engine.spi.SessionFactoryImplementor), var3017_getMetamodel/1171873935=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.metamodel.spi.MetamodelImplementor), var3601_entityPersister/1947554472=([org.hibernate.metamodel.spi.MetamodelImplementor, java.lang.String], org.hibernate.persister.entity.EntityPersister), var126_getNavigableRole/482652230=([org.hibernate.persister.entity.EntityPersister], org.hibernate.metamodel.model.domain.NavigableRole)}
; {var522=org.hibernate.stat.internal.StatsHelper, var84=r8, var126=org.hibernate.persister.entity.EntityPersister, var3449=r0, var1494=r1, var3296=$r2, var2122=$z0, var3017=org.hibernate.engine.spi.SessionFactoryImplementor, var1471=$r3, var3601=org.hibernate.metamodel.spi.MetamodelImplementor, var2952=$r4, var2424=r5, var602=org.hibernate.metamodel.model.domain.NavigableRole, var3898=$r6}
; {org.hibernate.stat.internal.StatsHelper=var522, r8=var84, org.hibernate.persister.entity.EntityPersister=var126, r0=var3449, r1=var1494, $r2=var3296, $z0=var2122, org.hibernate.engine.spi.SessionFactoryImplementor=var3017, $r3=var1471, org.hibernate.metamodel.spi.MetamodelImplementor=var3601, $r4=var2952, r5=var2424, org.hibernate.metamodel.model.domain.NavigableRole=var602, $r6=var3898}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r8 := @this: org.hibernate.stat.internal.StatsHelper;	r0 := @parameter0: org.hibernate.persister.entity.EntityPersister;	r1 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: java.lang.String getRootEntityName()>();	$r2 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r3 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r4 = interfaceinvoke $r3.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>();	r5 = interfaceinvoke $r4.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>(r1);	$r6 = interfaceinvoke r5.<org.hibernate.persister.entity.EntityPersister: org.hibernate.metamodel.model.domain.NavigableRole getNavigableRole()>();	return $r6
;block_num 2