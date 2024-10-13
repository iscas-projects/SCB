(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1674 0)
(declare-sort var549 0)
(declare-sort var1153 0)
(declare-sort var3712 0)
(declare-sort var1381 0)
(declare-sort var1962 0)
(declare-sort var1269 0)
(declare-sort var2160 0)
(declare-sort var668 0)
(declare-sort var2452 0)
(declare-sort var3766 0)
(declare-sort var2188 0)
(declare-sort var974 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1153_getCacheEntryStructure/1732465563 (var1153) var1269)
(declare-fun var668_getFactory/1122061256 (var668) var2160)
(declare-fun cast-from-var1381-to-var668 (var1381) var668)
(declare-fun var1269_destructure/246734834 (var1269 var3712 var2160) var3712)
(declare-fun cast-from-var3712-to-var2452 (var3712) var2452)
(declare-fun var2452_isReferenceEntry/1253467250 (var2452) Bool)
(declare-fun getInstanceToLoad/519110716 (var549) var3712)
(declare-fun var3766-init () var3766)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getEntityId/2070677004 (var549) var2188)
(declare-fun append/-1031950772 (String var3712) String)
(declare-fun cast-from-var2188-to-var3712 (var2188) var3712)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var3766 String) void)
(declare-fun cast-from-var3766-to-var974 (var3766) var974)
(declare-const null-var1674 var1674)
(declare-const null-var549 var549)
(declare-const null-var1153 var1153)
(declare-const null-var3712 var3712)
(declare-const null-var1381 var1381)
(declare-const null-var1962 var1962)
(declare-const var3249 var1674) ; Statement: r7 := @this: org.hibernate.loader.entity.CacheEntityLoaderHelper 
(assert (not (= var3249 null-var1674)))
(declare-const var2975 var549) ; Statement: r8 := @parameter0: org.hibernate.event.spi.LoadEvent 
(assert (not (= var2975 null-var549)))
(declare-const var978 var1153) ; Statement: r0 := @parameter1: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var978 null-var1153)))
(declare-const var759 var3712) ; Statement: r1 := @parameter2: java.lang.Object 
(assert (not (= var759 null-var3712)))
(declare-const var2420 var1381) ; Statement: r2 := @parameter3: org.hibernate.engine.spi.SessionImplementor 
(assert (not (= var2420 null-var1381)))
(declare-const var2398 var1962) ; Statement: r9 := @parameter4: org.hibernate.engine.spi.EntityKey 
(assert (not (= var2398 null-var1962)))
(define-const var1523 var1269 (var1153_getCacheEntryStructure/1732465563 var978)) ; Statement: $r4 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: org.hibernate.cache.spi.entry.CacheEntryStructure getCacheEntryStructure()>() 
(define-const var558 var2160 (var668_getFactory/1122061256 (cast-from-var1381-to-var668 var2420))) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SessionImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var1595 var3712 (var1269_destructure/246734834 var1523 var759 var558)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.cache.spi.entry.CacheEntryStructure: java.lang.Object destructure(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r1, $r3) 
(define-const var417 var2452 (cast-from-var3712-to-var2452 var1595)) ; Statement: r6 = (org.hibernate.cache.spi.entry.CacheEntry) $r5 
(define-const var2630 Bool (var2452_isReferenceEntry/1253467250 var417)) ; Statement: $z0 = interfaceinvoke r6.<org.hibernate.cache.spi.entry.CacheEntry: boolean isReferenceEntry()>() 
 ; Statement: if $z0 == 0 goto $r10 = virtualinvoke r8.<org.hibernate.event.spi.LoadEvent: java.io.Serializable getEntityId()>() 
(assert (not (= (ite var2630 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3746 var3712 (getInstanceToLoad/519110716 var2975)) ; Statement: $r20 = virtualinvoke r8.<org.hibernate.event.spi.LoadEvent: java.lang.Object getInstanceToLoad()>() 
 ; Statement: if $r20 == null goto $r22 = (org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl) r6 
(assert (not (= var3746 null-var3712))) ; Negate: Cond: $r20 == null  
(define-const var1562 var3766 var3766-init) ; Statement: $r31 = new org.hibernate.HibernateException 
(define-const var397 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var397)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var397!1 String)
(assert (= var397!1 ""))
(assert true)
(define-const var2271 String (append/672562846 var397!1 "Attempt to load entity [%s] from cache using provided object instance, but cache is storing references: ")) ; Statement: $r27 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Attempt to load entity [%s] from cache using provided object instance, but cache is storing references: ") 
(declare-const var397!2 String)
(assert (= var397!2 (str.++ var397!1 "Attempt to load entity [%s] from cache using provided object instance, but cache is storing references: ")))
(assert true)
(define-const var3016 var2188 (getEntityId/2070677004 var2975)) ; Statement: $r26 = virtualinvoke r8.<org.hibernate.event.spi.LoadEvent: java.io.Serializable getEntityId()>() 
(assert true)
(define-const var104 String (append/-1031950772 var2271 (cast-from-var2188-to-var3712 var3016))) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r26) 
(declare-const var2271!1 String)
(assert (str.prefixof var2271 var2271!1))
(assert true)
(define-const var334 String (toString/-2075883882 var104)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var1562 var334)) ; Statement: specialinvoke $r31.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r29) 

