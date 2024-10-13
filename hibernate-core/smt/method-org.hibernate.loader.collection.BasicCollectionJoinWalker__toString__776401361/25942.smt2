(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2716 0)
(declare-sort var2336 0)
(declare-sort var3624 0)
(declare-sort var1145 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var2336) ClassObject)
(declare-fun cast-from-var2716-to-var2336 (var2716) var2336)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun collectionPersister/-900363535 (var2716) var3624)
(declare-fun var1145_getRole/758162468 (var1145) String)
(declare-fun cast-from-var3624-to-var1145 (var3624) var1145)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2716 var2716)
(declare-const var1997 var2716) ; Statement: r1 := @this: org.hibernate.loader.collection.BasicCollectionJoinWalker 
(assert (not (= var1997 null-var2716)))
(define-const var3433 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3433)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3433!1 String)
(assert (= var3433!1 ""))
(assert true)
(define-const var3143 ClassObject (getClass/1258963082 (cast-from-var2716-to-var2336 var1997))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3822 String (getName/-1958580599 var3143)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1003 String (append/672562846 var3433!1 var3822)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3433!2 String)
(assert (= var3433!2 (str.++ var3433!1 var3822)))
(assert true)
(define-const var3712 String (append/-1166366385 var1003 40)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var1003!1 String)
(assert (str.prefixof var1003 var1003!1))
(define-const var2948 var3624 (collectionPersister/-900363535 var1997)) ; Statement: $r5 = r1.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.persister.collection.QueryableCollection collectionPersister> 
(define-const var2721 String (var1145_getRole/758162468 (cast-from-var3624-to-var1145 var2948))) ; Statement: $r6 = interfaceinvoke $r5.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getRole()>() 
(assert true)
(define-const var1200 String (append/672562846 var3712 var2721)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3712!1 String)
(assert (= var3712!1 (str.++ var3712 var2721)))
(assert true)
(define-const var1257 String (append/-1166366385 var1200 41)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1200!1 String)
(assert (str.prefixof var1200 var1200!1))
(assert true)
(define-const var2138 String (toString/-2075883882 var1257)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2716-to-var2336=([org.hibernate.loader.collection.BasicCollectionJoinWalker], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), collectionPersister/-900363535=([org.hibernate.loader.collection.BasicCollectionJoinWalker], org.hibernate.persister.collection.QueryableCollection), var1145_getRole/758162468=([org.hibernate.persister.collection.CollectionPersister], java.lang.String), cast-from-var3624-to-var1145=([org.hibernate.persister.collection.QueryableCollection], org.hibernate.persister.collection.CollectionPersister), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2716=org.hibernate.loader.collection.BasicCollectionJoinWalker, var1997=r1, var3433=$r0, var2336=java.lang.Object, var3143=$r2, var3822=$r3, var1003=$r4, var3712=$r7, var3624=org.hibernate.persister.collection.QueryableCollection, var2948=$r5, var1145=org.hibernate.persister.collection.CollectionPersister, var2721=$r6, var1200=$r8, var1257=$r9, var2138=$r10}
; {org.hibernate.loader.collection.BasicCollectionJoinWalker=var2716, r1=var1997, $r0=var3433, java.lang.Object=var2336, $r2=var3143, $r3=var3822, $r4=var1003, $r7=var3712, org.hibernate.persister.collection.QueryableCollection=var3624, $r5=var2948, org.hibernate.persister.collection.CollectionPersister=var1145, $r6=var2721, $r8=var1200, $r9=var1257, $r10=var2138}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.loader.collection.BasicCollectionJoinWalker;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r5 = r1.<org.hibernate.loader.collection.BasicCollectionJoinWalker: org.hibernate.persister.collection.QueryableCollection collectionPersister>;	$r6 = interfaceinvoke $r5.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getRole()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1