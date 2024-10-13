(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2453 0)
(declare-sort var3591 0)
(declare-sort var936 0)
(declare-sort var2665 0)
(declare-sort var3160 0)
(declare-sort var1447 0)
(declare-sort var3556 0)
(declare-sort var1958 0)
(declare-sort var2973 0)
(declare-sort var3434 0)
(declare-sort var570 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3160!class ClassObject)
(declare-const var1958!class ClassObject)
(declare-fun isInstance/451912363 (ClassObject var936) Bool)
(declare-fun var3556_getService/-972330729 (var3556 ClassObject) var1447)
(declare-fun cast-from-var2665-to-var3556 (var2665) var3556)
(declare-fun cast-from-var1447-to-var1958 (var1447) var1958)
(declare-fun var3434-init () var3434)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-522406933 (var936) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var3434 String var570) void)
(declare-fun cast-from-var2973-to-var570 (var2973) var570)
(declare-fun cast-from-var3434-to-var570 (var3434) var570)
(declare-const null-var2453 var2453)
(declare-const null-var3591 var3591)
(declare-const null-var936 var936)
(declare-const null-var2665 var2665)
(declare-const null-var2973 var2973)
(declare-const var2844 var2453) ; Statement: r20 := @this: org.hibernate.stat.internal.StatisticsInitiator 
(assert (not (= var2844 null-var2453)))
(declare-const var2310 var3591) ; Statement: r7 := @parameter0: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var2310 null-var3591)))
(declare-const var2907 var936) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2907 null-var936)))
(declare-const var1002 var2665) ; Statement: r2 := @parameter2: org.hibernate.service.spi.ServiceRegistryImplementor 
(assert (not (= var1002 null-var2665)))
 ; Statement: if r0 != null goto $r1 = class "Lorg/hibernate/stat/spi/StatisticsFactory;" 
(assert (not (= var2907 null-var936))) ; Cond: r0 != null 
(define-const var2243 ClassObject var3160!class) ; Statement: $r1 = class "Lorg/hibernate/stat/spi/StatisticsFactory;" 
(assert true)
(define-const var456 Bool (isInstance/451912363 var2243 var2907)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = interfaceinvoke r2.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;") 
(assert (= (ite var456 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1999 var1447 (var3556_getService/-972330729 (cast-from-var2665-to-var3556 var1002) var1958!class)) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;") 
(define-const var1829 var1958 (cast-from-var1447-to-var1958 var1999)) ; Statement: r22 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r3 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var820 var2973) ; Statement: $r12 := @caughtexception 
(assert (not (= var820 null-var2973)))
(define-const var24 var3434 var3434-init) ; Statement: $r25 = new org.hibernate.HibernateException 
(define-const var2626 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2626)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2626!1 String)
(assert (= var2626!1 ""))
(assert true)
(define-const var1309 String (append/672562846 var2626!1 "Unable to instantiate specified StatisticsFactory implementation [")) ; Statement: $r16 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to instantiate specified StatisticsFactory implementation [") 
(declare-const var2626!2 String)
(assert (= var2626!2 (str.++ var2626!1 "Unable to instantiate specified StatisticsFactory implementation [")))
(assert true)
(define-const var2505 String (toString/-522406933 var2907)) ; Statement: $r15 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1519 String (append/672562846 var1309 var2505)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var1309!1 String)
(assert (= var1309!1 (str.++ var1309 var2505)))
(assert true)
(define-const var1523 String (append/672562846 var1519 "]")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1519!1 String)
(assert (= var1519!1 (str.++ var1519 "]")))
(assert true)
(define-const var1132 String (toString/-2075883882 var1523)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var24 var1132 (cast-from-var2973-to-var570 var820))) ; Statement: specialinvoke $r25.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r12) 

(declare-const var24!1 var3434)
(declare-const var1132!1 String)
(declare-const var820!1 var2973)
(define-const var3670 var570 (cast-from-var3434-to-var570 var24!1)) ; Statement: $r27 = (java.lang.Throwable) $r25 
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), var3556_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var2665-to-var3556=([org.hibernate.service.spi.ServiceRegistryImplementor], org.hibernate.service.ServiceRegistry), cast-from-var1447-to-var1958=([org.hibernate.service.Service], org.hibernate.boot.registry.classloading.spi.ClassLoaderService), var3434-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-522406933=([java.lang.Object], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var2973-to-var570=([java.lang.Exception], java.lang.Throwable), cast-from-var3434-to-var570=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2453=org.hibernate.stat.internal.StatisticsInitiator, var2844=r20, var3591=org.hibernate.engine.spi.SessionFactoryImplementor, var2310=r7, var936=java.lang.Object, var2907=r0, var2665=org.hibernate.service.spi.ServiceRegistryImplementor, var1002=r2, var3160=org.hibernate.stat.spi.StatisticsFactory, var2243=$r1, var456=$z0, var1447=org.hibernate.service.Service, var3556=org.hibernate.service.ServiceRegistry, var1958=org.hibernate.boot.registry.classloading.spi.ClassLoaderService, var1999=$r3, var1829=r22, var2973=java.lang.Exception, var820=$r12, var3434=org.hibernate.HibernateException, var24=$r25, var2626=$r24, var1309=$r16, var2505=$r15, var1519=$r17, var1523=$r18, var1132=$r19, var570=java.lang.Throwable, var3670=$r27}
; {org.hibernate.stat.internal.StatisticsInitiator=var2453, r20=var2844, org.hibernate.engine.spi.SessionFactoryImplementor=var3591, r7=var2310, java.lang.Object=var936, r0=var2907, org.hibernate.service.spi.ServiceRegistryImplementor=var2665, r2=var1002, org.hibernate.stat.spi.StatisticsFactory=var3160, $r1=var2243, $z0=var456, org.hibernate.service.Service=var1447, org.hibernate.service.ServiceRegistry=var3556, org.hibernate.boot.registry.classloading.spi.ClassLoaderService=var1958, $r3=var1999, r22=var1829, java.lang.Exception=var2973, $r12=var820, org.hibernate.HibernateException=var3434, $r25=var24, $r24=var2626, $r16=var1309, $r15=var2505, $r17=var1519, $r18=var1523, $r19=var1132, java.lang.Throwable=var570, $r27=var3670}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r20 := @this: org.hibernate.stat.internal.StatisticsInitiator;	r7 := @parameter0: org.hibernate.engine.spi.SessionFactoryImplementor;	r0 := @parameter1: java.lang.Object;	r2 := @parameter2: org.hibernate.service.spi.ServiceRegistryImplementor;	if r0 != null goto $r1 = class "Lorg/hibernate/stat/spi/StatisticsFactory;";	$r1 = class "Lorg/hibernate/stat/spi/StatisticsFactory;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0);	if $z0 == 0 goto $r3 = interfaceinvoke r2.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;");	$r3 = interfaceinvoke r2.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;");	r22 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r3;	$r12 := @caughtexception;	$r25 = new org.hibernate.HibernateException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to instantiate specified StatisticsFactory implementation [");	$r15 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r25.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r12);	$r27 = (java.lang.Throwable) $r25;	throw $r27
;block_num 4