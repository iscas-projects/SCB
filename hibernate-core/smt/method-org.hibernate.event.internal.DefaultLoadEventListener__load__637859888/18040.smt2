(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var681 0)
(declare-sort var1663 0)
(declare-sort var330 0)
(declare-sort var3842 0)
(declare-sort var3699 0)
(declare-sort var1401 0)
(declare-sort var28 0)
(declare-sort var926 0)
(declare-sort var911 0)
(declare-sort var2003 0)
(declare-sort var2400 0)
(declare-sort var2250 0)
(declare-sort var1036 0)
(declare-sort var2759 0)
(declare-sort var237 0)
(declare-sort var1619 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSession/-1960258000 (var28) var1401)
(declare-fun cast-from-var1663-to-var28 (var1663) var28)
(declare-fun getInstanceToLoad/519110716 (var1663) var926)
(declare-fun var2003_getPersistenceContextInternal/1368680823 (var2003) var911)
(declare-fun cast-from-var1401-to-var2003 (var1401) var2003)
(declare-fun var911_getEntry/-487705827 (var911 var926) var2400)
(declare-fun var2250-init () var2250)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getEntityId/2070677004 (var1663) var1036)
(declare-fun var2003_getFactory/1122061256 (var2003) var2759)
(declare-fun var237_infoString/-1303038331 (var330 var926 var2759) String)
(declare-fun cast-from-var1036-to-var926 (var1036) var926)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1015967137 (var2250 String) void)
(declare-fun cast-from-var2250-to-var1619 (var2250) var1619)
(declare-const null-var681 var681)
(declare-const null-var1663 var1663)
(declare-const null-var330 var330)
(declare-const null-var3842 var3842)
(declare-const null-var3699 var3699)
(declare-const null-var926 var926)
(declare-const null-var2400 var2400)
(declare-const var2195 var681) ; Statement: r3 := @this: org.hibernate.event.internal.DefaultLoadEventListener 
(assert (not (= var2195 null-var681)))
(declare-const var2392 var1663) ; Statement: r0 := @parameter0: org.hibernate.event.spi.LoadEvent 
(assert (not (= var2392 null-var1663)))
(declare-const var3964 var330) ; Statement: r4 := @parameter1: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var3964 null-var330)))
(declare-const var1282 var3842) ; Statement: r5 := @parameter2: org.hibernate.engine.spi.EntityKey 
(assert (not (= var1282 null-var3842)))
(declare-const var539 var3699) ; Statement: r6 := @parameter3: org.hibernate.event.spi.LoadEventListener$LoadType 
(assert (not (= var539 null-var3699)))
(assert true)
(define-const var581 var1401 (getSession/-1960258000 (cast-from-var1663-to-var28 var2392))) ; Statement: r1 = virtualinvoke r0.<org.hibernate.event.spi.LoadEvent: org.hibernate.event.spi.EventSource getSession()>() 
(assert true)
(define-const var3915 var926 (getInstanceToLoad/519110716 var2392)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.event.spi.LoadEvent: java.lang.Object getInstanceToLoad()>() 
 ; Statement: if $r2 == null goto $r21 = specialinvoke r3.<org.hibernate.event.internal.DefaultLoadEventListener: java.lang.Object doLoad(org.hibernate.event.spi.LoadEvent,org.hibernate.persister.entity.EntityPersister,org.hibernate.engine.spi.EntityKey,org.hibernate.event.spi.LoadEventListener$LoadType)>(r0, r4, r5, r6) 
(assert (not (= var3915 null-var926))) ; Negate: Cond: $r2 == null  
(define-const var3726 var911 (var2003_getPersistenceContextInternal/1368680823 (cast-from-var1401-to-var2003 var581))) ; Statement: $r17 = interfaceinvoke r1.<org.hibernate.event.spi.EventSource: org.hibernate.engine.spi.PersistenceContext getPersistenceContextInternal()>() 
(assert true)
(define-const var3793 var926 (getInstanceToLoad/519110716 var2392)) ; Statement: $r16 = virtualinvoke r0.<org.hibernate.event.spi.LoadEvent: java.lang.Object getInstanceToLoad()>() 
(define-const var3556 var2400 (var911_getEntry/-487705827 var3726 var3793)) ; Statement: $r18 = interfaceinvoke $r17.<org.hibernate.engine.spi.PersistenceContext: org.hibernate.engine.spi.EntityEntry getEntry(java.lang.Object)>($r16) 
 ; Statement: if $r18 == null goto $r20 = virtualinvoke r0.<org.hibernate.event.spi.LoadEvent: java.lang.Object getInstanceToLoad()>() 
(assert (not (= var3556 null-var2400))) ; Negate: Cond: $r18 == null  
(define-const var465 var2250 var2250-init) ; Statement: $r31 = new org.hibernate.PersistentObjectException 
(define-const var3348 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3348)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3348!1 String)
(assert (= var3348!1 ""))
(assert true)
(define-const var126 String (append/672562846 var3348!1 "attempted to load into an instance that was already associated with the session: ")) ; Statement: $r27 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("attempted to load into an instance that was already associated with the session: ") 
(declare-const var3348!2 String)
(assert (= var3348!2 (str.++ var3348!1 "attempted to load into an instance that was already associated with the session: ")))
(assert true)
(define-const var2569 var1036 (getEntityId/2070677004 var2392)) ; Statement: $r25 = virtualinvoke r0.<org.hibernate.event.spi.LoadEvent: java.io.Serializable getEntityId()>() 
(define-const var2140 var2759 (var2003_getFactory/1122061256 (cast-from-var1401-to-var2003 var581))) ; Statement: $r24 = interfaceinvoke r1.<org.hibernate.event.spi.EventSource: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var2077 String (var237_infoString/-1303038331 var3964 (cast-from-var1036-to-var926 var2569) var2140)) ; Statement: $r26 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister,java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r4, $r25, $r24) 
(assert true)
(define-const var3478 String (append/672562846 var126 var2077)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var126!1 String)
(assert (= var126!1 (str.++ var126 var2077)))
(assert true)
(define-const var3329 String (toString/-2075883882 var3478)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1015967137 var465 var3329)) ; Statement: specialinvoke $r31.<org.hibernate.PersistentObjectException: void <init>(java.lang.String)>($r29) 

