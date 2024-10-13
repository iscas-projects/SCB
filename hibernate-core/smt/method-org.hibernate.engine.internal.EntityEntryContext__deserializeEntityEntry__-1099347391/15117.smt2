(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1315 0)
(declare-sort var3205 0)
(declare-sort var2474 0)
(declare-sort var3458 0)
(declare-sort var3989 0)
(declare-sort var2091 0)
(declare-sort var21 0)
(declare-sort var1880 0)
(declare-sort var1125 0)
(declare-sort var1736 0)
(declare-sort var434 0)
(declare-sort var138 0)
(declare-sort var2253 0)
(declare-sort var2322 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1125!class ClassObject)
(declare-const var1315!class ClassObject)
(declare-const var1736!class ClassObject)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-fun getSession/283993343 (var3205) var3458)
(declare-fun var3458_getFactory/1122061256 (var3458) var3989)
(declare-fun var3989_getServiceRegistry/762402722 (var3989) var2091)
(declare-fun var1880_getService/-972330729 (var1880 ClassObject) var21)
(declare-fun cast-from-var2091-to-var1880 (var2091) var1880)
(declare-fun cast-from-var21-to-var1125 (var21) var1125)
(declare-fun var1125_classForName/1513250981 (var1125 String) ClassObject)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var138_errorf/953068290 (var138 String var2322) void)
(declare-fun cast-from-String-to-var2322 (String) var2322)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-var1315 var1315)
(declare-const null-var3205 var3205)
(declare-const null-var2474 var2474)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var434 var434)
(declare-const var2253-log var138)
(declare-const var1529 (Array Int Int)) ; Statement: r1 := @parameter0: char[] 
(assert (not (= var1529 null-__Array__Int__Int__)))
(declare-const var1317 var1315) ; Statement: r11 := @parameter1: java.io.ObjectInputStream 
(assert (not (= var1317 null-var1315)))
(declare-const var1725 var3205) ; Statement: r2 := @parameter2: org.hibernate.engine.internal.StatefulPersistenceContext 
(assert (not (= var1725 null-var3205)))
(define-const var3868 var2474 null-var2474) ; Statement: r19 = null 
(define-const var3341 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var3341 var1529)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[])>(r1) 

(declare-const var3341!1 String)
(declare-const var1529!1 (Array Int Int))
(assert true)
(define-const var1024 var3458 (getSession/283993343 var1725)) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.engine.internal.StatefulPersistenceContext: org.hibernate.engine.spi.SharedSessionContractImplementor getSession()>() 
(define-const var3413 var3989 (var3458_getFactory/1122061256 var1024)) ; Statement: $r4 = interfaceinvoke $r3.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var2866 var2091 (var3989_getServiceRegistry/762402722 var3413)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.service.spi.ServiceRegistryImplementor getServiceRegistry()>() 
(define-const var62 var21 (var1880_getService/-972330729 (cast-from-var2091-to-var1880 var2866) var1125!class)) ; Statement: $r6 = interfaceinvoke $r5.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;") 
(define-const var3010 var1125 (cast-from-var21-to-var1125 var62)) ; Statement: $r7 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r6 
(define-const var2504 ClassObject (var1125_classForName/1513250981 var3010 var3341!1)) ; Statement: r8 = interfaceinvoke $r7.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.lang.Class classForName(java.lang.String)>($r0) 
(define-const var2486 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r9 = newarray (java.lang.Class)[2] 
(declare-const var2486!1 (Array Int ClassObject))
(assert (not (= var2486!1 null-__Array__Int__ClassObject__)))
(assert (= (select var2486!1 0) var1315!class)) ; Statement: $r9[0] = class "Ljava/io/ObjectInputStream;" 
(declare-const var2486!2 (Array Int ClassObject))
(assert (not (= var2486!2 null-__Array__Int__ClassObject__)))
(assert (= (select var2486!2 1) var1736!class)) ; Statement: $r9[1] = class "Lorg/hibernate/engine/spi/PersistenceContext;" 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2112 var434) ; Statement: $r13 := @caughtexception 
(assert (not (= var2112 null-var434)))
(define-const var3798 var138 var2253-log) ; Statement: $r14 = <org.hibernate.engine.internal.EntityEntryContext: org.hibernate.internal.CoreMessageLogger log> 
;(assert (var138_errorf/953068290 var3798 "Enable to deserialize [%s]" (cast-from-String-to-var2322 var3341!1))) ; Statement: interfaceinvoke $r14.<org.hibernate.internal.CoreMessageLogger: void errorf(java.lang.String,java.lang.Object)>("Enable to deserialize [%s]", $r0) 

