(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var745 0)
(declare-sort var3572 0)
(declare-sort var1308 0)
(declare-sort var2652 0)
(declare-sort var2425 0)
(declare-sort var1953 0)
(declare-sort var3087 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun loadedKey/449280588 (var745) var1308)
(declare-fun getLoadedPersister/-2039006357 (var745) var2652)
(declare-fun var3572_isDirty/-371741480 (var3572) Bool)
(declare-fun var2425-init () var2425)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2652_getRole/758162468 (var2652) String)
(declare-fun getLoadedKey/-770532574 (var745) var1308)
(declare-fun var1953_collectionInfoString/-1227200478 (String var1308) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var2425 String) void)
(declare-fun cast-from-var2425-to-var3087 (var2425) var3087)
(declare-const null-var745 var745)
(declare-const null-var3572 var3572)
(declare-const null-var1308 var1308)
(declare-const var1226 var745) ; Statement: r0 := @this: org.hibernate.engine.spi.CollectionEntry 
(assert (not (= var1226 null-var745)))
(declare-const var2624 var3572) ; Statement: r2 := @parameter0: org.hibernate.collection.spi.PersistentCollection 
(assert (not (= var2624 null-var3572)))
(define-const var2033 var1308 (loadedKey/449280588 var1226)) ; Statement: $r1 = r0.<org.hibernate.engine.spi.CollectionEntry: java.io.Serializable loadedKey> 
 ; Statement: if $r1 != null goto $r18 = virtualinvoke r0.<org.hibernate.engine.spi.CollectionEntry: org.hibernate.persister.collection.CollectionPersister getLoadedPersister()>() 
(assert (not (= var2033 null-var1308))) ; Cond: $r1 != null 
(assert true)
(define-const var2043 var2652 (getLoadedPersister/-2039006357 var1226)) ; Statement: $r18 = virtualinvoke r0.<org.hibernate.engine.spi.CollectionEntry: org.hibernate.persister.collection.CollectionPersister getLoadedPersister()>() 
(define-const var3114 Bool (var3572_isDirty/-371741480 var2624)) ; Statement: $z3 = interfaceinvoke r2.<org.hibernate.collection.spi.PersistentCollection: boolean isDirty()>() 
 ; Statement: if $z3 == 0 goto $z4 = 0 
