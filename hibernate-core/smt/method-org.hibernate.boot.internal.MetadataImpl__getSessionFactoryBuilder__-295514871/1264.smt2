(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var730 0)
(declare-sort var2804 0)
(declare-sort var3609 0)
(declare-sort var2069 0)
(declare-sort var3006 0)
(declare-sort var1915 0)
(declare-sort var2771 0)
(declare-sort var416 0)
(declare-sort var3672 0)
(declare-sort var3828 0)
(declare-sort var1849 0)
(declare-sort var1954 0)
(declare-sort var2619 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1915!class ClassObject)
(declare-const var3672!class ClassObject)
(declare-const var1849!class ClassObject)
(declare-fun metadataBuildingOptions/1077866378 (var730) var2804)
(declare-fun var2804_getServiceRegistry/-146704938 (var2804) var3609)
(declare-fun var3006_getService/-972330729 (var3006 ClassObject) var2069)
(declare-fun cast-from-var3609-to-var3006 (var3609) var3006)
(declare-fun cast-from-var2069-to-var1915 (var2069) var1915)
(declare-fun bootstrapContext/1077866378 (var730) var2771)
(declare-fun var1915_createSessionFactoryBuilder/-869262526 (var1915 var730 var2771) var416)
(declare-fun cast-from-var2069-to-var3672 (var2069) var3672)
(declare-fun var3672_loadJavaServices/1345510484 (var3672 ClassObject) var3828)
(declare-fun var3828_iterator/-1617794947 (var3828) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var730 var730)
(declare-const null-var1954 var1954)
(declare-const null-var2619 var2619)
(declare-const var1519 var730) ; Statement: r0 := @this: org.hibernate.boot.internal.MetadataImpl 
(assert (not (= var1519 null-var730)))
(define-const var1500 var2804 (metadataBuildingOptions/1077866378 var1519)) ; Statement: $r1 = r0.<org.hibernate.boot.internal.MetadataImpl: org.hibernate.boot.spi.MetadataBuildingOptions metadataBuildingOptions> 
(define-const var3569 var3609 (var2804_getServiceRegistry/-146704938 var1500)) ; Statement: $r2 = interfaceinvoke $r1.<org.hibernate.boot.spi.MetadataBuildingOptions: org.hibernate.boot.registry.StandardServiceRegistry getServiceRegistry()>() 
(define-const var2089 var2069 (var3006_getService/-972330729 (cast-from-var3609-to-var3006 var3569) var1915!class)) ; Statement: $r3 = interfaceinvoke $r2.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/spi/SessionFactoryBuilderService;") 
(define-const var707 var1915 (cast-from-var2069-to-var1915 var2089)) ; Statement: r4 = (org.hibernate.boot.spi.SessionFactoryBuilderService) $r3 
(define-const var3360 var2771 (bootstrapContext/1077866378 var1519)) ; Statement: $r5 = r0.<org.hibernate.boot.internal.MetadataImpl: org.hibernate.boot.spi.BootstrapContext bootstrapContext> 
(define-const var3487 var416 (var1915_createSessionFactoryBuilder/-869262526 var707 var1519 var3360)) ; Statement: r6 = interfaceinvoke r4.<org.hibernate.boot.spi.SessionFactoryBuilderService: org.hibernate.boot.spi.SessionFactoryBuilderImplementor createSessionFactoryBuilder(org.hibernate.boot.internal.MetadataImpl,org.hibernate.boot.spi.BootstrapContext)>(r0, $r5) 
(define-const var1344 var2804 (metadataBuildingOptions/1077866378 var1519)) ; Statement: $r7 = r0.<org.hibernate.boot.internal.MetadataImpl: org.hibernate.boot.spi.MetadataBuildingOptions metadataBuildingOptions> 
(define-const var859 var3609 (var2804_getServiceRegistry/-146704938 var1344)) ; Statement: $r8 = interfaceinvoke $r7.<org.hibernate.boot.spi.MetadataBuildingOptions: org.hibernate.boot.registry.StandardServiceRegistry getServiceRegistry()>() 
(define-const var2779 var2069 (var3006_getService/-972330729 (cast-from-var3609-to-var3006 var859) var3672!class)) ; Statement: $r9 = interfaceinvoke $r8.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;") 
(define-const var2727 var3672 (cast-from-var2069-to-var3672 var2779)) ; Statement: r10 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r9 
(define-const var1015 var3828 (var3672_loadJavaServices/1345510484 var2727 var1849!class)) ; Statement: r11 = interfaceinvoke r10.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.util.Collection loadJavaServices(java.lang.Class)>(class "Lorg/hibernate/boot/spi/SessionFactoryBuilderFactory;") 
(define-const var1231 var1954 null-var1954) ; Statement: r25 = null 
(define-const var2200 var2619 null-var2619) ; Statement: r26 = null 
(define-const var3981 Iterator (var3828_iterator/-1617794947 var1015)) ; Statement: r12 = interfaceinvoke r11.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2150 Bool (Iterator_hasNext/-1669924200 var3981)) ; Statement: $z0 = interfaceinvoke r12.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var2150 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r26 == null goto (branch) 
(assert (= var2200 null-var2619)) ; Cond: r26 == null 
 ; Statement: if r25 == null goto return r6 
(assert (= var1231 null-var1954)) ; Cond: r25 == null 
 ; Statement: return r6 
