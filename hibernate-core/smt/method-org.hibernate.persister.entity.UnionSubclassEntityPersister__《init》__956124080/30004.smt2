(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2151 0)
(declare-sort var1050 0)
(declare-sort var2382 0)
(declare-sort var395 0)
(declare-sort var2880 0)
(declare-sort var3685 0)
(declare-sort var2406 0)
(declare-sort var1564 0)
(declare-sort var1376 0)
(declare-sort var1815 0)
(declare-sort var2948 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/16112291 (var3685 var1050 var2382 var395 var2880) void)
(declare-fun cast-from-var2151-to-var3685 (var2151) var3685)
(declare-fun var2406-init () var2406)
(declare-fun <init>/-201242697 (var2406) void)
(declare-fun cast-from-var2406-to-var1564 (var2406) var1564)
(declare-fun subclassByDiscriminatorValue/932964719 (var2151) var1564)
(declare-fun getIdentifierGenerator/-1119034452 (var3685) var1376)
(declare-fun var1815-init () var1815)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getEntityName/498345966 (var3685) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var1815 String) void)
(declare-fun cast-from-var1815-to-var2948 (var1815) var2948)
(declare-const null-var2151 var2151)
(declare-const null-var1050 var1050)
(declare-const null-var2382 var2382)
(declare-const null-var395 var395)
(declare-const null-var2880 var2880)
(declare-const var1348 var2151) ; Statement: r0 := @this: org.hibernate.persister.entity.UnionSubclassEntityPersister 
(assert (not (= var1348 null-var2151)))
(declare-const var2479 var1050) ; Statement: r1 := @parameter0: org.hibernate.mapping.PersistentClass 
(assert (not (= var2479 null-var1050)))
(declare-const var1700 var2382) ; Statement: r2 := @parameter1: org.hibernate.cache.spi.access.EntityDataAccess 
(assert (not (= var1700 null-var2382)))
(declare-const var849 var395) ; Statement: r3 := @parameter2: org.hibernate.cache.spi.access.NaturalIdDataAccess 
(assert (not (= var849 null-var395)))
(declare-const var1326 var2880) ; Statement: r4 := @parameter3: org.hibernate.persister.spi.PersisterCreationContext 
(assert (not (= var1326 null-var2880)))
(assert true)
;(assert (<init>/16112291 (cast-from-var2151-to-var3685 var1348) var2479 var1700 var849 var1326)) ; Statement: specialinvoke r0.<org.hibernate.persister.entity.AbstractEntityPersister: void <init>(org.hibernate.mapping.PersistentClass,org.hibernate.cache.spi.access.EntityDataAccess,org.hibernate.cache.spi.access.NaturalIdDataAccess,org.hibernate.persister.spi.PersisterCreationContext)>(r1, r2, r3, r4) 

(declare-const var1348!1 var2151)
(declare-const var2479!1 var1050)
(declare-const var1700!1 var2382)
(declare-const var849!1 var395)
(declare-const var1326!1 var2880)
(define-const var2115 var2406 var2406-init) ; Statement: $r88 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var2115)) ; Statement: specialinvoke $r88.<java.util.HashMap: void <init>()>() 

(declare-const var2115!1 var2406)
(declare-const var1348!2 var2151)
(assert (not (= var1348!2 null-var2151)))
(assert (= (subclassByDiscriminatorValue/932964719 var1348!2) (cast-from-var2406-to-var1564 var2115!1))) ; Statement: r0.<org.hibernate.persister.entity.UnionSubclassEntityPersister: java.util.Map subclassByDiscriminatorValue> = $r88 
(assert true)
(define-const var1805 var1376 (getIdentifierGenerator/-1119034452 (cast-from-var2151-to-var3685 var1348!2))) ; Statement: $r6 = virtualinvoke r0.<org.hibernate.persister.entity.UnionSubclassEntityPersister: org.hibernate.id.IdentifierGenerator getIdentifierGenerator()>() 
(define-const var3641 Bool true) ; Statement: $z0 = $r6 instanceof org.hibernate.id.IdentityGenerator 
 ; Statement: if $z0 == 0 goto r7 = interfaceinvoke r4.<org.hibernate.persister.spi.PersisterCreationContext: org.hibernate.engine.spi.SessionFactoryImplementor getSessionFactory()>() 
(assert (not (= (ite var3641 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3964 var1815 var1815-init) ; Statement: $r90 = new org.hibernate.MappingException 
(define-const var2872 String String-init) ; Statement: $r89 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2872)) ; Statement: specialinvoke $r89.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2872!1 String)
(assert (= var2872!1 ""))
(assert true)
(define-const var1976 String (append/672562846 var2872!1 "Cannot use identity column key generation with <union-subclass> mapping for: ")) ; Statement: $r60 = virtualinvoke $r89.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot use identity column key generation with <union-subclass> mapping for: ") 
(declare-const var2872!2 String)
(assert (= var2872!2 (str.++ var2872!1 "Cannot use identity column key generation with <union-subclass> mapping for: ")))
(assert true)
(define-const var814 String (getEntityName/498345966 (cast-from-var2151-to-var3685 var1348!2))) ; Statement: $r59 = virtualinvoke r0.<org.hibernate.persister.entity.UnionSubclassEntityPersister: java.lang.String getEntityName()>() 
(assert true)
(define-const var2208 String (append/672562846 var1976 var814)) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r59) 
(declare-const var1976!1 String)
(assert (= var1976!1 (str.++ var1976 var814)))
(assert true)
(define-const var3266 String (toString/-2075883882 var2208)) ; Statement: $r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var3964 var3266)) ; Statement: specialinvoke $r90.<org.hibernate.MappingException: void <init>(java.lang.String)>($r62) 