(declare-const var1562!1 var3766)
(declare-const var334!1 String)
(define-const var706 var974 (cast-from-var3766-to-var974 var1562!1)) ; Statement: $r34 = (java.lang.Throwable) $r31 
 ; Statement: throw $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {var1153_getCacheEntryStructure/1732465563=([org.hibernate.persister.entity.EntityPersister], org.hibernate.cache.spi.entry.CacheEntryStructure), var668_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), cast-from-var1381-to-var668=([org.hibernate.engine.spi.SessionImplementor], org.hibernate.engine.spi.SharedSessionContractImplementor), var1269_destructure/246734834=([org.hibernate.cache.spi.entry.CacheEntryStructure, java.lang.Object, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.Object), cast-from-var3712-to-var2452=([java.lang.Object], org.hibernate.cache.spi.entry.CacheEntry), var2452_isReferenceEntry/1253467250=([org.hibernate.cache.spi.entry.CacheEntry], boolean), getInstanceToLoad/519110716=([org.hibernate.event.spi.LoadEvent], java.lang.Object), var3766-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getEntityId/2070677004=([org.hibernate.event.spi.LoadEvent], java.io.Serializable), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2188-to-var3712=([java.io.Serializable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3766-to-var974=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var1674=org.hibernate.loader.entity.CacheEntityLoaderHelper, var3249=r7, var549=org.hibernate.event.spi.LoadEvent, var2975=r8, var1153=org.hibernate.persister.entity.EntityPersister, var978=r0, var3712=java.lang.Object, var759=r1, var1381=org.hibernate.engine.spi.SessionImplementor, var2420=r2, var1962=org.hibernate.engine.spi.EntityKey, var2398=r9, var1269=org.hibernate.cache.spi.entry.CacheEntryStructure, var1523=$r4, var2160=org.hibernate.engine.spi.SessionFactoryImplementor, var668=org.hibernate.engine.spi.SharedSessionContractImplementor, var558=$r3, var1595=$r5, var2452=org.hibernate.cache.spi.entry.CacheEntry, var417=r6, var2630=$z0, var3746=$r20, var3766=org.hibernate.HibernateException, var1562=$r31, var397=$r30, var2271=$r27, var2188=java.io.Serializable, var3016=$r26, var104=$r28, var334=$r29, var974=java.lang.Throwable, var706=$r34}
; {org.hibernate.loader.entity.CacheEntityLoaderHelper=var1674, r7=var3249, org.hibernate.event.spi.LoadEvent=var549, r8=var2975, org.hibernate.persister.entity.EntityPersister=var1153, r0=var978, java.lang.Object=var3712, r1=var759, org.hibernate.engine.spi.SessionImplementor=var1381, r2=var2420, org.hibernate.engine.spi.EntityKey=var1962, r9=var2398, org.hibernate.cache.spi.entry.CacheEntryStructure=var1269, $r4=var1523, org.hibernate.engine.spi.SessionFactoryImplementor=var2160, org.hibernate.engine.spi.SharedSessionContractImplementor=var668, $r3=var558, $r5=var1595, org.hibernate.cache.spi.entry.CacheEntry=var2452, r6=var417, $z0=var2630, $r20=var3746, org.hibernate.HibernateException=var3766, $r31=var1562, $r30=var397, $r27=var2271, java.io.Serializable=var2188, $r26=var3016, $r28=var104, $r29=var334, java.lang.Throwable=var974, $r34=var706}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.loader.entity.CacheEntityLoaderHelper;	r8 := @parameter0: org.hibernate.event.spi.LoadEvent;	r0 := @parameter1: org.hibernate.persister.entity.EntityPersister;	r1 := @parameter2: java.lang.Object;	r2 := @parameter3: org.hibernate.engine.spi.SessionImplementor;	r9 := @parameter4: org.hibernate.engine.spi.EntityKey;	$r4 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: org.hibernate.cache.spi.entry.CacheEntryStructure getCacheEntryStructure()>();	$r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SessionImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r5 = interfaceinvoke $r4.<org.hibernate.cache.spi.entry.CacheEntryStructure: java.lang.Object destructure(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r1, $r3);	r6 = (org.hibernate.cache.spi.entry.CacheEntry) $r5;	$z0 = interfaceinvoke r6.<org.hibernate.cache.spi.entry.CacheEntry: boolean isReferenceEntry()>();	if $z0 == 0 goto $r10 = virtualinvoke r8.<org.hibernate.event.spi.LoadEvent: java.io.Serializable getEntityId()>();	$r20 = virtualinvoke r8.<org.hibernate.event.spi.LoadEvent: java.lang.Object getInstanceToLoad()>();	if $r20 == null goto $r22 = (org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl) r6;	$r31 = new org.hibernate.HibernateException;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Attempt to load entity [%s] from cache using provided object instance, but cache is storing references: ");	$r26 = virtualinvoke r8.<org.hibernate.event.spi.LoadEvent: java.io.Serializable getEntityId()>();	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r26);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r31.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r29);	$r34 = (java.lang.Throwable) $r31;	throw $r34
;block_num 3