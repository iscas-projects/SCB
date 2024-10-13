(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1903 0)
(declare-sort var3827 0)
(declare-sort var3551 0)
(declare-sort var2203 0)
(declare-sort var612 0)
(declare-sort var2352 0)
(declare-sort var2239 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCollectionPersister/1644298624 (var1903 String) var3551)
(declare-fun var612_getElementType/2079972765 (var612) var2203)
(declare-fun cast-from-var3551-to-var612 (var3551) var612)
(declare-fun var2203_isEntityType/-1323505172 (var2203) Bool)
(declare-fun var2352-init () var2352)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1391884909 (var2352 String) void)
(declare-fun cast-from-var2352-to-var2239 (var2352) var2239)
(declare-const null-var1903 var1903)
(declare-const null-String String)
(declare-const var1924 var1903) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.QueryTranslatorImpl 
(assert (not (= var1924 null-var1903)))
(declare-const var3478 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var3478 null-String)))
(declare-const var3257 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3257 null-String)))
(assert true)
(define-const var3147 var3551 (getCollectionPersister/1644298624 var1924 var3257)) ; Statement: r2 = virtualinvoke r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: org.hibernate.persister.collection.QueryableCollection getCollectionPersister(java.lang.String)>(r1) 
(define-const var1029 var2203 (var612_getElementType/2079972765 (cast-from-var3551-to-var612 var3147))) ; Statement: r3 = interfaceinvoke r2.<org.hibernate.persister.collection.QueryableCollection: org.hibernate.type.Type getElementType()>() 
(define-const var1104 Bool (var2203_isEntityType/-1323505172 var1029)) ; Statement: $z0 = interfaceinvoke r3.<org.hibernate.type.Type: boolean isEntityType()>() 
 ; Statement: if $z0 != 0 goto r4 = interfaceinvoke r2.<org.hibernate.persister.collection.QueryableCollection: java.lang.String[] getKeyColumnNames()>() 
(assert (not (not (= (ite var1104 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var535 var2352 var2352-init) ; Statement: $r22 = new org.hibernate.QueryException 
(define-const var2256 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2256)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2256!1 String)
(assert (= var2256!1 ""))
(assert true)
(define-const var2836 String (append/672562846 var2256!1 "collection of values in filter: ")) ; Statement: $r17 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("collection of values in filter: ") 
(declare-const var2256!2 String)
(assert (= var2256!2 (str.++ var2256!1 "collection of values in filter: ")))
(assert true)
(define-const var1025 String (append/672562846 var2836 var3478)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8) 
(declare-const var2836!1 String)
(assert (= var2836!1 (str.++ var2836 var3478)))
(assert true)
(define-const var1401 String (toString/-2075883882 var1025)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1391884909 var535 var1401)) ; Statement: specialinvoke $r22.<org.hibernate.QueryException: void <init>(java.lang.String)>($r19) 

(declare-const var535!1 var2352)
(declare-const var1401!1 String)
(define-const var2195 var2239 (cast-from-var2352-to-var2239 var535!1)) ; Statement: $r24 = (java.lang.Throwable) $r22 
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {getCollectionPersister/1644298624=([org.hibernate.hql.internal.classic.QueryTranslatorImpl, java.lang.String], org.hibernate.persister.collection.QueryableCollection), var612_getElementType/2079972765=([org.hibernate.persister.collection.CollectionPersister], org.hibernate.type.Type), cast-from-var3551-to-var612=([org.hibernate.persister.collection.QueryableCollection], org.hibernate.persister.collection.CollectionPersister), var2203_isEntityType/-1323505172=([org.hibernate.type.Type], boolean), var2352-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1391884909=([org.hibernate.QueryException, java.lang.String], void), cast-from-var2352-to-var2239=([org.hibernate.QueryException], java.lang.Throwable)}
; {var1903=org.hibernate.hql.internal.classic.QueryTranslatorImpl, var1924=r0, var3478=r8, var3827=null_type, var3257=r1, var3551=org.hibernate.persister.collection.QueryableCollection, var3147=r2, var2203=org.hibernate.type.Type, var612=org.hibernate.persister.collection.CollectionPersister, var1029=r3, var1104=$z0, var2352=org.hibernate.QueryException, var535=$r22, var2256=$r21, var2836=$r17, var1025=$r18, var1401=$r19, var2239=java.lang.Throwable, var2195=$r24}
; {org.hibernate.hql.internal.classic.QueryTranslatorImpl=var1903, r0=var1924, r8=var3478, null_type=var3827, r1=var3257, org.hibernate.persister.collection.QueryableCollection=var3551, r2=var3147, org.hibernate.type.Type=var2203, org.hibernate.persister.collection.CollectionPersister=var612, r3=var1029, $z0=var1104, org.hibernate.QueryException=var2352, $r22=var535, $r21=var2256, $r17=var2836, $r18=var1025, $r19=var1401, java.lang.Throwable=var2239, $r24=var2195}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.classic.QueryTranslatorImpl;	r8 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r2 = virtualinvoke r0.<org.hibernate.hql.internal.classic.QueryTranslatorImpl: org.hibernate.persister.collection.QueryableCollection getCollectionPersister(java.lang.String)>(r1);	r3 = interfaceinvoke r2.<org.hibernate.persister.collection.QueryableCollection: org.hibernate.type.Type getElementType()>();	$z0 = interfaceinvoke r3.<org.hibernate.type.Type: boolean isEntityType()>();	if $z0 != 0 goto r4 = interfaceinvoke r2.<org.hibernate.persister.collection.QueryableCollection: java.lang.String[] getKeyColumnNames()>();	$r22 = new org.hibernate.QueryException;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("collection of values in filter: ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<org.hibernate.QueryException: void <init>(java.lang.String)>($r19);	$r24 = (java.lang.Throwable) $r22;	throw $r24
;block_num 2