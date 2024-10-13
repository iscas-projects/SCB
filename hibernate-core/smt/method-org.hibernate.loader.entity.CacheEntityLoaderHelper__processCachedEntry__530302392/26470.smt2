(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var187 0)
(declare-sort var2837 0)
(declare-sort var1335 0)
(declare-sort var89 0)
(declare-sort var929 0)
(declare-sort var788 0)
(declare-sort var91 0)
(declare-sort var165 0)
(declare-sort var2880 0)
(declare-sort var871 0)
(declare-sort var3057 0)
(declare-sort var1177 0)
(declare-sort var831 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1335_getCacheEntryStructure/1732465563 (var1335) var91)
(declare-fun var2880_getFactory/1122061256 (var2880) var165)
(declare-fun cast-from-var929-to-var2880 (var929) var2880)
(declare-fun var91_destructure/246734834 (var91 var89 var165) var89)
(declare-fun cast-from-var89-to-var871 (var89) var871)
(declare-fun var871_isReferenceEntry/1253467250 (var871) Bool)
(declare-fun getEntityId/2070677004 (var2837) var3057)
(declare-fun convertCacheEntryToEntity/1529358084 (var187 var871 var3057 var1335 var2837 var788) var89)
(declare-fun var1335_isInstance/679547889 (var1335 var89) Bool)
(declare-fun var1177-init () var1177)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var89) ClassObject)
(declare-fun append/-1031950772 (String var89) String)
(declare-fun cast-from-ClassObject-to-var89 (ClassObject) var89)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1335_getEntityName/-1914780628 (var1335) String)
(declare-fun <init>/1069880086 (var1177 String var3057 String) void)
(declare-fun cast-from-var1177-to-var831 (var1177) var831)
(declare-const null-var187 var187)
(declare-const null-var2837 var2837)
(declare-const null-var1335 var1335)
(declare-const null-var89 var89)
(declare-const null-var929 var929)
(declare-const null-var788 var788)
(declare-const var157 var187) ; Statement: r7 := @this: org.hibernate.loader.entity.CacheEntityLoaderHelper 
(assert (not (= var157 null-var187)))
(declare-const var636 var2837) ; Statement: r8 := @parameter0: org.hibernate.event.spi.LoadEvent 
(assert (not (= var636 null-var2837)))
(declare-const var3007 var1335) ; Statement: r0 := @parameter1: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var3007 null-var1335)))
(declare-const var111 var89) ; Statement: r1 := @parameter2: java.lang.Object 
(assert (not (= var111 null-var89)))
(declare-const var2629 var929) ; Statement: r2 := @parameter3: org.hibernate.engine.spi.SessionImplementor 
(assert (not (= var2629 null-var929)))
(declare-const var1541 var788) ; Statement: r9 := @parameter4: org.hibernate.engine.spi.EntityKey 
(assert (not (= var1541 null-var788)))
(define-const var492 var91 (var1335_getCacheEntryStructure/1732465563 var3007)) ; Statement: $r4 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: org.hibernate.cache.spi.entry.CacheEntryStructure getCacheEntryStructure()>() 
(define-const var1295 var165 (var2880_getFactory/1122061256 (cast-from-var929-to-var2880 var2629))) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SessionImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var900 var89 (var91_destructure/246734834 var492 var111 var1295)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.cache.spi.entry.CacheEntryStructure: java.lang.Object destructure(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r1, $r3) 
(define-const var2824 var871 (cast-from-var89-to-var871 var900)) ; Statement: r6 = (org.hibernate.cache.spi.entry.CacheEntry) $r5 
(define-const var948 Bool (var871_isReferenceEntry/1253467250 var2824)) ; Statement: $z0 = interfaceinvoke r6.<org.hibernate.cache.spi.entry.CacheEntry: boolean isReferenceEntry()>() 
 ; Statement: if $z0 == 0 goto $r10 = virtualinvoke r8.<org.hibernate.event.spi.LoadEvent: java.io.Serializable getEntityId()>() 
