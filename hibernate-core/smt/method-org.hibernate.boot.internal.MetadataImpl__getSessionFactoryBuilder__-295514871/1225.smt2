(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3150 0)
(declare-sort var804 0)
(declare-sort var498 0)
(declare-sort var1923 0)
(declare-sort var2198 0)
(declare-sort var1018 0)
(declare-sort var3516 0)
(declare-sort var1105 0)
(declare-sort var421 0)
(declare-sort var1244 0)
(declare-sort var2857 0)
(declare-sort var969 0)
(declare-sort var1776 0)
(declare-sort var681 0)
(declare-sort var3234 0)
(declare-sort var2037 0)
(declare-sort var2807 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1018!class ClassObject)
(declare-const var421!class ClassObject)
(declare-const var2857!class ClassObject)
(declare-fun metadataBuildingOptions/1077866378 (var3150) var804)
(declare-fun var804_getServiceRegistry/-146704938 (var804) var498)
(declare-fun var2198_getService/-972330729 (var2198 ClassObject) var1923)
(declare-fun cast-from-var498-to-var2198 (var498) var2198)
(declare-fun cast-from-var1923-to-var1018 (var1923) var1018)
(declare-fun bootstrapContext/1077866378 (var3150) var3516)
(declare-fun var1018_createSessionFactoryBuilder/-869262526 (var1018 var3150 var3516) var1105)
(declare-fun cast-from-var1923-to-var421 (var1923) var421)
(declare-fun var421_loadJavaServices/1345510484 (var421 ClassObject) var1244)
(declare-fun var1244_iterator/-1617794947 (var1244) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var681_size/-959786421 (var681) Int)
(declare-fun cast-from-var1776-to-var681 (var1776) var681)
(declare-fun var3234-init () var3234)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun String_join/1594745010 (String var2037) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun cast-from-var1776-to-var2037 (var1776) var2037)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var3234 String) void)
(declare-fun cast-from-var3234-to-var2807 (var3234) var2807)
(declare-const null-var3150 var3150)
(declare-const null-var969 var969)
(declare-const null-var1776 var1776)
(declare-const var2586 var3150) ; Statement: r0 := @this: org.hibernate.boot.internal.MetadataImpl 
(assert (not (= var2586 null-var3150)))
(define-const var2915 var804 (metadataBuildingOptions/1077866378 var2586)) ; Statement: $r1 = r0.<org.hibernate.boot.internal.MetadataImpl: org.hibernate.boot.spi.MetadataBuildingOptions metadataBuildingOptions> 
(define-const var3153 var498 (var804_getServiceRegistry/-146704938 var2915)) ; Statement: $r2 = interfaceinvoke $r1.<org.hibernate.boot.spi.MetadataBuildingOptions: org.hibernate.boot.registry.StandardServiceRegistry getServiceRegistry()>() 
(define-const var2273 var1923 (var2198_getService/-972330729 (cast-from-var498-to-var2198 var3153) var1018!class)) ; Statement: $r3 = interfaceinvoke $r2.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/spi/SessionFactoryBuilderService;") 
(define-const var650 var1018 (cast-from-var1923-to-var1018 var2273)) ; Statement: r4 = (org.hibernate.boot.spi.SessionFactoryBuilderService) $r3 
(define-const var2694 var3516 (bootstrapContext/1077866378 var2586)) ; Statement: $r5 = r0.<org.hibernate.boot.internal.MetadataImpl: org.hibernate.boot.spi.BootstrapContext bootstrapContext> 
(define-const var3907 var1105 (var1018_createSessionFactoryBuilder/-869262526 var650 var2586 var2694)) ; Statement: r6 = interfaceinvoke r4.<org.hibernate.boot.spi.SessionFactoryBuilderService: org.hibernate.boot.spi.SessionFactoryBuilderImplementor createSessionFactoryBuilder(org.hibernate.boot.internal.MetadataImpl,org.hibernate.boot.spi.BootstrapContext)>(r0, $r5) 
(define-const var1985 var804 (metadataBuildingOptions/1077866378 var2586)) ; Statement: $r7 = r0.<org.hibernate.boot.internal.MetadataImpl: org.hibernate.boot.spi.MetadataBuildingOptions metadataBuildingOptions> 
(define-const var2984 var498 (var804_getServiceRegistry/-146704938 var1985)) ; Statement: $r8 = interfaceinvoke $r7.<org.hibernate.boot.spi.MetadataBuildingOptions: org.hibernate.boot.registry.StandardServiceRegistry getServiceRegistry()>() 
(define-const var2742 var1923 (var2198_getService/-972330729 (cast-from-var498-to-var2198 var2984) var421!class)) ; Statement: $r9 = interfaceinvoke $r8.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;") 
(define-const var1234 var421 (cast-from-var1923-to-var421 var2742)) ; Statement: r10 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r9 
(define-const var1640 var1244 (var421_loadJavaServices/1345510484 var1234 var2857!class)) ; Statement: r11 = interfaceinvoke r10.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.util.Collection loadJavaServices(java.lang.Class)>(class "Lorg/hibernate/boot/spi/SessionFactoryBuilderFactory;") 
(define-const var1511 var969 null-var969) ; Statement: r25 = null 
(define-const var2380 var1776 null-var1776) ; Statement: r26 = null 
(define-const var3795 Iterator (var1244_iterator/-1617794947 var1640)) ; Statement: r12 = interfaceinvoke r11.<java.util.Collection: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var979 Bool (Iterator_hasNext/-1669924200 var3795)) ; Statement: $z0 = interfaceinvoke r12.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var979 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r26 == null goto (branch) 
(assert (not (= var2380 null-var1776))) ; Negate: Cond: r26 == null  
(define-const var689 Int (var681_size/-959786421 (cast-from-var1776-to-var681 var2380))) ; Statement: $i0 = interfaceinvoke r26.<java.util.List: int size()>() 
 ; Statement: if $i0 <= 1 goto (branch) 
