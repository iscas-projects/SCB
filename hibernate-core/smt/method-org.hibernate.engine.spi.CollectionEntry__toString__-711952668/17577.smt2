(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1118 0)
(declare-sort var1075 0)
(declare-sort var2216 0)
(declare-sort var2753 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun loadedPersister/449280588 (var1118) var1075)
(declare-fun var1075_getRole/758162468 (var1075) String)
(declare-fun loadedKey/449280588 (var1118) var2216)
(declare-fun var2753_collectionInfoString/-1227200478 (String var2216) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun currentPersister/449280588 (var1118) var1075)
(declare-const null-var1118 var1118)
(declare-const null-var1075 var1075)
(declare-const var3510 var1118) ; Statement: r1 := @this: org.hibernate.engine.spi.CollectionEntry 
(assert (not (= var3510 null-var1118)))
(define-const var2933 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2933)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2933!1 String)
(assert (= var2933!1 ""))
(assert true)
(define-const var1290 String (append/672562846 var2933!1 "CollectionEntry")) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CollectionEntry") 
(declare-const var2933!2 String)
(assert (= var2933!2 (str.++ var2933!1 "CollectionEntry")))
(define-const var3308 var1075 (loadedPersister/449280588 var3510)) ; Statement: $r2 = r1.<org.hibernate.engine.spi.CollectionEntry: org.hibernate.persister.collection.CollectionPersister loadedPersister> 
(define-const var3936 String (var1075_getRole/758162468 var3308)) ; Statement: $r4 = interfaceinvoke $r2.<org.hibernate.persister.collection.CollectionPersister: java.lang.String getRole()>() 
(define-const var574 var2216 (loadedKey/449280588 var3510)) ; Statement: $r3 = r1.<org.hibernate.engine.spi.CollectionEntry: java.io.Serializable loadedKey> 
(define-const var2277 String (var2753_collectionInfoString/-1227200478 var3936 var574)) ; Statement: $r5 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(java.lang.String,java.io.Serializable)>($r4, $r3) 
(assert true)
(define-const var484 String (append/672562846 var1290 var2277)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1290!1 String)
(assert (= var1290!1 (str.++ var1290 var2277)))
(assert true)
(define-const var258 String (toString/-2075883882 var484)) ; Statement: r17 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3196 var1075 (currentPersister/449280588 var3510)) ; Statement: $r8 = r1.<org.hibernate.engine.spi.CollectionEntry: org.hibernate.persister.collection.CollectionPersister currentPersister> 
 ; Statement: if $r8 == null goto return r17 
(assert (= var3196 null-var1075)) ; Cond: $r8 == null 
 ; Statement: return r17 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), loadedPersister/449280588=([org.hibernate.engine.spi.CollectionEntry], org.hibernate.persister.collection.CollectionPersister), var1075_getRole/758162468=([org.hibernate.persister.collection.CollectionPersister], java.lang.String), loadedKey/449280588=([org.hibernate.engine.spi.CollectionEntry], java.io.Serializable), var2753_collectionInfoString/-1227200478=([java.lang.String, java.io.Serializable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), currentPersister/449280588=([org.hibernate.engine.spi.CollectionEntry], org.hibernate.persister.collection.CollectionPersister)}
; {var1118=org.hibernate.engine.spi.CollectionEntry, var3510=r1, var2933=$r0, var1290=$r6, var1075=org.hibernate.persister.collection.CollectionPersister, var3308=$r2, var3936=$r4, var2216=java.io.Serializable, var574=$r3, var2753=org.hibernate.pretty.MessageHelper, var2277=$r5, var484=$r7, var258=r17, var3196=$r8}
; {org.hibernate.engine.spi.CollectionEntry=var1118, r1=var3510, $r0=var2933, $r6=var1290, org.hibernate.persister.collection.CollectionPersister=var1075, $r2=var3308, $r4=var3936, java.io.Serializable=var2216, $r3=var574, org.hibernate.pretty.MessageHelper=var2753, $r5=var2277, $r7=var484, r17=var258, $r8=var3196}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.engine.spi.CollectionEntry;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CollectionEntry");	$r2 = r1.<org.hibernate.engine.spi.CollectionEntry: org.hibernate.persister.collection.CollectionPersister loadedPersister>;	$r4 = interfaceinvoke $r2.<org.hibernate.persister.collection.CollectionPersister: java.lang.String getRole()>();	$r3 = r1.<org.hibernate.engine.spi.CollectionEntry: java.io.Serializable loadedKey>;	$r5 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(java.lang.String,java.io.Serializable)>($r4, $r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	r17 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = r1.<org.hibernate.engine.spi.CollectionEntry: org.hibernate.persister.collection.CollectionPersister currentPersister>;	if $r8 == null goto return r17;	return r17
;block_num 2