(check-sat)
(get-model)
(get-unsat-core)
; {metadataBuildingOptions/1077866378=([org.hibernate.boot.internal.MetadataImpl], org.hibernate.boot.spi.MetadataBuildingOptions), var2804_getServiceRegistry/-146704938=([org.hibernate.boot.spi.MetadataBuildingOptions], org.hibernate.boot.registry.StandardServiceRegistry), var3006_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var3609-to-var3006=([org.hibernate.boot.registry.StandardServiceRegistry], org.hibernate.service.ServiceRegistry), cast-from-var2069-to-var1915=([org.hibernate.service.Service], org.hibernate.boot.spi.SessionFactoryBuilderService), bootstrapContext/1077866378=([org.hibernate.boot.internal.MetadataImpl], org.hibernate.boot.spi.BootstrapContext), var1915_createSessionFactoryBuilder/-869262526=([org.hibernate.boot.spi.SessionFactoryBuilderService, org.hibernate.boot.internal.MetadataImpl, org.hibernate.boot.spi.BootstrapContext], org.hibernate.boot.spi.SessionFactoryBuilderImplementor), cast-from-var2069-to-var3672=([org.hibernate.service.Service], org.hibernate.boot.registry.classloading.spi.ClassLoaderService), var3672_loadJavaServices/1345510484=([org.hibernate.boot.registry.classloading.spi.ClassLoaderService, java.lang.Class], java.util.Collection), var3828_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var730=org.hibernate.boot.internal.MetadataImpl, var1519=r0, var2804=org.hibernate.boot.spi.MetadataBuildingOptions, var1500=$r1, var3609=org.hibernate.boot.registry.StandardServiceRegistry, var3569=$r2, var2069=org.hibernate.service.Service, var3006=org.hibernate.service.ServiceRegistry, var1915=org.hibernate.boot.spi.SessionFactoryBuilderService, var2089=$r3, var707=r4, var2771=org.hibernate.boot.spi.BootstrapContext, var3360=$r5, var416=org.hibernate.boot.spi.SessionFactoryBuilderImplementor, var3487=r6, var1344=$r7, var859=$r8, var3672=org.hibernate.boot.registry.classloading.spi.ClassLoaderService, var2779=$r9, var2727=r10, var3828=java.util.Collection, var1849=org.hibernate.boot.spi.SessionFactoryBuilderFactory, var1015=r11, var1954=org.hibernate.boot.SessionFactoryBuilder, var1231=r25, var2619=java.util.ArrayList, var2200=r26, var3981=r12, var2150=$z0}
; {org.hibernate.boot.internal.MetadataImpl=var730, r0=var1519, org.hibernate.boot.spi.MetadataBuildingOptions=var2804, $r1=var1500, org.hibernate.boot.registry.StandardServiceRegistry=var3609, $r2=var3569, org.hibernate.service.Service=var2069, org.hibernate.service.ServiceRegistry=var3006, org.hibernate.boot.spi.SessionFactoryBuilderService=var1915, $r3=var2089, r4=var707, org.hibernate.boot.spi.BootstrapContext=var2771, $r5=var3360, org.hibernate.boot.spi.SessionFactoryBuilderImplementor=var416, r6=var3487, $r7=var1344, $r8=var859, org.hibernate.boot.registry.classloading.spi.ClassLoaderService=var3672, $r9=var2779, r10=var2727, java.util.Collection=var3828, org.hibernate.boot.spi.SessionFactoryBuilderFactory=var1849, r11=var1015, org.hibernate.boot.SessionFactoryBuilder=var1954, r25=var1231, java.util.ArrayList=var2619, r26=var2200, r12=var3981, $z0=var2150}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.internal.MetadataImpl;	$r1 = r0.<org.hibernate.boot.internal.MetadataImpl: org.hibernate.boot.spi.MetadataBuildingOptions metadataBuildingOptions>;	$r2 = interfaceinvoke $r1.<org.hibernate.boot.spi.MetadataBuildingOptions: org.hibernate.boot.registry.StandardServiceRegistry getServiceRegistry()>();	$r3 = interfaceinvoke $r2.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/spi/SessionFactoryBuilderService;");	r4 = (org.hibernate.boot.spi.SessionFactoryBuilderService) $r3;	$r5 = r0.<org.hibernate.boot.internal.MetadataImpl: org.hibernate.boot.spi.BootstrapContext bootstrapContext>;	r6 = interfaceinvoke r4.<org.hibernate.boot.spi.SessionFactoryBuilderService: org.hibernate.boot.spi.SessionFactoryBuilderImplementor createSessionFactoryBuilder(org.hibernate.boot.internal.MetadataImpl,org.hibernate.boot.spi.BootstrapContext)>(r0, $r5);	$r7 = r0.<org.hibernate.boot.internal.MetadataImpl: org.hibernate.boot.spi.MetadataBuildingOptions metadataBuildingOptions>;	$r8 = interfaceinvoke $r7.<org.hibernate.boot.spi.MetadataBuildingOptions: org.hibernate.boot.registry.StandardServiceRegistry getServiceRegistry()>();	$r9 = interfaceinvoke $r8.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;");	r10 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r9;	r11 = interfaceinvoke r10.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.util.Collection loadJavaServices(java.lang.Class)>(class "Lorg/hibernate/boot/spi/SessionFactoryBuilderFactory;");	r25 = null;	r26 = null;	r12 = interfaceinvoke r11.<java.util.Collection: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r12.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto (branch);	if r26 == null goto (branch);	if r25 == null goto return r6;	return r6
;block_num 5