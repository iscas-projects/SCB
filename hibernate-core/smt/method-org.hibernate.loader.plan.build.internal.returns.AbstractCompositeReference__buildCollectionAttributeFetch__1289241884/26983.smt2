(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2478 0)
(declare-sort var3265 0)
(declare-sort var1534 0)
(declare-sort var1880 0)
(declare-sort var1381 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun allowCollectionFetches/1728541778 (var2478) Bool)
(declare-fun buildCollectionAttributeFetch/-1153517147 (var1381 var3265 var1534) var1880)
(declare-fun cast-from-var2478-to-var1381 (var2478) var1381)
(declare-const null-var2478 var2478)
(declare-const null-var3265 var3265)
(declare-const null-var1534 var1534)
(declare-const var3157 var2478) ; Statement: r0 := @this: org.hibernate.loader.plan.build.internal.returns.AbstractCompositeReference 
(assert (not (= var3157 null-var2478)))
(declare-const var3873 var3265) ; Statement: r1 := @parameter0: org.hibernate.persister.walking.spi.AssociationAttributeDefinition 
(assert (not (= var3873 null-var3265)))
(declare-const var2002 var1534) ; Statement: r2 := @parameter1: org.hibernate.engine.FetchStrategy 
(assert (not (= var2002 null-var1534)))
(define-const var2280 Bool (allowCollectionFetches/1728541778 var3157)) ; Statement: $z0 = r0.<org.hibernate.loader.plan.build.internal.returns.AbstractCompositeReference: boolean allowCollectionFetches> 
 ; Statement: if $z0 != 0 goto $r3 = specialinvoke r0.<org.hibernate.loader.plan.build.internal.returns.AbstractExpandingFetchSource: org.hibernate.loader.plan.spi.CollectionAttributeFetch buildCollectionAttributeFetch(org.hibernate.persister.walking.spi.AssociationAttributeDefinition,org.hibernate.engine.FetchStrategy)>(r1, r2) 
(assert (not (= (ite var2280 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var2404 var1880 (buildCollectionAttributeFetch/-1153517147 (cast-from-var2478-to-var1381 var3157) var3873 var2002)) ; Statement: $r3 = specialinvoke r0.<org.hibernate.loader.plan.build.internal.returns.AbstractExpandingFetchSource: org.hibernate.loader.plan.spi.CollectionAttributeFetch buildCollectionAttributeFetch(org.hibernate.persister.walking.spi.AssociationAttributeDefinition,org.hibernate.engine.FetchStrategy)>(r1, r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {allowCollectionFetches/1728541778=([org.hibernate.loader.plan.build.internal.returns.AbstractCompositeReference], boolean), buildCollectionAttributeFetch/-1153517147=([org.hibernate.loader.plan.build.internal.returns.AbstractExpandingFetchSource, org.hibernate.persister.walking.spi.AssociationAttributeDefinition, org.hibernate.engine.FetchStrategy], org.hibernate.loader.plan.spi.CollectionAttributeFetch), cast-from-var2478-to-var1381=([org.hibernate.loader.plan.build.internal.returns.AbstractCompositeReference], org.hibernate.loader.plan.build.internal.returns.AbstractExpandingFetchSource)}
; {var2478=org.hibernate.loader.plan.build.internal.returns.AbstractCompositeReference, var3157=r0, var3265=org.hibernate.persister.walking.spi.AssociationAttributeDefinition, var3873=r1, var1534=org.hibernate.engine.FetchStrategy, var2002=r2, var2280=$z0, var1880=org.hibernate.loader.plan.spi.CollectionAttributeFetch, var1381=org.hibernate.loader.plan.build.internal.returns.AbstractExpandingFetchSource, var2404=$r3}
; {org.hibernate.loader.plan.build.internal.returns.AbstractCompositeReference=var2478, r0=var3157, org.hibernate.persister.walking.spi.AssociationAttributeDefinition=var3265, r1=var3873, org.hibernate.engine.FetchStrategy=var1534, r2=var2002, $z0=var2280, org.hibernate.loader.plan.spi.CollectionAttributeFetch=var1880, org.hibernate.loader.plan.build.internal.returns.AbstractExpandingFetchSource=var1381, $r3=var2404}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.loader.plan.build.internal.returns.AbstractCompositeReference;	r1 := @parameter0: org.hibernate.persister.walking.spi.AssociationAttributeDefinition;	r2 := @parameter1: org.hibernate.engine.FetchStrategy;	$z0 = r0.<org.hibernate.loader.plan.build.internal.returns.AbstractCompositeReference: boolean allowCollectionFetches>;	if $z0 != 0 goto $r3 = specialinvoke r0.<org.hibernate.loader.plan.build.internal.returns.AbstractExpandingFetchSource: org.hibernate.loader.plan.spi.CollectionAttributeFetch buildCollectionAttributeFetch(org.hibernate.persister.walking.spi.AssociationAttributeDefinition,org.hibernate.engine.FetchStrategy)>(r1, r2);	$r3 = specialinvoke r0.<org.hibernate.loader.plan.build.internal.returns.AbstractExpandingFetchSource: org.hibernate.loader.plan.spi.CollectionAttributeFetch buildCollectionAttributeFetch(org.hibernate.persister.walking.spi.AssociationAttributeDefinition,org.hibernate.engine.FetchStrategy)>(r1, r2);	return $r3
;block_num 2