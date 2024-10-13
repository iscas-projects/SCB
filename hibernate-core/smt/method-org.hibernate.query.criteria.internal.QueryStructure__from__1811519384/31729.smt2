(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var395 0)
(declare-sort var1764 0)
(declare-sort var1349 0)
(declare-sort var2410 0)
(declare-sort var1542 0)
(declare-sort var3747 0)
(declare-sort var3738 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun criteriaBuilder/-597068103 (var395) var1764)
(declare-fun getEntityManagerFactory/-1647005728 (var1764) var1349)
(declare-fun getMetamodel/1307526412 (var1349) var2410)
(declare-fun var2410_entity/1887793415 (var2410 ClassObject) var1542)
(declare-fun var3747-init () var3747)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var3738) String)
(declare-fun cast-from-ClassObject-to-var3738 (ClassObject) var3738)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3747 String) void)
(declare-const null-var395 var395)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1542 var1542)
(declare-const var3929 var395) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.QueryStructure 
(assert (not (= var3929 null-var395)))
(declare-const var3713 ClassObject) ; Statement: r3 := @parameter0: java.lang.Class 
(assert (not (= var3713 null-ClassObject)))
(define-const var2683 var1764 (criteriaBuilder/-597068103 var3929)) ; Statement: $r1 = r0.<org.hibernate.query.criteria.internal.QueryStructure: org.hibernate.query.criteria.internal.CriteriaBuilderImpl criteriaBuilder> 
(assert true)
(define-const var1594 var1349 (getEntityManagerFactory/-1647005728 var2683)) ; Statement: $r2 = virtualinvoke $r1.<org.hibernate.query.criteria.internal.CriteriaBuilderImpl: org.hibernate.internal.SessionFactoryImpl getEntityManagerFactory()>() 
(assert true)
(define-const var605 var2410 (getMetamodel/1307526412 var1594)) ; Statement: $r4 = virtualinvoke $r2.<org.hibernate.internal.SessionFactoryImpl: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>() 
(define-const var1333 var1542 (var2410_entity/1887793415 var605 var3713)) ; Statement: r5 = interfaceinvoke $r4.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor entity(java.lang.Class)>(r3) 
 ; Statement: if r5 != null goto $r6 = virtualinvoke r0.<org.hibernate.query.criteria.internal.QueryStructure: javax.persistence.criteria.Root 'from'(javax.persistence.metamodel.EntityType)>(r5) 
(assert (not (not (= var1333 null-var1542)))) ; Negate: Cond: r5 != null  
(define-const var3299 var3747 var3747-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var1687 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1687)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1687!1 String)
(assert (= var1687!1 ""))
(assert true)
(define-const var2519 String (append/-1031950772 var1687!1 (cast-from-ClassObject-to-var3738 var3713))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var1687!2 String)
(assert (str.prefixof var1687!1 var1687!2))
(assert true)
(define-const var2073 String (append/672562846 var2519 " is not an entity")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not an entity") 
(declare-const var2519!1 String)
(assert (= var2519!1 (str.++ var2519 " is not an entity")))
(assert true)
(define-const var3828 String (toString/-2075883882 var2073)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3299 var3828)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var3299!1 var3747)
(declare-const var3828!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {criteriaBuilder/-597068103=([org.hibernate.query.criteria.internal.QueryStructure], org.hibernate.query.criteria.internal.CriteriaBuilderImpl), getEntityManagerFactory/-1647005728=([org.hibernate.query.criteria.internal.CriteriaBuilderImpl], org.hibernate.internal.SessionFactoryImpl), getMetamodel/1307526412=([org.hibernate.internal.SessionFactoryImpl], org.hibernate.metamodel.spi.MetamodelImplementor), var2410_entity/1887793415=([org.hibernate.metamodel.spi.MetamodelImplementor, java.lang.Class], org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor), var3747-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3738=([java.lang.Class], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var395=org.hibernate.query.criteria.internal.QueryStructure, var3929=r0, var3713=r3, var1764=org.hibernate.query.criteria.internal.CriteriaBuilderImpl, var2683=$r1, var1349=org.hibernate.internal.SessionFactoryImpl, var1594=$r2, var2410=org.hibernate.metamodel.spi.MetamodelImplementor, var605=$r4, var1542=org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor, var1333=r5, var3747=java.lang.IllegalArgumentException, var3299=$r7, var1687=$r8, var3738=java.lang.Object, var2519=$r9, var2073=$r10, var3828=$r11}
; {org.hibernate.query.criteria.internal.QueryStructure=var395, r0=var3929, r3=var3713, org.hibernate.query.criteria.internal.CriteriaBuilderImpl=var1764, $r1=var2683, org.hibernate.internal.SessionFactoryImpl=var1349, $r2=var1594, org.hibernate.metamodel.spi.MetamodelImplementor=var2410, $r4=var605, org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor=var1542, r5=var1333, java.lang.IllegalArgumentException=var3747, $r7=var3299, $r8=var1687, java.lang.Object=var3738, $r9=var2519, $r10=var2073, $r11=var3828}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.criteria.internal.QueryStructure;	r3 := @parameter0: java.lang.Class;	$r1 = r0.<org.hibernate.query.criteria.internal.QueryStructure: org.hibernate.query.criteria.internal.CriteriaBuilderImpl criteriaBuilder>;	$r2 = virtualinvoke $r1.<org.hibernate.query.criteria.internal.CriteriaBuilderImpl: org.hibernate.internal.SessionFactoryImpl getEntityManagerFactory()>();	$r4 = virtualinvoke $r2.<org.hibernate.internal.SessionFactoryImpl: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>();	r5 = interfaceinvoke $r4.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor entity(java.lang.Class)>(r3);	if r5 != null goto $r6 = virtualinvoke r0.<org.hibernate.query.criteria.internal.QueryStructure: javax.persistence.criteria.Root 'from'(javax.persistence.metamodel.EntityType)>(r5);	$r7 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not an entity");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r7
;block_num 2