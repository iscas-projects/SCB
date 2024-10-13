(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3731 0)
(declare-sort var3016 0)
(declare-sort var2380 0)
(declare-sort var3865 0)
(declare-sort var12 0)
(declare-sort var1170 0)
(declare-sort var1654 0)
(declare-sort var290 0)
(declare-sort var86 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1170!class ClassObject)
(declare-fun bootstrapServiceRegistry/551778817 (var3731) var2380)
(declare-fun var12_getService/-972330729 (var12 ClassObject) var3865)
(declare-fun cast-from-var2380-to-var12 (var2380) var12)
(declare-fun cast-from-var3865-to-var1170 (var3865) var1170)
(declare-fun var1170_locateResourceStream/-775850869 (var1170 String) var1654)
(declare-fun var290-init () var290)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1271795250 (var290 String) void)
(declare-fun cast-from-var290-to-var86 (var290) var86)
(declare-const null-var3731 var3731)
(declare-const null-String String)
(declare-const null-var1654 var1654)
(declare-const var761 var3731) ; Statement: r0 := @this: org.hibernate.boot.cfgxml.internal.ConfigLoader 
(assert (not (= var761 null-var3731)))
(declare-const var3845 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3845 null-String)))
(define-const var1348 var2380 (bootstrapServiceRegistry/551778817 var761)) ; Statement: $r1 = r0.<org.hibernate.boot.cfgxml.internal.ConfigLoader: org.hibernate.boot.registry.BootstrapServiceRegistry bootstrapServiceRegistry> 
(define-const var3224 var3865 (var12_getService/-972330729 (cast-from-var2380-to-var12 var1348) var1170!class)) ; Statement: $r2 = interfaceinvoke $r1.<org.hibernate.boot.registry.BootstrapServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;") 
(define-const var3546 var1170 (cast-from-var3865-to-var1170 var3224)) ; Statement: $r4 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r2 
(define-const var3248 var1654 (var1170_locateResourceStream/-775850869 var3546 var3845)) ; Statement: r5 = interfaceinvoke $r4.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.io.InputStream locateResourceStream(java.lang.String)>(r3) 
 ; Statement: if r5 != null goto $r6 = r0.<org.hibernate.boot.cfgxml.internal.ConfigLoader: org.hibernate.internal.util.ValueHolder jaxbProcessorHolder> 
(assert (not (not (= var3248 null-var1654)))) ; Negate: Cond: r5 != null  
(define-const var2895 var290 var290-init) ; Statement: $r25 = new org.hibernate.internal.util.config.ConfigurationException 
(define-const var3055 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3055)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3055!1 String)
(assert (= var3055!1 ""))
(assert true)
(define-const var2605 String (append/672562846 var3055!1 "Could not locate cfg.xml resource [")) ; Statement: $r15 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not locate cfg.xml resource [") 
(declare-const var3055!2 String)
(assert (= var3055!2 (str.++ var3055!1 "Could not locate cfg.xml resource [")))
(assert true)
(define-const var380 String (append/672562846 var2605 var3845)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2605!1 String)
(assert (= var2605!1 (str.++ var2605 var3845)))
(assert true)
(define-const var1752 String (append/672562846 var380 "]")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var380!1 String)
(assert (= var380!1 (str.++ var380 "]")))
(assert true)
(define-const var2868 String (toString/-2075883882 var1752)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1271795250 var2895 var2868)) ; Statement: specialinvoke $r25.<org.hibernate.internal.util.config.ConfigurationException: void <init>(java.lang.String)>($r18) 

(declare-const var2895!1 var290)
(declare-const var2868!1 String)
(define-const var3533 var86 (cast-from-var290-to-var86 var2895!1)) ; Statement: $r27 = (java.lang.Throwable) $r25 
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {bootstrapServiceRegistry/551778817=([org.hibernate.boot.cfgxml.internal.ConfigLoader], org.hibernate.boot.registry.BootstrapServiceRegistry), var12_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var2380-to-var12=([org.hibernate.boot.registry.BootstrapServiceRegistry], org.hibernate.service.ServiceRegistry), cast-from-var3865-to-var1170=([org.hibernate.service.Service], org.hibernate.boot.registry.classloading.spi.ClassLoaderService), var1170_locateResourceStream/-775850869=([org.hibernate.boot.registry.classloading.spi.ClassLoaderService, java.lang.String], java.io.InputStream), var290-init=([], org.hibernate.internal.util.config.ConfigurationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1271795250=([org.hibernate.internal.util.config.ConfigurationException, java.lang.String], void), cast-from-var290-to-var86=([org.hibernate.internal.util.config.ConfigurationException], java.lang.Throwable)}
; {var3731=org.hibernate.boot.cfgxml.internal.ConfigLoader, var761=r0, var3845=r3, var3016=null_type, var2380=org.hibernate.boot.registry.BootstrapServiceRegistry, var1348=$r1, var3865=org.hibernate.service.Service, var12=org.hibernate.service.ServiceRegistry, var1170=org.hibernate.boot.registry.classloading.spi.ClassLoaderService, var3224=$r2, var3546=$r4, var1654=java.io.InputStream, var3248=r5, var290=org.hibernate.internal.util.config.ConfigurationException, var2895=$r25, var3055=$r24, var2605=$r15, var380=$r16, var1752=$r17, var2868=$r18, var86=java.lang.Throwable, var3533=$r27}
; {org.hibernate.boot.cfgxml.internal.ConfigLoader=var3731, r0=var761, r3=var3845, null_type=var3016, org.hibernate.boot.registry.BootstrapServiceRegistry=var2380, $r1=var1348, org.hibernate.service.Service=var3865, org.hibernate.service.ServiceRegistry=var12, org.hibernate.boot.registry.classloading.spi.ClassLoaderService=var1170, $r2=var3224, $r4=var3546, java.io.InputStream=var1654, r5=var3248, org.hibernate.internal.util.config.ConfigurationException=var290, $r25=var2895, $r24=var3055, $r15=var2605, $r16=var380, $r17=var1752, $r18=var2868, java.lang.Throwable=var86, $r27=var3533}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.cfgxml.internal.ConfigLoader;	r3 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.boot.cfgxml.internal.ConfigLoader: org.hibernate.boot.registry.BootstrapServiceRegistry bootstrapServiceRegistry>;	$r2 = interfaceinvoke $r1.<org.hibernate.boot.registry.BootstrapServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;");	$r4 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r2;	r5 = interfaceinvoke $r4.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.io.InputStream locateResourceStream(java.lang.String)>(r3);	if r5 != null goto $r6 = r0.<org.hibernate.boot.cfgxml.internal.ConfigLoader: org.hibernate.internal.util.ValueHolder jaxbProcessorHolder>;	$r25 = new org.hibernate.internal.util.config.ConfigurationException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not locate cfg.xml resource [");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r25.<org.hibernate.internal.util.config.ConfigurationException: void <init>(java.lang.String)>($r18);	$r27 = (java.lang.Throwable) $r25;	throw $r27
;block_num 2