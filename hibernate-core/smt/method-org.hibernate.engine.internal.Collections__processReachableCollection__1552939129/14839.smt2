(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3709 0)
(declare-sort var3577 0)
(declare-sort var3603 0)
(declare-sort var2021 0)
(declare-sort var1258 0)
(declare-sort var2604 0)
(declare-sort var406 0)
(declare-sort var1926 0)
(declare-sort var3011 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3709_setOwner/1802495390 (var3709 var3603) void)
(declare-fun var2604_getPersistenceContextInternal/1368680823 (var2604) var1258)
(declare-fun cast-from-var2021-to-var2604 (var2021) var2604)
(declare-fun var1258_getCollectionEntry/-1568771234 (var1258 var3709) var406)
(declare-fun var1926-init () var1926)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getRole/-121726340 (var3577) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var1926 String) void)
(declare-fun cast-from-var1926-to-var3011 (var1926) var3011)
(declare-const null-var3709 var3709)
(declare-const null-var3577 var3577)
(declare-const null-var3603 var3603)
(declare-const null-var2021 var2021)
(declare-const null-var406 var406)
(declare-const var424 var3709) ; Statement: r0 := @parameter0: org.hibernate.collection.spi.PersistentCollection 
(assert (not (= var424 null-var3709)))
(declare-const var3148 var3577) ; Statement: r6 := @parameter1: org.hibernate.type.CollectionType 
(assert (not (= var3148 null-var3577)))
(declare-const var1929 var3603) ; Statement: r1 := @parameter2: java.lang.Object 
(assert (not (= var1929 null-var3603)))
(declare-const var1894 var2021) ; Statement: r2 := @parameter3: org.hibernate.engine.spi.SessionImplementor 
(assert (not (= var1894 null-var2021)))
;(assert (var3709_setOwner/1802495390 var424 var1929)) ; Statement: interfaceinvoke r0.<org.hibernate.collection.spi.PersistentCollection: void setOwner(java.lang.Object)>(r1) 

(declare-const var424!1 var3709)
(declare-const var1929!1 var3603)
(define-const var232 var1258 (var2604_getPersistenceContextInternal/1368680823 (cast-from-var2021-to-var2604 var1894))) ; Statement: r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SessionImplementor: org.hibernate.engine.spi.PersistenceContext getPersistenceContextInternal()>() 
(define-const var82 var406 (var1258_getCollectionEntry/-1568771234 var232 var424!1)) ; Statement: r4 = interfaceinvoke r3.<org.hibernate.engine.spi.PersistenceContext: org.hibernate.engine.spi.CollectionEntry getCollectionEntry(org.hibernate.collection.spi.PersistentCollection)>(r0) 
 ; Statement: if r4 != null goto r5 = interfaceinvoke r2.<org.hibernate.engine.spi.SessionImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(assert (not (not (= var82 null-var406)))) ; Negate: Cond: r4 != null  
(define-const var3635 var1926 var1926-init) ; Statement: $r43 = new org.hibernate.HibernateException 
(define-const var1229 String String-init) ; Statement: $r42 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1229)) ; Statement: specialinvoke $r42.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1229!1 String)
(assert (= var1229!1 ""))
(assert true)
(define-const var1728 String (append/672562846 var1229!1 "Found two representations of same collection: ")) ; Statement: $r39 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Found two representations of same collection: ") 
(declare-const var1229!2 String)
(assert (= var1229!2 (str.++ var1229!1 "Found two representations of same collection: ")))
(assert true)
(define-const var685 String (getRole/-121726340 var3148)) ; Statement: $r38 = virtualinvoke r6.<org.hibernate.type.CollectionType: java.lang.String getRole()>() 
(assert true)
(define-const var40 String (append/672562846 var1728 var685)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r38) 
(declare-const var1728!1 String)
(assert (= var1728!1 (str.++ var1728 var685)))
(assert true)
(define-const var1567 String (toString/-2075883882 var40)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var3635 var1567)) ; Statement: specialinvoke $r43.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r41) 

(declare-const var3635!1 var1926)
(declare-const var1567!1 String)
(define-const var642 var3011 (cast-from-var1926-to-var3011 var3635!1)) ; Statement: $r46 = (java.lang.Throwable) $r43 
 ; Statement: throw $r46 
(check-sat)
(get-model)
(get-unsat-core)
; {var3709_setOwner/1802495390=([org.hibernate.collection.spi.PersistentCollection, java.lang.Object], void), var2604_getPersistenceContextInternal/1368680823=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.PersistenceContext), cast-from-var2021-to-var2604=([org.hibernate.engine.spi.SessionImplementor], org.hibernate.engine.spi.SharedSessionContractImplementor), var1258_getCollectionEntry/-1568771234=([org.hibernate.engine.spi.PersistenceContext, org.hibernate.collection.spi.PersistentCollection], org.hibernate.engine.spi.CollectionEntry), var1926-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getRole/-121726340=([org.hibernate.type.CollectionType], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var1926-to-var3011=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var3709=org.hibernate.collection.spi.PersistentCollection, var424=r0, var3577=org.hibernate.type.CollectionType, var3148=r6, var3603=java.lang.Object, var1929=r1, var2021=org.hibernate.engine.spi.SessionImplementor, var1894=r2, var1258=org.hibernate.engine.spi.PersistenceContext, var2604=org.hibernate.engine.spi.SharedSessionContractImplementor, var232=r3, var406=org.hibernate.engine.spi.CollectionEntry, var82=r4, var1926=org.hibernate.HibernateException, var3635=$r43, var1229=$r42, var1728=$r39, var685=$r38, var40=$r40, var1567=$r41, var3011=java.lang.Throwable, var642=$r46}
; {org.hibernate.collection.spi.PersistentCollection=var3709, r0=var424, org.hibernate.type.CollectionType=var3577, r6=var3148, java.lang.Object=var3603, r1=var1929, org.hibernate.engine.spi.SessionImplementor=var2021, r2=var1894, org.hibernate.engine.spi.PersistenceContext=var1258, org.hibernate.engine.spi.SharedSessionContractImplementor=var2604, r3=var232, org.hibernate.engine.spi.CollectionEntry=var406, r4=var82, org.hibernate.HibernateException=var1926, $r43=var3635, $r42=var1229, $r39=var1728, $r38=var685, $r40=var40, $r41=var1567, java.lang.Throwable=var3011, $r46=var642}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.hibernate.collection.spi.PersistentCollection;	r6 := @parameter1: org.hibernate.type.CollectionType;	r1 := @parameter2: java.lang.Object;	r2 := @parameter3: org.hibernate.engine.spi.SessionImplementor;	interfaceinvoke r0.<org.hibernate.collection.spi.PersistentCollection: void setOwner(java.lang.Object)>(r1);	r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SessionImplementor: org.hibernate.engine.spi.PersistenceContext getPersistenceContextInternal()>();	r4 = interfaceinvoke r3.<org.hibernate.engine.spi.PersistenceContext: org.hibernate.engine.spi.CollectionEntry getCollectionEntry(org.hibernate.collection.spi.PersistentCollection)>(r0);	if r4 != null goto r5 = interfaceinvoke r2.<org.hibernate.engine.spi.SessionImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r43 = new org.hibernate.HibernateException;	$r42 = new java.lang.StringBuilder;	specialinvoke $r42.<java.lang.StringBuilder: void <init>()>();	$r39 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Found two representations of same collection: ");	$r38 = virtualinvoke r6.<org.hibernate.type.CollectionType: java.lang.String getRole()>();	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r38);	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r43.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r41);	$r46 = (java.lang.Throwable) $r43;	throw $r46
;block_num 2