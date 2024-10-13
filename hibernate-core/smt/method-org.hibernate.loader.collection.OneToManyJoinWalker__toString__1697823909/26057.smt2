(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var931 0)
(declare-sort var964 0)
(declare-sort var1243 0)
(declare-sort var1130 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var964) ClassObject)
(declare-fun cast-from-var931-to-var964 (var931) var964)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun oneToManyPersister/-1078755899 (var931) var1243)
(declare-fun var1130_getRole/758162468 (var1130) String)
(declare-fun cast-from-var1243-to-var1130 (var1243) var1130)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var931 var931)
(declare-const var2873 var931) ; Statement: r1 := @this: org.hibernate.loader.collection.OneToManyJoinWalker 
(assert (not (= var2873 null-var931)))
(define-const var2977 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2977)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2977!1 String)
(assert (= var2977!1 ""))
(assert true)
(define-const var2017 ClassObject (getClass/1258963082 (cast-from-var931-to-var964 var2873))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1464 String (getName/-1958580599 var2017)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1835 String (append/672562846 var2977!1 var1464)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2977!2 String)
(assert (= var2977!2 (str.++ var2977!1 var1464)))
(assert true)
(define-const var2525 String (append/-1166366385 var1835 40)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var1835!1 String)
(assert (str.prefixof var1835 var1835!1))
(define-const var1951 var1243 (oneToManyPersister/-1078755899 var2873)) ; Statement: $r5 = r1.<org.hibernate.loader.collection.OneToManyJoinWalker: org.hibernate.persister.collection.QueryableCollection oneToManyPersister> 
(define-const var1303 String (var1130_getRole/758162468 (cast-from-var1243-to-var1130 var1951))) ; Statement: $r6 = interfaceinvoke $r5.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getRole()>() 
(assert true)
(define-const var1533 String (append/672562846 var2525 var1303)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2525!1 String)
(assert (= var2525!1 (str.++ var2525 var1303)))
(assert true)
(define-const var578 String (append/-1166366385 var1533 41)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1533!1 String)
(assert (str.prefixof var1533 var1533!1))
(assert true)
(define-const var2752 String (toString/-2075883882 var578)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var931-to-var964=([org.hibernate.loader.collection.OneToManyJoinWalker], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), oneToManyPersister/-1078755899=([org.hibernate.loader.collection.OneToManyJoinWalker], org.hibernate.persister.collection.QueryableCollection), var1130_getRole/758162468=([org.hibernate.persister.collection.CollectionPersister], java.lang.String), cast-from-var1243-to-var1130=([org.hibernate.persister.collection.QueryableCollection], org.hibernate.persister.collection.CollectionPersister), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var931=org.hibernate.loader.collection.OneToManyJoinWalker, var2873=r1, var2977=$r0, var964=java.lang.Object, var2017=$r2, var1464=$r3, var1835=$r4, var2525=$r7, var1243=org.hibernate.persister.collection.QueryableCollection, var1951=$r5, var1130=org.hibernate.persister.collection.CollectionPersister, var1303=$r6, var1533=$r8, var578=$r9, var2752=$r10}
; {org.hibernate.loader.collection.OneToManyJoinWalker=var931, r1=var2873, $r0=var2977, java.lang.Object=var964, $r2=var2017, $r3=var1464, $r4=var1835, $r7=var2525, org.hibernate.persister.collection.QueryableCollection=var1243, $r5=var1951, org.hibernate.persister.collection.CollectionPersister=var1130, $r6=var1303, $r8=var1533, $r9=var578, $r10=var2752}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.loader.collection.OneToManyJoinWalker;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r5 = r1.<org.hibernate.loader.collection.OneToManyJoinWalker: org.hibernate.persister.collection.QueryableCollection oneToManyPersister>;	$r6 = interfaceinvoke $r5.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getRole()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1