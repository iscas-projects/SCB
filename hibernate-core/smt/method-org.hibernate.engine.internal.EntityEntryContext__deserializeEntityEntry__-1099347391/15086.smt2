(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1852 0)
(declare-sort var1559 0)
(declare-sort var50 0)
(declare-sort var1061 0)
(declare-sort var2082 0)
(declare-sort var3479 0)
(declare-sort var1620 0)
(declare-sort var933 0)
(declare-sort var1801 0)
(declare-sort var2645 0)
(declare-sort var1105 0)
(declare-sort var987 0)
(declare-sort var2383 0)
(declare-sort var98 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1801!class ClassObject)
(declare-const var1852!class ClassObject)
(declare-const var2645!class ClassObject)
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-fun getSession/283993343 (var1559) var1061)
(declare-fun var1061_getFactory/1122061256 (var1061) var2082)
(declare-fun var2082_getServiceRegistry/762402722 (var2082) var3479)
(declare-fun var933_getService/-972330729 (var933 ClassObject) var1620)
(declare-fun cast-from-var3479-to-var933 (var3479) var933)
(declare-fun cast-from-var1620-to-var1801 (var1620) var1801)
(declare-fun var1801_classForName/1513250981 (var1801 String) ClassObject)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var987_errorf/953068290 (var987 String var98) void)
(declare-fun cast-from-String-to-var98 (String) var98)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-var1852 var1852)
(declare-const null-var1559 var1559)
(declare-const null-var50 var50)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var1105 var1105)
(declare-const var2383-log var987)
(declare-const var2195 (Array Int Int)) ; Statement: r1 := @parameter0: char[] 
(assert (not (= var2195 null-__Array__Int__Int__)))
(declare-const var2127 var1852) ; Statement: r11 := @parameter1: java.io.ObjectInputStream 
(assert (not (= var2127 null-var1852)))
(declare-const var2254 var1559) ; Statement: r2 := @parameter2: org.hibernate.engine.internal.StatefulPersistenceContext 
(assert (not (= var2254 null-var1559)))
(define-const var1661 var50 null-var50) ; Statement: r19 = null 
(define-const var992 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var992 var2195)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[])>(r1) 

(declare-const var992!1 String)
(declare-const var2195!1 (Array Int Int))
(assert true)
(define-const var644 var1061 (getSession/283993343 var2254)) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.engine.internal.StatefulPersistenceContext: org.hibernate.engine.spi.SharedSessionContractImplementor getSession()>() 
(define-const var2777 var2082 (var1061_getFactory/1122061256 var644)) ; Statement: $r4 = interfaceinvoke $r3.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3227 var3479 (var2082_getServiceRegistry/762402722 var2777)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.service.spi.ServiceRegistryImplementor getServiceRegistry()>() 
(define-const var1592 var1620 (var933_getService/-972330729 (cast-from-var3479-to-var933 var3227) var1801!class)) ; Statement: $r6 = interfaceinvoke $r5.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;") 
(define-const var121 var1801 (cast-from-var1620-to-var1801 var1592)) ; Statement: $r7 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r6 
(define-const var735 ClassObject (var1801_classForName/1513250981 var121 var992!1)) ; Statement: r8 = interfaceinvoke $r7.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.lang.Class classForName(java.lang.String)>($r0) 
(define-const var1521 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r9 = newarray (java.lang.Class)[2] 
(declare-const var1521!1 (Array Int ClassObject))
(assert (not (= var1521!1 null-__Array__Int__ClassObject__)))
(assert (= (select var1521!1 0) var1852!class)) ; Statement: $r9[0] = class "Ljava/io/ObjectInputStream;" 
(declare-const var1521!2 (Array Int ClassObject))
(assert (not (= var1521!2 null-__Array__Int__ClassObject__)))
(assert (= (select var1521!2 1) var2645!class)) ; Statement: $r9[1] = class "Lorg/hibernate/engine/spi/PersistenceContext;" 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2401 var1105) ; Statement: $r17 := @caughtexception 
(assert (not (= var2401 null-var1105)))
(define-const var1502 var987 var2383-log) ; Statement: $r18 = <org.hibernate.engine.internal.EntityEntryContext: org.hibernate.internal.CoreMessageLogger log> 
;(assert (var987_errorf/953068290 var1502 "Enable to deserialize [%s]" (cast-from-String-to-var98 var992!1))) ; Statement: interfaceinvoke $r18.<org.hibernate.internal.CoreMessageLogger: void errorf(java.lang.String,java.lang.Object)>("Enable to deserialize [%s]", $r0) 

(declare-const var1502!1 var987)
(declare-const var2983 String)
(declare-const var992!2 String)
 ; Statement: goto [?= return r19] 
