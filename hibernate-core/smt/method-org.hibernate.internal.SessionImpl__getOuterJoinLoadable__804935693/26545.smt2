(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2307 0)
(declare-sort var437 0)
(declare-sort var498 0)
(declare-sort var1688 0)
(declare-sort var1903 0)
(declare-sort var2484 0)
(declare-sort var2073 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFactory/-712118229 (var1688) var498)
(declare-fun cast-from-var2307-to-var1688 (var2307) var1688)
(declare-fun var498_getMetamodel/1171873935 (var498) var1903)
(declare-fun var1903_entityPersister/1947554472 (var1903 String) var2484)
(declare-fun cast-from-var2484-to-var2073 (var2484) var2073)
(declare-const null-var2307 var2307)
(declare-const null-String String)
(declare-const var1732 var2307) ; Statement: r0 := @this: org.hibernate.internal.SessionImpl 
(assert (not (= var1732 null-var2307)))
(declare-const var688 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var688 null-String)))
(assert true)
(define-const var2400 var498 (getFactory/-712118229 (cast-from-var2307-to-var1688 var1732))) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.internal.SessionImpl: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var1887 var1903 (var498_getMetamodel/1171873935 var2400)) ; Statement: $r3 = interfaceinvoke $r1.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>() 
(define-const var1275 var2484 (var1903_entityPersister/1947554472 var1887 var688)) ; Statement: r4 = interfaceinvoke $r3.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>(r2) 
(define-const var1746 Bool true) ; Statement: $z0 = r4 instanceof org.hibernate.persister.entity.OuterJoinLoadable 
 ; Statement: if $z0 != 0 goto $r5 = (org.hibernate.persister.entity.OuterJoinLoadable) r4 
(assert (not (= (ite var1746 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1957 var2073 (cast-from-var2484-to-var2073 var1275)) ; Statement: $r5 = (org.hibernate.persister.entity.OuterJoinLoadable) r4 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getFactory/-712118229=([org.hibernate.internal.AbstractSharedSessionContract], org.hibernate.engine.spi.SessionFactoryImplementor), cast-from-var2307-to-var1688=([org.hibernate.internal.SessionImpl], org.hibernate.internal.AbstractSharedSessionContract), var498_getMetamodel/1171873935=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.metamodel.spi.MetamodelImplementor), var1903_entityPersister/1947554472=([org.hibernate.metamodel.spi.MetamodelImplementor, java.lang.String], org.hibernate.persister.entity.EntityPersister), cast-from-var2484-to-var2073=([org.hibernate.persister.entity.EntityPersister], org.hibernate.persister.entity.OuterJoinLoadable)}
; {var2307=org.hibernate.internal.SessionImpl, var1732=r0, var688=r2, var437=null_type, var498=org.hibernate.engine.spi.SessionFactoryImplementor, var1688=org.hibernate.internal.AbstractSharedSessionContract, var2400=$r1, var1903=org.hibernate.metamodel.spi.MetamodelImplementor, var1887=$r3, var2484=org.hibernate.persister.entity.EntityPersister, var1275=r4, var1746=$z0, var2073=org.hibernate.persister.entity.OuterJoinLoadable, var1957=$r5}
; {org.hibernate.internal.SessionImpl=var2307, r0=var1732, r2=var688, null_type=var437, org.hibernate.engine.spi.SessionFactoryImplementor=var498, org.hibernate.internal.AbstractSharedSessionContract=var1688, $r1=var2400, org.hibernate.metamodel.spi.MetamodelImplementor=var1903, $r3=var1887, org.hibernate.persister.entity.EntityPersister=var2484, r4=var1275, $z0=var1746, org.hibernate.persister.entity.OuterJoinLoadable=var2073, $r5=var1957}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.internal.SessionImpl;	r2 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<org.hibernate.internal.SessionImpl: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r3 = interfaceinvoke $r1.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>();	r4 = interfaceinvoke $r3.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>(r2);	$z0 = r4 instanceof org.hibernate.persister.entity.OuterJoinLoadable;	if $z0 != 0 goto $r5 = (org.hibernate.persister.entity.OuterJoinLoadable) r4;	$r5 = (org.hibernate.persister.entity.OuterJoinLoadable) r4;	return $r5
;block_num 2