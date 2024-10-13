(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3564 0)
(declare-sort var1373 0)
(declare-sort var763 0)
(declare-sort var891 0)
(declare-sort var1703 0)
(declare-sort var2410 0)
(declare-sort var860 0)
(declare-sort var3131 0)
(declare-sort var3302 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1373-to-var891 (var1373) var891)
(declare-fun getEntityName/-55892200 (var891) String)
(declare-fun getFactory/324636549 (var2410) var1703)
(declare-fun cast-from-var3564-to-var2410 (var3564) var2410)
(declare-fun var1703_getMetamodel/1171873935 (var1703) var860)
(declare-fun var860_entityPersister/1947554472 (var860 String) var3131)
(declare-fun cast-from-var3131-to-var3302 (var3131) var3302)
(declare-const null-var3564 var3564)
(declare-const null-var1373 var1373)
(declare-const null-String String)
(declare-const var1294 var3564) ; Statement: r1 := @this: org.hibernate.loader.custom.CustomLoader 
(assert (not (= var1294 null-var3564)))
(declare-const var2805 var1373) ; Statement: r0 := @parameter0: org.hibernate.loader.custom.NonScalarReturn 
(assert (not (= var2805 null-var1373)))
(define-const var1154 String null-String) ; Statement: r30 = null 
(define-const var54 Bool false) ; Statement: $z0 = r0 instanceof org.hibernate.loader.custom.RootReturn 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof org.hibernate.loader.custom.CollectionReturn 
(assert (not (= (ite var54 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1290 var891 (cast-from-var1373-to-var891 var2805)) ; Statement: $r29 = (org.hibernate.loader.custom.RootReturn) r0 
(assert true)
(define-const var1154!1 String (getEntityName/-55892200 var1290)) ; Statement: r30 = virtualinvoke $r29.<org.hibernate.loader.custom.RootReturn: java.lang.String getEntityName()>() 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r30 != null goto $r2 = virtualinvoke r1.<org.hibernate.loader.custom.CustomLoader: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(assert (not (= var1154!1 null-String))) ; Cond: r30 != null 
(assert true)
(define-const var3479 var1703 (getFactory/324636549 (cast-from-var3564-to-var2410 var1294))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.loader.custom.CustomLoader: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var193 var860 (var1703_getMetamodel/1171873935 var3479)) ; Statement: $r3 = interfaceinvoke $r2.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>() 
(define-const var3820 var3131 (var860_entityPersister/1947554472 var193 var1154!1)) ; Statement: $r4 = interfaceinvoke $r3.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>(r30) 
(define-const var2749 var3302 (cast-from-var3131-to-var3302 var3820)) ; Statement: $r5 = (org.hibernate.persister.entity.Queryable) $r4 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1373-to-var891=([org.hibernate.loader.custom.NonScalarReturn], org.hibernate.loader.custom.RootReturn), getEntityName/-55892200=([org.hibernate.loader.custom.RootReturn], java.lang.String), getFactory/324636549=([org.hibernate.loader.Loader], org.hibernate.engine.spi.SessionFactoryImplementor), cast-from-var3564-to-var2410=([org.hibernate.loader.custom.CustomLoader], org.hibernate.loader.Loader), var1703_getMetamodel/1171873935=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.metamodel.spi.MetamodelImplementor), var860_entityPersister/1947554472=([org.hibernate.metamodel.spi.MetamodelImplementor, java.lang.String], org.hibernate.persister.entity.EntityPersister), cast-from-var3131-to-var3302=([org.hibernate.persister.entity.EntityPersister], org.hibernate.persister.entity.Queryable)}
; {var3564=org.hibernate.loader.custom.CustomLoader, var1294=r1, var1373=org.hibernate.loader.custom.NonScalarReturn, var2805=r0, var763=null_type, var1154=r30, var54=$z0, var891=org.hibernate.loader.custom.RootReturn, var1290=$r29, var1703=org.hibernate.engine.spi.SessionFactoryImplementor, var2410=org.hibernate.loader.Loader, var3479=$r2, var860=org.hibernate.metamodel.spi.MetamodelImplementor, var193=$r3, var3131=org.hibernate.persister.entity.EntityPersister, var3820=$r4, var3302=org.hibernate.persister.entity.Queryable, var2749=$r5}
; {org.hibernate.loader.custom.CustomLoader=var3564, r1=var1294, org.hibernate.loader.custom.NonScalarReturn=var1373, r0=var2805, null_type=var763, r30=var1154, $z0=var54, org.hibernate.loader.custom.RootReturn=var891, $r29=var1290, org.hibernate.engine.spi.SessionFactoryImplementor=var1703, org.hibernate.loader.Loader=var2410, $r2=var3479, org.hibernate.metamodel.spi.MetamodelImplementor=var860, $r3=var193, org.hibernate.persister.entity.EntityPersister=var3131, $r4=var3820, org.hibernate.persister.entity.Queryable=var3302, $r5=var2749}
;seq 
;cnt {}
;stmts r1 := @this: org.hibernate.loader.custom.CustomLoader;	r0 := @parameter0: org.hibernate.loader.custom.NonScalarReturn;	r30 = null;	$z0 = r0 instanceof org.hibernate.loader.custom.RootReturn;	if $z0 == 0 goto $z1 = r0 instanceof org.hibernate.loader.custom.CollectionReturn;	$r29 = (org.hibernate.loader.custom.RootReturn) r0;	r30 = virtualinvoke $r29.<org.hibernate.loader.custom.RootReturn: java.lang.String getEntityName()>();	goto [?= (branch)];	if r30 != null goto $r2 = virtualinvoke r1.<org.hibernate.loader.custom.CustomLoader: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r2 = virtualinvoke r1.<org.hibernate.loader.custom.CustomLoader: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r3 = interfaceinvoke $r2.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>();	$r4 = interfaceinvoke $r3.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>(r30);	$r5 = (org.hibernate.persister.entity.Queryable) $r4;	return $r5
;block_num 4