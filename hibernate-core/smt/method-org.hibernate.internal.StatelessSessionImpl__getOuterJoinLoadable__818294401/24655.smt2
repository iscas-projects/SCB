(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2526 0)
(declare-sort var2016 0)
(declare-sort var2179 0)
(declare-sort var1493 0)
(declare-sort var1655 0)
(declare-sort var729 0)
(declare-sort var352 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFactory/-712118229 (var1493) var2179)
(declare-fun cast-from-var2526-to-var1493 (var2526) var1493)
(declare-fun var2179_getMetamodel/1171873935 (var2179) var1655)
(declare-fun var1655_entityPersister/1947554472 (var1655 String) var729)
(declare-fun cast-from-var729-to-var352 (var729) var352)
(declare-const null-var2526 var2526)
(declare-const null-String String)
(declare-const var2343 var2526) ; Statement: r0 := @this: org.hibernate.internal.StatelessSessionImpl 
(assert (not (= var2343 null-var2526)))
(declare-const var1948 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1948 null-String)))
(assert true)
(define-const var3570 var2179 (getFactory/-712118229 (cast-from-var2526-to-var1493 var2343))) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.internal.StatelessSessionImpl: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var734 var1655 (var2179_getMetamodel/1171873935 var3570)) ; Statement: $r3 = interfaceinvoke $r1.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>() 
(define-const var456 var729 (var1655_entityPersister/1947554472 var734 var1948)) ; Statement: r4 = interfaceinvoke $r3.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>(r2) 
(define-const var1237 Bool true) ; Statement: $z0 = r4 instanceof org.hibernate.persister.entity.OuterJoinLoadable 
 ; Statement: if $z0 != 0 goto $r5 = (org.hibernate.persister.entity.OuterJoinLoadable) r4 
(assert (not (= (ite var1237 1 0) 0))) ; Cond: $z0 != 0 
(define-const var645 var352 (cast-from-var729-to-var352 var456)) ; Statement: $r5 = (org.hibernate.persister.entity.OuterJoinLoadable) r4 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getFactory/-712118229=([org.hibernate.internal.AbstractSharedSessionContract], org.hibernate.engine.spi.SessionFactoryImplementor), cast-from-var2526-to-var1493=([org.hibernate.internal.StatelessSessionImpl], org.hibernate.internal.AbstractSharedSessionContract), var2179_getMetamodel/1171873935=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.metamodel.spi.MetamodelImplementor), var1655_entityPersister/1947554472=([org.hibernate.metamodel.spi.MetamodelImplementor, java.lang.String], org.hibernate.persister.entity.EntityPersister), cast-from-var729-to-var352=([org.hibernate.persister.entity.EntityPersister], org.hibernate.persister.entity.OuterJoinLoadable)}
; {var2526=org.hibernate.internal.StatelessSessionImpl, var2343=r0, var1948=r2, var2016=null_type, var2179=org.hibernate.engine.spi.SessionFactoryImplementor, var1493=org.hibernate.internal.AbstractSharedSessionContract, var3570=$r1, var1655=org.hibernate.metamodel.spi.MetamodelImplementor, var734=$r3, var729=org.hibernate.persister.entity.EntityPersister, var456=r4, var1237=$z0, var352=org.hibernate.persister.entity.OuterJoinLoadable, var645=$r5}
; {org.hibernate.internal.StatelessSessionImpl=var2526, r0=var2343, r2=var1948, null_type=var2016, org.hibernate.engine.spi.SessionFactoryImplementor=var2179, org.hibernate.internal.AbstractSharedSessionContract=var1493, $r1=var3570, org.hibernate.metamodel.spi.MetamodelImplementor=var1655, $r3=var734, org.hibernate.persister.entity.EntityPersister=var729, r4=var456, $z0=var1237, org.hibernate.persister.entity.OuterJoinLoadable=var352, $r5=var645}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.internal.StatelessSessionImpl;	r2 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<org.hibernate.internal.StatelessSessionImpl: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r3 = interfaceinvoke $r1.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>();	r4 = interfaceinvoke $r3.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>(r2);	$z0 = r4 instanceof org.hibernate.persister.entity.OuterJoinLoadable;	if $z0 != 0 goto $r5 = (org.hibernate.persister.entity.OuterJoinLoadable) r4;	$r5 = (org.hibernate.persister.entity.OuterJoinLoadable) r4;	return $r5
;block_num 2