(declare-const var465!1 var2250)
(declare-const var3329!1 String)
(define-const var3228 var1619 (cast-from-var2250-to-var1619 var465!1)) ; Statement: $r33 = (java.lang.Throwable) $r31 
 ; Statement: throw $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {getSession/-1960258000=([org.hibernate.event.spi.AbstractEvent], org.hibernate.event.spi.EventSource), cast-from-var1663-to-var28=([org.hibernate.event.spi.LoadEvent], org.hibernate.event.spi.AbstractEvent), getInstanceToLoad/519110716=([org.hibernate.event.spi.LoadEvent], java.lang.Object), var2003_getPersistenceContextInternal/1368680823=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.PersistenceContext), cast-from-var1401-to-var2003=([org.hibernate.event.spi.EventSource], org.hibernate.engine.spi.SharedSessionContractImplementor), var911_getEntry/-487705827=([org.hibernate.engine.spi.PersistenceContext, java.lang.Object], org.hibernate.engine.spi.EntityEntry), var2250-init=([], org.hibernate.PersistentObjectException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getEntityId/2070677004=([org.hibernate.event.spi.LoadEvent], java.io.Serializable), var2003_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), var237_infoString/-1303038331=([org.hibernate.persister.entity.EntityPersister, java.lang.Object, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), cast-from-var1036-to-var926=([java.io.Serializable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1015967137=([org.hibernate.PersistentObjectException, java.lang.String], void), cast-from-var2250-to-var1619=([org.hibernate.PersistentObjectException], java.lang.Throwable)}
; {var681=org.hibernate.event.internal.DefaultLoadEventListener, var2195=r3, var1663=org.hibernate.event.spi.LoadEvent, var2392=r0, var330=org.hibernate.persister.entity.EntityPersister, var3964=r4, var3842=org.hibernate.engine.spi.EntityKey, var1282=r5, var3699=org.hibernate.event.spi.LoadEventListener$LoadType, var539=r6, var1401=org.hibernate.event.spi.EventSource, var28=org.hibernate.event.spi.AbstractEvent, var581=r1, var926=java.lang.Object, var3915=$r2, var911=org.hibernate.engine.spi.PersistenceContext, var2003=org.hibernate.engine.spi.SharedSessionContractImplementor, var3726=$r17, var3793=$r16, var2400=org.hibernate.engine.spi.EntityEntry, var3556=$r18, var2250=org.hibernate.PersistentObjectException, var465=$r31, var3348=$r30, var126=$r27, var1036=java.io.Serializable, var2569=$r25, var2759=org.hibernate.engine.spi.SessionFactoryImplementor, var2140=$r24, var237=org.hibernate.pretty.MessageHelper, var2077=$r26, var3478=$r28, var3329=$r29, var1619=java.lang.Throwable, var3228=$r33}
; {org.hibernate.event.internal.DefaultLoadEventListener=var681, r3=var2195, org.hibernate.event.spi.LoadEvent=var1663, r0=var2392, org.hibernate.persister.entity.EntityPersister=var330, r4=var3964, org.hibernate.engine.spi.EntityKey=var3842, r5=var1282, org.hibernate.event.spi.LoadEventListener$LoadType=var3699, r6=var539, org.hibernate.event.spi.EventSource=var1401, org.hibernate.event.spi.AbstractEvent=var28, r1=var581, java.lang.Object=var926, $r2=var3915, org.hibernate.engine.spi.PersistenceContext=var911, org.hibernate.engine.spi.SharedSessionContractImplementor=var2003, $r17=var3726, $r16=var3793, org.hibernate.engine.spi.EntityEntry=var2400, $r18=var3556, org.hibernate.PersistentObjectException=var2250, $r31=var465, $r30=var3348, $r27=var126, java.io.Serializable=var1036, $r25=var2569, org.hibernate.engine.spi.SessionFactoryImplementor=var2759, $r24=var2140, org.hibernate.pretty.MessageHelper=var237, $r26=var2077, $r28=var3478, $r29=var3329, java.lang.Throwable=var1619, $r33=var3228}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.event.internal.DefaultLoadEventListener;	r0 := @parameter0: org.hibernate.event.spi.LoadEvent;	r4 := @parameter1: org.hibernate.persister.entity.EntityPersister;	r5 := @parameter2: org.hibernate.engine.spi.EntityKey;	r6 := @parameter3: org.hibernate.event.spi.LoadEventListener$LoadType;	r1 = virtualinvoke r0.<org.hibernate.event.spi.LoadEvent: org.hibernate.event.spi.EventSource getSession()>();	$r2 = virtualinvoke r0.<org.hibernate.event.spi.LoadEvent: java.lang.Object getInstanceToLoad()>();	if $r2 == null goto $r21 = specialinvoke r3.<org.hibernate.event.internal.DefaultLoadEventListener: java.lang.Object doLoad(org.hibernate.event.spi.LoadEvent,org.hibernate.persister.entity.EntityPersister,org.hibernate.engine.spi.EntityKey,org.hibernate.event.spi.LoadEventListener$LoadType)>(r0, r4, r5, r6);	$r17 = interfaceinvoke r1.<org.hibernate.event.spi.EventSource: org.hibernate.engine.spi.PersistenceContext getPersistenceContextInternal()>();	$r16 = virtualinvoke r0.<org.hibernate.event.spi.LoadEvent: java.lang.Object getInstanceToLoad()>();	$r18 = interfaceinvoke $r17.<org.hibernate.engine.spi.PersistenceContext: org.hibernate.engine.spi.EntityEntry getEntry(java.lang.Object)>($r16);	if $r18 == null goto $r20 = virtualinvoke r0.<org.hibernate.event.spi.LoadEvent: java.lang.Object getInstanceToLoad()>();	$r31 = new org.hibernate.PersistentObjectException;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("attempted to load into an instance that was already associated with the session: ");	$r25 = virtualinvoke r0.<org.hibernate.event.spi.LoadEvent: java.io.Serializable getEntityId()>();	$r24 = interfaceinvoke r1.<org.hibernate.event.spi.EventSource: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r26 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister,java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r4, $r25, $r24);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r31.<org.hibernate.PersistentObjectException: void <init>(java.lang.String)>($r29);	$r33 = (java.lang.Throwable) $r31;	throw $r33
;block_num 3