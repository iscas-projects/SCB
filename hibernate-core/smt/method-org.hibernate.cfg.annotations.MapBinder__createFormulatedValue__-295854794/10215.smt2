(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var536 0)
(declare-sort var3822 0)
(declare-sort var3186 0)
(declare-sort var2021 0)
(declare-sort var968 0)
(declare-sort var2864 0)
(declare-sort var1449 0)
(declare-sort var634 0)
(declare-sort var308 0)
(declare-sort var661 0)
(declare-sort var815 0)
(declare-sort var2835 0)
(declare-sort var3976 0)
(declare-sort var1748 0)
(declare-sort var2765 0)
(declare-sort var3025 0)
(declare-sort var3841 0)
(declare-sort var3098 0)
(declare-sort var1090 0)
(declare-sort var2476 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var815!class ClassObject)
(declare-const var2835!class ClassObject)
(declare-const String!class ClassObject)
(declare-fun getElement/1419751324 (var3186) var3822)
(declare-fun var2864_getBootstrapContext/734182883 (var2864) var1449)
(declare-fun var1449_getServiceRegistry/2003421144 (var1449) var634)
(declare-fun var661_getService/-972330729 (var661 ClassObject) var308)
(declare-fun cast-from-var634-to-var661 (var634) var661)
(declare-fun cast-from-var308-to-var815 (var308) var815)
(declare-fun cast-from-var308-to-var2835 (var308) var2835)
(declare-fun var2835_getJdbcEnvironment/1999269849 (var2835) var3976)
(declare-fun var2864_getMetadataCollector/-129185252 (var2864) var1748)
(declare-fun var3025_getDatabase/193995574 (var3025) var2765)
(declare-fun cast-from-var1748-to-var3025 (var1748) var3025)
(declare-fun var815_getSetting/617429165 (var815 String ClassObject var3841) var3841)
(declare-fun cast-from-var3841-to-String (var3841) String)
(declare-fun var1090_fromExplicit/1802843349 (var3976 var2765 String String) var3098)
(declare-fun equals/-1650223740 (var3841 var3841) Bool)
(declare-fun cast-from-var968-to-var3841 (var968) var3841)
(declare-fun var2476-init () var2476)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3841) ClassObject)
(declare-fun cast-from-var3822-to-var3841 (var3822) var3841)
(declare-fun append/-1031950772 (String var3841) String)
(declare-fun cast-from-ClassObject-to-var3841 (ClassObject) var3841)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var2476 String) void)
(declare-const null-var536 var536)
(declare-const null-var3822 var3822)
(declare-const null-var3186 var3186)
(declare-const null-String String)
(declare-const null-var968 var968)
(declare-const null-var2864 var2864)
(declare-const null-var3841 var3841)
(declare-const var949 var536) ; Statement: r27 := @this: org.hibernate.cfg.annotations.MapBinder 
(assert (not (= var949 null-var536)))
(declare-const var3787 var3822) ; Statement: r19 := @parameter0: org.hibernate.mapping.Value 
(assert (not (= var3787 null-var3822)))
(declare-const var2669 var3186) ; Statement: r0 := @parameter1: org.hibernate.mapping.Collection 
(assert (not (= var2669 null-var3186)))
(declare-const var2484 String) ; Statement: r67 := @parameter2: java.lang.String 
(assert (not (= var2484 null-String)))
(declare-const var2887 var968) ; Statement: r17 := @parameter3: org.hibernate.mapping.PersistentClass 
(assert (not (= var2887 null-var968)))
(declare-const var680 var968) ; Statement: r18 := @parameter4: org.hibernate.mapping.PersistentClass 
(assert (not (= var680 null-var968)))
(declare-const var1316 var2864) ; Statement: r2 := @parameter5: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var1316 null-var2864)))
(assert true)
(define-const var377 var3822 (getElement/1419751324 var2669)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.mapping.Collection: org.hibernate.mapping.Value getElement()>() 
(define-const var1334 String null-String) ; Statement: r84 = null 
(define-const var1858 var1449 (var2864_getBootstrapContext/734182883 var1316)) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.BootstrapContext getBootstrapContext()>() 
(define-const var3550 var634 (var1449_getServiceRegistry/2003421144 var1858)) ; Statement: r4 = interfaceinvoke $r3.<org.hibernate.boot.spi.BootstrapContext: org.hibernate.boot.registry.StandardServiceRegistry getServiceRegistry()>() 
(define-const var937 var308 (var661_getService/-972330729 (cast-from-var634-to-var661 var3550) var815!class)) ; Statement: $r5 = interfaceinvoke r4.<org.hibernate.service.ServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;") 
(define-const var1687 var815 (cast-from-var308-to-var815 var937)) ; Statement: r6 = (org.hibernate.engine.config.spi.ConfigurationService) $r5 
(define-const var2203 var308 (var661_getService/-972330729 (cast-from-var634-to-var661 var3550) var2835!class)) ; Statement: $r7 = interfaceinvoke r4.<org.hibernate.service.ServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/jdbc/spi/JdbcServices;") 
(define-const var3638 var2835 (cast-from-var308-to-var2835 var2203)) ; Statement: $r8 = (org.hibernate.engine.jdbc.spi.JdbcServices) $r7 
(define-const var2000 var3976 (var2835_getJdbcEnvironment/1999269849 var3638)) ; Statement: $r15 = interfaceinvoke $r8.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment getJdbcEnvironment()>() 
(define-const var3769 var1748 (var2864_getMetadataCollector/-129185252 var1316)) ; Statement: $r9 = interfaceinvoke r2.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(define-const var2574 var2765 (var3025_getDatabase/193995574 (cast-from-var1748-to-var3025 var3769))) ; Statement: $r14 = interfaceinvoke $r9.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.model.relational.Database getDatabase()>() 
(define-const var1998 var3841 (var815_getSetting/617429165 var1687 "hibernate.default_catalog" String!class null-var3841)) ; Statement: $r10 = interfaceinvoke r6.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.default_catalog", class "Ljava/lang/String;", null) 
(define-const var563 String (cast-from-var3841-to-String var1998)) ; Statement: $r13 = (java.lang.String) $r10 
(define-const var1360 var3841 (var815_getSetting/617429165 var1687 "hibernate.default_schema" String!class null-var3841)) ; Statement: $r11 = interfaceinvoke r6.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.default_schema", class "Ljava/lang/String;", null) 
(define-const var219 String (cast-from-var3841-to-String var1360)) ; Statement: $r12 = (java.lang.String) $r11 
(define-const var585 var3098 (var1090_fromExplicit/1802843349 var2000 var2574 var563 var219)) ; Statement: r16 = staticinvoke <org.hibernate.boot.model.relational.internal.SqlStringGenerationContextImpl: org.hibernate.boot.model.relational.SqlStringGenerationContext fromExplicit(org.hibernate.engine.jdbc.env.spi.JdbcEnvironment,org.hibernate.boot.model.relational.Database,java.lang.String,java.lang.String)>($r15, $r14, $r13, $r12) 
(define-const var633 Bool true) ; Statement: $z0 = r1 instanceof org.hibernate.mapping.OneToMany 
 ; Statement: if $z0 != 0 goto $z1 = virtualinvoke r17.<java.lang.Object: boolean equals(java.lang.Object)>(r18) 
(assert (not (= (ite var633 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var2 Bool (equals/-1650223740 (cast-from-var968-to-var3841 var2887) (cast-from-var968-to-var3841 var680))) ; Statement: $z1 = virtualinvoke r17.<java.lang.Object: boolean equals(java.lang.Object)>(r18) 
 ; Statement: if $z1 != 0 goto $z10 = r19 instanceof org.hibernate.mapping.Component 
(assert (not (= (ite var2 1 0) 0))) ; Cond: $z1 != 0 
(define-const var744 Bool true) ; Statement: $z10 = r19 instanceof org.hibernate.mapping.Component 
 ; Statement: if $z10 == 0 goto $z2 = r19 instanceof org.hibernate.mapping.SimpleValue 
(assert (= (ite var744 1 0) 0)) ; Cond: $z10 == 0 
(define-const var1591 Bool true) ; Statement: $z2 = r19 instanceof org.hibernate.mapping.SimpleValue 
 ; Statement: if $z2 == 0 goto $r111 = new org.hibernate.AssertionFailure 
(assert (= (ite var1591 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2855 var2476 var2476-init) ; Statement: $r111 = new org.hibernate.AssertionFailure 
(define-const var1073 String String-init) ; Statement: $r110 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1073)) ; Statement: specialinvoke $r110.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1073!1 String)
(assert (= var1073!1 ""))
(assert true)
(define-const var1701 String (append/672562846 var1073!1 "Unknown type encounters for map key: ")) ; Statement: $r23 = virtualinvoke $r110.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown type encounters for map key: ") 
(declare-const var1073!2 String)
(assert (= var1073!2 (str.++ var1073!1 "Unknown type encounters for map key: ")))
(assert true)
(define-const var1076 ClassObject (getClass/1258963082 (cast-from-var3822-to-var3841 var3787))) ; Statement: $r22 = virtualinvoke r19.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var51 String (append/-1031950772 var1701 (cast-from-ClassObject-to-var3841 var1076))) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r22) 
(declare-const var1701!1 String)
(assert (str.prefixof var1701 var1701!1))
(assert true)
(define-const var2764 String (toString/-2075883882 var51)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var2855 var2764)) ; Statement: specialinvoke $r111.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r25) 

