(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var776 0)
(declare-sort var386 0)
(declare-sort var3480 0)
(declare-sort var3132 0)
(declare-sort var905 0)
(declare-sort var1275 0)
(declare-sort var1348 0)
(declare-sort var2239 0)
(declare-sort var992 0)
(declare-sort var3389 0)
(declare-sort var2873 0)
(declare-sort var951 0)
(declare-sort var2067 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3480_getCacheEntryStructure/1732465563 (var3480) var1348)
(declare-fun var992_getFactory/1122061256 (var992) var2239)
(declare-fun cast-from-var905-to-var992 (var905) var992)
(declare-fun var1348_destructure/246734834 (var1348 var3132 var2239) var3132)
(declare-fun cast-from-var3132-to-var3389 (var3132) var3389)
(declare-fun var3389_isReferenceEntry/1253467250 (var3389) Bool)
(declare-fun getInstanceToLoad/519110716 (var386) var3132)
(declare-fun cast-from-var3389-to-var2873 (var3389) var2873)
(declare-fun getSession/-1960258000 (var2067) var951)
(declare-fun cast-from-var386-to-var2067 (var386) var2067)
(declare-fun convertCacheReferenceEntryToEntity/888008094 (var776 var2873 var951 var1275) var3132)
(declare-const null-var776 var776)
(declare-const null-var386 var386)
(declare-const null-var3480 var3480)
(declare-const null-var3132 var3132)
(declare-const null-var905 var905)
(declare-const null-var1275 var1275)
(declare-const var347 var776) ; Statement: r7 := @this: org.hibernate.loader.entity.CacheEntityLoaderHelper 
(assert (not (= var347 null-var776)))
(declare-const var3659 var386) ; Statement: r8 := @parameter0: org.hibernate.event.spi.LoadEvent 
(assert (not (= var3659 null-var386)))
(declare-const var2290 var3480) ; Statement: r0 := @parameter1: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var2290 null-var3480)))
(declare-const var1362 var3132) ; Statement: r1 := @parameter2: java.lang.Object 
(assert (not (= var1362 null-var3132)))
(declare-const var1696 var905) ; Statement: r2 := @parameter3: org.hibernate.engine.spi.SessionImplementor 
(assert (not (= var1696 null-var905)))
(declare-const var2730 var1275) ; Statement: r9 := @parameter4: org.hibernate.engine.spi.EntityKey 
(assert (not (= var2730 null-var1275)))
(define-const var2678 var1348 (var3480_getCacheEntryStructure/1732465563 var2290)) ; Statement: $r4 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: org.hibernate.cache.spi.entry.CacheEntryStructure getCacheEntryStructure()>() 
(define-const var3702 var2239 (var992_getFactory/1122061256 (cast-from-var905-to-var992 var1696))) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SessionImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var2430 var3132 (var1348_destructure/246734834 var2678 var1362 var3702)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.cache.spi.entry.CacheEntryStructure: java.lang.Object destructure(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r1, $r3) 
(define-const var3118 var3389 (cast-from-var3132-to-var3389 var2430)) ; Statement: r6 = (org.hibernate.cache.spi.entry.CacheEntry) $r5 
(define-const var2612 Bool (var3389_isReferenceEntry/1253467250 var3118)) ; Statement: $z0 = interfaceinvoke r6.<org.hibernate.cache.spi.entry.CacheEntry: boolean isReferenceEntry()>() 
 ; Statement: if $z0 == 0 goto $r10 = virtualinvoke r8.<org.hibernate.event.spi.LoadEvent: java.io.Serializable getEntityId()>() 
