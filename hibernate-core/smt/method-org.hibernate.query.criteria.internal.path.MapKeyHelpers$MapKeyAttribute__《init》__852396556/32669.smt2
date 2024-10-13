(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3140 0)
(declare-sort var3371 0)
(declare-sort var27 0)
(declare-sort var2437 0)
(declare-sort var918 0)
(declare-sort var825 0)
(declare-sort var2924 0)
(declare-sort var3255 0)
(declare-sort var3541 0)
(declare-sort var920 0)
(declare-sort var2664 0)
(declare-sort var1426 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2437) void)
(declare-fun cast-from-var3140-to-var2437 (var3140) var2437)
(declare-fun attribute/1686634812 (var3140) var27)
(declare-fun var27_getKeyType/-1782130952 (var27) var918)
(declare-fun jpaType/1686634812 (var3140) var918)
(declare-fun var27_getKeyJavaType/347819913 (var27) ClassObject)
(declare-fun jpaBinableJavaType/1686634812 (var3140) ClassObject)
(declare-fun var918_getPersistenceType/1979733063 (var918) var825)
(declare-fun equals/1590667255 (var825 var2437) Bool)
(declare-fun cast-from-var825-to-var2437 (var825) var2437)
(declare-fun jpaBindableType/1686634812 (var3140) var2924)
(declare-fun determineRole/-1363553982 (var3140 var27) String)
(declare-fun getEntityManagerFactory/-1647005728 (var3371) var3255)
(declare-fun getSessionFactory/1154349126 (var920) var3541)
(declare-fun cast-from-var3255-to-var920 (var3255) var920)
(declare-fun var3541_getCollectionPersister/1293184455 (var3541 String) var2664)
(declare-fun mapPersister/1686634812 (var3140) var2664)
(declare-fun var1426-init () var1426)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1426 String) void)
(declare-const null-var3140 var3140)
(declare-const null-var3371 var3371)
(declare-const null-var27 var27)
(declare-const var825-ENTITY var825)
(declare-const var2924-ENTITY_TYPE var2924)
(declare-const null-var2664 var2664)
(declare-const var2292 var3140) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute 
(assert (not (= var2292 null-var3140)))
(declare-const var44 var3371) ; Statement: r7 := @parameter0: org.hibernate.query.criteria.internal.CriteriaBuilderImpl 
(assert (not (= var44 null-var3371)))
(declare-const var946 var27) ; Statement: r1 := @parameter1: javax.persistence.metamodel.MapAttribute 
(assert (not (= var946 null-var27)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3140-to-var2437 var2292))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2292!1 var3140)
(declare-const var2292!2 var3140)
(assert (not (= var2292!2 null-var3140)))
(assert (= (attribute/1686634812 var2292!2) var946)) ; Statement: r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: javax.persistence.metamodel.MapAttribute attribute> = r1 
(define-const var1457 var918 (var27_getKeyType/-1782130952 var946)) ; Statement: $r2 = interfaceinvoke r1.<javax.persistence.metamodel.MapAttribute: javax.persistence.metamodel.Type getKeyType()>() 
(declare-const var2292!3 var3140)
(assert (not (= var2292!3 null-var3140)))
(assert (= (jpaType/1686634812 var2292!3) var1457)) ; Statement: r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: javax.persistence.metamodel.Type jpaType> = $r2 
(define-const var2209 ClassObject (var27_getKeyJavaType/347819913 var946)) ; Statement: $r3 = interfaceinvoke r1.<javax.persistence.metamodel.MapAttribute: java.lang.Class getKeyJavaType()>() 
(declare-const var2292!4 var3140)
(assert (not (= var2292!4 null-var3140)))
(assert (= (jpaBinableJavaType/1686634812 var2292!4) var2209)) ; Statement: r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: java.lang.Class jpaBinableJavaType> = $r3 
(define-const var951 var825 var825-ENTITY) ; Statement: $r5 = <javax.persistence.metamodel.Type$PersistenceType: javax.persistence.metamodel.Type$PersistenceType ENTITY> 
(define-const var1719 var918 (jpaType/1686634812 var2292!4)) ; Statement: $r4 = r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: javax.persistence.metamodel.Type jpaType> 
(define-const var1657 var825 (var918_getPersistenceType/1979733063 var1719)) ; Statement: $r6 = interfaceinvoke $r4.<javax.persistence.metamodel.Type: javax.persistence.metamodel.Type$PersistenceType getPersistenceType()>() 
(assert true)
(define-const var1168 Bool (equals/1590667255 var951 (cast-from-var825-to-var2437 var1657))) ; Statement: $z0 = virtualinvoke $r5.<javax.persistence.metamodel.Type$PersistenceType: boolean equals(java.lang.Object)>($r6) 
 ; Statement: if $z0 == 0 goto $r30 = <javax.persistence.metamodel.Bindable$BindableType: javax.persistence.metamodel.Bindable$BindableType SINGULAR_ATTRIBUTE> 
