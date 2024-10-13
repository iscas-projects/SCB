(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2105 0)
(declare-sort var1318 0)
(declare-sort var786 0)
(declare-sort var1514 0)
(declare-sort var1649 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1318!class ClassObject)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var1514-init () var1514)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/858741025 (var1514 String var1649) void)
(declare-fun cast-from-var786-to-var1649 (var786) var1649)
(declare-fun cast-from-var1514-to-var1649 (var1514) var1649)
(declare-const null-var2105 var2105)
(declare-const null-ClassObject ClassObject)
(declare-const var2105-$assertionsDisabled Bool)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var786 var786)
(declare-const var68 var2105) ; Statement: r3 := @this: org.hibernate.cache.internal.StrategyCreatorRegionFactoryImpl 
(assert (not (= var68 null-var2105)))
(declare-const var2943 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2943 null-ClassObject)))
(define-const var257 Bool var2105-$assertionsDisabled) ; Statement: $z0 = <org.hibernate.cache.internal.StrategyCreatorRegionFactoryImpl: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r1 = newarray (java.lang.Class)[1] 
(assert (not (= (ite var257 1 0) 0))) ; Cond: $z0 != 0 
(define-const var374 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r1 = newarray (java.lang.Class)[1] 
(declare-const var374!1 (Array Int ClassObject))
(assert (not (= var374!1 null-__Array__Int__ClassObject__)))
(assert (= (select var374!1 0) var1318!class)) ; Statement: $r1[0] = class "Ljava/util/Properties;" 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1022 var786) ; Statement: $r31 := @caughtexception 
(assert (not (= var1022 null-var786)))
(define-const var3591 var1514 var1514-init) ; Statement: $r50 = new org.hibernate.service.spi.ServiceException 
(define-const var1632 String String-init) ; Statement: $r49 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1632)) ; Statement: specialinvoke $r49.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1632!1 String)
(assert (= var1632!1 ""))
(assert true)
(define-const var1616 String (append/672562846 var1632!1 "Unable to call constructor of RegionFactory impl [")) ; Statement: $r35 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to call constructor of RegionFactory impl [") 
(declare-const var1632!2 String)
(assert (= var1632!2 (str.++ var1632!1 "Unable to call constructor of RegionFactory impl [")))
(assert true)
(define-const var1062 String (getName/-1958580599 var2943)) ; Statement: $r34 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2826 String (append/672562846 var1616 var1062)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34) 
(declare-const var1616!1 String)
(assert (= var1616!1 (str.++ var1616 var1062)))
(assert true)
(define-const var3754 String (append/672562846 var2826 "]")) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2826!1 String)
(assert (= var2826!1 (str.++ var2826 "]")))
(assert true)
(define-const var2137 String (toString/-2075883882 var3754)) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/858741025 var3591 var2137 (cast-from-var786-to-var1649 var1022))) ; Statement: specialinvoke $r50.<org.hibernate.service.spi.ServiceException: void <init>(java.lang.String,java.lang.Throwable)>($r38, $r31) 

(declare-const var3591!1 var1514)
(declare-const var2137!1 String)
(declare-const var1022!1 var786)
(define-const var1801 var1649 (cast-from-var1514-to-var1649 var3591!1)) ; Statement: $r55 = (java.lang.Throwable) $r50 
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-ClassObject-init=([], java.lang.Class[]), var1514-init=([], org.hibernate.service.spi.ServiceException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/858741025=([org.hibernate.service.spi.ServiceException, java.lang.String, java.lang.Throwable], void), cast-from-var786-to-var1649=([java.lang.ReflectiveOperationException], java.lang.Throwable), cast-from-var1514-to-var1649=([org.hibernate.service.spi.ServiceException], java.lang.Throwable)}
; {var2105=org.hibernate.cache.internal.StrategyCreatorRegionFactoryImpl, var68=r3, var2943=r0, var257=$z0, var374=$r1, var1318=java.util.Properties, var786=java.lang.ReflectiveOperationException, var1022=$r31, var1514=org.hibernate.service.spi.ServiceException, var3591=$r50, var1632=$r49, var1616=$r35, var1062=$r34, var2826=$r36, var3754=$r37, var2137=$r38, var1649=java.lang.Throwable, var1801=$r55}
; {org.hibernate.cache.internal.StrategyCreatorRegionFactoryImpl=var2105, r3=var68, r0=var2943, $z0=var257, $r1=var374, java.util.Properties=var1318, java.lang.ReflectiveOperationException=var786, $r31=var1022, org.hibernate.service.spi.ServiceException=var1514, $r50=var3591, $r49=var1632, $r35=var1616, $r34=var1062, $r36=var2826, $r37=var3754, $r38=var2137, java.lang.Throwable=var1649, $r55=var1801}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.cache.internal.StrategyCreatorRegionFactoryImpl;	r0 := @parameter0: java.lang.Class;	$z0 = <org.hibernate.cache.internal.StrategyCreatorRegionFactoryImpl: boolean $assertionsDisabled>;	if $z0 != 0 goto $r1 = newarray (java.lang.Class)[1];	$r1 = newarray (java.lang.Class)[1];	$r1[0] = class "Ljava/util/Properties;";	$r31 := @caughtexception;	$r50 = new org.hibernate.service.spi.ServiceException;	$r49 = new java.lang.StringBuilder;	specialinvoke $r49.<java.lang.StringBuilder: void <init>()>();	$r35 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to call constructor of RegionFactory impl [");	$r34 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34);	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r50.<org.hibernate.service.spi.ServiceException: void <init>(java.lang.String,java.lang.Throwable)>($r38, $r31);	$r55 = (java.lang.Throwable) $r50;	throw $r55
;block_num 3