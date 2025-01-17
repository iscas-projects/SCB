(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1384 0)
(declare-sort var3773 0)
(declare-sort var3107 0)
(declare-sort var2936 0)
(declare-sort var3013 0)
(declare-sort var1230 0)
(declare-sort var2818 0)
(declare-sort var3369 0)
(declare-sort var1304 0)
(declare-sort var2325 0)
(declare-sort var3540 0)
(declare-sort var1797 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3107_getClass/1258963082 (var3107) ClassObject)
(declare-fun cast-from-var1384-to-var3107 (var1384) var3107)
(declare-fun getMethods/-297347657 (ClassObject) (Array Int var2936))
(declare-fun var1230_stream/-1757820 ((Array Int var3107)) var3013)
(declare-fun cast-from-__Array__Int__var2936__-to-__Array__Int__var3107__ ((Array Int var2936)) (Array Int var3107))
(declare-fun var3369_bootstrap$/1194948917 (var3773) var2818)
(declare-fun var3013_filter/320182972 (var3013 var2818) var3013)
(declare-fun var2325_toList/714215649 () var1304)
(declare-fun var3013_collect/-2050842585 (var3013 var1304) var3107)
(declare-fun cast-from-var3107-to-var3540 (var3107) var3540)
(declare-fun var3540_isEmpty/-153543822 (var3540) Bool)
(declare-fun var1797-init () var1797)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMapperMethod/2077483207 (var3773) var2936)
(declare-fun getName/1227988463 (var2936) String)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1832852593 (var1797 String) void)
(declare-const null-var1384 var1384)
(declare-const null-var3773 var3773)
(declare-const var3939 var1384) ; Statement: r0 := @this: org.apache.ibatis.builder.annotation.ProviderMethodResolver 
(assert (not (= var3939 null-var1384)))
(declare-const var2614 var3773) ; Statement: r3 := @parameter0: org.apache.ibatis.builder.annotation.ProviderContext 
(assert (not (= var2614 null-var3773)))
(define-const var1072 ClassObject (var3107_getClass/1258963082 (cast-from-var1384-to-var3107 var3939))) ; Statement: $r1 = interfaceinvoke r0.<org.apache.ibatis.builder.'annotation'.ProviderMethodResolver: java.lang.Class getClass()>() 
(assert true)
(define-const var690 (Array Int var2936) (getMethods/-297347657 var1072)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.Class: java.lang.reflect.Method[] getMethods()>() 
(define-const var2138 var3013 (var1230_stream/-1757820 (cast-from-__Array__Int__var2936__-to-__Array__Int__var3107__ var690))) ; Statement: $r5 = staticinvoke <java.util.Arrays: java.util.stream.Stream stream(java.lang.Object[])>($r2) 
(define-const var2401 var2818 (var3369_bootstrap$/1194948917 var2614)) ; Statement: $r4 = staticinvoke <org.apache.ibatis.builder.'annotation'.ProviderMethodResolver$lambda_resolveMethod_0__7: java.util.function.Predicate bootstrap$(org.apache.ibatis.builder.'annotation'.ProviderContext)>(r3) 
(define-const var274 var3013 (var3013_filter/320182972 var2138 var2401)) ; Statement: $r7 = interfaceinvoke $r5.<java.util.stream.Stream: java.util.stream.Stream filter(java.util.function.Predicate)>($r4) 
(define-const var3678 var1304 var2325_toList/714215649) ; Statement: $r6 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector toList()>() 
(define-const var1315 var3107 (var3013_collect/-2050842585 var274 var3678)) ; Statement: $r8 = interfaceinvoke $r7.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r6) 
(define-const var2530 var3540 (cast-from-var3107-to-var3540 var1315)) ; Statement: r9 = (java.util.List) $r8 
(define-const var149 Bool (var3540_isEmpty/-153543822 var2530)) ; Statement: $z0 = interfaceinvoke r9.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r11 = interfaceinvoke r9.<java.util.List: java.util.stream.Stream stream()>() 
(assert (not (= (ite var149 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3223 var1797 var1797-init) ; Statement: $r42 = new org.apache.ibatis.builder.BuilderException 
(define-const var223 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var223)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var223!1 String)
(assert (= var223!1 ""))
(assert true)
(define-const var1425 String (append/672562846 var223!1 "Cannot resolve the provider method because \u0027")) ; Statement: $r46 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot resolve the provider method because \'") 
(declare-const var223!2 String)
(assert (= var223!2 (str.++ var223!1 "Cannot resolve the provider method because \u0027")))
(assert true)
(define-const var40 var2936 (getMapperMethod/2077483207 var2614)) ; Statement: $r44 = virtualinvoke r3.<org.apache.ibatis.builder.'annotation'.ProviderContext: java.lang.reflect.Method getMapperMethod()>() 
(assert true)
(define-const var365 String (getName/1227988463 var40)) ; Statement: $r45 = virtualinvoke $r44.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var3413 String (append/672562846 var1425 var365)) ; Statement: $r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r45) 
(declare-const var1425!1 String)
(assert (= var1425!1 (str.++ var1425 var365)))
(assert true)
(define-const var1762 String (append/672562846 var3413 "\u0027 not found in SqlProvider \u0027")) ; Statement: $r50 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' not found in SqlProvider \'") 
(declare-const var3413!1 String)
(assert (= var3413!1 (str.++ var3413 "\u0027 not found in SqlProvider \u0027")))
(define-const var3037 ClassObject (var3107_getClass/1258963082 (cast-from-var1384-to-var3107 var3939))) ; Statement: $r48 = interfaceinvoke r0.<org.apache.ibatis.builder.'annotation'.ProviderMethodResolver: java.lang.Class getClass()>() 
(assert true)
(define-const var3047 String (getName/-1958580599 var3037)) ; Statement: $r49 = virtualinvoke $r48.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2913 String (append/672562846 var1762 var3047)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r49) 
(declare-const var1762!1 String)
(assert (= var1762!1 (str.++ var1762 var3047)))
(assert true)
(define-const var3492 String (append/672562846 var2913 "\u0027.")) ; Statement: $r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.") 
(declare-const var2913!1 String)
(assert (= var2913!1 (str.++ var2913 "\u0027.")))
(assert true)
(define-const var3657 String (toString/-2075883882 var3492)) ; Statement: $r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1832852593 var3223 var3657)) ; Statement: specialinvoke $r42.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String)>($r53) 

