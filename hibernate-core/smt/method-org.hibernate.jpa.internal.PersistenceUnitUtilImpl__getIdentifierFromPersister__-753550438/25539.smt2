(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var375 0)
(declare-sort var2987 0)
(declare-sort var2789 0)
(declare-sort var1457 0)
(declare-sort var3127 0)
(declare-sort var658 0)
(declare-sort var2640 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2789_getClass/-686593284 (var2987) ClassObject)
(declare-fun sessionFactory/-1051281683 (var375) var1457)
(declare-fun var1457_getMetamodel/1171873935 (var1457) var3127)
(declare-fun var3127_entityPersister/858539723 (var3127 ClassObject) var658)
(declare-fun var2640-init () var2640)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2640 String) void)
(declare-const null-var375 var375)
(declare-const null-var2987 var2987)
(declare-const null-var658 var658)
(declare-const var3680 var375) ; Statement: r2 := @this: org.hibernate.jpa.internal.PersistenceUnitUtilImpl 
(assert (not (= var3680 null-var375)))
(declare-const var3794 var2987) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3794 null-var2987)))
(define-const var382 ClassObject (var2789_getClass/-686593284 var3794)) ; Statement: r1 = staticinvoke <org.hibernate.Hibernate: java.lang.Class getClass(java.lang.Object)>(r0) 
(define-const var1861 var1457 (sessionFactory/-1051281683 var3680)) ; Statement: $r3 = r2.<org.hibernate.jpa.internal.PersistenceUnitUtilImpl: org.hibernate.engine.spi.SessionFactoryImplementor sessionFactory> 
(define-const var1373 var3127 (var1457_getMetamodel/1171873935 var1861)) ; Statement: $r4 = interfaceinvoke $r3.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>() 
(define-const var59 var658 (var3127_entityPersister/858539723 var1373 var382)) ; Statement: r5 = interfaceinvoke $r4.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.Class)>(r1) 
 ; Statement: if r5 != null goto (branch) 
(assert (not (not (= var59 null-var658)))) ; Negate: Cond: r5 != null  
(define-const var436 var2640 var2640-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var3025 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3025)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3025!1 String)
(assert (= var3025!1 ""))
(assert true)
(define-const var3054 String (getName/-1958580599 var382)) ; Statement: $r9 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var975 String (append/672562846 var3025!1 var3054)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3025!2 String)
(assert (= var3025!2 (str.++ var3025!1 var3054)))
(assert true)
(define-const var2015 String (append/672562846 var975 " is not an entity")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not an entity") 
(declare-const var975!1 String)
(assert (= var975!1 (str.++ var975 " is not an entity")))
(assert true)
(define-const var3311 String (toString/-2075883882 var2015)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var436 var3311)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12) 

(declare-const var436!1 var2640)
(declare-const var3311!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var2789_getClass/-686593284=([java.lang.Object], java.lang.Class), sessionFactory/-1051281683=([org.hibernate.jpa.internal.PersistenceUnitUtilImpl], org.hibernate.engine.spi.SessionFactoryImplementor), var1457_getMetamodel/1171873935=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.metamodel.spi.MetamodelImplementor), var3127_entityPersister/858539723=([org.hibernate.metamodel.spi.MetamodelImplementor, java.lang.Class], org.hibernate.persister.entity.EntityPersister), var2640-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var375=org.hibernate.jpa.internal.PersistenceUnitUtilImpl, var3680=r2, var2987=java.lang.Object, var3794=r0, var2789=org.hibernate.Hibernate, var382=r1, var1457=org.hibernate.engine.spi.SessionFactoryImplementor, var1861=$r3, var3127=org.hibernate.metamodel.spi.MetamodelImplementor, var1373=$r4, var658=org.hibernate.persister.entity.EntityPersister, var59=r5, var2640=java.lang.IllegalArgumentException, var436=$r7, var3025=$r8, var3054=$r9, var975=$r10, var2015=$r11, var3311=$r12}
; {org.hibernate.jpa.internal.PersistenceUnitUtilImpl=var375, r2=var3680, java.lang.Object=var2987, r0=var3794, org.hibernate.Hibernate=var2789, r1=var382, org.hibernate.engine.spi.SessionFactoryImplementor=var1457, $r3=var1861, org.hibernate.metamodel.spi.MetamodelImplementor=var3127, $r4=var1373, org.hibernate.persister.entity.EntityPersister=var658, r5=var59, java.lang.IllegalArgumentException=var2640, $r7=var436, $r8=var3025, $r9=var3054, $r10=var975, $r11=var2015, $r12=var3311}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.jpa.internal.PersistenceUnitUtilImpl;	r0 := @parameter0: java.lang.Object;	r1 = staticinvoke <org.hibernate.Hibernate: java.lang.Class getClass(java.lang.Object)>(r0);	$r3 = r2.<org.hibernate.jpa.internal.PersistenceUnitUtilImpl: org.hibernate.engine.spi.SessionFactoryImplementor sessionFactory>;	$r4 = interfaceinvoke $r3.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>();	r5 = interfaceinvoke $r4.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.Class)>(r1);	if r5 != null goto (branch);	$r7 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not an entity");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12);	throw $r7
;block_num 2