(declare-const var3798!1 var138)
(declare-const var3535 String)
(declare-const var3341!2 String)
(assert true) ; Non Conditional
 ; Statement: return r19 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void), getSession/283993343=([org.hibernate.engine.internal.StatefulPersistenceContext], org.hibernate.engine.spi.SharedSessionContractImplementor), var3458_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), var3989_getServiceRegistry/762402722=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.service.spi.ServiceRegistryImplementor), var1880_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var2091-to-var1880=([org.hibernate.service.spi.ServiceRegistryImplementor], org.hibernate.service.ServiceRegistry), cast-from-var21-to-var1125=([org.hibernate.service.Service], org.hibernate.boot.registry.classloading.spi.ClassLoaderService), var1125_classForName/1513250981=([org.hibernate.boot.registry.classloading.spi.ClassLoaderService, java.lang.String], java.lang.Class), arr-ClassObject-init=([], java.lang.Class[]), var138_errorf/953068290=([org.hibernate.internal.CoreMessageLogger, java.lang.String, java.lang.Object], void), cast-from-String-to-var2322=([java.lang.String], java.lang.Object)}
; {var1529=r1, var1315=java.io.ObjectInputStream, var1317=r11, var3205=org.hibernate.engine.internal.StatefulPersistenceContext, var1725=r2, var2474=org.hibernate.engine.spi.EntityEntry, var3868=r19, var3341=$r0, var3458=org.hibernate.engine.spi.SharedSessionContractImplementor, var1024=$r3, var3989=org.hibernate.engine.spi.SessionFactoryImplementor, var3413=$r4, var2091=org.hibernate.service.spi.ServiceRegistryImplementor, var2866=$r5, var21=org.hibernate.service.Service, var1880=org.hibernate.service.ServiceRegistry, var1125=org.hibernate.boot.registry.classloading.spi.ClassLoaderService, var62=$r6, var3010=$r7, var2504=r8, var2486=$r9, var1736=org.hibernate.engine.spi.PersistenceContext, var434=java.lang.IllegalAccessException, var2112=$r13, var138=org.hibernate.internal.CoreMessageLogger, var2253=org.hibernate.engine.internal.EntityEntryContext, var3798=$r14, var2322=java.lang.Object, var3535="Enable to deserialize [%s]"}
; {r1=var1529, java.io.ObjectInputStream=var1315, r11=var1317, org.hibernate.engine.internal.StatefulPersistenceContext=var3205, r2=var1725, org.hibernate.engine.spi.EntityEntry=var2474, r19=var3868, $r0=var3341, org.hibernate.engine.spi.SharedSessionContractImplementor=var3458, $r3=var1024, org.hibernate.engine.spi.SessionFactoryImplementor=var3989, $r4=var3413, org.hibernate.service.spi.ServiceRegistryImplementor=var2091, $r5=var2866, org.hibernate.service.Service=var21, org.hibernate.service.ServiceRegistry=var1880, org.hibernate.boot.registry.classloading.spi.ClassLoaderService=var1125, $r6=var62, $r7=var3010, r8=var2504, $r9=var2486, org.hibernate.engine.spi.PersistenceContext=var1736, java.lang.IllegalAccessException=var434, $r13=var2112, org.hibernate.internal.CoreMessageLogger=var138, org.hibernate.engine.internal.EntityEntryContext=var2253, $r14=var3798, java.lang.Object=var2322, "Enable to deserialize [%s]"=var3535}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r1 := @parameter0: char[];	r11 := @parameter1: java.io.ObjectInputStream;	r2 := @parameter2: org.hibernate.engine.internal.StatefulPersistenceContext;	r19 = null;	$r0 = new java.lang.String;	specialinvoke $r0.<java.lang.String: void <init>(char[])>(r1);	$r3 = virtualinvoke r2.<org.hibernate.engine.internal.StatefulPersistenceContext: org.hibernate.engine.spi.SharedSessionContractImplementor getSession()>();	$r4 = interfaceinvoke $r3.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r5 = interfaceinvoke $r4.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.service.spi.ServiceRegistryImplementor getServiceRegistry()>();	$r6 = interfaceinvoke $r5.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;");	$r7 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r6;	r8 = interfaceinvoke $r7.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.lang.Class classForName(java.lang.String)>($r0);	$r9 = newarray (java.lang.Class)[2];	$r9[0] = class "Ljava/io/ObjectInputStream;";	$r9[1] = class "Lorg/hibernate/engine/spi/PersistenceContext;";	$r13 := @caughtexception;	$r14 = <org.hibernate.engine.internal.EntityEntryContext: org.hibernate.internal.CoreMessageLogger log>;	interfaceinvoke $r14.<org.hibernate.internal.CoreMessageLogger: void errorf(java.lang.String,java.lang.Object)>("Enable to deserialize [%s]", $r0);	return r19
;block_num 3