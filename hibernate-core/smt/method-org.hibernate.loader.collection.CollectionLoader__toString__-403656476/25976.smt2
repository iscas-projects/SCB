(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1219 0)
(declare-sort var2444 0)
(declare-sort var2681 0)
(declare-sort var1896 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var2444) ClassObject)
(declare-fun cast-from-var1219-to-var2444 (var1219) var2444)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun collectionPersister/749940812 (var1219) var2681)
(declare-fun var1896_getRole/758162468 (var1896) String)
(declare-fun cast-from-var2681-to-var1896 (var2681) var1896)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1219 var1219)
(declare-const var1130 var1219) ; Statement: r1 := @this: org.hibernate.loader.collection.CollectionLoader 
(assert (not (= var1130 null-var1219)))
(define-const var2495 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2495)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2495!1 String)
(assert (= var2495!1 ""))
(assert true)
(define-const var3057 ClassObject (getClass/1258963082 (cast-from-var1219-to-var2444 var1130))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2206 String (getName/-1958580599 var3057)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1262 String (append/672562846 var2495!1 var2206)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2495!2 String)
(assert (= var2495!2 (str.++ var2495!1 var2206)))
(assert true)
(define-const var895 String (append/-1166366385 var1262 40)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var1262!1 String)
(assert (str.prefixof var1262 var1262!1))
(define-const var1700 var2681 (collectionPersister/749940812 var1130)) ; Statement: $r5 = r1.<org.hibernate.loader.collection.CollectionLoader: org.hibernate.persister.collection.QueryableCollection collectionPersister> 
(define-const var3657 String (var1896_getRole/758162468 (cast-from-var2681-to-var1896 var1700))) ; Statement: $r6 = interfaceinvoke $r5.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getRole()>() 
(assert true)
(define-const var778 String (append/672562846 var895 var3657)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var895!1 String)
(assert (= var895!1 (str.++ var895 var3657)))
(assert true)
(define-const var2472 String (append/-1166366385 var778 41)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var778!1 String)
(assert (str.prefixof var778 var778!1))
(assert true)
(define-const var162 String (toString/-2075883882 var2472)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1219-to-var2444=([org.hibernate.loader.collection.CollectionLoader], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), collectionPersister/749940812=([org.hibernate.loader.collection.CollectionLoader], org.hibernate.persister.collection.QueryableCollection), var1896_getRole/758162468=([org.hibernate.persister.collection.CollectionPersister], java.lang.String), cast-from-var2681-to-var1896=([org.hibernate.persister.collection.QueryableCollection], org.hibernate.persister.collection.CollectionPersister), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1219=org.hibernate.loader.collection.CollectionLoader, var1130=r1, var2495=$r0, var2444=java.lang.Object, var3057=$r2, var2206=$r3, var1262=$r4, var895=$r7, var2681=org.hibernate.persister.collection.QueryableCollection, var1700=$r5, var1896=org.hibernate.persister.collection.CollectionPersister, var3657=$r6, var778=$r8, var2472=$r9, var162=$r10}
; {org.hibernate.loader.collection.CollectionLoader=var1219, r1=var1130, $r0=var2495, java.lang.Object=var2444, $r2=var3057, $r3=var2206, $r4=var1262, $r7=var895, org.hibernate.persister.collection.QueryableCollection=var2681, $r5=var1700, org.hibernate.persister.collection.CollectionPersister=var1896, $r6=var3657, $r8=var778, $r9=var2472, $r10=var162}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.loader.collection.CollectionLoader;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r5 = r1.<org.hibernate.loader.collection.CollectionLoader: org.hibernate.persister.collection.QueryableCollection collectionPersister>;	$r6 = interfaceinvoke $r5.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getRole()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1