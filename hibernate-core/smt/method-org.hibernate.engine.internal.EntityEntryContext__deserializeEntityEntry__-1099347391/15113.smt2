(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1451 0)
(declare-sort var535 0)
(declare-sort var3056 0)
(declare-sort var1169 0)
(declare-sort var3197 0)
(declare-sort var2914 0)
(declare-sort var1472 0)
(declare-sort var3341 0)
(declare-sort var380 0)
(declare-sort var2337 0)
(declare-sort var594 0)
(declare-sort var3519 0)
(declare-sort var1499 0)
(declare-sort var1023 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var380!class ClassObject)
(declare-const var1451!class ClassObject)
(declare-const var2337!class ClassObject)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-fun getSession/283993343 (var535) var1169)
(declare-fun var1169_getFactory/1122061256 (var1169) var3197)
(declare-fun var3197_getServiceRegistry/762402722 (var3197) var2914)
(declare-fun var3341_getService/-972330729 (var3341 ClassObject) var1472)
(declare-fun cast-from-var2914-to-var3341 (var2914) var3341)
(declare-fun cast-from-var1472-to-var380 (var1472) var380)
(declare-fun var380_classForName/1513250981 (var380 String) ClassObject)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var3519_errorf/953068290 (var3519 String var1023) void)
(declare-fun cast-from-String-to-var1023 (String) var1023)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-var1451 var1451)
(declare-const null-var535 var535)
(declare-const null-var3056 var3056)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var594 var594)
(declare-const var1499-log var3519)
(declare-const var18 (Array Int Int)) ; Statement: r1 := @parameter0: char[] 
(assert (not (= var18 null-__Array__Int__Int__)))
(declare-const var3617 var1451) ; Statement: r11 := @parameter1: java.io.ObjectInputStream 
(assert (not (= var3617 null-var1451)))
(declare-const var3784 var535) ; Statement: r2 := @parameter2: org.hibernate.engine.internal.StatefulPersistenceContext 
(assert (not (= var3784 null-var535)))
(define-const var1046 var3056 null-var3056) ; Statement: r19 = null 
(define-const var3011 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var3011 var18)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[])>(r1) 

(declare-const var3011!1 String)
(declare-const var18!1 (Array Int Int))
(assert true)
(define-const var3528 var1169 (getSession/283993343 var3784)) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.engine.internal.StatefulPersistenceContext: org.hibernate.engine.spi.SharedSessionContractImplementor getSession()>() 
(define-const var2505 var3197 (var1169_getFactory/1122061256 var3528)) ; Statement: $r4 = interfaceinvoke $r3.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var1836 var2914 (var3197_getServiceRegistry/762402722 var2505)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.service.spi.ServiceRegistryImplementor getServiceRegistry()>() 
(define-const var2244 var1472 (var3341_getService/-972330729 (cast-from-var2914-to-var3341 var1836) var380!class)) ; Statement: $r6 = interfaceinvoke $r5.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;") 
(define-const var2108 var380 (cast-from-var1472-to-var380 var2244)) ; Statement: $r7 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r6 
(define-const var675 ClassObject (var380_classForName/1513250981 var2108 var3011!1)) ; Statement: r8 = interfaceinvoke $r7.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.lang.Class classForName(java.lang.String)>($r0) 
(define-const var840 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r9 = newarray (java.lang.Class)[2] 
(declare-const var840!1 (Array Int ClassObject))
(assert (not (= var840!1 null-__Array__Int__ClassObject__)))
(assert (= (select var840!1 0) var1451!class)) ; Statement: $r9[0] = class "Ljava/io/ObjectInputStream;" 
(declare-const var840!2 (Array Int ClassObject))
(assert (not (= var840!2 null-__Array__Int__ClassObject__)))
(assert (= (select var840!2 1) var2337!class)) ; Statement: $r9[1] = class "Lorg/hibernate/engine/spi/PersistenceContext;" 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1028 var594) ; Statement: $r15 := @caughtexception 
(assert (not (= var1028 null-var594)))
(define-const var1222 var3519 var1499-log) ; Statement: $r16 = <org.hibernate.engine.internal.EntityEntryContext: org.hibernate.internal.CoreMessageLogger log> 
;(assert (var3519_errorf/953068290 var1222 "Enable to deserialize [%s]" (cast-from-String-to-var1023 var3011!1))) ; Statement: interfaceinvoke $r16.<org.hibernate.internal.CoreMessageLogger: void errorf(java.lang.String,java.lang.Object)>("Enable to deserialize [%s]", $r0) 

(declare-const var1222!1 var3519)
(declare-const var2986 String)
(declare-const var3011!2 String)
 ; Statement: goto [?= return r19] 
