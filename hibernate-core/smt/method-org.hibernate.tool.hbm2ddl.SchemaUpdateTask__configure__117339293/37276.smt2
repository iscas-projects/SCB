(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2196 0)
(declare-sort var1360 0)
(declare-sort var3765 0)
(declare-sort var929 0)
(declare-sort var2996 0)
(declare-sort var2591 0)
(declare-sort var1885 0)
(declare-sort var378 0)
(declare-sort var46 0)
(declare-sort var250 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2591!class ClassObject)
(declare-fun var2996_getService/-972330729 (var2996 ClassObject) var929)
(declare-fun cast-from-var3765-to-var2996 (var3765) var2996)
(declare-fun cast-from-var929-to-var2591 (var929) var2591)
(declare-fun implicitNamingStrategy/-731387744 (var2196) String)
(declare-fun var46-init () var46)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1717020415 (var46 String var250) void)
(declare-fun cast-from-var378-to-var250 (var378) var250)
(declare-fun cast-from-var46-to-var250 (var46) var250)
(declare-const null-var2196 var2196)
(declare-const null-var1360 var1360)
(declare-const null-var3765 var3765)
(declare-const null-String String)
(declare-const null-var378 var378)
(declare-const var1090 var2196) ; Statement: r3 := @this: org.hibernate.tool.hbm2ddl.SchemaUpdateTask 
(assert (not (= var1090 null-var2196)))
(declare-const var709 var1360) ; Statement: r6 := @parameter0: org.hibernate.boot.MetadataBuilder 
(assert (not (= var709 null-var1360)))
(declare-const var80 var3765) ; Statement: r0 := @parameter1: org.hibernate.boot.registry.StandardServiceRegistry 
(assert (not (= var80 null-var3765)))
(define-const var1345 var929 (var2996_getService/-972330729 (cast-from-var3765-to-var2996 var80) var2591!class)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;") 
(define-const var2224 var2591 (cast-from-var929-to-var2591 var1345)) ; Statement: r2 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r1 
(define-const var1122 String (implicitNamingStrategy/-731387744 var1090)) ; Statement: $r4 = r3.<org.hibernate.tool.hbm2ddl.SchemaUpdateTask: java.lang.String implicitNamingStrategy> 
 ; Statement: if $r4 == null goto $r5 = r3.<org.hibernate.tool.hbm2ddl.SchemaUpdateTask: java.lang.String physicalNamingStrategy> 
(assert (not (= var1122 null-String))) ; Negate: Cond: $r4 == null  
(declare-const var2521 var378) ; Statement: $r23 := @caughtexception 
(assert (not (= var2521 null-var378)))
(define-const var2696 var46 var46-init) ; Statement: $r32 = new org.apache.tools.ant.BuildException 
(define-const var1733 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1733)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1733!1 String)
(assert (= var1733!1 ""))
(assert true)
(define-const var3352 String (append/672562846 var1733!1 "Unable to instantiate specified ImplicitNamingStrategy [")) ; Statement: $r27 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to instantiate specified ImplicitNamingStrategy [") 
(declare-const var1733!2 String)
(assert (= var1733!2 (str.++ var1733!1 "Unable to instantiate specified ImplicitNamingStrategy [")))
(define-const var2574 String (implicitNamingStrategy/-731387744 var1090)) ; Statement: $r26 = r3.<org.hibernate.tool.hbm2ddl.SchemaUpdateTask: java.lang.String implicitNamingStrategy> 
(assert true)
(define-const var2247 String (append/672562846 var3352 var2574)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var3352!1 String)
(assert (= var3352!1 (str.++ var3352 var2574)))
(assert true)
(define-const var3516 String (append/672562846 var2247 "]")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2247!1 String)
(assert (= var2247!1 (str.++ var2247 "]")))
(assert true)
(define-const var2958 String (toString/-2075883882 var3516)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1717020415 var2696 var2958 (cast-from-var378-to-var250 var2521))) ; Statement: specialinvoke $r32.<org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r30, $r23) 

(declare-const var2696!1 var46)
(declare-const var2958!1 String)
(declare-const var2521!1 var378)
(define-const var2531 var250 (cast-from-var46-to-var250 var2696!1)) ; Statement: $r35 = (java.lang.Throwable) $r32 
 ; Statement: throw $r35 
(check-sat)
(get-model)
(get-unsat-core)
; {var2996_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var3765-to-var2996=([org.hibernate.boot.registry.StandardServiceRegistry], org.hibernate.service.ServiceRegistry), cast-from-var929-to-var2591=([org.hibernate.service.Service], org.hibernate.boot.registry.classloading.spi.ClassLoaderService), implicitNamingStrategy/-731387744=([org.hibernate.tool.hbm2ddl.SchemaUpdateTask], java.lang.String), var46-init=([], org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1717020415=([org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var378-to-var250=([java.lang.Exception], java.lang.Throwable), cast-from-var46-to-var250=([org.apache.tools.ant.BuildException], java.lang.Throwable)}
; {var2196=org.hibernate.tool.hbm2ddl.SchemaUpdateTask, var1090=r3, var1360=org.hibernate.boot.MetadataBuilder, var709=r6, var3765=org.hibernate.boot.registry.StandardServiceRegistry, var80=r0, var929=org.hibernate.service.Service, var2996=org.hibernate.service.ServiceRegistry, var2591=org.hibernate.boot.registry.classloading.spi.ClassLoaderService, var1345=$r1, var2224=r2, var1122=$r4, var1885=null_type, var378=java.lang.Exception, var2521=$r23, var46=org.apache.tools.ant.BuildException, var2696=$r32, var1733=$r31, var3352=$r27, var2574=$r26, var2247=$r28, var3516=$r29, var2958=$r30, var250=java.lang.Throwable, var2531=$r35}
; {org.hibernate.tool.hbm2ddl.SchemaUpdateTask=var2196, r3=var1090, org.hibernate.boot.MetadataBuilder=var1360, r6=var709, org.hibernate.boot.registry.StandardServiceRegistry=var3765, r0=var80, org.hibernate.service.Service=var929, org.hibernate.service.ServiceRegistry=var2996, org.hibernate.boot.registry.classloading.spi.ClassLoaderService=var2591, $r1=var1345, r2=var2224, $r4=var1122, null_type=var1885, java.lang.Exception=var378, $r23=var2521, org.apache.tools.ant.BuildException=var46, $r32=var2696, $r31=var1733, $r27=var3352, $r26=var2574, $r28=var2247, $r29=var3516, $r30=var2958, java.lang.Throwable=var250, $r35=var2531}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.tool.hbm2ddl.SchemaUpdateTask;	r6 := @parameter0: org.hibernate.boot.MetadataBuilder;	r0 := @parameter1: org.hibernate.boot.registry.StandardServiceRegistry;	$r1 = interfaceinvoke r0.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;");	r2 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r1;	$r4 = r3.<org.hibernate.tool.hbm2ddl.SchemaUpdateTask: java.lang.String implicitNamingStrategy>;	if $r4 == null goto $r5 = r3.<org.hibernate.tool.hbm2ddl.SchemaUpdateTask: java.lang.String physicalNamingStrategy>;	$r23 := @caughtexception;	$r32 = new org.apache.tools.ant.BuildException;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to instantiate specified ImplicitNamingStrategy [");	$r26 = r3.<org.hibernate.tool.hbm2ddl.SchemaUpdateTask: java.lang.String implicitNamingStrategy>;	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r32.<org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r30, $r23);	$r35 = (java.lang.Throwable) $r32;	throw $r35
;block_num 2