(assert (not (<= var689 1))) ; Negate: Cond: $i0 <= 1  
(define-const var1619 var3234 var3234-init) ; Statement: $r29 = new org.hibernate.HibernateException 
(define-const var2706 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2706)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2706!1 String)
(assert (= var2706!1 ""))
(assert true)
(define-const var3142 String (append/672562846 var2706!1 "Multiple active SessionFactoryBuilderFactory definitions were discovered : ")) ; Statement: $r16 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Multiple active SessionFactoryBuilderFactory definitions were discovered : ") 
(declare-const var2706!2 String)
(assert (= var2706!2 (str.++ var2706!1 "Multiple active SessionFactoryBuilderFactory definitions were discovered : ")))
(define-const var1642 String (String_join/1594745010 (cast-from-String-to-String ", ") (cast-from-var1776-to-var2037 var2380))) ; Statement: $r15 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(", ", r26) 
(assert true)
(define-const var3065 String (append/672562846 var3142 var1642)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var3142!1 String)
(assert (= var3142!1 (str.++ var3142 var1642)))
(assert true)
(define-const var1554 String (toString/-2075883882 var3065)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var1619 var1554)) ; Statement: specialinvoke $r29.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r18) 

(declare-const var1619!1 var3234)
(declare-const var1554!1 String)
(define-const var660 var2807 (cast-from-var3234-to-var2807 var1619!1)) ; Statement: $r30 = (java.lang.Throwable) $r29 
 ; Statement: throw $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {metadataBuildingOptions/1077866378=([org.hibernate.boot.internal.MetadataImpl], org.hibernate.boot.spi.MetadataBuildingOptions), var804_getServiceRegistry/-146704938=([org.hibernate.boot.spi.MetadataBuildingOptions], org.hibernate.boot.registry.StandardServiceRegistry), var2198_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var498-to-var2198=([org.hibernate.boot.registry.StandardServiceRegistry], org.hibernate.service.ServiceRegistry), cast-from-var1923-to-var1018=([org.hibernate.service.Service], org.hibernate.boot.spi.SessionFactoryBuilderService), bootstrapContext/1077866378=([org.hibernate.boot.internal.MetadataImpl], org.hibernate.boot.spi.BootstrapContext), var1018_createSessionFactoryBuilder/-869262526=([org.hibernate.boot.spi.SessionFactoryBuilderService, org.hibernate.boot.internal.MetadataImpl, org.hibernate.boot.spi.BootstrapContext], org.hibernate.boot.spi.SessionFactoryBuilderImplementor), cast-from-var1923-to-var421=([org.hibernate.service.Service], org.hibernate.boot.registry.classloading.spi.ClassLoaderService), var421_loadJavaServices/1345510484=([org.hibernate.boot.registry.classloading.spi.ClassLoaderService, java.lang.Class], java.util.Collection), var1244_iterator/-1617794947=([java.util.Collection], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var681_size/-959786421=([java.util.List], int), cast-from-var1776-to-var681=([java.util.ArrayList], java.util.List), var3234-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), String_join/1594745010=([java.lang.CharSequence, java.lang.Iterable], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-var1776-to-var2037=([java.util.ArrayList], java.lang.Iterable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3234-to-var2807=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var3150=org.hibernate.boot.internal.MetadataImpl, var2586=r0, var804=org.hibernate.boot.spi.MetadataBuildingOptions, var2915=$r1, var498=org.hibernate.boot.registry.StandardServiceRegistry, var3153=$r2, var1923=org.hibernate.service.Service, var2198=org.hibernate.service.ServiceRegistry, var1018=org.hibernate.boot.spi.SessionFactoryBuilderService, var2273=$r3, var650=r4, var3516=org.hibernate.boot.spi.BootstrapContext, var2694=$r5, var1105=org.hibernate.boot.spi.SessionFactoryBuilderImplementor, var3907=r6, var1985=$r7, var2984=$r8, var421=org.hibernate.boot.registry.classloading.spi.ClassLoaderService, var2742=$r9, var1234=r10, var1244=java.util.Collection, var2857=org.hibernate.boot.spi.SessionFactoryBuilderFactory, var1640=r11, var969=org.hibernate.boot.SessionFactoryBuilder, var1511=r25, var1776=java.util.ArrayList, var2380=r26, var3795=r12, var979=$z0, var681=java.util.List, var689=$i0, var3234=org.hibernate.HibernateException, var1619=$r29, var2706=$r28, var3142=$r16, var2037=java.lang.Iterable, var1642=$r15, var3065=$r17, var1554=$r18, var2807=java.lang.Throwable, var660=$r30}
; {org.hibernate.boot.internal.MetadataImpl=var3150, r0=var2586, org.hibernate.boot.spi.MetadataBuildingOptions=var804, $r1=var2915, org.hibernate.boot.registry.StandardServiceRegistry=var498, $r2=var3153, org.hibernate.service.Service=var1923, org.hibernate.service.ServiceRegistry=var2198, org.hibernate.boot.spi.SessionFactoryBuilderService=var1018, $r3=var2273, r4=var650, org.hibernate.boot.spi.BootstrapContext=var3516, $r5=var2694, org.hibernate.boot.spi.SessionFactoryBuilderImplementor=var1105, r6=var3907, $r7=var1985, $r8=var2984, org.hibernate.boot.registry.classloading.spi.ClassLoaderService=var421, $r9=var2742, r10=var1234, java.util.Collection=var1244, org.hibernate.boot.spi.SessionFactoryBuilderFactory=var2857, r11=var1640, org.hibernate.boot.SessionFactoryBuilder=var969, r25=var1511, java.util.ArrayList=var1776, r26=var2380, r12=var3795, $z0=var979, java.util.List=var681, $i0=var689, org.hibernate.HibernateException=var3234, $r29=var1619, $r28=var2706, $r16=var3142, java.lang.Iterable=var2037, $r15=var1642, $r17=var3065, $r18=var1554, java.lang.Throwable=var2807, $r30=var660}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.internal.MetadataImpl;	$r1 = r0.<org.hibernate.boot.internal.MetadataImpl: org.hibernate.boot.spi.MetadataBuildingOptions metadataBuildingOptions>;	$r2 = interfaceinvoke $r1.<org.hibernate.boot.spi.MetadataBuildingOptions: org.hibernate.boot.registry.StandardServiceRegistry getServiceRegistry()>();	$r3 = interfaceinvoke $r2.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/spi/SessionFactoryBuilderService;");	r4 = (org.hibernate.boot.spi.SessionFactoryBuilderService) $r3;	$r5 = r0.<org.hibernate.boot.internal.MetadataImpl: org.hibernate.boot.spi.BootstrapContext bootstrapContext>;	r6 = interfaceinvoke r4.<org.hibernate.boot.spi.SessionFactoryBuilderService: org.hibernate.boot.spi.SessionFactoryBuilderImplementor createSessionFactoryBuilder(org.hibernate.boot.internal.MetadataImpl,org.hibernate.boot.spi.BootstrapContext)>(r0, $r5);	$r7 = r0.<org.hibernate.boot.internal.MetadataImpl: org.hibernate.boot.spi.MetadataBuildingOptions metadataBuildingOptions>;	$r8 = interfaceinvoke $r7.<org.hibernate.boot.spi.MetadataBuildingOptions: org.hibernate.boot.registry.StandardServiceRegistry getServiceRegistry()>();	$r9 = interfaceinvoke $r8.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;");	r10 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r9;	r11 = interfaceinvoke r10.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.util.Collection loadJavaServices(java.lang.Class)>(class "Lorg/hibernate/boot/spi/SessionFactoryBuilderFactory;");	r25 = null;	r26 = null;	r12 = interfaceinvoke r11.<java.util.Collection: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r12.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto (branch);	if r26 == null goto (branch);	$i0 = interfaceinvoke r26.<java.util.List: int size()>();	if $i0 <= 1 goto (branch);	$r29 = new org.hibernate.HibernateException;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Multiple active SessionFactoryBuilderFactory definitions were discovered : ");	$r15 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(", ", r26);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r29.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r18);	$r30 = (java.lang.Throwable) $r29;	throw $r30
;block_num 5