(assert true) ; Non Conditional
 ; Statement: return r19 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void), getSession/283993343=([org.hibernate.engine.internal.StatefulPersistenceContext], org.hibernate.engine.spi.SharedSessionContractImplementor), var1061_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), var2082_getServiceRegistry/762402722=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.service.spi.ServiceRegistryImplementor), var933_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var3479-to-var933=([org.hibernate.service.spi.ServiceRegistryImplementor], org.hibernate.service.ServiceRegistry), cast-from-var1620-to-var1801=([org.hibernate.service.Service], org.hibernate.boot.registry.classloading.spi.ClassLoaderService), var1801_classForName/1513250981=([org.hibernate.boot.registry.classloading.spi.ClassLoaderService, java.lang.String], java.lang.Class), arr-ClassObject-init=([], java.lang.Class[]), var987_errorf/953068290=([org.hibernate.internal.CoreMessageLogger, java.lang.String, java.lang.Object], void), cast-from-String-to-var98=([java.lang.String], java.lang.Object)}
; {var2195=r1, var1852=java.io.ObjectInputStream, var2127=r11, var1559=org.hibernate.engine.internal.StatefulPersistenceContext, var2254=r2, var50=org.hibernate.engine.spi.EntityEntry, var1661=r19, var992=$r0, var1061=org.hibernate.engine.spi.SharedSessionContractImplementor, var644=$r3, var2082=org.hibernate.engine.spi.SessionFactoryImplementor, var2777=$r4, var3479=org.hibernate.service.spi.ServiceRegistryImplementor, var3227=$r5, var1620=org.hibernate.service.Service, var933=org.hibernate.service.ServiceRegistry, var1801=org.hibernate.boot.registry.classloading.spi.ClassLoaderService, var1592=$r6, var121=$r7, var735=r8, var1521=$r9, var2645=org.hibernate.engine.spi.PersistenceContext, var1105=java.lang.NoSuchMethodException, var2401=$r17, var987=org.hibernate.internal.CoreMessageLogger, var2383=org.hibernate.engine.internal.EntityEntryContext, var1502=$r18, var98=java.lang.Object, var2983="Enable to deserialize [%s]"}
; {r1=var2195, java.io.ObjectInputStream=var1852, r11=var2127, org.hibernate.engine.internal.StatefulPersistenceContext=var1559, r2=var2254, org.hibernate.engine.spi.EntityEntry=var50, r19=var1661, $r0=var992, org.hibernate.engine.spi.SharedSessionContractImplementor=var1061, $r3=var644, org.hibernate.engine.spi.SessionFactoryImplementor=var2082, $r4=var2777, org.hibernate.service.spi.ServiceRegistryImplementor=var3479, $r5=var3227, org.hibernate.service.Service=var1620, org.hibernate.service.ServiceRegistry=var933, org.hibernate.boot.registry.classloading.spi.ClassLoaderService=var1801, $r6=var1592, $r7=var121, r8=var735, $r9=var1521, org.hibernate.engine.spi.PersistenceContext=var2645, java.lang.NoSuchMethodException=var1105, $r17=var2401, org.hibernate.internal.CoreMessageLogger=var987, org.hibernate.engine.internal.EntityEntryContext=var2383, $r18=var1502, java.lang.Object=var98, "Enable to deserialize [%s]"=var2983}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r1 := @parameter0: char[];	r11 := @parameter1: java.io.ObjectInputStream;	r2 := @parameter2: org.hibernate.engine.internal.StatefulPersistenceContext;	r19 = null;	$r0 = new java.lang.String;	specialinvoke $r0.<java.lang.String: void <init>(char[])>(r1);	$r3 = virtualinvoke r2.<org.hibernate.engine.internal.StatefulPersistenceContext: org.hibernate.engine.spi.SharedSessionContractImplementor getSession()>();	$r4 = interfaceinvoke $r3.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r5 = interfaceinvoke $r4.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.service.spi.ServiceRegistryImplementor getServiceRegistry()>();	$r6 = interfaceinvoke $r5.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;");	$r7 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r6;	r8 = interfaceinvoke $r7.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.lang.Class classForName(java.lang.String)>($r0);	$r9 = newarray (java.lang.Class)[2];	$r9[0] = class "Ljava/io/ObjectInputStream;";	$r9[1] = class "Lorg/hibernate/engine/spi/PersistenceContext;";	$r17 := @caughtexception;	$r18 = <org.hibernate.engine.internal.EntityEntryContext: org.hibernate.internal.CoreMessageLogger log>;	interfaceinvoke $r18.<org.hibernate.internal.CoreMessageLogger: void errorf(java.lang.String,java.lang.Object)>("Enable to deserialize [%s]", $r0);	goto [?= return r19];	return r19
;block_num 3