(assert (= (ite var948 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2202 var3057 (getEntityId/2070677004 var636)) ; Statement: $r10 = virtualinvoke r8.<org.hibernate.event.spi.LoadEvent: java.io.Serializable getEntityId()>() 
(assert true)
(define-const var440 var89 (convertCacheEntryToEntity/1529358084 var157 var2824 var2202 var3007 var636 var1541)) ; Statement: r11 = specialinvoke r7.<org.hibernate.loader.entity.CacheEntityLoaderHelper: java.lang.Object convertCacheEntryToEntity(org.hibernate.cache.spi.entry.CacheEntry,java.io.Serializable,org.hibernate.persister.entity.EntityPersister,org.hibernate.event.spi.LoadEvent,org.hibernate.engine.spi.EntityKey)>(r6, $r10, r0, r8, r9) 
(define-const var2664 Bool (var1335_isInstance/679547889 var3007 var440)) ; Statement: $z1 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: boolean isInstance(java.lang.Object)>(r11) 
 ; Statement: if $z1 != 0 goto return r11 
(assert (not (not (= (ite var2664 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var974 var1177 var1177-init) ; Statement: $r33 = new org.hibernate.WrongClassException 
(define-const var2836 String String-init) ; Statement: $r32 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2836)) ; Statement: specialinvoke $r32.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2836!1 String)
(assert (= var2836!1 ""))
(assert true)
(define-const var3004 String (append/672562846 var2836!1 "loaded object was of wrong class ")) ; Statement: $r15 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("loaded object was of wrong class ") 
(declare-const var2836!2 String)
(assert (= var2836!2 (str.++ var2836!1 "loaded object was of wrong class ")))
(assert true)
(define-const var1367 ClassObject (getClass/1258963082 var440)) ; Statement: $r14 = virtualinvoke r11.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2827 String (append/-1031950772 var3004 (cast-from-ClassObject-to-var89 var1367))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14) 
(declare-const var3004!1 String)
(assert (str.prefixof var3004 var3004!1))
(assert true)
(define-const var3156 String (toString/-2075883882 var2827)) ; Statement: $r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var308 var3057 (getEntityId/2070677004 var636)) ; Statement: $r18 = virtualinvoke r8.<org.hibernate.event.spi.LoadEvent: java.io.Serializable getEntityId()>() 
(define-const var3229 String (var1335_getEntityName/-1914780628 var3007)) ; Statement: $r17 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(assert true)
;(assert (<init>/1069880086 var974 var3156 var308 var3229)) ; Statement: specialinvoke $r33.<org.hibernate.WrongClassException: void <init>(java.lang.String,java.io.Serializable,java.lang.String)>($r19, $r18, $r17) 

(declare-const var974!1 var1177)
(declare-const var3156!1 String)
(declare-const var308!1 var3057)
(declare-const var3229!1 String)
(define-const var1525 var831 (cast-from-var1177-to-var831 var974!1)) ; Statement: $r35 = (java.lang.Throwable) $r33 
 ; Statement: throw $r35 
(check-sat)
(get-model)
(get-unsat-core)
; {var1335_getCacheEntryStructure/1732465563=([org.hibernate.persister.entity.EntityPersister], org.hibernate.cache.spi.entry.CacheEntryStructure), var2880_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), cast-from-var929-to-var2880=([org.hibernate.engine.spi.SessionImplementor], org.hibernate.engine.spi.SharedSessionContractImplementor), var91_destructure/246734834=([org.hibernate.cache.spi.entry.CacheEntryStructure, java.lang.Object, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.Object), cast-from-var89-to-var871=([java.lang.Object], org.hibernate.cache.spi.entry.CacheEntry), var871_isReferenceEntry/1253467250=([org.hibernate.cache.spi.entry.CacheEntry], boolean), getEntityId/2070677004=([org.hibernate.event.spi.LoadEvent], java.io.Serializable), convertCacheEntryToEntity/1529358084=([org.hibernate.loader.entity.CacheEntityLoaderHelper, org.hibernate.cache.spi.entry.CacheEntry, java.io.Serializable, org.hibernate.persister.entity.EntityPersister, org.hibernate.event.spi.LoadEvent, org.hibernate.engine.spi.EntityKey], java.lang.Object), var1335_isInstance/679547889=([org.hibernate.persister.entity.EntityPersister, java.lang.Object], boolean), var1177-init=([], org.hibernate.WrongClassException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var89=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1335_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), <init>/1069880086=([org.hibernate.WrongClassException, java.lang.String, java.io.Serializable, java.lang.String], void), cast-from-var1177-to-var831=([org.hibernate.WrongClassException], java.lang.Throwable)}
; {var187=org.hibernate.loader.entity.CacheEntityLoaderHelper, var157=r7, var2837=org.hibernate.event.spi.LoadEvent, var636=r8, var1335=org.hibernate.persister.entity.EntityPersister, var3007=r0, var89=java.lang.Object, var111=r1, var929=org.hibernate.engine.spi.SessionImplementor, var2629=r2, var788=org.hibernate.engine.spi.EntityKey, var1541=r9, var91=org.hibernate.cache.spi.entry.CacheEntryStructure, var492=$r4, var165=org.hibernate.engine.spi.SessionFactoryImplementor, var2880=org.hibernate.engine.spi.SharedSessionContractImplementor, var1295=$r3, var900=$r5, var871=org.hibernate.cache.spi.entry.CacheEntry, var2824=r6, var948=$z0, var3057=java.io.Serializable, var2202=$r10, var440=r11, var2664=$z1, var1177=org.hibernate.WrongClassException, var974=$r33, var2836=$r32, var3004=$r15, var1367=$r14, var2827=$r16, var3156=$r19, var308=$r18, var3229=$r17, var831=java.lang.Throwable, var1525=$r35}
; {org.hibernate.loader.entity.CacheEntityLoaderHelper=var187, r7=var157, org.hibernate.event.spi.LoadEvent=var2837, r8=var636, org.hibernate.persister.entity.EntityPersister=var1335, r0=var3007, java.lang.Object=var89, r1=var111, org.hibernate.engine.spi.SessionImplementor=var929, r2=var2629, org.hibernate.engine.spi.EntityKey=var788, r9=var1541, org.hibernate.cache.spi.entry.CacheEntryStructure=var91, $r4=var492, org.hibernate.engine.spi.SessionFactoryImplementor=var165, org.hibernate.engine.spi.SharedSessionContractImplementor=var2880, $r3=var1295, $r5=var900, org.hibernate.cache.spi.entry.CacheEntry=var871, r6=var2824, $z0=var948, java.io.Serializable=var3057, $r10=var2202, r11=var440, $z1=var2664, org.hibernate.WrongClassException=var1177, $r33=var974, $r32=var2836, $r15=var3004, $r14=var1367, $r16=var2827, $r19=var3156, $r18=var308, $r17=var3229, java.lang.Throwable=var831, $r35=var1525}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.loader.entity.CacheEntityLoaderHelper;	r8 := @parameter0: org.hibernate.event.spi.LoadEvent;	r0 := @parameter1: org.hibernate.persister.entity.EntityPersister;	r1 := @parameter2: java.lang.Object;	r2 := @parameter3: org.hibernate.engine.spi.SessionImplementor;	r9 := @parameter4: org.hibernate.engine.spi.EntityKey;	$r4 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: org.hibernate.cache.spi.entry.CacheEntryStructure getCacheEntryStructure()>();	$r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SessionImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r5 = interfaceinvoke $r4.<org.hibernate.cache.spi.entry.CacheEntryStructure: java.lang.Object destructure(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r1, $r3);	r6 = (org.hibernate.cache.spi.entry.CacheEntry) $r5;	$z0 = interfaceinvoke r6.<org.hibernate.cache.spi.entry.CacheEntry: boolean isReferenceEntry()>();	if $z0 == 0 goto $r10 = virtualinvoke r8.<org.hibernate.event.spi.LoadEvent: java.io.Serializable getEntityId()>();	$r10 = virtualinvoke r8.<org.hibernate.event.spi.LoadEvent: java.io.Serializable getEntityId()>();	r11 = specialinvoke r7.<org.hibernate.loader.entity.CacheEntityLoaderHelper: java.lang.Object convertCacheEntryToEntity(org.hibernate.cache.spi.entry.CacheEntry,java.io.Serializable,org.hibernate.persister.entity.EntityPersister,org.hibernate.event.spi.LoadEvent,org.hibernate.engine.spi.EntityKey)>(r6, $r10, r0, r8, r9);	$z1 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: boolean isInstance(java.lang.Object)>(r11);	if $z1 != 0 goto return r11;	$r33 = new org.hibernate.WrongClassException;	$r32 = new java.lang.StringBuilder;	specialinvoke $r32.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("loaded object was of wrong class ");	$r14 = virtualinvoke r11.<java.lang.Object: java.lang.Class getClass()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14);	$r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r18 = virtualinvoke r8.<org.hibernate.event.spi.LoadEvent: java.io.Serializable getEntityId()>();	$r17 = interfaceinvoke r0.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	specialinvoke $r33.<org.hibernate.WrongClassException: void <init>(java.lang.String,java.io.Serializable,java.lang.String)>($r19, $r18, $r17);	$r35 = (java.lang.Throwable) $r33;	throw $r35
;block_num 3