(assert (not (= (ite var1168 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2120 var2924 var2924-ENTITY_TYPE) ; Statement: $r30 = <javax.persistence.metamodel.Bindable$BindableType: javax.persistence.metamodel.Bindable$BindableType ENTITY_TYPE> 
 ; Statement: goto [?= r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: javax.persistence.metamodel.Bindable$BindableType jpaBindableType> = $r30] 
(assert true) ; Non Conditional
(declare-const var2292!5 var3140)
(assert (not (= var2292!5 null-var3140)))
(assert (= (jpaBindableType/1686634812 var2292!5) var2120)) ; Statement: r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: javax.persistence.metamodel.Bindable$BindableType jpaBindableType> = $r30 
(assert true)
(define-const var1839 String (determineRole/-1363553982 var2292!5 var946)) ; Statement: $r28 = specialinvoke r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: java.lang.String determineRole(javax.persistence.metamodel.MapAttribute)>(r1) 
(assert true)
(define-const var3627 var3255 (getEntityManagerFactory/-1647005728 var44)) ; Statement: $r8 = virtualinvoke r7.<org.hibernate.query.criteria.internal.CriteriaBuilderImpl: org.hibernate.internal.SessionFactoryImpl getEntityManagerFactory()>() 
(assert true)
(define-const var1614 var3541 (getSessionFactory/1154349126 (cast-from-var3255-to-var920 var3627))) ; Statement: $r29 = virtualinvoke $r8.<org.hibernate.internal.SessionFactoryImpl: org.hibernate.engine.spi.SessionFactoryImplementor getSessionFactory()>() 
(define-const var3871 var2664 (var3541_getCollectionPersister/1293184455 var1614 var1839)) ; Statement: $r9 = interfaceinvoke $r29.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.persister.collection.CollectionPersister getCollectionPersister(java.lang.String)>($r28) 
(declare-const var2292!6 var3140)
(assert (not (= var2292!6 null-var3140)))
(assert (= (mapPersister/1686634812 var2292!6) var3871)) ; Statement: r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: org.hibernate.persister.collection.CollectionPersister mapPersister> = $r9 
(define-const var1678 var2664 (mapPersister/1686634812 var2292!6)) ; Statement: $r10 = r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: org.hibernate.persister.collection.CollectionPersister mapPersister> 
 ; Statement: if $r10 != null goto $r11 = r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: org.hibernate.persister.collection.CollectionPersister mapPersister> 
(assert (not (not (= var1678 null-var2664)))) ; Negate: Cond: $r10 != null  
(define-const var3281 var1426 var1426-init) ; Statement: $r22 = new java.lang.IllegalStateException 
(define-const var3271 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3271)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3271!1 String)
(assert (= var3271!1 ""))
(assert true)
(define-const var3961 String (append/672562846 var3271!1 "Could not locate collection persister [")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not locate collection persister [") 
(declare-const var3271!2 String)
(assert (= var3271!2 (str.++ var3271!1 "Could not locate collection persister [")))
(assert true)
(define-const var3783 String (append/672562846 var3961 var1839)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var3961!1 String)
(assert (= var3961!1 (str.++ var3961 var1839)))
(assert true)
(define-const var3409 String (append/672562846 var3783 "]")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3783!1 String)
(assert (= var3783!1 (str.++ var3783 "]")))
(assert true)
(define-const var146 String (toString/-2075883882 var3409)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3281 var146)) ; Statement: specialinvoke $r22.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r27) 

(declare-const var3281!1 var1426)
(declare-const var146!1 String)
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3140-to-var2437=([org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute], java.lang.Object), attribute/1686634812=([org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute], javax.persistence.metamodel.MapAttribute), var27_getKeyType/-1782130952=([javax.persistence.metamodel.MapAttribute], javax.persistence.metamodel.Type), jpaType/1686634812=([org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute], javax.persistence.metamodel.Type), var27_getKeyJavaType/347819913=([javax.persistence.metamodel.MapAttribute], java.lang.Class), jpaBinableJavaType/1686634812=([org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute], java.lang.Class), var918_getPersistenceType/1979733063=([javax.persistence.metamodel.Type], javax.persistence.metamodel.Type$PersistenceType), equals/1590667255=([javax.persistence.metamodel.Type$PersistenceType, java.lang.Object], boolean), cast-from-var825-to-var2437=([javax.persistence.metamodel.Type$PersistenceType], java.lang.Object), jpaBindableType/1686634812=([org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute], javax.persistence.metamodel.Bindable$BindableType), determineRole/-1363553982=([org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute, javax.persistence.metamodel.MapAttribute], java.lang.String), getEntityManagerFactory/-1647005728=([org.hibernate.query.criteria.internal.CriteriaBuilderImpl], org.hibernate.internal.SessionFactoryImpl), getSessionFactory/1154349126=([org.hibernate.jpa.HibernateEntityManagerFactory], org.hibernate.engine.spi.SessionFactoryImplementor), cast-from-var3255-to-var920=([org.hibernate.internal.SessionFactoryImpl], org.hibernate.jpa.HibernateEntityManagerFactory), var3541_getCollectionPersister/1293184455=([org.hibernate.engine.spi.SessionFactoryImplementor, java.lang.String], org.hibernate.persister.collection.CollectionPersister), mapPersister/1686634812=([org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute], org.hibernate.persister.collection.CollectionPersister), var1426-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3140=org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute, var2292=r0, var3371=org.hibernate.query.criteria.internal.CriteriaBuilderImpl, var44=r7, var27=javax.persistence.metamodel.MapAttribute, var946=r1, var2437=java.lang.Object, var918=javax.persistence.metamodel.Type, var1457=$r2, var2209=$r3, var825=javax.persistence.metamodel.Type$PersistenceType, var951=$r5, var1719=$r4, var1657=$r6, var1168=$z0, var2924=javax.persistence.metamodel.Bindable$BindableType, var2120=$r30, var1839=$r28, var3255=org.hibernate.internal.SessionFactoryImpl, var3627=$r8, var3541=org.hibernate.engine.spi.SessionFactoryImplementor, var920=org.hibernate.jpa.HibernateEntityManagerFactory, var1614=$r29, var2664=org.hibernate.persister.collection.CollectionPersister, var3871=$r9, var1678=$r10, var1426=java.lang.IllegalStateException, var3281=$r22, var3271=$r23, var3961=$r24, var3783=$r25, var3409=$r26, var146=$r27}
; {org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute=var3140, r0=var2292, org.hibernate.query.criteria.internal.CriteriaBuilderImpl=var3371, r7=var44, javax.persistence.metamodel.MapAttribute=var27, r1=var946, java.lang.Object=var2437, javax.persistence.metamodel.Type=var918, $r2=var1457, $r3=var2209, javax.persistence.metamodel.Type$PersistenceType=var825, $r5=var951, $r4=var1719, $r6=var1657, $z0=var1168, javax.persistence.metamodel.Bindable$BindableType=var2924, $r30=var2120, $r28=var1839, org.hibernate.internal.SessionFactoryImpl=var3255, $r8=var3627, org.hibernate.engine.spi.SessionFactoryImplementor=var3541, org.hibernate.jpa.HibernateEntityManagerFactory=var920, $r29=var1614, org.hibernate.persister.collection.CollectionPersister=var2664, $r9=var3871, $r10=var1678, java.lang.IllegalStateException=var1426, $r22=var3281, $r23=var3271, $r24=var3961, $r25=var3783, $r26=var3409, $r27=var146}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute;	r7 := @parameter0: org.hibernate.query.criteria.internal.CriteriaBuilderImpl;	r1 := @parameter1: javax.persistence.metamodel.MapAttribute;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: javax.persistence.metamodel.MapAttribute attribute> = r1;	$r2 = interfaceinvoke r1.<javax.persistence.metamodel.MapAttribute: javax.persistence.metamodel.Type getKeyType()>();	r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: javax.persistence.metamodel.Type jpaType> = $r2;	$r3 = interfaceinvoke r1.<javax.persistence.metamodel.MapAttribute: java.lang.Class getKeyJavaType()>();	r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: java.lang.Class jpaBinableJavaType> = $r3;	$r5 = <javax.persistence.metamodel.Type$PersistenceType: javax.persistence.metamodel.Type$PersistenceType ENTITY>;	$r4 = r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: javax.persistence.metamodel.Type jpaType>;	$r6 = interfaceinvoke $r4.<javax.persistence.metamodel.Type: javax.persistence.metamodel.Type$PersistenceType getPersistenceType()>();	$z0 = virtualinvoke $r5.<javax.persistence.metamodel.Type$PersistenceType: boolean equals(java.lang.Object)>($r6);	if $z0 == 0 goto $r30 = <javax.persistence.metamodel.Bindable$BindableType: javax.persistence.metamodel.Bindable$BindableType SINGULAR_ATTRIBUTE>;	$r30 = <javax.persistence.metamodel.Bindable$BindableType: javax.persistence.metamodel.Bindable$BindableType ENTITY_TYPE>;	goto [?= r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: javax.persistence.metamodel.Bindable$BindableType jpaBindableType> = $r30];	r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: javax.persistence.metamodel.Bindable$BindableType jpaBindableType> = $r30;	$r28 = specialinvoke r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: java.lang.String determineRole(javax.persistence.metamodel.MapAttribute)>(r1);	$r8 = virtualinvoke r7.<org.hibernate.query.criteria.internal.CriteriaBuilderImpl: org.hibernate.internal.SessionFactoryImpl getEntityManagerFactory()>();	$r29 = virtualinvoke $r8.<org.hibernate.internal.SessionFactoryImpl: org.hibernate.engine.spi.SessionFactoryImplementor getSessionFactory()>();	$r9 = interfaceinvoke $r29.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.persister.collection.CollectionPersister getCollectionPersister(java.lang.String)>($r28);	r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: org.hibernate.persister.collection.CollectionPersister mapPersister> = $r9;	$r10 = r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: org.hibernate.persister.collection.CollectionPersister mapPersister>;	if $r10 != null goto $r11 = r0.<org.hibernate.query.criteria.internal.path.MapKeyHelpers$MapKeyAttribute: org.hibernate.persister.collection.CollectionPersister mapPersister>;	$r22 = new java.lang.IllegalStateException;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not locate collection persister [");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r27);	throw $r22
;block_num 4