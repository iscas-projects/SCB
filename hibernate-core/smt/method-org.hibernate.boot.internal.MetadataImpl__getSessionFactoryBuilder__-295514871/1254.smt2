(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2953 0)
(declare-sort var3877 0)
(declare-sort var1710 0)
(declare-sort var940 0)
(declare-sort var1109 0)
(declare-sort var1154 0)
(declare-sort var3768 0)
(declare-sort var2026 0)
(declare-sort var362 0)
(declare-sort var2790 0)
(declare-sort var3875 0)
(declare-sort var1930 0)
(declare-sort var1649 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1154!class ClassObject)
(declare-const var362!class ClassObject)
(declare-const var3875!class ClassObject)
(declare-fun metadataBuildingOptions/1077866378 (var2953) var3877)
(declare-fun var3877_getServiceRegistry/-146704938 (var3877) var1710)
(declare-fun var1109_getService/-972330729 (var1109 ClassObject) var940)
(declare-fun cast-from-var1710-to-var1109 (var1710) var1109)
(declare-fun cast-from-var940-to-var1154 (var940) var1154)
(declare-fun bootstrapContext/1077866378 (var2953) var3768)
(declare-fun var1154_createSessionFactoryBuilder/-869262526 (var1154 var2953 var3768) var2026)
(declare-fun cast-from-var940-to-var362 (var940) var362)
(declare-fun var362_loadJavaServices/1345510484 (var362 ClassObject) var2790)
(declare-fun var2790_iterator/-1617794947 (var2790) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var2953 var2953)
(declare-const null-var1930 var1930)
(declare-const null-var1649 var1649)
(declare-const var1211 var2953) ; Statement: r0 := @this: org.hibernate.boot.internal.MetadataImpl 
(assert (not (= var1211 null-var2953)))
(define-const var1494 var3877 (metadataBuildingOptions/1077866378 var1211)) ; Statement: $r1 = r0.<org.hibernate.boot.internal.MetadataImpl: org.hibernate.boot.spi.MetadataBuildingOptions metadataBuildingOptions> 
(define-const var494 var1710 (var3877_getServiceRegistry/-146704938 var1494)) ; Statement: $r2 = interfaceinvoke $r1.<org.hibernate.boot.spi.MetadataBuildingOptions: org.hibernate.boot.registry.StandardServiceRegistry getServiceRegistry()>() 
(define-const var1201 var940 (var1109_getService/-972330729 (cast-from-var1710-to-var1109 var494) var1154!class)) ; Statement: $r3 = interfaceinvoke $r2.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/spi/SessionFactoryBuilderService;") 
(define-const var582 var1154 (cast-from-var940-to-var1154 var1201)) ; Statement: r4 = (org.hibernate.boot.spi.SessionFactoryBuilderService) $r3 
(define-const var1967 var3768 (bootstrapContext/1077866378 var1211)) ; Statement: $r5 = r0.<org.hibernate.boot.internal.MetadataImpl: org.hibernate.boot.spi.BootstrapContext bootstrapContext> 
(define-const var2000 var2026 (var1154_createSessionFactoryBuilder/-869262526 var582 var1211 var1967)) ; Statement: r6 = interfaceinvoke r4.<org.hibernate.boot.spi.SessionFactoryBuilderService: org.hibernate.boot.spi.SessionFactoryBuilderImplementor createSessionFactoryBuilder(org.hibernate.boot.internal.MetadataImpl,org.hibernate.boot.spi.BootstrapContext)>(r0, $r5) 
(define-const var2022 var3877 (metadataBuildingOptions/1077866378 var1211)) ; Statement: $r7 = r0.<org.hibernate.boot.internal.MetadataImpl: org.hibernate.boot.spi.MetadataBuildingOptions metadataBuildingOptions> 
(define-const var810 var1710 (var3877_getServiceRegistry/-146704938 var2022)) ; Statement: $r8 = interfaceinvoke $r7.<org.hibernate.boot.spi.MetadataBuildingOptions: org.hibernate.boot.registry.StandardServiceRegistry getServiceRegistry()>() 
(define-const var2991 var940 (var1109_getService/-972330729 (cast-from-var1710-to-var1109 var810) var362!class)) ; Statement: $r9 = interfaceinvoke $r8.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;") 
(define-const var3446 var362 (cast-from-var940-to-var362 var2991)) ; Statement: r10 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r9 
(define-const var2004 var2790 (var362_loadJavaServices/1345510484 var3446 var3875!class)) ; Statement: r11 = interfaceinvoke r10.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.util.Collection loadJavaServices(java.lang.Class)>(class "Lorg/hibernate/boot/spi/SessionFactoryBuilderFactory;") 
(define-const var3076 var1930 null-var1930) ; Statement: r25 = null 
(define-const var3281 var1649 null-var1649) ; Statement: r26 = null 
(define-const var3221 Iterator (var2790_iterator/-1617794947 var2004)) ; Statement: r12 = interfaceinvoke r11.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var778 Bool (Iterator_hasNext/-1669924200 var3221)) ; Statement: $z0 = interfaceinvoke r12.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var778 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r26 == null goto (branch) 
(assert (= var3281 null-var1649)) ; Cond: r26 == null 
 ; Statement: if r25 == null goto return r6 
(assert (not (= var3076 null-var1930))) ; Negate: Cond: r25 == null  
 ; Statement: return r25 