(assert (= (ite var3114 1 0) 0)) ; Cond: $z3 == 0 
(define-const var833 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z4 == 0 goto specialinvoke r0.<org.hibernate.engine.spi.CollectionEntry: void dirty(org.hibernate.collection.spi.PersistentCollection)>(r2) 
(assert (not (= (ite var833 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var2243 var2425 var2425-init) ; Statement: $r20 = new org.hibernate.HibernateException 
(define-const var3391 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3391)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3391!1 String)
(assert (= var3391!1 ""))
(assert true)
(define-const var1030 String (append/672562846 var3391!1 "changed an immutable collection instance: ")) ; Statement: $r13 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("changed an immutable collection instance: ") 
(declare-const var3391!2 String)
(assert (= var3391!2 (str.++ var3391!1 "changed an immutable collection instance: ")))
(define-const var3539 String (var2652_getRole/758162468 var2043)) ; Statement: $r11 = interfaceinvoke $r18.<org.hibernate.persister.collection.CollectionPersister: java.lang.String getRole()>() 
(assert true)
(define-const var3213 var1308 (getLoadedKey/-770532574 var1226)) ; Statement: $r10 = virtualinvoke r0.<org.hibernate.engine.spi.CollectionEntry: java.io.Serializable getLoadedKey()>() 
(define-const var2444 String (var1953_collectionInfoString/-1227200478 var3539 var3213)) ; Statement: $r12 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(java.lang.String,java.io.Serializable)>($r11, $r10) 
(assert true)
(define-const var3968 String (append/672562846 var1030 var2444)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1030!1 String)
(assert (= var1030!1 (str.++ var1030 var2444)))
(assert true)
(define-const var1759 String (toString/-2075883882 var3968)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var2243 var1759)) ; Statement: specialinvoke $r20.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r15) 

(declare-const var2243!1 var2425)
(declare-const var1759!1 String)
(define-const var653 var3087 (cast-from-var2425-to-var3087 var2243!1)) ; Statement: $r21 = (java.lang.Throwable) $r20 
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {loadedKey/449280588=([org.hibernate.engine.spi.CollectionEntry], java.io.Serializable), getLoadedPersister/-2039006357=([org.hibernate.engine.spi.CollectionEntry], org.hibernate.persister.collection.CollectionPersister), var3572_isDirty/-371741480=([org.hibernate.collection.spi.PersistentCollection], boolean), var2425-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2652_getRole/758162468=([org.hibernate.persister.collection.CollectionPersister], java.lang.String), getLoadedKey/-770532574=([org.hibernate.engine.spi.CollectionEntry], java.io.Serializable), var1953_collectionInfoString/-1227200478=([java.lang.String, java.io.Serializable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var2425-to-var3087=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var745=org.hibernate.engine.spi.CollectionEntry, var1226=r0, var3572=org.hibernate.collection.spi.PersistentCollection, var2624=r2, var1308=java.io.Serializable, var2033=$r1, var2652=org.hibernate.persister.collection.CollectionPersister, var2043=$r18, var3114=$z3, var833=$z4, var2425=org.hibernate.HibernateException, var2243=$r20, var3391=$r19, var1030=$r13, var3539=$r11, var3213=$r10, var1953=org.hibernate.pretty.MessageHelper, var2444=$r12, var3968=$r14, var1759=$r15, var3087=java.lang.Throwable, var653=$r21}
; {org.hibernate.engine.spi.CollectionEntry=var745, r0=var1226, org.hibernate.collection.spi.PersistentCollection=var3572, r2=var2624, java.io.Serializable=var1308, $r1=var2033, org.hibernate.persister.collection.CollectionPersister=var2652, $r18=var2043, $z3=var3114, $z4=var833, org.hibernate.HibernateException=var2425, $r20=var2243, $r19=var3391, $r13=var1030, $r11=var3539, $r10=var3213, org.hibernate.pretty.MessageHelper=var1953, $r12=var2444, $r14=var3968, $r15=var1759, java.lang.Throwable=var3087, $r21=var653}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.spi.CollectionEntry;	r2 := @parameter0: org.hibernate.collection.spi.PersistentCollection;	$r1 = r0.<org.hibernate.engine.spi.CollectionEntry: java.io.Serializable loadedKey>;	if $r1 != null goto $r18 = virtualinvoke r0.<org.hibernate.engine.spi.CollectionEntry: org.hibernate.persister.collection.CollectionPersister getLoadedPersister()>();	$r18 = virtualinvoke r0.<org.hibernate.engine.spi.CollectionEntry: org.hibernate.persister.collection.CollectionPersister getLoadedPersister()>();	$z3 = interfaceinvoke r2.<org.hibernate.collection.spi.PersistentCollection: boolean isDirty()>();	if $z3 == 0 goto $z4 = 0;	$z4 = 0;	if $z4 == 0 goto specialinvoke r0.<org.hibernate.engine.spi.CollectionEntry: void dirty(org.hibernate.collection.spi.PersistentCollection)>(r2);	$r20 = new org.hibernate.HibernateException;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("changed an immutable collection instance: ");	$r11 = interfaceinvoke $r18.<org.hibernate.persister.collection.CollectionPersister: java.lang.String getRole()>();	$r10 = virtualinvoke r0.<org.hibernate.engine.spi.CollectionEntry: java.io.Serializable getLoadedKey()>();	$r12 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(java.lang.String,java.io.Serializable)>($r11, $r10);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r15);	$r21 = (java.lang.Throwable) $r20;	throw $r21
;block_num 5