(assert (not (= (ite var2612 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2687 var3132 (getInstanceToLoad/519110716 var3659)) ; Statement: $r20 = virtualinvoke r8.<org.hibernate.event.spi.LoadEvent: java.lang.Object getInstanceToLoad()>() 
 ; Statement: if $r20 == null goto $r22 = (org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl) r6 
(assert (= var2687 null-var3132)) ; Cond: $r20 == null 
(define-const var3698 var2873 (cast-from-var3389-to-var2873 var3118)) ; Statement: $r22 = (org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl) r6 
(assert true)
(define-const var1349 var951 (getSession/-1960258000 (cast-from-var386-to-var2067 var3659))) ; Statement: $r21 = virtualinvoke r8.<org.hibernate.event.spi.LoadEvent: org.hibernate.event.spi.EventSource getSession()>() 
(assert true)
(define-const var1051 var3132 (convertCacheReferenceEntryToEntity/888008094 var347 var3698 var1349 var2730)) ; Statement: $r23 = specialinvoke r7.<org.hibernate.loader.entity.CacheEntityLoaderHelper: java.lang.Object convertCacheReferenceEntryToEntity(org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl,org.hibernate.event.spi.EventSource,org.hibernate.engine.spi.EntityKey)>($r22, $r21, r9) 
 ; Statement: return $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {var3480_getCacheEntryStructure/1732465563=([org.hibernate.persister.entity.EntityPersister], org.hibernate.cache.spi.entry.CacheEntryStructure), var992_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), cast-from-var905-to-var992=([org.hibernate.engine.spi.SessionImplementor], org.hibernate.engine.spi.SharedSessionContractImplementor), var1348_destructure/246734834=([org.hibernate.cache.spi.entry.CacheEntryStructure, java.lang.Object, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.Object), cast-from-var3132-to-var3389=([java.lang.Object], org.hibernate.cache.spi.entry.CacheEntry), var3389_isReferenceEntry/1253467250=([org.hibernate.cache.spi.entry.CacheEntry], boolean), getInstanceToLoad/519110716=([org.hibernate.event.spi.LoadEvent], java.lang.Object), cast-from-var3389-to-var2873=([org.hibernate.cache.spi.entry.CacheEntry], org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl), getSession/-1960258000=([org.hibernate.event.spi.AbstractEvent], org.hibernate.event.spi.EventSource), cast-from-var386-to-var2067=([org.hibernate.event.spi.LoadEvent], org.hibernate.event.spi.AbstractEvent), convertCacheReferenceEntryToEntity/888008094=([org.hibernate.loader.entity.CacheEntityLoaderHelper, org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl, org.hibernate.event.spi.EventSource, org.hibernate.engine.spi.EntityKey], java.lang.Object)}
; {var776=org.hibernate.loader.entity.CacheEntityLoaderHelper, var347=r7, var386=org.hibernate.event.spi.LoadEvent, var3659=r8, var3480=org.hibernate.persister.entity.EntityPersister, var2290=r0, var3132=java.lang.Object, var1362=r1, var905=org.hibernate.engine.spi.SessionImplementor, var1696=r2, var1275=org.hibernate.engine.spi.EntityKey, var2730=r9, var1348=org.hibernate.cache.spi.entry.CacheEntryStructure, var2678=$r4, var2239=org.hibernate.engine.spi.SessionFactoryImplementor, var992=org.hibernate.engine.spi.SharedSessionContractImplementor, var3702=$r3, var2430=$r5, var3389=org.hibernate.cache.spi.entry.CacheEntry, var3118=r6, var2612=$z0, var2687=$r20, var2873=org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl, var3698=$r22, var951=org.hibernate.event.spi.EventSource, var2067=org.hibernate.event.spi.AbstractEvent, var1349=$r21, var1051=$r23}
; {org.hibernate.loader.entity.CacheEntityLoaderHelper=var776, r7=var347, org.hibernate.event.spi.LoadEvent=var386, r8=var3659, org.hibernate.persister.entity.EntityPersister=var3480, r0=var2290, java.lang.Object=var3132, r1=var1362, org.hibernate.engine.spi.SessionImplementor=var905, r2=var1696, org.hibernate.engine.spi.EntityKey=var1275, r9=var2730, org.hibernate.cache.spi.entry.CacheEntryStructure=var1348, $r4=var2678, org.hibernate.engine.spi.SessionFactoryImplementor=var2239, org.hibernate.engine.spi.SharedSessionContractImplementor=var992, $r3=var3702, $r5=var2430, org.hibernate.cache.spi.entry.CacheEntry=var3389, r6=var3118, $z0=var2612, $r20=var2687, org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl=var2873, $r22=var3698, org.hibernate.event.spi.EventSource=var951, org.hibernate.event.spi.AbstractEvent=var2067, $r21=var1349, $r23=var1051}
;seq 
;cnt {}
;stmts r7 := @this: org.hibernate.loader.entity.CacheEntityLoaderHelper;	r8 := @parameter0: org.hibernate.event.spi.LoadEvent;	r0 := @parameter1: org.hibernate.persister.entity.EntityPersister;	r1 := @parameter2: java.lang.Object;	r2 := @parameter3: org.hibernate.engine.spi.SessionImplementor;	r9 := @parameter4: org.hibernate.engine.spi.EntityKey;	$r4 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: org.hibernate.cache.spi.entry.CacheEntryStructure getCacheEntryStructure()>();	$r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SessionImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r5 = interfaceinvoke $r4.<org.hibernate.cache.spi.entry.CacheEntryStructure: java.lang.Object destructure(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r1, $r3);	r6 = (org.hibernate.cache.spi.entry.CacheEntry) $r5;	$z0 = interfaceinvoke r6.<org.hibernate.cache.spi.entry.CacheEntry: boolean isReferenceEntry()>();	if $z0 == 0 goto $r10 = virtualinvoke r8.<org.hibernate.event.spi.LoadEvent: java.io.Serializable getEntityId()>();	$r20 = virtualinvoke r8.<org.hibernate.event.spi.LoadEvent: java.lang.Object getInstanceToLoad()>();	if $r20 == null goto $r22 = (org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl) r6;	$r22 = (org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl) r6;	$r21 = virtualinvoke r8.<org.hibernate.event.spi.LoadEvent: org.hibernate.event.spi.EventSource getSession()>();	$r23 = specialinvoke r7.<org.hibernate.loader.entity.CacheEntityLoaderHelper: java.lang.Object convertCacheReferenceEntryToEntity(org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl,org.hibernate.event.spi.EventSource,org.hibernate.engine.spi.EntityKey)>($r22, $r21, r9);	return $r23
;block_num 3