(assert true) ; Non Conditional
 ; Statement: return r19 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void), getSession/283993343=([org.hibernate.engine.internal.StatefulPersistenceContext], org.hibernate.engine.spi.SharedSessionContractImplementor), var1169_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), var3197_getServiceRegistry/762402722=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.service.spi.ServiceRegistryImplementor), var3341_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var2914-to-var3341=([org.hibernate.service.spi.ServiceRegistryImplementor], org.hibernate.service.ServiceRegistry), cast-from-var1472-to-var380=([org.hibernate.service.Service], org.hibernate.boot.registry.classloading.spi.ClassLoaderService), var380_classForName/1513250981=([org.hibernate.boot.registry.classloading.spi.ClassLoaderService, java.lang.String], java.lang.Class), arr-ClassObject-init=([], java.lang.Class[]), var3519_errorf/953068290=([org.hibernate.internal.CoreMessageLogger, java.lang.String, java.lang.Object], void), cast-from-String-to-var1023=([java.lang.String], java.lang.Object)}
; {var18=r1, var1451=java.io.ObjectInputStream, var3617=r11, var535=org.hibernate.engine.internal.StatefulPersistenceContext, var3784=r2, var3056=org.hibernate.engine.spi.EntityEntry, var1046=r19, var3011=$r0, var1169=org.hibernate.engine.spi.SharedSessionContractImplementor, var3528=$r3, var3197=org.hibernate.engine.spi.SessionFactoryImplementor, var2505=$r4, var2914=org.hibernate.service.spi.ServiceRegistryImplementor, var1836=$r5, var1472=org.hibernate.service.Service, var3341=org.hibernate.service.ServiceRegistry, var380=org.hibernate.boot.registry.classloading.spi.ClassLoaderService, var2244=$r6, var2108=$r7, var675=r8, var840=$r9, var2337=org.hibernate.engine.spi.PersistenceContext, var594=java.lang.reflect.InvocationTargetException, var1028=$r15, var3519=org.hibernate.internal.CoreMessageLogger, var1499=org.hibernate.engine.internal.EntityEntryContext, var1222=$r16, var1023=java.lang.Object, var2986="Enable to deserialize [%s]"}
; {r1=var18, java.io.ObjectInputStream=var1451, r11=var3617, org.hibernate.engine.internal.StatefulPersistenceContext=var535, r2=var3784, org.hibernate.engine.spi.EntityEntry=var3056, r19=var1046, $r0=var3011, org.hibernate.engine.spi.SharedSessionContractImplementor=var1169, $r3=var3528, org.hibernate.engine.spi.SessionFactoryImplementor=var3197, $r4=var2505, org.hibernate.service.spi.ServiceRegistryImplementor=var2914, $r5=var1836, org.hibernate.service.Service=var1472, org.hibernate.service.ServiceRegistry=var3341, org.hibernate.boot.registry.classloading.spi.ClassLoaderService=var380, $r6=var2244, $r7=var2108, r8=var675, $r9=var840, org.hibernate.engine.spi.PersistenceContext=var2337, java.lang.reflect.InvocationTargetException=var594, $r15=var1028, org.hibernate.internal.CoreMessageLogger=var3519, org.hibernate.engine.internal.EntityEntryContext=var1499, $r16=var1222, java.lang.Object=var1023, "Enable to deserialize [%s]"=var2986}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r1 := @parameter0: char[];	r11 := @parameter1: java.io.ObjectInputStream;	r2 := @parameter2: org.hibernate.engine.internal.StatefulPersistenceContext;	r19 = null;	$r0 = new java.lang.String;	specialinvoke $r0.<java.lang.String: void <init>(char[])>(r1);	$r3 = virtualinvoke r2.<org.hibernate.engine.internal.StatefulPersistenceContext: org.hibernate.engine.spi.SharedSessionContractImplementor getSession()>();	$r4 = interfaceinvoke $r3.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r5 = interfaceinvoke $r4.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.service.spi.ServiceRegistryImplementor getServiceRegistry()>();	$r6 = interfaceinvoke $r5.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;");	$r7 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r6;	r8 = interfaceinvoke $r7.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.lang.Class classForName(java.lang.String)>($r0);	$r9 = newarray (java.lang.Class)[2];	$r9[0] = class "Ljava/io/ObjectInputStream;";	$r9[1] = class "Lorg/hibernate/engine/spi/PersistenceContext;";	$r15 := @caughtexception;	$r16 = <org.hibernate.engine.internal.EntityEntryContext: org.hibernate.internal.CoreMessageLogger log>;	interfaceinvoke $r16.<org.hibernate.internal.CoreMessageLogger: void errorf(java.lang.String,java.lang.Object)>("Enable to deserialize [%s]", $r0);	goto [?= return r19];	return r19
;block_num 3