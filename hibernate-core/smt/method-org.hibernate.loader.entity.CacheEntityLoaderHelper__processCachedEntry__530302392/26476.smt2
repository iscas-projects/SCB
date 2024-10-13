(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2199 0)
(declare-sort var1940 0)
(declare-sort var1579 0)
(declare-sort var2507 0)
(declare-sort var3388 0)
(declare-sort var3452 0)
(declare-sort var776 0)
(declare-sort var1379 0)
(declare-sort var2937 0)
(declare-sort var2971 0)
(declare-sort var2172 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1579_getCacheEntryStructure/1732465563 (var1579) var776)
(declare-fun var2937_getFactory/1122061256 (var2937) var1379)
(declare-fun cast-from-var3388-to-var2937 (var3388) var2937)
(declare-fun var776_destructure/246734834 (var776 var2507 var1379) var2507)
(declare-fun cast-from-var2507-to-var2971 (var2507) var2971)
(declare-fun var2971_isReferenceEntry/1253467250 (var2971) Bool)
(declare-fun getEntityId/2070677004 (var1940) var2172)
(declare-fun convertCacheEntryToEntity/1529358084 (var2199 var2971 var2172 var1579 var1940 var3452) var2507)
(declare-fun var1579_isInstance/679547889 (var1579 var2507) Bool)
(declare-const null-var2199 var2199)
(declare-const null-var1940 var1940)
(declare-const null-var1579 var1579)
(declare-const null-var2507 var2507)
(declare-const null-var3388 var3388)
(declare-const null-var3452 var3452)
(declare-const var3698 var2199) ; Statement: r7 := @this: org.hibernate.loader.entity.CacheEntityLoaderHelper 
(assert (not (= var3698 null-var2199)))
(declare-const var2738 var1940) ; Statement: r8 := @parameter0: org.hibernate.event.spi.LoadEvent 
(assert (not (= var2738 null-var1940)))
(declare-const var3767 var1579) ; Statement: r0 := @parameter1: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var3767 null-var1579)))
(declare-const var2926 var2507) ; Statement: r1 := @parameter2: java.lang.Object 
(assert (not (= var2926 null-var2507)))
(declare-const var3109 var3388) ; Statement: r2 := @parameter3: org.hibernate.engine.spi.SessionImplementor 
(assert (not (= var3109 null-var3388)))
(declare-const var1688 var3452) ; Statement: r9 := @parameter4: org.hibernate.engine.spi.EntityKey 
(assert (not (= var1688 null-var3452)))
(define-const var1753 var776 (var1579_getCacheEntryStructure/1732465563 var3767)) ; Statement: $r4 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: org.hibernate.cache.spi.entry.CacheEntryStructure getCacheEntryStructure()>() 
(define-const var1725 var1379 (var2937_getFactory/1122061256 (cast-from-var3388-to-var2937 var3109))) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SessionImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var2158 var2507 (var776_destructure/246734834 var1753 var2926 var1725)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.cache.spi.entry.CacheEntryStructure: java.lang.Object destructure(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r1, $r3) 
(define-const var3281 var2971 (cast-from-var2507-to-var2971 var2158)) ; Statement: r6 = (org.hibernate.cache.spi.entry.CacheEntry) $r5 
(define-const var1638 Bool (var2971_isReferenceEntry/1253467250 var3281)) ; Statement: $z0 = interfaceinvoke r6.<org.hibernate.cache.spi.entry.CacheEntry: boolean isReferenceEntry()>() 
 ; Statement: if $z0 == 0 goto $r10 = virtualinvoke r8.<org.hibernate.event.spi.LoadEvent: java.io.Serializable getEntityId()>() 
