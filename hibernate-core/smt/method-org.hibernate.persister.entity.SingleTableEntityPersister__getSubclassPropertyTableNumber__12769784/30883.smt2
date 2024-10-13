(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2498 0)
(declare-sort var1536 0)
(declare-sort var2093 0)
(declare-sort var352 0)
(declare-sort var2996 0)
(declare-sort var3817 0)
(declare-sort var3224 0)
(declare-sort var2530 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getEntityName/498345966 (var2093) String)
(declare-fun cast-from-var2498-to-var2093 (var2498) var2093)
(declare-fun getFactory/36801881 (var2093) var352)
(declare-fun var352_getMetamodel/1171873935 (var352) var2996)
(declare-fun var2996_entityPersister/1947554472 (var2996 String) var3817)
(declare-fun var3817_getPropertyType/-1916908419 (var3817 String) var3224)
(declare-fun var3224_isAssociationType/-327998410 (var3224) Bool)
(declare-fun cast-from-var3224-to-var2530 (var3224) var2530)
(declare-fun var2530_useLHSPrimaryKey/-1777717431 (var2530) Bool)
(declare-const null-var2498 var2498)
(declare-const null-String String)
(declare-const var3740 var2498) ; Statement: r0 := @this: org.hibernate.persister.entity.SingleTableEntityPersister 
(assert (not (= var3740 null-var2498)))
(declare-const var3203 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3203 null-String)))
(declare-const var2893 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2893 null-String)))
(assert true)
(define-const var2072 String (getEntityName/498345966 (cast-from-var2498-to-var2093 var3740))) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.persister.entity.SingleTableEntityPersister: java.lang.String getEntityName()>() 
(assert true)
(define-const var235 Bool (= var2072 var2893)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke r0.<org.hibernate.persister.entity.SingleTableEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(assert (= (ite var235 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2754 var352 (getFactory/36801881 (cast-from-var2498-to-var2093 var3740))) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.persister.entity.SingleTableEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3535 var2996 (var352_getMetamodel/1171873935 var2754)) ; Statement: $r4 = interfaceinvoke $r3.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>() 
(define-const var706 var3817 (var2996_entityPersister/1947554472 var3535 var2893)) ; Statement: r16 = interfaceinvoke $r4.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>(r1) 
(assert true) ; Non Conditional
(define-const var2663 var3224 (var3817_getPropertyType/-1916908419 var706 var3203)) ; Statement: $r15 = interfaceinvoke r16.<org.hibernate.persister.entity.EntityPersister: org.hibernate.type.Type getPropertyType(java.lang.String)>(r5) 
(define-const var1479 Bool (var3224_isAssociationType/-327998410 var2663)) ; Statement: $z1 = interfaceinvoke $r15.<org.hibernate.type.Type: boolean isAssociationType()>() 
 ; Statement: if $z1 == 0 goto $r7 = r0.<org.hibernate.persister.entity.SingleTableEntityPersister: java.util.Map propertyTableNumbersByNameAndSubclass> 
(assert (not (= (ite var1479 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3528 var2530 (cast-from-var3224-to-var2530 var2663)) ; Statement: $r13 = (org.hibernate.type.AssociationType) $r15 
(define-const var2376 Bool (var2530_useLHSPrimaryKey/-1777717431 var3528)) ; Statement: $z2 = interfaceinvoke $r13.<org.hibernate.type.AssociationType: boolean useLHSPrimaryKey()>() 
 ; Statement: if $z2 == 0 goto $r7 = r0.<org.hibernate.persister.entity.SingleTableEntityPersister: java.util.Map propertyTableNumbersByNameAndSubclass> 
(assert (not (= (ite var2376 1 0) 0))) ; Negate: Cond: $z2 == 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getEntityName/498345966=([org.hibernate.persister.entity.AbstractEntityPersister], java.lang.String), cast-from-var2498-to-var2093=([org.hibernate.persister.entity.SingleTableEntityPersister], org.hibernate.persister.entity.AbstractEntityPersister), getFactory/36801881=([org.hibernate.persister.entity.AbstractEntityPersister], org.hibernate.engine.spi.SessionFactoryImplementor), var352_getMetamodel/1171873935=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.metamodel.spi.MetamodelImplementor), var2996_entityPersister/1947554472=([org.hibernate.metamodel.spi.MetamodelImplementor, java.lang.String], org.hibernate.persister.entity.EntityPersister), var3817_getPropertyType/-1916908419=([org.hibernate.persister.entity.EntityPersister, java.lang.String], org.hibernate.type.Type), var3224_isAssociationType/-327998410=([org.hibernate.type.Type], boolean), cast-from-var3224-to-var2530=([org.hibernate.type.Type], org.hibernate.type.AssociationType), var2530_useLHSPrimaryKey/-1777717431=([org.hibernate.type.AssociationType], boolean)}
; {var2498=org.hibernate.persister.entity.SingleTableEntityPersister, var3740=r0, var3203=r5, var1536=null_type, var2893=r1, var2093=org.hibernate.persister.entity.AbstractEntityPersister, var2072=$r2, var235=$z0, var352=org.hibernate.engine.spi.SessionFactoryImplementor, var2754=$r3, var2996=org.hibernate.metamodel.spi.MetamodelImplementor, var3535=$r4, var3817=org.hibernate.persister.entity.EntityPersister, var706=r16, var3224=org.hibernate.type.Type, var2663=$r15, var1479=$z1, var2530=org.hibernate.type.AssociationType, var3528=$r13, var2376=$z2}
; {org.hibernate.persister.entity.SingleTableEntityPersister=var2498, r0=var3740, r5=var3203, null_type=var1536, r1=var2893, org.hibernate.persister.entity.AbstractEntityPersister=var2093, $r2=var2072, $z0=var235, org.hibernate.engine.spi.SessionFactoryImplementor=var352, $r3=var2754, org.hibernate.metamodel.spi.MetamodelImplementor=var2996, $r4=var3535, org.hibernate.persister.entity.EntityPersister=var3817, r16=var706, org.hibernate.type.Type=var3224, $r15=var2663, $z1=var1479, org.hibernate.type.AssociationType=var2530, $r13=var3528, $z2=var2376}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.persister.entity.SingleTableEntityPersister;	r5 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$r2 = virtualinvoke r0.<org.hibernate.persister.entity.SingleTableEntityPersister: java.lang.String getEntityName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = virtualinvoke r0.<org.hibernate.persister.entity.SingleTableEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r3 = virtualinvoke r0.<org.hibernate.persister.entity.SingleTableEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r4 = interfaceinvoke $r3.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>();	r16 = interfaceinvoke $r4.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>(r1);	$r15 = interfaceinvoke r16.<org.hibernate.persister.entity.EntityPersister: org.hibernate.type.Type getPropertyType(java.lang.String)>(r5);	$z1 = interfaceinvoke $r15.<org.hibernate.type.Type: boolean isAssociationType()>();	if $z1 == 0 goto $r7 = r0.<org.hibernate.persister.entity.SingleTableEntityPersister: java.util.Map propertyTableNumbersByNameAndSubclass>;	$r13 = (org.hibernate.type.AssociationType) $r15;	$z2 = interfaceinvoke $r13.<org.hibernate.type.AssociationType: boolean useLHSPrimaryKey()>();	if $z2 == 0 goto $r7 = r0.<org.hibernate.persister.entity.SingleTableEntityPersister: java.util.Map propertyTableNumbersByNameAndSubclass>;	return 0
;block_num 5