(declare-const var3223!1 var1797)
(declare-const var3657!1 String)
 ; Statement: throw $r42 
(check-sat)
(get-model)
(get-unsat-core)
; {var3107_getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1384-to-var3107=([org.apache.ibatis.builder.annotation.ProviderMethodResolver], java.lang.Object), getMethods/-297347657=([java.lang.Class], java.lang.reflect.Method[]), var1230_stream/-1757820=([java.lang.Object[]], java.util.stream.Stream), cast-from-__Array__Int__var2936__-to-__Array__Int__var3107__=([java.lang.reflect.Method[]], java.lang.Object[]), var3369_bootstrap$/1194948917=([org.apache.ibatis.builder.annotation.ProviderContext], java.util.function.Predicate), var3013_filter/320182972=([java.util.stream.Stream, java.util.function.Predicate], java.util.stream.Stream), var2325_toList/714215649=([], java.util.stream.Collector), var3013_collect/-2050842585=([java.util.stream.Stream, java.util.stream.Collector], java.lang.Object), cast-from-var3107-to-var3540=([java.lang.Object], java.util.List), var3540_isEmpty/-153543822=([java.util.List], boolean), var1797-init=([], org.apache.ibatis.builder.BuilderException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMapperMethod/2077483207=([org.apache.ibatis.builder.annotation.ProviderContext], java.lang.reflect.Method), getName/1227988463=([java.lang.reflect.Method], java.lang.String), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1832852593=([org.apache.ibatis.builder.BuilderException, java.lang.String], void)}
; {var1384=org.apache.ibatis.builder.annotation.ProviderMethodResolver, var3939=r0, var3773=org.apache.ibatis.builder.annotation.ProviderContext, var2614=r3, var3107=java.lang.Object, var1072=$r1, var2936=java.lang.reflect.Method, var690=$r2, var3013=java.util.stream.Stream, var1230=java.util.Arrays, var2138=$r5, var2818=java.util.function.Predicate, var3369=org.apache.ibatis.builder.annotation.ProviderMethodResolver$lambda_resolveMethod_0__7, var2401=$r4, var274=$r7, var1304=java.util.stream.Collector, var2325=java.util.stream.Collectors, var3678=$r6, var1315=$r8, var3540=java.util.List, var2530=r9, var149=$z0, var1797=org.apache.ibatis.builder.BuilderException, var3223=$r42, var223=$r43, var1425=$r46, var40=$r44, var365=$r45, var3413=$r47, var1762=$r50, var3037=$r48, var3047=$r49, var2913=$r51, var3492=$r52, var3657=$r53}
; {org.apache.ibatis.builder.annotation.ProviderMethodResolver=var1384, r0=var3939, org.apache.ibatis.builder.annotation.ProviderContext=var3773, r3=var2614, java.lang.Object=var3107, $r1=var1072, java.lang.reflect.Method=var2936, $r2=var690, java.util.stream.Stream=var3013, java.util.Arrays=var1230, $r5=var2138, java.util.function.Predicate=var2818, org.apache.ibatis.builder.annotation.ProviderMethodResolver$lambda_resolveMethod_0__7=var3369, $r4=var2401, $r7=var274, java.util.stream.Collector=var1304, java.util.stream.Collectors=var2325, $r6=var3678, $r8=var1315, java.util.List=var3540, r9=var2530, $z0=var149, org.apache.ibatis.builder.BuilderException=var1797, $r42=var3223, $r43=var223, $r46=var1425, $r44=var40, $r45=var365, $r47=var3413, $r50=var1762, $r48=var3037, $r49=var3047, $r51=var2913, $r52=var3492, $r53=var3657}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.builder.annotation.ProviderMethodResolver;	r3 := @parameter0: org.apache.ibatis.builder.annotation.ProviderContext;	$r1 = interfaceinvoke r0.<org.apache.ibatis.builder.'annotation'.ProviderMethodResolver: java.lang.Class getClass()>();	$r2 = virtualinvoke $r1.<java.lang.Class: java.lang.reflect.Method[] getMethods()>();	$r5 = staticinvoke <java.util.Arrays: java.util.stream.Stream stream(java.lang.Object[])>($r2);	$r4 = staticinvoke <org.apache.ibatis.builder.'annotation'.ProviderMethodResolver$lambda_resolveMethod_0__7: java.util.function.Predicate bootstrap$(org.apache.ibatis.builder.'annotation'.ProviderContext)>(r3);	$r7 = interfaceinvoke $r5.<java.util.stream.Stream: java.util.stream.Stream filter(java.util.function.Predicate)>($r4);	$r6 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector toList()>();	$r8 = interfaceinvoke $r7.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r6);	r9 = (java.util.List) $r8;	$z0 = interfaceinvoke r9.<java.util.List: boolean isEmpty()>();	if $z0 == 0 goto $r11 = interfaceinvoke r9.<java.util.List: java.util.stream.Stream stream()>();	$r42 = new org.apache.ibatis.builder.BuilderException;	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r46 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot resolve the provider method because \'");	$r44 = virtualinvoke r3.<org.apache.ibatis.builder.'annotation'.ProviderContext: java.lang.reflect.Method getMapperMethod()>();	$r45 = virtualinvoke $r44.<java.lang.reflect.Method: java.lang.String getName()>();	$r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r45);	$r50 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' not found in SqlProvider \'");	$r48 = interfaceinvoke r0.<org.apache.ibatis.builder.'annotation'.ProviderMethodResolver: java.lang.Class getClass()>();	$r49 = virtualinvoke $r48.<java.lang.Class: java.lang.String getName()>();	$r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r49);	$r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.");	$r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r42.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String)>($r53);	throw $r42
;block_num 2