(check-sat)
(get-model)
(get-unsat-core)
; {metadataBuildingOptions/1077866378=([org.hibernate.boot.internal.MetadataImpl], org.hibernate.boot.spi.MetadataBuildingOptions), var3877_getServiceRegistry/-146704938=([org.hibernate.boot.spi.MetadataBuildingOptions], org.hibernate.boot.registry.StandardServiceRegistry), var1109_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var1710-to-var1109=([org.hibernate.boot.registry.StandardServiceRegistry], org.hibernate.service.ServiceRegistry), cast-from-var940-to-var1154=([org.hibernate.service.Service], org.hibernate.boot.spi.SessionFactoryBuilderService), bootstrapContext/1077866378=([org.hibernate.boot.internal.MetadataImpl], org.hibernate.boot.spi.BootstrapContext), var1154_createSessionFactoryBuilder/-869262526=([org.hibernate.boot.spi.SessionFactoryBuilderService, org.hibernate.boot.internal.MetadataImpl, org.hibernate.boot.spi.BootstrapContext], org.hibernate.boot.spi.SessionFactoryBuilderImplementor), cast-from-var940-to-var362=([org.hibernate.service.Service], org.hibernate.boot.registry.classloading.spi.ClassLoaderService), var362_loadJavaServices/1345510484=([org.hibernate.boot.registry.classloading.spi.ClassLoaderService, java.lang.Class], java.util.Collection), var2790_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var2953=org.hibernate.boot.internal.MetadataImpl, var1211=r0, var3877=org.hibernate.boot.spi.MetadataBuildingOptions, var1494=$r1, var1710=org.hibernate.boot.registry.StandardServiceRegistry, var494=$r2, var940=org.hibernate.service.Service, var1109=org.hibernate.service.ServiceRegistry, var1154=org.hibernate.boot.spi.SessionFactoryBuilderService, var1201=$r3, var582=r4, var3768=org.hibernate.boot.spi.BootstrapContext, var1967=$r5, var2026=org.hibernate.boot.spi.SessionFactoryBuilderImplementor, var2000=r6, var2022=$r7, var810=$r8, var362=org.hibernate.boot.registry.classloading.spi.ClassLoaderService, var2991=$r9, var3446=r10, var2790=java.util.Collection, var3875=org.hibernate.boot.spi.SessionFactoryBuilderFactory, var2004=r11, var1930=org.hibernate.boot.SessionFactoryBuilder, var3076=r25, var1649=java.util.ArrayList, var3281=r26, var3221=r12, var778=$z0}
; {org.hibernate.boot.internal.MetadataImpl=var2953, r0=var1211, org.hibernate.boot.spi.MetadataBuildingOptions=var3877, $r1=var1494, org.hibernate.boot.registry.StandardServiceRegistry=var1710, $r2=var494, org.hibernate.service.Service=var940, org.hibernate.service.ServiceRegistry=var1109, org.hibernate.boot.spi.SessionFactoryBuilderService=var1154, $r3=var1201, r4=var582, org.hibernate.boot.spi.BootstrapContext=var3768, $r5=var1967, org.hibernate.boot.spi.SessionFactoryBuilderImplementor=var2026, r6=var2000, $r7=var2022, $r8=var810, org.hibernate.boot.registry.classloading.spi.ClassLoaderService=var362, $r9=var2991, r10=var3446, java.util.Collection=var2790, org.hibernate.boot.spi.SessionFactoryBuilderFactory=var3875, r11=var2004, org.hibernate.boot.SessionFactoryBuilder=var1930, r25=var3076, java.util.ArrayList=var1649, r26=var3281, r12=var3221, $z0=var778}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.internal.MetadataImpl;	$r1 = r0.<org.hibernate.boot.internal.MetadataImpl: org.hibernate.boot.spi.MetadataBuildingOptions metadataBuildingOptions>;	$r2 = interfaceinvoke $r1.<org.hibernate.boot.spi.MetadataBuildingOptions: org.hibernate.boot.registry.StandardServiceRegistry getServiceRegistry()>();	$r3 = interfaceinvoke $r2.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/spi/SessionFactoryBuilderService;");	r4 = (org.hibernate.boot.spi.SessionFactoryBuilderService) $r3;	$r5 = r0.<org.hibernate.boot.internal.MetadataImpl: org.hibernate.boot.spi.BootstrapContext bootstrapContext>;	r6 = interfaceinvoke r4.<org.hibernate.boot.spi.SessionFactoryBuilderService: org.hibernate.boot.spi.SessionFactoryBuilderImplementor createSessionFactoryBuilder(org.hibernate.boot.internal.MetadataImpl,org.hibernate.boot.spi.BootstrapContext)>(r0, $r5);	$r7 = r0.<org.hibernate.boot.internal.MetadataImpl: org.hibernate.boot.spi.MetadataBuildingOptions metadataBuildingOptions>;	$r8 = interfaceinvoke $r7.<org.hibernate.boot.spi.MetadataBuildingOptions: org.hibernate.boot.registry.StandardServiceRegistry getServiceRegistry()>();	$r9 = interfaceinvoke $r8.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;");	r10 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r9;	r11 = interfaceinvoke r10.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.util.Collection loadJavaServices(java.lang.Class)>(class "Lorg/hibernate/boot/spi/SessionFactoryBuilderFactory;");	r25 = null;	r26 = null;	r12 = interfaceinvoke r11.<java.util.Collection: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r12.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto (branch);	if r26 == null goto (branch);	if r25 == null goto return r6;	return r25
;block_num 5