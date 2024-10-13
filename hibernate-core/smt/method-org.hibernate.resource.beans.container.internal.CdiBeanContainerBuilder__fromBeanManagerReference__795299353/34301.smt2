(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1354 0)
(declare-sort var2607 0)
(declare-sort var498 0)
(declare-sort var3493 0)
(declare-sort var1947 0)
(declare-sort var3600 0)
(declare-sort var3508 0)
(declare-sort var499 0)
(declare-sort var1603 0)
(declare-sort var697 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3493!class ClassObject)
(declare-fun var2607_getService/-972330729 (var2607 ClassObject) var498)
(declare-fun cast-from-var498-to-var3493 (var498) var3493)
(declare-fun var1947_cdiBeanManagerClass/-580362021 (var3493) ClassObject)
(declare-fun var3600_getHibernateClass/-1552359009 (String) ClassObject)
(declare-fun isInstance/451912363 (ClassObject var1354) Bool)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var499-init () var499)
(declare-fun arr-var1354-init () (Array Int var1354))
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun cast-from-String-to-var1354 (String) var1354)
(declare-fun String_format/-647569892 (var1603 String (Array Int var1354)) String)
(declare-fun <init>/-1245322999 (var499 String var697) void)
(declare-fun cast-from-var3508-to-var697 (var3508) var697)
(declare-fun cast-from-var499-to-var697 (var499) var697)
(declare-const null-var1354 var1354)
(declare-const null-var2607 var2607)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var3508 var3508)
(declare-const var1603-ENGLISH var1603)
(declare-const null-__Array__Int__var1354__ (Array Int var1354))
(declare-const var223 var1354) ; Statement: r5 := @parameter0: java.lang.Object 
(assert (not (= var223 null-var1354)))
(declare-const var957 var2607) ; Statement: r0 := @parameter1: org.hibernate.service.ServiceRegistry 
(assert (not (= var957 null-var2607)))
(define-const var2170 var498 (var2607_getService/-972330729 var957 var3493!class)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.service.ServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;") 
(define-const var347 var3493 (cast-from-var498-to-var3493 var2170)) ; Statement: r2 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r1 
(define-const var1421 ClassObject (var1947_cdiBeanManagerClass/-580362021 var347)) ; Statement: r3 = staticinvoke <org.hibernate.resource.beans.spi.ManagedBeanRegistryInitiator: java.lang.Class cdiBeanManagerClass(org.hibernate.boot.registry.classloading.spi.ClassLoaderService)>(r2) 
(define-const var3292 ClassObject (var3600_getHibernateClass/-1552359009 "org.hibernate.resource.beans.container.spi.ExtendedBeanManager")) ; Statement: r4 = staticinvoke <org.hibernate.resource.beans.container.internal.CdiBeanContainerBuilder: java.lang.Class getHibernateClass(java.lang.String)>("org.hibernate.resource.beans.container.spi.ExtendedBeanManager") 
(assert true)
(define-const var1289 Bool (isInstance/451912363 var3292 var223)) ; Statement: $z0 = virtualinvoke r4.<java.lang.Class: boolean isInstance(java.lang.Object)>(r5) 
 ; Statement: if $z0 == 0 goto r35 = r3 
(assert (not (= (ite var1289 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2213 ClassObject (var3600_getHibernateClass/-1552359009 "org.hibernate.resource.beans.container.internal.CdiBeanContainerExtendedAccessImpl")) ; Statement: r34 = staticinvoke <org.hibernate.resource.beans.container.internal.CdiBeanContainerBuilder: java.lang.Class getHibernateClass(java.lang.String)>("org.hibernate.resource.beans.container.internal.CdiBeanContainerExtendedAccessImpl") 
(define-const var373 ClassObject var3292) ; Statement: r35 = r4 
 ; Statement: goto [?= $r37 = newarray (java.lang.Class)[1]] 
(assert true) ; Non Conditional
(define-const var874 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r37 = newarray (java.lang.Class)[1] 
(declare-const var874!1 (Array Int ClassObject))
(assert (not (= var874!1 null-__Array__Int__ClassObject__)))
(assert (= (select var874!1 0) var373)) ; Statement: $r37[0] = r35 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1124 var3508) ; Statement: $r13 := @caughtexception 
(assert (not (= var1124 null-var3508)))
(define-const var2338 var499 var499-init) ; Statement: $r47 = new org.hibernate.HibernateException 
(define-const var3257 var1603 var1603-ENGLISH) ; Statement: $r16 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var341 (Array Int var1354) arr-var1354-init) ; Statement: $r15 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var888 String (getName/-1958580599 var2213)) ; Statement: $r17 = virtualinvoke r34.<java.lang.Class: java.lang.String getName()>() 
(declare-const var341!1 (Array Int var1354))
(assert (not (= var341!1 null-__Array__Int__var1354__)))
(assert (= (select var341!1 0) (cast-from-String-to-var1354 var888))) ; Statement: $r15[0] = $r17 
(define-const var1781 String (String_format/-647569892 var3257 "Could not locate proper %s constructor" var341!1)) ; Statement: $r18 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r16, "Could not locate proper %s constructor", $r15) 
(assert true)
;(assert (<init>/-1245322999 var2338 var1781 (cast-from-var3508-to-var697 var1124))) ; Statement: specialinvoke $r47.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r13) 

