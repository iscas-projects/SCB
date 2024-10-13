(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2433 0)
(declare-sort var3460 0)
(declare-sort var2714 0)
(declare-sort var3154 0)
(declare-sort var1912 0)
(declare-sort var853 0)
(declare-sort var931 0)
(declare-sort var2533 0)
(declare-sort var3834 0)
(declare-sort var3848 0)
(declare-sort var3068 0)
(declare-sort var3764 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3154) void)
(declare-fun cast-from-var2433-to-var3154 (var2433) var3154)
(declare-fun attribute/1686634812 (var2433) var2714)
(declare-fun var2714_getKeyType/-1782130952 (var2714) var1912)
(declare-fun jpaType/1686634812 (var2433) var1912)
(declare-fun var2714_getKeyJavaType/347819913 (var2714) ClassObject)
(declare-fun jpaBinableJavaType/1686634812 (var2433) ClassObject)
(declare-fun var1912_getPersistenceType/1979733063 (var1912) var853)
(declare-fun equals/1590667255 (var853 var3154) Bool)
(declare-fun cast-from-var853-to-var3154 (var853) var3154)
(declare-fun jpaBindableType/1686634812 (var2433) var931)
(declare-fun determineRole/-1363553982 (var2433 var2714) String)
(declare-fun getEntityManagerFactory/-1647005728 (var3460) var2533)
(declare-fun getSessionFactory/1154349126 (var3848) var3834)
(declare-fun cast-from-var2533-to-var3848 (var2533) var3848)
(declare-fun var3834_getCollectionPersister/1293184455 (var3834 String) var3068)
(declare-fun mapPersister/1686634812 (var2433) var3068)
(declare-fun var3764-init () var3764)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var3764 String) void)
(declare-const null-var2433 var2433)
(declare-const null-var3460 var3460)
(declare-const null-var2714 var2714)
(declare-const var853-ENTITY var853)
(declare-const var931-SINGULAR_ATTRIBUTE var931)
(declare-const null-var3068 var3068)
(declare-const var3697 var2433) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute 
(assert (not (= var3697 null-var2433)))
(declare-const var957 var3460) ; Statement: r7 := @parameter0: org.hibernate.query.criteria.internal.CriteriaBuilderImpl 
(assert (not (= var957 null-var3460)))
(declare-const var2373 var2714) ; Statement: r1 := @parameter1: javax.persistence.metamodel.MapAttribute 
(assert (not (= var2373 null-var2714)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2433-to-var3154 var3697))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3697!1 var2433)
(declare-const var3697!2 var2433)
(assert (not (= var3697!2 null-var2433)))
(assert (= (attribute/1686634812 var3697!2) var2373)) ; Statement: r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: javax.persistence.metamodel.MapAttribute attribute> = r1 
(define-const var589 var1912 (var2714_getKeyType/-1782130952 var2373)) ; Statement: $r2 = interfaceinvoke r1.<javax.persistence.metamodel.MapAttribute: javax.persistence.metamodel.Type getKeyType()>() 
(declare-const var3697!3 var2433)
(assert (not (= var3697!3 null-var2433)))
(assert (= (jpaType/1686634812 var3697!3) var589)) ; Statement: r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: javax.persistence.metamodel.Type jpaType> = $r2 
(define-const var1236 ClassObject (var2714_getKeyJavaType/347819913 var2373)) ; Statement: $r3 = interfaceinvoke r1.<javax.persistence.metamodel.MapAttribute: java.lang.Class getKeyJavaType()>() 
(declare-const var3697!4 var2433)
(assert (not (= var3697!4 null-var2433)))
(assert (= (jpaBinableJavaType/1686634812 var3697!4) var1236)) ; Statement: r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: java.lang.Class jpaBinableJavaType> = $r3 
(define-const var921 var853 var853-ENTITY) ; Statement: $r5 = <javax.persistence.metamodel.Type$PersistenceType: javax.persistence.metamodel.Type$PersistenceType ENTITY> 
(define-const var3989 var1912 (jpaType/1686634812 var3697!4)) ; Statement: $r4 = r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: javax.persistence.metamodel.Type jpaType> 
(define-const var2652 var853 (var1912_getPersistenceType/1979733063 var3989)) ; Statement: $r6 = interfaceinvoke $r4.<javax.persistence.metamodel.Type: javax.persistence.metamodel.Type$PersistenceType getPersistenceType()>() 
(assert true)
(define-const var3171 Bool (equals/1590667255 var921 (cast-from-var853-to-var3154 var2652))) ; Statement: $z0 = virtualinvoke $r5.<javax.persistence.metamodel.Type$PersistenceType: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto $r30 = <javax.persistence.metamodel.Bindable$BindableType: javax.persistence.metamodel.Bindable$BindableType SINGULAR_ATTRIBUTE> 
(assert (= (ite var3171 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2538 var931 var931-SINGULAR_ATTRIBUTE) ; Statement: $r30 = <javax.persistence.metamodel.Bindable$BindableType: javax.persistence.metamodel.Bindable$BindableType SINGULAR_ATTRIBUTE> 
(assert true) ; Non Conditional
(declare-const var3697!5 var2433)
(assert (not (= var3697!5 null-var2433)))
(assert (= (jpaBindableType/1686634812 var3697!5) var2538)) ; Statement: r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: javax.persistence.metamodel.Bindable$BindableType jpaBindableType> = $r30 
(assert true)
(define-const var165 String (determineRole/-1363553982 var3697!5 var2373)) ; Statement: $r28 = specialinvoke r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: java.lang.String determineRole(javax.persistence.metamodel.MapAttribute)>(r1) 
(assert true)
(define-const var3415 var2533 (getEntityManagerFactory/-1647005728 var957)) ; Statement: $r8 = virtualinvoke r7.<org.hibernate.query.criteria.internal.CriteriaBuilderImpl: org.hibernate.internal.SessionFactoryImpl getEntityManagerFactory()>() 
(assert true)
(define-const var1952 var3834 (getSessionFactory/1154349126 (cast-from-var2533-to-var3848 var3415))) ; Statement: $r29 = virtualinvoke $r8.<org.hibernate.internal.SessionFactoryImpl: org.hibernate.engine.spi.SessionFactoryImplementor getSessionFactory()>() 
(define-const var208 var3068 (var3834_getCollectionPersister/1293184455 var1952 var165)) ; Statement: $r9 = interfaceinvoke $r29.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.persister.collection.CollectionPersister getCollectionPersister(java.lang.String)>($r28) 
(declare-const var3697!6 var2433)
(assert (not (= var3697!6 null-var2433)))
(assert (= (mapPersister/1686634812 var3697!6) var208)) ; Statement: r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: org.hibernate.persister.collection.CollectionPersister mapPersister> = $r9 
(define-const var2409 var3068 (mapPersister/1686634812 var3697!6)) ; Statement: $r10 = r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: org.hibernate.persister.collection.CollectionPersister mapPersister> 
 ; Statement: if $r10 != null goto $r11 = r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: org.hibernate.persister.collection.CollectionPersister mapPersister> 
(assert (not (not (= var2409 null-var3068)))) ; Negate: Cond: $r10 != null  
(define-const var3182 var3764 var3764-init) ; Statement: $r22 = new java.lang.IllegalStateException 
(define-const var1811 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1811)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1811!1 String)
(assert (= var1811!1 ""))
(assert true)
(define-const var1184 String (append/672562846 var1811!1 "Could not locate collection persister [")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not locate collection persister [") 
(declare-const var1811!2 String)
(assert (= var1811!2 (str.++ var1811!1 "Could not locate collection persister [")))
(assert true)
(define-const var3832 String (append/672562846 var1184 var165)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var1184!1 String)
(assert (= var1184!1 (str.++ var1184 var165)))
(assert true)
(define-const var1940 String (append/672562846 var3832 "]")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3832!1 String)
(assert (= var3832!1 (str.++ var3832 "]")))
(assert true)
(define-const var1229 String (toString/-2075883882 var1940)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3182 var1229)) ; Statement: specialinvoke $r22.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r27) 

(declare-const var3182!1 var3764)
(declare-const var1229!1 String)
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2433-to-var3154=([org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute], java.lang.Object), attribute/1686634812=([org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute], javax.persistence.metamodel.MapAttribute), var2714_getKeyType/-1782130952=([javax.persistence.metamodel.MapAttribute], javax.persistence.metamodel.Type), jpaType/1686634812=([org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute], javax.persistence.metamodel.Type), var2714_getKeyJavaType/347819913=([javax.persistence.metamodel.MapAttribute], java.lang.Class), jpaBinableJavaType/1686634812=([org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute], java.lang.Class), var1912_getPersistenceType/1979733063=([javax.persistence.metamodel.Type], javax.persistence.metamodel.Type$PersistenceType), equals/1590667255=([javax.persistence.metamodel.Type$PersistenceType, java.lang.Object], boolean), cast-from-var853-to-var3154=([javax.persistence.metamodel.Type$PersistenceType], java.lang.Object), jpaBindableType/1686634812=([org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute], javax.persistence.metamodel.Bindable$BindableType), determineRole/-1363553982=([org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute, javax.persistence.metamodel.MapAttribute], java.lang.String), getEntityManagerFactory/-1647005728=([org.hibernate.query.criteria.internal.CriteriaBuilderImpl], org.hibernate.internal.SessionFactoryImpl), getSessionFactory/1154349126=([org.hibernate.jpa.HibernateEntityManagerFactory], org.hibernate.engine.spi.SessionFactoryImplementor), cast-from-var2533-to-var3848=([org.hibernate.internal.SessionFactoryImpl], org.hibernate.jpa.HibernateEntityManagerFactory), var3834_getCollectionPersister/1293184455=([org.hibernate.engine.spi.SessionFactoryImplementor, java.lang.String], org.hibernate.persister.collection.CollectionPersister), mapPersister/1686634812=([org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute], org.hibernate.persister.collection.CollectionPersister), var3764-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2433=org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute, var3697=r0, var3460=org.hibernate.query.criteria.internal.CriteriaBuilderImpl, var957=r7, var2714=javax.persistence.metamodel.MapAttribute, var2373=r1, var3154=java.lang.Object, var1912=javax.persistence.metamodel.Type, var589=$r2, var1236=$r3, var853=javax.persistence.metamodel.Type$PersistenceType, var921=$r5, var3989=$r4, var2652=$r6, var3171=$z0, var931=javax.persistence.metamodel.Bindable$BindableType, var2538=$r30, var165=$r28, var2533=org.hibernate.internal.SessionFactoryImpl, var3415=$r8, var3834=org.hibernate.engine.spi.SessionFactoryImplementor, var3848=org.hibernate.jpa.HibernateEntityManagerFactory, var1952=$r29, var3068=org.hibernate.persister.collection.CollectionPersister, var208=$r9, var2409=$r10, var3764=java.lang.IllegalStateException, var3182=$r22, var1811=$r23, var1184=$r24, var3832=$r25, var1940=$r26, var1229=$r27}
; {org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute=var2433, r0=var3697, org.hibernate.query.criteria.internal.CriteriaBuilderImpl=var3460, r7=var957, javax.persistence.metamodel.MapAttribute=var2714, r1=var2373, java.lang.Object=var3154, javax.persistence.metamodel.Type=var1912, $r2=var589, $r3=var1236, javax.persistence.metamodel.Type$PersistenceType=var853, $r5=var921, $r4=var3989, $r6=var2652, $z0=var3171, javax.persistence.metamodel.Bindable$BindableType=var931, $r30=var2538, $r28=var165, org.hibernate.internal.SessionFactoryImpl=var2533, $r8=var3415, org.hibernate.engine.spi.SessionFactoryImplementor=var3834, org.hibernate.jpa.HibernateEntityManagerFactory=var3848, $r29=var1952, org.hibernate.persister.collection.CollectionPersister=var3068, $r9=var208, $r10=var2409, java.lang.IllegalStateException=var3764, $r22=var3182, $r23=var1811, $r24=var1184, $r25=var3832, $r26=var1940, $r27=var1229}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute;	r7 := @parameter0: org.hibernate.query.criteria.internal.CriteriaBuilderImpl;	r1 := @parameter1: javax.persistence.metamodel.MapAttribute;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: javax.persistence.metamodel.MapAttribute attribute> = r1;	$r2 = interfaceinvoke r1.<javax.persistence.metamodel.MapAttribute: javax.persistence.metamodel.Type getKeyType()>();	r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: javax.persistence.metamodel.Type jpaType> = $r2;	$r3 = interfaceinvoke r1.<javax.persistence.metamodel.MapAttribute: java.lang.Class getKeyJavaType()>();	r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: java.lang.Class jpaBinableJavaType> = $r3;	$r5 = <javax.persistence.metamodel.Type$PersistenceType: javax.persistence.metamodel.Type$PersistenceType ENTITY>;	$r4 = r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: javax.persistence.metamodel.Type jpaType>;	$r6 = interfaceinvoke $r4.<javax.persistence.metamodel.Type: javax.persistence.metamodel.Type$PersistenceType getPersistenceType()>();	$z0 = virtualinvoke $r5.<javax.persistence.metamodel.Type$PersistenceType: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto $r30 = <javax.persistence.metamodel.Bindable$BindableType: javax.persistence.metamodel.Bindable$BindableType SINGULAR_ATTRIBUTE>;	$r30 = <javax.persistence.metamodel.Bindable$BindableType: javax.persistence.metamodel.Bindable$BindableType SINGULAR_ATTRIBUTE>;	r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: javax.persistence.metamodel.Bindable$BindableType jpaBindableType> = $r30;	$r28 = specialinvoke r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: java.lang.String determineRole(javax.persistence.metamodel.MapAttribute)>(r1);	$r8 = virtualinvoke r7.<org.hibernate.query.criteria.internal.CriteriaBuilderImpl: org.hibernate.internal.SessionFactoryImpl getEntityManagerFactory()>();	$r29 = virtualinvoke $r8.<org.hibernate.internal.SessionFactoryImpl: org.hibernate.engine.spi.SessionFactoryImplementor getSessionFactory()>();	$r9 = interfaceinvoke $r29.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.persister.collection.CollectionPersister getCollectionPersister(java.lang.String)>($r28);	r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: org.hibernate.persister.collection.CollectionPersister mapPersister> = $r9;	$r10 = r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: org.hibernate.persister.collection.CollectionPersister mapPersister>;	if $r10 != null goto $r11 = r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: org.hibernate.persister.collection.CollectionPersister mapPersister>;	$r22 = new java.lang.IllegalStateException;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not locate collection persister [");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r27);	throw $r22
;block_num 4