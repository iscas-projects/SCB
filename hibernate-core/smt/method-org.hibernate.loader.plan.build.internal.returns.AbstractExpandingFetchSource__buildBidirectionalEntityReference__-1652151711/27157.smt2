(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var656 0)
(declare-sort var292 0)
(declare-sort var3517 0)
(declare-sort var1573 0)
(declare-sort var508 0)
(declare-sort var590 0)
(declare-sort var1443 0)
(declare-sort var2883 0)
(declare-sort var1272 0)
(declare-sort var1554 0)
(declare-sort var1814 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var292_getType/-1720431962 (var292) var508)
(declare-fun cast-from-var508-to-var590 (var508) var590)
(declare-fun var292_toEntityDefinition/1287291014 (var292) var1443)
(declare-fun var1443_getEntityPersister/292732637 (var1443) var2883)
(declare-fun var1272-init () var1272)
(declare-fun <init>/1684213599 (var1272 var1554 var292 var1573) void)
(declare-fun cast-from-var656-to-var1554 (var656) var1554)
(declare-fun addBidirectionalEntityReference/-1297348715 (var656 var1814) void)
(declare-fun cast-from-var1272-to-var1814 (var1272) var1814)
(declare-const null-var656 var656)
(declare-const null-var292 var292)
(declare-const null-var3517 var3517)
(declare-const null-var1573 var1573)
(declare-const null-var2883 var2883)
(declare-const var3149 var656) ; Statement: r6 := @this: org.hibernate.loader.plan.build.internal.returns.AbstractExpandingFetchSource 
(assert (not (= var3149 null-var656)))
(declare-const var1199 var292) ; Statement: r0 := @parameter0: org.hibernate.persister.walking.spi.AssociationAttributeDefinition 
(assert (not (= var1199 null-var292)))
(declare-const var1983 var3517) ; Statement: r13 := @parameter1: org.hibernate.engine.FetchStrategy 
(assert (not (= var1983 null-var3517)))
(declare-const var632 var1573) ; Statement: r7 := @parameter2: org.hibernate.loader.plan.spi.EntityReference 
(assert (not (= var632 null-var1573)))
(define-const var2852 var508 (var292_getType/-1720431962 var1199)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.AssociationAttributeDefinition: org.hibernate.type.AssociationType getType()>() 
(define-const var2185 var590 (cast-from-var508-to-var590 var2852)) ; Statement: r2 = (org.hibernate.type.EntityType) $r1 
(define-const var405 var1443 (var292_toEntityDefinition/1287291014 var1199)) ; Statement: $r3 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.AssociationAttributeDefinition: org.hibernate.persister.walking.spi.EntityDefinition toEntityDefinition()>() 
(define-const var3516 var2883 (var1443_getEntityPersister/292732637 var405)) ; Statement: r4 = interfaceinvoke $r3.<org.hibernate.persister.walking.spi.EntityDefinition: org.hibernate.persister.entity.EntityPersister getEntityPersister()>() 
 ; Statement: if r4 != null goto $r15 = new org.hibernate.loader.plan.build.internal.returns.BidirectionalEntityReferenceImpl 
(assert (not (= var3516 null-var2883))) ; Cond: r4 != null 
(define-const var2192 var1272 var1272-init) ; Statement: $r15 = new org.hibernate.loader.plan.build.internal.returns.BidirectionalEntityReferenceImpl 
(assert true)
;(assert (<init>/1684213599 var2192 (cast-from-var656-to-var1554 var3149) var1199 var632)) ; Statement: specialinvoke $r15.<org.hibernate.loader.plan.build.internal.returns.BidirectionalEntityReferenceImpl: void <init>(org.hibernate.loader.plan.build.spi.ExpandingFetchSource,org.hibernate.persister.walking.spi.AssociationAttributeDefinition,org.hibernate.loader.plan.spi.EntityReference)>(r6, r0, r7) 

(declare-const var2192!1 var1272)
(declare-const var3149!1 var656)
(declare-const var1199!1 var292)
(declare-const var632!1 var1573)
(assert true)
;(assert (addBidirectionalEntityReference/-1297348715 var3149!1 (cast-from-var1272-to-var1814 var2192!1))) ; Statement: specialinvoke r6.<org.hibernate.loader.plan.build.internal.returns.AbstractExpandingFetchSource: void addBidirectionalEntityReference(org.hibernate.loader.plan.spi.BidirectionalEntityReference)>($r15) 

(declare-const var3149!2 var656)
(declare-const var2192!2 var1272)
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var292_getType/-1720431962=([org.hibernate.persister.walking.spi.AssociationAttributeDefinition], org.hibernate.type.AssociationType), cast-from-var508-to-var590=([org.hibernate.type.AssociationType], org.hibernate.type.EntityType), var292_toEntityDefinition/1287291014=([org.hibernate.persister.walking.spi.AssociationAttributeDefinition], org.hibernate.persister.walking.spi.EntityDefinition), var1443_getEntityPersister/292732637=([org.hibernate.persister.walking.spi.EntityDefinition], org.hibernate.persister.entity.EntityPersister), var1272-init=([], org.hibernate.loader.plan.build.internal.returns.BidirectionalEntityReferenceImpl), <init>/1684213599=([org.hibernate.loader.plan.build.internal.returns.BidirectionalEntityReferenceImpl, org.hibernate.loader.plan.build.spi.ExpandingFetchSource, org.hibernate.persister.walking.spi.AssociationAttributeDefinition, org.hibernate.loader.plan.spi.EntityReference], void), cast-from-var656-to-var1554=([org.hibernate.loader.plan.build.internal.returns.AbstractExpandingFetchSource], org.hibernate.loader.plan.build.spi.ExpandingFetchSource), addBidirectionalEntityReference/-1297348715=([org.hibernate.loader.plan.build.internal.returns.AbstractExpandingFetchSource, org.hibernate.loader.plan.spi.BidirectionalEntityReference], void), cast-from-var1272-to-var1814=([org.hibernate.loader.plan.build.internal.returns.BidirectionalEntityReferenceImpl], org.hibernate.loader.plan.spi.BidirectionalEntityReference)}
; {var656=org.hibernate.loader.plan.build.internal.returns.AbstractExpandingFetchSource, var3149=r6, var292=org.hibernate.persister.walking.spi.AssociationAttributeDefinition, var1199=r0, var3517=org.hibernate.engine.FetchStrategy, var1983=r13, var1573=org.hibernate.loader.plan.spi.EntityReference, var632=r7, var508=org.hibernate.type.AssociationType, var2852=$r1, var590=org.hibernate.type.EntityType, var2185=r2, var1443=org.hibernate.persister.walking.spi.EntityDefinition, var405=$r3, var2883=org.hibernate.persister.entity.EntityPersister, var3516=r4, var1272=org.hibernate.loader.plan.build.internal.returns.BidirectionalEntityReferenceImpl, var2192=$r15, var1554=org.hibernate.loader.plan.build.spi.ExpandingFetchSource, var1814=org.hibernate.loader.plan.spi.BidirectionalEntityReference}
; {org.hibernate.loader.plan.build.internal.returns.AbstractExpandingFetchSource=var656, r6=var3149, org.hibernate.persister.walking.spi.AssociationAttributeDefinition=var292, r0=var1199, org.hibernate.engine.FetchStrategy=var3517, r13=var1983, org.hibernate.loader.plan.spi.EntityReference=var1573, r7=var632, org.hibernate.type.AssociationType=var508, $r1=var2852, org.hibernate.type.EntityType=var590, r2=var2185, org.hibernate.persister.walking.spi.EntityDefinition=var1443, $r3=var405, org.hibernate.persister.entity.EntityPersister=var2883, r4=var3516, org.hibernate.loader.plan.build.internal.returns.BidirectionalEntityReferenceImpl=var1272, $r15=var2192, org.hibernate.loader.plan.build.spi.ExpandingFetchSource=var1554, org.hibernate.loader.plan.spi.BidirectionalEntityReference=var1814}
;seq 
;cnt {}
;stmts r6 := @this: org.hibernate.loader.plan.build.internal.returns.AbstractExpandingFetchSource;	r0 := @parameter0: org.hibernate.persister.walking.spi.AssociationAttributeDefinition;	r13 := @parameter1: org.hibernate.engine.FetchStrategy;	r7 := @parameter2: org.hibernate.loader.plan.spi.EntityReference;	$r1 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.AssociationAttributeDefinition: org.hibernate.type.AssociationType getType()>();	r2 = (org.hibernate.type.EntityType) $r1;	$r3 = interfaceinvoke r0.<org.hibernate.persister.walking.spi.AssociationAttributeDefinition: org.hibernate.persister.walking.spi.EntityDefinition toEntityDefinition()>();	r4 = interfaceinvoke $r3.<org.hibernate.persister.walking.spi.EntityDefinition: org.hibernate.persister.entity.EntityPersister getEntityPersister()>();	if r4 != null goto $r15 = new org.hibernate.loader.plan.build.internal.returns.BidirectionalEntityReferenceImpl;	$r15 = new org.hibernate.loader.plan.build.internal.returns.BidirectionalEntityReferenceImpl;	specialinvoke $r15.<org.hibernate.loader.plan.build.internal.returns.BidirectionalEntityReferenceImpl: void <init>(org.hibernate.loader.plan.build.spi.ExpandingFetchSource,org.hibernate.persister.walking.spi.AssociationAttributeDefinition,org.hibernate.loader.plan.spi.EntityReference)>(r6, r0, r7);	specialinvoke r6.<org.hibernate.loader.plan.build.internal.returns.AbstractExpandingFetchSource: void addBidirectionalEntityReference(org.hibernate.loader.plan.spi.BidirectionalEntityReference)>($r15);	return $r15
;block_num 2