(assert (= (ite var1638 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var461 var2172 (getEntityId/2070677004 var2738)) ; Statement: $r10 = virtualinvoke r8.<org.hibernate.event.spi.LoadEvent: java.io.Serializable getEntityId()>() 
(assert true)
(define-const var281 var2507 (convertCacheEntryToEntity/1529358084 var3698 var3281 var461 var3767 var2738 var1688)) ; Statement: r11 = specialinvoke r7.<org.hibernate.loader.entity.CacheEntityLoaderHelper: java.lang.Object convertCacheEntryToEntity(org.hibernate.cache.spi.entry.CacheEntry,java.io.Serializable,org.hibernate.persister.entity.EntityPersister,org.hibernate.event.spi.LoadEvent,org.hibernate.engine.spi.EntityKey)>(r6, $r10, r0, r8, r9) 
(define-const var2527 Bool (var1579_isInstance/679547889 var3767 var281)) ; Statement: $z1 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: boolean isInstance(java.lang.Object)>(r11) 
 ; Statement: if $z1 != 0 goto return r11 
(assert (not (= (ite var2527 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var1579_getCacheEntryStructure/1732465563=([org.hibernate.persister.entity.EntityPersister], org.hibernate.cache.spi.entry.CacheEntryStructure), var2937_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), cast-from-var3388-to-var2937=([org.hibernate.engine.spi.SessionImplementor], org.hibernate.engine.spi.SharedSessionContractImplementor), var776_destructure/246734834=([org.hibernate.cache.spi.entry.CacheEntryStructure, java.lang.Object, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.Object), cast-from-var2507-to-var2971=([java.lang.Object], org.hibernate.cache.spi.entry.CacheEntry), var2971_isReferenceEntry/1253467250=([org.hibernate.cache.spi.entry.CacheEntry], boolean), getEntityId/2070677004=([org.hibernate.event.spi.LoadEvent], java.io.Serializable), convertCacheEntryToEntity/1529358084=([org.hibernate.loader.entity.CacheEntityLoaderHelper, org.hibernate.cache.spi.entry.CacheEntry, java.io.Serializable, org.hibernate.persister.entity.EntityPersister, org.hibernate.event.spi.LoadEvent, org.hibernate.engine.spi.EntityKey], java.lang.Object), var1579_isInstance/679547889=([org.hibernate.persister.entity.EntityPersister, java.lang.Object], boolean)}
; {var2199=org.hibernate.loader.entity.CacheEntityLoaderHelper, var3698=r7, var1940=org.hibernate.event.spi.LoadEvent, var2738=r8, var1579=org.hibernate.persister.entity.EntityPersister, var3767=r0, var2507=java.lang.Object, var2926=r1, var3388=org.hibernate.engine.spi.SessionImplementor, var3109=r2, var3452=org.hibernate.engine.spi.EntityKey, var1688=r9, var776=org.hibernate.cache.spi.entry.CacheEntryStructure, var1753=$r4, var1379=org.hibernate.engine.spi.SessionFactoryImplementor, var2937=org.hibernate.engine.spi.SharedSessionContractImplementor, var1725=$r3, var2158=$r5, var2971=org.hibernate.cache.spi.entry.CacheEntry, var3281=r6, var1638=$z0, var2172=java.io.Serializable, var461=$r10, var281=r11, var2527=$z1}
; {org.hibernate.loader.entity.CacheEntityLoaderHelper=var2199, r7=var3698, org.hibernate.event.spi.LoadEvent=var1940, r8=var2738, org.hibernate.persister.entity.EntityPersister=var1579, r0=var3767, java.lang.Object=var2507, r1=var2926, org.hibernate.engine.spi.SessionImplementor=var3388, r2=var3109, org.hibernate.engine.spi.EntityKey=var3452, r9=var1688, org.hibernate.cache.spi.entry.CacheEntryStructure=var776, $r4=var1753, org.hibernate.engine.spi.SessionFactoryImplementor=var1379, org.hibernate.engine.spi.SharedSessionContractImplementor=var2937, $r3=var1725, $r5=var2158, org.hibernate.cache.spi.entry.CacheEntry=var2971, r6=var3281, $z0=var1638, java.io.Serializable=var2172, $r10=var461, r11=var281, $z1=var2527}
;seq 
;cnt {}
;stmts r7 := @this: org.hibernate.loader.entity.CacheEntityLoaderHelper;	r8 := @parameter0: org.hibernate.event.spi.LoadEvent;	r0 := @parameter1: org.hibernate.persister.entity.EntityPersister;	r1 := @parameter2: java.lang.Object;	r2 := @parameter3: org.hibernate.engine.spi.SessionImplementor;	r9 := @parameter4: org.hibernate.engine.spi.EntityKey;	$r4 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: org.hibernate.cache.spi.entry.CacheEntryStructure getCacheEntryStructure()>();	$r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SessionImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r5 = interfaceinvoke $r4.<org.hibernate.cache.spi.entry.CacheEntryStructure: java.lang.Object destructure(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r1, $r3);	r6 = (org.hibernate.cache.spi.entry.CacheEntry) $r5;	$z0 = interfaceinvoke r6.<org.hibernate.cache.spi.entry.CacheEntry: boolean isReferenceEntry()>();	if $z0 == 0 goto $r10 = virtualinvoke r8.<org.hibernate.event.spi.LoadEvent: java.io.Serializable getEntityId()>();	$r10 = virtualinvoke r8.<org.hibernate.event.spi.LoadEvent: java.io.Serializable getEntityId()>();	r11 = specialinvoke r7.<org.hibernate.loader.entity.CacheEntityLoaderHelper: java.lang.Object convertCacheEntryToEntity(org.hibernate.cache.spi.entry.CacheEntry,java.io.Serializable,org.hibernate.persister.entity.EntityPersister,org.hibernate.event.spi.LoadEvent,org.hibernate.engine.spi.EntityKey)>(r6, $r10, r0, r8, r9);	$z1 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: boolean isInstance(java.lang.Object)>(r11);	if $z1 != 0 goto return r11;	return r11
;block_num 3