(declare-const var2338!1 var499)
(declare-const var1781!1 String)
(declare-const var1124!1 var3508)
(define-const var789 var697 (cast-from-var499-to-var697 var2338!1)) ; Statement: $r50 = (java.lang.Throwable) $r47 
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {var2607_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var498-to-var3493=([org.hibernate.service.Service], org.hibernate.boot.registry.classloading.spi.ClassLoaderService), var1947_cdiBeanManagerClass/-580362021=([org.hibernate.boot.registry.classloading.spi.ClassLoaderService], java.lang.Class), var3600_getHibernateClass/-1552359009=([java.lang.String], java.lang.Class), isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), arr-ClassObject-init=([], java.lang.Class[]), var499-init=([], org.hibernate.HibernateException), arr-var1354-init=([], java.lang.Object[]), getName/-1958580599=([java.lang.Class], java.lang.String), cast-from-String-to-var1354=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var3508-to-var697=([java.lang.NoSuchMethodException], java.lang.Throwable), cast-from-var499-to-var697=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var1354=java.lang.Object, var223=r5, var2607=org.hibernate.service.ServiceRegistry, var957=r0, var498=org.hibernate.service.Service, var3493=org.hibernate.boot.registry.classloading.spi.ClassLoaderService, var2170=$r1, var347=r2, var1947=org.hibernate.resource.beans.spi.ManagedBeanRegistryInitiator, var1421=r3, var3600=org.hibernate.resource.beans.container.internal.CdiBeanContainerBuilder, var3292=r4, var1289=$z0, var2213=r34, var373=r35, var874=$r37, var3508=java.lang.NoSuchMethodException, var1124=$r13, var499=org.hibernate.HibernateException, var2338=$r47, var1603=java.util.Locale, var3257=$r16, var341=$r15, var888=$r17, var1781=$r18, var697=java.lang.Throwable, var789=$r50}
; {java.lang.Object=var1354, r5=var223, org.hibernate.service.ServiceRegistry=var2607, r0=var957, org.hibernate.service.Service=var498, org.hibernate.boot.registry.classloading.spi.ClassLoaderService=var3493, $r1=var2170, r2=var347, org.hibernate.resource.beans.spi.ManagedBeanRegistryInitiator=var1947, r3=var1421, org.hibernate.resource.beans.container.internal.CdiBeanContainerBuilder=var3600, r4=var3292, $z0=var1289, r34=var2213, r35=var373, $r37=var874, java.lang.NoSuchMethodException=var3508, $r13=var1124, org.hibernate.HibernateException=var499, $r47=var2338, java.util.Locale=var1603, $r16=var3257, $r15=var341, $r17=var888, $r18=var1781, java.lang.Throwable=var697, $r50=var789}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r5 := @parameter0: java.lang.Object;	r0 := @parameter1: org.hibernate.service.ServiceRegistry;	$r1 = interfaceinvoke r0.<org.hibernate.service.ServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;");	r2 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r1;	r3 = staticinvoke <org.hibernate.resource.beans.spi.ManagedBeanRegistryInitiator: java.lang.Class cdiBeanManagerClass(org.hibernate.boot.registry.classloading.spi.ClassLoaderService)>(r2);	r4 = staticinvoke <org.hibernate.resource.beans.container.internal.CdiBeanContainerBuilder: java.lang.Class getHibernateClass(java.lang.String)>("org.hibernate.resource.beans.container.spi.ExtendedBeanManager");	$z0 = virtualinvoke r4.<java.lang.Class: boolean isInstance(java.lang.Object)>(r5);	if $z0 == 0 goto r35 = r3;	r34 = staticinvoke <org.hibernate.resource.beans.container.internal.CdiBeanContainerBuilder: java.lang.Class getHibernateClass(java.lang.String)>("org.hibernate.resource.beans.container.internal.CdiBeanContainerExtendedAccessImpl");	r35 = r4;	goto [?= $r37 = newarray (java.lang.Class)[1]];	$r37 = newarray (java.lang.Class)[1];	$r37[0] = r35;	$r13 := @caughtexception;	$r47 = new org.hibernate.HibernateException;	$r16 = <java.util.Locale: java.util.Locale ENGLISH>;	$r15 = newarray (java.lang.Object)[1];	$r17 = virtualinvoke r34.<java.lang.Class: java.lang.String getName()>();	$r15[0] = $r17;	$r18 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r16, "Could not locate proper %s constructor", $r15);	specialinvoke $r47.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r13);	$r50 = (java.lang.Throwable) $r47;	throw $r50
;block_num 4