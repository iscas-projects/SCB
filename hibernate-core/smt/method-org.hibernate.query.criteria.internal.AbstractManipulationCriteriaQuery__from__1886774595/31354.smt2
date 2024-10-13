(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2908 0)
(declare-sort var2440 0)
(declare-sort var3437 0)
(declare-sort var1063 0)
(declare-sort var1122 0)
(declare-sort var1431 0)
(declare-sort var2875 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun criteriaBuilder/-1090410980 (var2908) var2440)
(declare-fun getEntityManagerFactory/-1647005728 (var2440) var3437)
(declare-fun getMetamodel/1307526412 (var3437) var1063)
(declare-fun var1063_entity/1887793415 (var1063 ClassObject) var1122)
(declare-fun var1431-init () var1431)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var2875) String)
(declare-fun cast-from-ClassObject-to-var2875 (ClassObject) var2875)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1431 String) void)
(declare-const null-var2908 var2908)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1122 var1122)
(declare-const var1884 var2908) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery 
(assert (not (= var1884 null-var2908)))
(declare-const var2789 ClassObject) ; Statement: r3 := @parameter0: java.lang.Class 
(assert (not (= var2789 null-ClassObject)))
(define-const var3356 var2440 (criteriaBuilder/-1090410980 var1884)) ; Statement: $r1 = r0.<org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery: org.hibernate.query.criteria.internal.CriteriaBuilderImpl criteriaBuilder> 
(assert true)
(define-const var1589 var3437 (getEntityManagerFactory/-1647005728 var3356)) ; Statement: $r2 = virtualinvoke $r1.<org.hibernate.query.criteria.internal.CriteriaBuilderImpl: org.hibernate.internal.SessionFactoryImpl getEntityManagerFactory()>() 
(assert true)
(define-const var1296 var1063 (getMetamodel/1307526412 var1589)) ; Statement: $r4 = virtualinvoke $r2.<org.hibernate.internal.SessionFactoryImpl: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>() 
(define-const var250 var1122 (var1063_entity/1887793415 var1296 var2789)) ; Statement: r5 = interfaceinvoke $r4.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor entity(java.lang.Class)>(r3) 
 ; Statement: if r5 != null goto $r6 = virtualinvoke r0.<org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery: javax.persistence.criteria.Root 'from'(javax.persistence.metamodel.EntityType)>(r5) 
(assert (not (not (= var250 null-var1122)))) ; Negate: Cond: r5 != null  
(define-const var3548 var1431 var1431-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var2983 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2983)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2983!1 String)
(assert (= var2983!1 ""))
(assert true)
(define-const var580 String (append/-1031950772 var2983!1 (cast-from-ClassObject-to-var2875 var2789))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var2983!2 String)
(assert (str.prefixof var2983!1 var2983!2))
(assert true)
(define-const var1227 String (append/672562846 var580 " is not an entity")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not an entity") 
(declare-const var580!1 String)
(assert (= var580!1 (str.++ var580 " is not an entity")))
(assert true)
(define-const var1097 String (toString/-2075883882 var1227)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3548 var1097)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var3548!1 var1431)
(declare-const var1097!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {criteriaBuilder/-1090410980=([org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery], org.hibernate.query.criteria.internal.CriteriaBuilderImpl), getEntityManagerFactory/-1647005728=([org.hibernate.query.criteria.internal.CriteriaBuilderImpl], org.hibernate.internal.SessionFactoryImpl), getMetamodel/1307526412=([org.hibernate.internal.SessionFactoryImpl], org.hibernate.metamodel.spi.MetamodelImplementor), var1063_entity/1887793415=([org.hibernate.metamodel.spi.MetamodelImplementor, java.lang.Class], org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor), var1431-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2875=([java.lang.Class], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2908=org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery, var1884=r0, var2789=r3, var2440=org.hibernate.query.criteria.internal.CriteriaBuilderImpl, var3356=$r1, var3437=org.hibernate.internal.SessionFactoryImpl, var1589=$r2, var1063=org.hibernate.metamodel.spi.MetamodelImplementor, var1296=$r4, var1122=org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor, var250=r5, var1431=java.lang.IllegalArgumentException, var3548=$r7, var2983=$r8, var2875=java.lang.Object, var580=$r9, var1227=$r10, var1097=$r11}
; {org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery=var2908, r0=var1884, r3=var2789, org.hibernate.query.criteria.internal.CriteriaBuilderImpl=var2440, $r1=var3356, org.hibernate.internal.SessionFactoryImpl=var3437, $r2=var1589, org.hibernate.metamodel.spi.MetamodelImplementor=var1063, $r4=var1296, org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor=var1122, r5=var250, java.lang.IllegalArgumentException=var1431, $r7=var3548, $r8=var2983, java.lang.Object=var2875, $r9=var580, $r10=var1227, $r11=var1097}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery;	r3 := @parameter0: java.lang.Class;	$r1 = r0.<org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery: org.hibernate.query.criteria.internal.CriteriaBuilderImpl criteriaBuilder>;	$r2 = virtualinvoke $r1.<org.hibernate.query.criteria.internal.CriteriaBuilderImpl: org.hibernate.internal.SessionFactoryImpl getEntityManagerFactory()>();	$r4 = virtualinvoke $r2.<org.hibernate.internal.SessionFactoryImpl: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>();	r5 = interfaceinvoke $r4.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor entity(java.lang.Class)>(r3);	if r5 != null goto $r6 = virtualinvoke r0.<org.hibernate.query.criteria.internal.AbstractManipulationCriteriaQuery: javax.persistence.criteria.Root 'from'(javax.persistence.metamodel.EntityType)>(r5);	$r7 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not an entity");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r7
;block_num 2