(declare-const var3964!1 var1815)
(declare-const var3266!1 String)
(define-const var837 var2948 (cast-from-var1815-to-var2948 var3964!1)) ; Statement: $r94 = (java.lang.Throwable) $r90 
 ; Statement: throw $r94 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/16112291=([org.hibernate.persister.entity.AbstractEntityPersister, org.hibernate.mapping.PersistentClass, org.hibernate.cache.spi.access.EntityDataAccess, org.hibernate.cache.spi.access.NaturalIdDataAccess, org.hibernate.persister.spi.PersisterCreationContext], void), cast-from-var2151-to-var3685=([org.hibernate.persister.entity.UnionSubclassEntityPersister], org.hibernate.persister.entity.AbstractEntityPersister), var2406-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var2406-to-var1564=([java.util.HashMap], java.util.Map), subclassByDiscriminatorValue/932964719=([org.hibernate.persister.entity.UnionSubclassEntityPersister], java.util.Map), getIdentifierGenerator/-1119034452=([org.hibernate.persister.entity.AbstractEntityPersister], org.hibernate.id.IdentifierGenerator), var1815-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getEntityName/498345966=([org.hibernate.persister.entity.AbstractEntityPersister], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var1815-to-var2948=([org.hibernate.MappingException], java.lang.Throwable)}
; {var2151=org.hibernate.persister.entity.UnionSubclassEntityPersister, var1348=r0, var1050=org.hibernate.mapping.PersistentClass, var2479=r1, var2382=org.hibernate.cache.spi.access.EntityDataAccess, var1700=r2, var395=org.hibernate.cache.spi.access.NaturalIdDataAccess, var849=r3, var2880=org.hibernate.persister.spi.PersisterCreationContext, var1326=r4, var3685=org.hibernate.persister.entity.AbstractEntityPersister, var2406=java.util.HashMap, var2115=$r88, var1564=java.util.Map, var1376=org.hibernate.id.IdentifierGenerator, var1805=$r6, var3641=$z0, var1815=org.hibernate.MappingException, var3964=$r90, var2872=$r89, var1976=$r60, var814=$r59, var2208=$r61, var3266=$r62, var2948=java.lang.Throwable, var837=$r94}
; {org.hibernate.persister.entity.UnionSubclassEntityPersister=var2151, r0=var1348, org.hibernate.mapping.PersistentClass=var1050, r1=var2479, org.hibernate.cache.spi.access.EntityDataAccess=var2382, r2=var1700, org.hibernate.cache.spi.access.NaturalIdDataAccess=var395, r3=var849, org.hibernate.persister.spi.PersisterCreationContext=var2880, r4=var1326, org.hibernate.persister.entity.AbstractEntityPersister=var3685, java.util.HashMap=var2406, $r88=var2115, java.util.Map=var1564, org.hibernate.id.IdentifierGenerator=var1376, $r6=var1805, $z0=var3641, org.hibernate.MappingException=var1815, $r90=var3964, $r89=var2872, $r60=var1976, $r59=var814, $r61=var2208, $r62=var3266, java.lang.Throwable=var2948, $r94=var837}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.persister.entity.UnionSubclassEntityPersister;	r1 := @parameter0: org.hibernate.mapping.PersistentClass;	r2 := @parameter1: org.hibernate.cache.spi.access.EntityDataAccess;	r3 := @parameter2: org.hibernate.cache.spi.access.NaturalIdDataAccess;	r4 := @parameter3: org.hibernate.persister.spi.PersisterCreationContext;	specialinvoke r0.<org.hibernate.persister.entity.AbstractEntityPersister: void <init>(org.hibernate.mapping.PersistentClass,org.hibernate.cache.spi.access.EntityDataAccess,org.hibernate.cache.spi.access.NaturalIdDataAccess,org.hibernate.persister.spi.PersisterCreationContext)>(r1, r2, r3, r4);	$r88 = new java.util.HashMap;	specialinvoke $r88.<java.util.HashMap: void <init>()>();	r0.<org.hibernate.persister.entity.UnionSubclassEntityPersister: java.util.Map subclassByDiscriminatorValue> = $r88;	$r6 = virtualinvoke r0.<org.hibernate.persister.entity.UnionSubclassEntityPersister: org.hibernate.id.IdentifierGenerator getIdentifierGenerator()>();	$z0 = $r6 instanceof org.hibernate.id.IdentityGenerator;	if $z0 == 0 goto r7 = interfaceinvoke r4.<org.hibernate.persister.spi.PersisterCreationContext: org.hibernate.engine.spi.SessionFactoryImplementor getSessionFactory()>();	$r90 = new org.hibernate.MappingException;	$r89 = new java.lang.StringBuilder;	specialinvoke $r89.<java.lang.StringBuilder: void <init>()>();	$r60 = virtualinvoke $r89.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot use identity column key generation with <union-subclass> mapping for: ");	$r59 = virtualinvoke r0.<org.hibernate.persister.entity.UnionSubclassEntityPersister: java.lang.String getEntityName()>();	$r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r59);	$r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r90.<org.hibernate.MappingException: void <init>(java.lang.String)>($r62);	$r94 = (java.lang.Throwable) $r90;	throw $r94
;block_num 2