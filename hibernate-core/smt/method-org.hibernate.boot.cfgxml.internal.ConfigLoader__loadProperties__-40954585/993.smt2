(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1703 0)
(declare-sort var1268 0)
(declare-sort var2346 0)
(declare-sort var1211 0)
(declare-sort var954 0)
(declare-sort var2557 0)
(declare-sort var1925 0)
(declare-sort var2997 0)
(declare-sort var3874 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2557!class ClassObject)
(declare-fun bootstrapServiceRegistry/551778817 (var1703) var2346)
(declare-fun var954_getService/-972330729 (var954 ClassObject) var1211)
(declare-fun cast-from-var2346-to-var954 (var2346) var954)
(declare-fun cast-from-var1211-to-var2557 (var1211) var2557)
(declare-fun var2557_locateResourceStream/-775850869 (var2557 String) var1925)
(declare-fun var2997-init () var2997)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1271795250 (var2997 String) void)
(declare-fun cast-from-var2997-to-var3874 (var2997) var3874)
(declare-const null-var1703 var1703)
(declare-const null-String String)
(declare-const null-var1925 var1925)
(declare-const var2192 var1703) ; Statement: r0 := @this: org.hibernate.boot.cfgxml.internal.ConfigLoader 
(assert (not (= var2192 null-var1703)))
(declare-const var1944 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1944 null-String)))
(define-const var2958 var2346 (bootstrapServiceRegistry/551778817 var2192)) ; Statement: $r1 = r0.<org.hibernate.boot.cfgxml.internal.ConfigLoader: org.hibernate.boot.registry.BootstrapServiceRegistry bootstrapServiceRegistry> 
(define-const var1804 var1211 (var954_getService/-972330729 (cast-from-var2346-to-var954 var2958) var2557!class)) ; Statement: $r2 = interfaceinvoke $r1.<org.hibernate.boot.registry.BootstrapServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;") 
(define-const var703 var2557 (cast-from-var1211-to-var2557 var1804)) ; Statement: $r4 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r2 
(define-const var599 var1925 (var2557_locateResourceStream/-775850869 var703 var1944)) ; Statement: r5 = interfaceinvoke $r4.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.io.InputStream locateResourceStream(java.lang.String)>(r3) 
 ; Statement: if r5 != null goto $r31 = new java.util.Properties 
(assert (not (not (= var599 null-var1925)))) ; Negate: Cond: r5 != null  
(define-const var3377 var2997 var2997-init) ; Statement: $r30 = new org.hibernate.internal.util.config.ConfigurationException 
(define-const var2487 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2487)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2487!1 String)
(assert (= var2487!1 ""))
(assert true)
(define-const var3739 String (append/672562846 var2487!1 "Unable to apply settings from properties file [")) ; Statement: $r9 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to apply settings from properties file [") 
(declare-const var2487!2 String)
(assert (= var2487!2 (str.++ var2487!1 "Unable to apply settings from properties file [")))
(assert true)
(define-const var318 String (append/672562846 var3739 var1944)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3739!1 String)
(assert (= var3739!1 (str.++ var3739 var1944)))
(assert true)
(define-const var1801 String (append/672562846 var318 "]")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var318!1 String)
(assert (= var318!1 (str.++ var318 "]")))
(assert true)
(define-const var3651 String (toString/-2075883882 var1801)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1271795250 var3377 var3651)) ; Statement: specialinvoke $r30.<org.hibernate.internal.util.config.ConfigurationException: void <init>(java.lang.String)>($r12) 

(declare-const var3377!1 var2997)
(declare-const var3651!1 String)
(define-const var3536 var3874 (cast-from-var2997-to-var3874 var3377!1)) ; Statement: $r34 = (java.lang.Throwable) $r30 
 ; Statement: throw $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {bootstrapServiceRegistry/551778817=([org.hibernate.boot.cfgxml.internal.ConfigLoader], org.hibernate.boot.registry.BootstrapServiceRegistry), var954_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var2346-to-var954=([org.hibernate.boot.registry.BootstrapServiceRegistry], org.hibernate.service.ServiceRegistry), cast-from-var1211-to-var2557=([org.hibernate.service.Service], org.hibernate.boot.registry.classloading.spi.ClassLoaderService), var2557_locateResourceStream/-775850869=([org.hibernate.boot.registry.classloading.spi.ClassLoaderService, java.lang.String], java.io.InputStream), var2997-init=([], org.hibernate.internal.util.config.ConfigurationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1271795250=([org.hibernate.internal.util.config.ConfigurationException, java.lang.String], void), cast-from-var2997-to-var3874=([org.hibernate.internal.util.config.ConfigurationException], java.lang.Throwable)}
; {var1703=org.hibernate.boot.cfgxml.internal.ConfigLoader, var2192=r0, var1944=r3, var1268=null_type, var2346=org.hibernate.boot.registry.BootstrapServiceRegistry, var2958=$r1, var1211=org.hibernate.service.Service, var954=org.hibernate.service.ServiceRegistry, var2557=org.hibernate.boot.registry.classloading.spi.ClassLoaderService, var1804=$r2, var703=$r4, var1925=java.io.InputStream, var599=r5, var2997=org.hibernate.internal.util.config.ConfigurationException, var3377=$r30, var2487=$r29, var3739=$r9, var318=$r10, var1801=$r11, var3651=$r12, var3874=java.lang.Throwable, var3536=$r34}
; {org.hibernate.boot.cfgxml.internal.ConfigLoader=var1703, r0=var2192, r3=var1944, null_type=var1268, org.hibernate.boot.registry.BootstrapServiceRegistry=var2346, $r1=var2958, org.hibernate.service.Service=var1211, org.hibernate.service.ServiceRegistry=var954, org.hibernate.boot.registry.classloading.spi.ClassLoaderService=var2557, $r2=var1804, $r4=var703, java.io.InputStream=var1925, r5=var599, org.hibernate.internal.util.config.ConfigurationException=var2997, $r30=var3377, $r29=var2487, $r9=var3739, $r10=var318, $r11=var1801, $r12=var3651, java.lang.Throwable=var3874, $r34=var3536}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.cfgxml.internal.ConfigLoader;	r3 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.boot.cfgxml.internal.ConfigLoader: org.hibernate.boot.registry.BootstrapServiceRegistry bootstrapServiceRegistry>;	$r2 = interfaceinvoke $r1.<org.hibernate.boot.registry.BootstrapServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;");	$r4 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r2;	r5 = interfaceinvoke $r4.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.io.InputStream locateResourceStream(java.lang.String)>(r3);	if r5 != null goto $r31 = new java.util.Properties;	$r30 = new org.hibernate.internal.util.config.ConfigurationException;	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to apply settings from properties file [");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r30.<org.hibernate.internal.util.config.ConfigurationException: void <init>(java.lang.String)>($r12);	$r34 = (java.lang.Throwable) $r30;	throw $r34
;block_num 2