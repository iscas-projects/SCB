(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3542 0)
(declare-sort var2535 0)
(declare-sort var2217 0)
(declare-sort var1700 0)
(declare-sort var180 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun factory/-1152598343 (var3542) var2535)
(declare-fun role/-1152598343 (var3542) String)
(declare-fun var2535_getCollectionPersister/1293184455 (var2535 String) var2217)
(declare-fun key/-1152598343 (var3542) var1700)
(declare-fun var180_collectionInfoString/-2038540833 (var2217 var1700 var2535) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3542 var3542)
(declare-const var1334 var3542) ; Statement: r1 := @this: org.hibernate.engine.spi.CollectionKey 
(assert (not (= var1334 null-var3542)))
(define-const var1648 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1648)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1648!1 String)
(assert (= var1648!1 ""))
(assert true)
(define-const var1227 String (append/672562846 var1648!1 "CollectionKey")) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CollectionKey") 
(declare-const var1648!2 String)
(assert (= var1648!2 (str.++ var1648!1 "CollectionKey")))
(define-const var3436 var2535 (factory/-1152598343 var1334)) ; Statement: $r3 = r1.<org.hibernate.engine.spi.CollectionKey: org.hibernate.engine.spi.SessionFactoryImplementor factory> 
(define-const var2548 String (role/-1152598343 var1334)) ; Statement: $r2 = r1.<org.hibernate.engine.spi.CollectionKey: java.lang.String role> 
(define-const var3555 var2217 (var2535_getCollectionPersister/1293184455 var3436 var2548)) ; Statement: $r6 = interfaceinvoke $r3.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.persister.collection.CollectionPersister getCollectionPersister(java.lang.String)>($r2) 
(define-const var3438 var1700 (key/-1152598343 var1334)) ; Statement: $r5 = r1.<org.hibernate.engine.spi.CollectionKey: java.io.Serializable key> 
(define-const var1537 var2535 (factory/-1152598343 var1334)) ; Statement: $r4 = r1.<org.hibernate.engine.spi.CollectionKey: org.hibernate.engine.spi.SessionFactoryImplementor factory> 
(define-const var3157 String (var180_collectionInfoString/-2038540833 var3555 var3438 var1537)) ; Statement: $r7 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(org.hibernate.persister.collection.CollectionPersister,java.io.Serializable,org.hibernate.engine.spi.SessionFactoryImplementor)>($r6, $r5, $r4) 
(assert true)
(define-const var3209 String (append/672562846 var1227 var3157)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1227!1 String)
(assert (= var1227!1 (str.++ var1227 var3157)))
(assert true)
(define-const var2373 String (toString/-2075883882 var3209)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), factory/-1152598343=([org.hibernate.engine.spi.CollectionKey], org.hibernate.engine.spi.SessionFactoryImplementor), role/-1152598343=([org.hibernate.engine.spi.CollectionKey], java.lang.String), var2535_getCollectionPersister/1293184455=([org.hibernate.engine.spi.SessionFactoryImplementor, java.lang.String], org.hibernate.persister.collection.CollectionPersister), key/-1152598343=([org.hibernate.engine.spi.CollectionKey], java.io.Serializable), var180_collectionInfoString/-2038540833=([org.hibernate.persister.collection.CollectionPersister, java.io.Serializable, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3542=org.hibernate.engine.spi.CollectionKey, var1334=r1, var1648=$r0, var1227=$r8, var2535=org.hibernate.engine.spi.SessionFactoryImplementor, var3436=$r3, var2548=$r2, var2217=org.hibernate.persister.collection.CollectionPersister, var3555=$r6, var1700=java.io.Serializable, var3438=$r5, var1537=$r4, var180=org.hibernate.pretty.MessageHelper, var3157=$r7, var3209=$r9, var2373=$r10}
; {org.hibernate.engine.spi.CollectionKey=var3542, r1=var1334, $r0=var1648, $r8=var1227, org.hibernate.engine.spi.SessionFactoryImplementor=var2535, $r3=var3436, $r2=var2548, org.hibernate.persister.collection.CollectionPersister=var2217, $r6=var3555, java.io.Serializable=var1700, $r5=var3438, $r4=var1537, org.hibernate.pretty.MessageHelper=var180, $r7=var3157, $r9=var3209, $r10=var2373}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.engine.spi.CollectionKey;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CollectionKey");	$r3 = r1.<org.hibernate.engine.spi.CollectionKey: org.hibernate.engine.spi.SessionFactoryImplementor factory>;	$r2 = r1.<org.hibernate.engine.spi.CollectionKey: java.lang.String role>;	$r6 = interfaceinvoke $r3.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.persister.collection.CollectionPersister getCollectionPersister(java.lang.String)>($r2);	$r5 = r1.<org.hibernate.engine.spi.CollectionKey: java.io.Serializable key>;	$r4 = r1.<org.hibernate.engine.spi.CollectionKey: org.hibernate.engine.spi.SessionFactoryImplementor factory>;	$r7 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(org.hibernate.persister.collection.CollectionPersister,java.io.Serializable,org.hibernate.engine.spi.SessionFactoryImplementor)>($r6, $r5, $r4);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1