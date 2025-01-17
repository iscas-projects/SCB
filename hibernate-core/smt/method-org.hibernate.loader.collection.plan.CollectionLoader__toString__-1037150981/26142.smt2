(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2976 0)
(declare-sort var3434 0)
(declare-sort var2568 0)
(declare-sort var3314 0)
(declare-sort var1299 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var3434) ClassObject)
(declare-fun cast-from-var2976-to-var3434 (var2976) var3434)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun collectionPersister/1134187041 (var3314) var2568)
(declare-fun cast-from-var2976-to-var3314 (var2976) var3314)
(declare-fun var1299_getRole/758162468 (var1299) String)
(declare-fun cast-from-var2568-to-var1299 (var2568) var1299)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2976 var2976)
(declare-const var2306 var2976) ; Statement: r1 := @this: org.hibernate.loader.collection.plan.CollectionLoader 
(assert (not (= var2306 null-var2976)))
(define-const var217 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var217)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var217!1 String)
(assert (= var217!1 ""))
(assert true)
(define-const var1115 ClassObject (getClass/1258963082 (cast-from-var2976-to-var3434 var2306))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var910 String (getName/-1958580599 var1115)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var965 String (append/672562846 var217!1 var910)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var217!2 String)
(assert (= var217!2 (str.++ var217!1 var910)))
(assert true)
(define-const var3627 String (append/-1166366385 var965 40)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var965!1 String)
(assert (str.prefixof var965 var965!1))
(assert true)
(define-const var3188 var2568 (collectionPersister/1134187041 (cast-from-var2976-to-var3314 var2306))) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.loader.collection.plan.CollectionLoader: org.hibernate.persister.collection.QueryableCollection collectionPersister()>() 
(define-const var1457 String (var1299_getRole/758162468 (cast-from-var2568-to-var1299 var3188))) ; Statement: $r6 = interfaceinvoke $r5.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getRole()>() 
(assert true)
(define-const var1858 String (append/672562846 var3627 var1457)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3627!1 String)
(assert (= var3627!1 (str.++ var3627 var1457)))
(assert true)
(define-const var3473 String (append/-1166366385 var1858 41)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1858!1 String)
(assert (str.prefixof var1858 var1858!1))
(assert true)
(define-const var67 String (toString/-2075883882 var3473)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2976-to-var3434=([org.hibernate.loader.collection.plan.CollectionLoader], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), collectionPersister/1134187041=([org.hibernate.loader.collection.plan.AbstractLoadPlanBasedCollectionInitializer], org.hibernate.persister.collection.QueryableCollection), cast-from-var2976-to-var3314=([org.hibernate.loader.collection.plan.CollectionLoader], org.hibernate.loader.collection.plan.AbstractLoadPlanBasedCollectionInitializer), var1299_getRole/758162468=([org.hibernate.persister.collection.CollectionPersister], java.lang.String), cast-from-var2568-to-var1299=([org.hibernate.persister.collection.QueryableCollection], org.hibernate.persister.collection.CollectionPersister), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2976=org.hibernate.loader.collection.plan.CollectionLoader, var2306=r1, var217=$r0, var3434=java.lang.Object, var1115=$r2, var910=$r3, var965=$r4, var3627=$r7, var2568=org.hibernate.persister.collection.QueryableCollection, var3314=org.hibernate.loader.collection.plan.AbstractLoadPlanBasedCollectionInitializer, var3188=$r5, var1299=org.hibernate.persister.collection.CollectionPersister, var1457=$r6, var1858=$r8, var3473=$r9, var67=$r10}
; {org.hibernate.loader.collection.plan.CollectionLoader=var2976, r1=var2306, $r0=var217, java.lang.Object=var3434, $r2=var1115, $r3=var910, $r4=var965, $r7=var3627, org.hibernate.persister.collection.QueryableCollection=var2568, org.hibernate.loader.collection.plan.AbstractLoadPlanBasedCollectionInitializer=var3314, $r5=var3188, org.hibernate.persister.collection.CollectionPersister=var1299, $r6=var1457, $r8=var1858, $r9=var3473, $r10=var67}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.loader.collection.plan.CollectionLoader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r5 = virtualinvoke r1.<org.hibernate.loader.collection.plan.CollectionLoader: org.hibernate.persister.collection.QueryableCollection collectionPersister()>();	$r6 = interfaceinvoke $r5.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getRole()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1