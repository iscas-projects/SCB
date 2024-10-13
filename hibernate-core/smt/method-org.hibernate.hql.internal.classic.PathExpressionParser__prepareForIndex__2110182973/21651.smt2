(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2297 0)
(declare-sort var1452 0)
(declare-sort var771 0)
(declare-sort var431 0)
(declare-sort var3872 0)
(declare-sort var3246 0)
(declare-sort var2953 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun collectionRole/2096745176 (var2297) String)
(declare-fun getCollectionPersister/1644298624 (var1452 String) var771)
(declare-fun var431_hasIndex/152036005 (var431) Bool)
(declare-fun cast-from-var771-to-var431 (var771) var431)
(declare-fun var3872-init () var3872)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun path/2096745176 (var2297) String)
(declare-fun append/-1031950772 (String var3246) String)
(declare-fun cast-from-String-to-var3246 (String) var3246)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var3872 String) void)
(declare-fun cast-from-var3872-to-var2953 (var3872) var2953)
(declare-const null-var2297 var2297)
(declare-const null-var1452 var1452)
(declare-const var1340 var2297) ; Statement: r1 := @this: org.hibernate.hql.internal.classic.PathExpressionParser 
(assert (not (= var1340 null-var2297)))
(declare-const var2282 var1452) ; Statement: r0 := @parameter0: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var2282 null-var1452)))
(define-const var1694 String (collectionRole/2096745176 var1340)) ; Statement: $r2 = r1.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String collectionRole> 
(assert true)
(define-const var3317 var771 (getCollectionPersister/1644298624 var2282 var1694)) ; Statement: r3 = virtualinvoke r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: org.hibernate.persister.collection.QueryableCollection getCollectionPersister(java.lang.String)>($r2) 
(define-const var583 Bool (var431_hasIndex/152036005 (cast-from-var771-to-var431 var3317))) ; Statement: $z0 = interfaceinvoke r3.<org.hibernate.persister.collection.QueryableCollection: boolean hasIndex()>() 
 ; Statement: if $z0 != 0 goto r4 = interfaceinvoke r3.<org.hibernate.persister.collection.QueryableCollection: java.lang.String[] getIndexColumnNames()>() 
(assert (not (not (= (ite var583 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2412 var3872 var3872-init) ; Statement: $r47 = new org.hibernate.QueryException 
(define-const var822 String String-init) ; Statement: $r46 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var822)) ; Statement: specialinvoke $r46.<java.lang.StringBuilder: void <init>()>() 
(declare-const var822!1 String)
(assert (= var822!1 ""))
(assert true)
(define-const var304 String (append/672562846 var822!1 "unindexed collection before []: ")) ; Statement: $r43 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unindexed collection before []: ") 
(declare-const var822!2 String)
(assert (= var822!2 (str.++ var822!1 "unindexed collection before []: ")))
(define-const var3896 String (path/2096745176 var1340)) ; Statement: $r42 = r1.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder path> 
(assert true)
(define-const var1661 String (append/-1031950772 var304 (cast-from-String-to-var3246 var3896))) ; Statement: $r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r42) 
(declare-const var304!1 String)
(assert (str.prefixof var304 var304!1))
(assert true)
(define-const var3087 String (toString/-2075883882 var1661)) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var2412 var3087)) ; Statement: specialinvoke $r47.<org.hibernate.QueryException: void <init>(java.lang.String)>($r45) 

(declare-const var2412!1 var3872)
(declare-const var3087!1 String)
(define-const var1643 var2953 (cast-from-var3872-to-var2953 var2412!1)) ; Statement: $r53 = (java.lang.Throwable) $r47 
 ; Statement: throw $r53 
(check-sat)
(get-model)
(get-unsat-core)
; {collectionRole/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.String), getCollectionPersister/1644298624=([org.hibernate.hql.internal.classic.QueryTranslatorImpl, java.lang.String], org.hibernate.persister.collection.QueryableCollection), var431_hasIndex/152036005=([org.hibernate.persister.collection.CollectionPersister], boolean), cast-from-var771-to-var431=([org.hibernate.persister.collection.QueryableCollection], org.hibernate.persister.collection.CollectionPersister), var3872-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), path/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-String-to-var3246=([java.lang.StringBuilder], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var3872-to-var2953=([org.hibernate.QueryException], java.lang.Throwable)}
; {var2297=org.hibernate.hql.internal.classic.PathExpressionParser, var1340=r1, var1452=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var2282=r0, var1694=$r2, var771=org.hibernate.persister.collection.QueryableCollection, var3317=r3, var431=org.hibernate.persister.collection.CollectionPersister, var583=$z0, var3872=org.hibernate.QueryException, var2412=$r47, var822=$r46, var304=$r43, var3896=$r42, var3246=java.lang.Object, var1661=$r44, var3087=$r45, var2953=java.lang.Throwable, var1643=$r53}
; {org.hibernate.hql.internal.classic.PathExpressionParser=var2297, r1=var1340, org.hibernate.hql.internal.classic.QueryTranslatorImpl=var1452, r0=var2282, $r2=var1694, org.hibernate.persister.collection.QueryableCollection=var771, r3=var3317, org.hibernate.persister.collection.CollectionPersister=var431, $z0=var583, org.hibernate.QueryException=var3872, $r47=var2412, $r46=var822, $r43=var304, $r42=var3896, java.lang.Object=var3246, $r44=var1661, $r45=var3087, java.lang.Throwable=var2953, $r53=var1643}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.classic.PathExpressionParser;	r0 := @parameter0: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	$r2 = r1.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String collectionRole>;	r3 = virtualinvoke r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: org.hibernate.persister.collection.QueryableCollection getCollectionPersister(java.lang.String)>($r2);	$z0 = interfaceinvoke r3.<org.hibernate.persister.collection.QueryableCollection: boolean hasIndex()>();	if $z0 != 0 goto r4 = interfaceinvoke r3.<org.hibernate.persister.collection.QueryableCollection: java.lang.String[] getIndexColumnNames()>();	$r47 = new org.hibernate.QueryException;	$r46 = new java.lang.StringBuilder;	specialinvoke $r46.<java.lang.StringBuilder: void <init>()>();	$r43 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unindexed collection before []: ");	$r42 = r1.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.StringBuilder path>;	$r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r42);	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r47.<org.hibernate.QueryException: void <init>(java.lang.String)>($r45);	$r53 = (java.lang.Throwable) $r47;	throw $r53
;block_num 2