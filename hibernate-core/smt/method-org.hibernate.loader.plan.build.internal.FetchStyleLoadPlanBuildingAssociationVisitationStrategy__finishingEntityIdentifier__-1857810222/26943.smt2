(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1281 0)
(declare-sort var3505 0)
(declare-sort var2836 0)
(declare-sort var1857 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun finishingEntityIdentifier/1062360029 (var2836 var3505) void)
(declare-fun cast-from-var1281-to-var2836 (var1281) var2836)
(declare-fun vetoHandleAssociationAttribute/-2061848957 (var1281) Bool)
(declare-fun rootReturn/-2061848957 (var1281) var1857)
(declare-fun var1281_shouldVetoHandleAssociationAttributeInId/-1121970275 (var1857 var3505) Bool)
(declare-const null-var1281 var1281)
(declare-const null-var3505 var3505)
(declare-const var1390 var1281) ; Statement: r0 := @this: org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy 
(assert (not (= var1390 null-var1281)))
(declare-const var660 var3505) ; Statement: r1 := @parameter0: org.hibernate.persister.walking.spi.EntityIdentifierDefinition 
(assert (not (= var660 null-var3505)))
(assert true)
;(assert (finishingEntityIdentifier/1062360029 (cast-from-var1281-to-var2836 var1390) var660)) ; Statement: specialinvoke r0.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: void finishingEntityIdentifier(org.hibernate.persister.walking.spi.EntityIdentifierDefinition)>(r1) 

(declare-const var1390!1 var1281)
(declare-const var660!1 var3505)
(define-const var3282 Bool (vetoHandleAssociationAttribute/-2061848957 var1390!1)) ; Statement: $z0 = r0.<org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy: boolean vetoHandleAssociationAttribute> 
(define-const var1114 var1857 (rootReturn/-2061848957 var1390!1)) ; Statement: $r2 = r0.<org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy: org.hibernate.loader.plan.spi.Return rootReturn> 
(define-const var2275 Bool (var1281_shouldVetoHandleAssociationAttributeInId/-1121970275 var1114 var660!1)) ; Statement: $z1 = staticinvoke <org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy: boolean shouldVetoHandleAssociationAttributeInId(org.hibernate.loader.plan.spi.Return,org.hibernate.persister.walking.spi.EntityIdentifierDefinition)>($r2, r1) 
 ; Statement: if $z0 == $z1 goto r0.<org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy: boolean vetoHandleAssociationAttribute> = 0 
(assert (= var3282 var2275)) ; Cond: $z0 == $z1 
(declare-const var1390!2 var1281)
(assert (not (= var1390!2 null-var1281)))
(assert (= (vetoHandleAssociationAttribute/-2061848957 var1390!2) (ite (= 1 0) true false))) ; Statement: r0.<org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy: boolean vetoHandleAssociationAttribute> = 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {finishingEntityIdentifier/1062360029=([org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy, org.hibernate.persister.walking.spi.EntityIdentifierDefinition], void), cast-from-var1281-to-var2836=([org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy], org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy), vetoHandleAssociationAttribute/-2061848957=([org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy], boolean), rootReturn/-2061848957=([org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy], org.hibernate.loader.plan.spi.Return), var1281_shouldVetoHandleAssociationAttributeInId/-1121970275=([org.hibernate.loader.plan.spi.Return, org.hibernate.persister.walking.spi.EntityIdentifierDefinition], boolean)}
; {var1281=org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy, var1390=r0, var3505=org.hibernate.persister.walking.spi.EntityIdentifierDefinition, var660=r1, var2836=org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy, var3282=$z0, var1857=org.hibernate.loader.plan.spi.Return, var1114=$r2, var2275=$z1}
; {org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy=var1281, r0=var1390, org.hibernate.persister.walking.spi.EntityIdentifierDefinition=var3505, r1=var660, org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy=var2836, $z0=var3282, org.hibernate.loader.plan.spi.Return=var1857, $r2=var1114, $z1=var2275}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy;	r1 := @parameter0: org.hibernate.persister.walking.spi.EntityIdentifierDefinition;	specialinvoke r0.<org.hibernate.loader.plan.build.internal.AbstractLoadPlanBuildingAssociationVisitationStrategy: void finishingEntityIdentifier(org.hibernate.persister.walking.spi.EntityIdentifierDefinition)>(r1);	$z0 = r0.<org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy: boolean vetoHandleAssociationAttribute>;	$r2 = r0.<org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy: org.hibernate.loader.plan.spi.Return rootReturn>;	$z1 = staticinvoke <org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy: boolean shouldVetoHandleAssociationAttributeInId(org.hibernate.loader.plan.spi.Return,org.hibernate.persister.walking.spi.EntityIdentifierDefinition)>($r2, r1);	if $z0 == $z1 goto r0.<org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy: boolean vetoHandleAssociationAttribute> = 0;	r0.<org.hibernate.loader.plan.build.internal.FetchStyleLoadPlanBuildingAssociationVisitationStrategy: boolean vetoHandleAssociationAttribute> = 0;	return
;block_num 2