(declare-const var2855!1 var2476)
(declare-const var2764!1 String)
 ; Statement: throw $r111 
(check-sat)
(get-model)
(get-unsat-core)
; {getElement/1419751324=([org.hibernate.mapping.Collection], org.hibernate.mapping.Value), var2864_getBootstrapContext/734182883=([org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.boot.spi.BootstrapContext), var1449_getServiceRegistry/2003421144=([org.hibernate.boot.spi.BootstrapContext], org.hibernate.boot.registry.StandardServiceRegistry), var661_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var634-to-var661=([org.hibernate.boot.registry.StandardServiceRegistry], org.hibernate.service.ServiceRegistry), cast-from-var308-to-var815=([org.hibernate.service.Service], org.hibernate.engine.config.spi.ConfigurationService), cast-from-var308-to-var2835=([org.hibernate.service.Service], org.hibernate.engine.jdbc.spi.JdbcServices), var2835_getJdbcEnvironment/1999269849=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.engine.jdbc.env.spi.JdbcEnvironment), var2864_getMetadataCollector/-129185252=([org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.boot.spi.InFlightMetadataCollector), var3025_getDatabase/193995574=([org.hibernate.boot.Metadata], org.hibernate.boot.model.relational.Database), cast-from-var1748-to-var3025=([org.hibernate.boot.spi.InFlightMetadataCollector], org.hibernate.boot.Metadata), var815_getSetting/617429165=([org.hibernate.engine.config.spi.ConfigurationService, java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object), cast-from-var3841-to-String=([java.lang.Object], java.lang.String), var1090_fromExplicit/1802843349=([org.hibernate.engine.jdbc.env.spi.JdbcEnvironment, org.hibernate.boot.model.relational.Database, java.lang.String, java.lang.String], org.hibernate.boot.model.relational.SqlStringGenerationContext), equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-var968-to-var3841=([org.hibernate.mapping.PersistentClass], java.lang.Object), var2476-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3822-to-var3841=([org.hibernate.mapping.Value], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3841=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var536=org.hibernate.cfg.annotations.MapBinder, var949=r27, var3822=org.hibernate.mapping.Value, var3787=r19, var3186=org.hibernate.mapping.Collection, var2669=r0, var2484=r67, var2021=null_type, var968=org.hibernate.mapping.PersistentClass, var2887=r17, var680=r18, var2864=org.hibernate.boot.spi.MetadataBuildingContext, var1316=r2, var377=r1, var1334=r84, var1449=org.hibernate.boot.spi.BootstrapContext, var1858=$r3, var634=org.hibernate.boot.registry.StandardServiceRegistry, var3550=r4, var308=org.hibernate.service.Service, var661=org.hibernate.service.ServiceRegistry, var815=org.hibernate.engine.config.spi.ConfigurationService, var937=$r5, var1687=r6, var2835=org.hibernate.engine.jdbc.spi.JdbcServices, var2203=$r7, var3638=$r8, var3976=org.hibernate.engine.jdbc.env.spi.JdbcEnvironment, var2000=$r15, var1748=org.hibernate.boot.spi.InFlightMetadataCollector, var3769=$r9, var2765=org.hibernate.boot.model.relational.Database, var3025=org.hibernate.boot.Metadata, var2574=$r14, var3841=java.lang.Object, var1998=$r10, var563=$r13, var1360=$r11, var219=$r12, var3098=org.hibernate.boot.model.relational.SqlStringGenerationContext, var1090=org.hibernate.boot.model.relational.internal.SqlStringGenerationContextImpl, var585=r16, var633=$z0, var2=$z1, var744=$z10, var1591=$z2, var2476=org.hibernate.AssertionFailure, var2855=$r111, var1073=$r110, var1701=$r23, var1076=$r22, var51=$r24, var2764=$r25}
; {org.hibernate.cfg.annotations.MapBinder=var536, r27=var949, org.hibernate.mapping.Value=var3822, r19=var3787, org.hibernate.mapping.Collection=var3186, r0=var2669, r67=var2484, null_type=var2021, org.hibernate.mapping.PersistentClass=var968, r17=var2887, r18=var680, org.hibernate.boot.spi.MetadataBuildingContext=var2864, r2=var1316, r1=var377, r84=var1334, org.hibernate.boot.spi.BootstrapContext=var1449, $r3=var1858, org.hibernate.boot.registry.StandardServiceRegistry=var634, r4=var3550, org.hibernate.service.Service=var308, org.hibernate.service.ServiceRegistry=var661, org.hibernate.engine.config.spi.ConfigurationService=var815, $r5=var937, r6=var1687, org.hibernate.engine.jdbc.spi.JdbcServices=var2835, $r7=var2203, $r8=var3638, org.hibernate.engine.jdbc.env.spi.JdbcEnvironment=var3976, $r15=var2000, org.hibernate.boot.spi.InFlightMetadataCollector=var1748, $r9=var3769, org.hibernate.boot.model.relational.Database=var2765, org.hibernate.boot.Metadata=var3025, $r14=var2574, java.lang.Object=var3841, $r10=var1998, $r13=var563, $r11=var1360, $r12=var219, org.hibernate.boot.model.relational.SqlStringGenerationContext=var3098, org.hibernate.boot.model.relational.internal.SqlStringGenerationContextImpl=var1090, r16=var585, $z0=var633, $z1=var2, $z10=var744, $z2=var1591, org.hibernate.AssertionFailure=var2476, $r111=var2855, $r110=var1073, $r23=var1701, $r22=var1076, $r24=var51, $r25=var2764}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r27 := @this: org.hibernate.cfg.annotations.MapBinder;	r19 := @parameter0: org.hibernate.mapping.Value;	r0 := @parameter1: org.hibernate.mapping.Collection;	r67 := @parameter2: java.lang.String;	r17 := @parameter3: org.hibernate.mapping.PersistentClass;	r18 := @parameter4: org.hibernate.mapping.PersistentClass;	r2 := @parameter5: org.hibernate.boot.spi.MetadataBuildingContext;	r1 = virtualinvoke r0.<org.hibernate.mapping.Collection: org.hibernate.mapping.Value getElement()>();	r84 = null;	$r3 = interfaceinvoke r2.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.BootstrapContext getBootstrapContext()>();	r4 = interfaceinvoke $r3.<org.hibernate.boot.spi.BootstrapContext: org.hibernate.boot.registry.StandardServiceRegistry getServiceRegistry()>();	$r5 = interfaceinvoke r4.<org.hibernate.service.ServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;");	r6 = (org.hibernate.engine.config.spi.ConfigurationService) $r5;	$r7 = interfaceinvoke r4.<org.hibernate.service.ServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/jdbc/spi/JdbcServices;");	$r8 = (org.hibernate.engine.jdbc.spi.JdbcServices) $r7;	$r15 = interfaceinvoke $r8.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment getJdbcEnvironment()>();	$r9 = interfaceinvoke r2.<org.hibernate.boot.spi.MetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r14 = interfaceinvoke $r9.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.model.relational.Database getDatabase()>();	$r10 = interfaceinvoke r6.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.default_catalog", class "Ljava/lang/String;", null);	$r13 = (java.lang.String) $r10;	$r11 = interfaceinvoke r6.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.default_schema", class "Ljava/lang/String;", null);	$r12 = (java.lang.String) $r11;	r16 = staticinvoke <org.hibernate.boot.model.relational.internal.SqlStringGenerationContextImpl: org.hibernate.boot.model.relational.SqlStringGenerationContext fromExplicit(org.hibernate.engine.jdbc.env.spi.JdbcEnvironment,org.hibernate.boot.model.relational.Database,java.lang.String,java.lang.String)>($r15, $r14, $r13, $r12);	$z0 = r1 instanceof org.hibernate.mapping.OneToMany;	if $z0 != 0 goto $z1 = virtualinvoke r17.<java.lang.Object: boolean equals(java.lang.Object)>(r18);	$z1 = virtualinvoke r17.<java.lang.Object: boolean equals(java.lang.Object)>(r18);	if $z1 != 0 goto $z10 = r19 instanceof org.hibernate.mapping.Component;	$z10 = r19 instanceof org.hibernate.mapping.Component;	if $z10 == 0 goto $z2 = r19 instanceof org.hibernate.mapping.SimpleValue;	$z2 = r19 instanceof org.hibernate.mapping.SimpleValue;	if $z2 == 0 goto $r111 = new org.hibernate.AssertionFailure;	$r111 = new org.hibernate.AssertionFailure;	$r110 = new java.lang.StringBuilder;	specialinvoke $r110.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r110.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown type encounters for map key: ");	$r22 = virtualinvoke r19.<java.lang.Object: java.lang.Class getClass()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r111.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r25);	throw $r111
;block_num 5