(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2248 0)
(declare-sort var3541 0)
(declare-sort var1254 0)
(declare-sort var2050 0)
(declare-sort var1116 0)
(declare-sort var2979 0)
(declare-sort var771 0)
(declare-sort var2920 0)
(declare-sort var3036 0)
(declare-sort var1117 0)
(declare-sort var3629 0)
(declare-sort var2842 0)
(declare-sort var1357 0)
(declare-sort var65 0)
(declare-sort var2626 0)
(declare-sort var1139 0)
(declare-sort var3367 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var2050_ofNullable/-1077078438 (var1116) var2050)
(declare-fun cast-from-var3541-to-var1116 (var3541) var1116)
(declare-fun var771_bootstrap$/-1047336569 () var2979)
(declare-fun orElseGet/163946654 (var2050 var2979) var1116)
(declare-fun cast-from-var1116-to-var3541 (var1116) var3541)
(declare-fun var3036_stream/-1288525013 (var3036) var2920)
(declare-fun cast-from-var3541-to-var3036 (var3541) var3036)
(declare-fun var3629_bootstrap$/1150634666 () var1117)
(declare-fun var2920_map/130902797 (var2920 var1117) var2920)
(declare-fun var1357_joining/-1302177485 (String) var2842)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var2920_collect/-2050842585 (var2920 var2842) var1116)
(declare-fun cast-from-var1116-to-String (var1116) String)
(declare-fun var65_bootstrap$/1198242885 () var2979)
(declare-fun var2626_bootstrap$/1877231230 () var1117)
(declare-fun var1139-init () var1139)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1116) String)
(declare-fun cast-from-ClassObject-to-var1116 (ClassObject) var1116)
(declare-fun cast-from-var1254-to-var1116 (var1254) var1116)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1806233911 (var1139 String var3367) void)
(declare-fun cast-from-var1254-to-var3367 (var1254) var3367)
(declare-const null-var2248 var2248)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3541 var3541)
(declare-const null-var1254 var1254)
(declare-const var3596 var2248) ; Statement: r51 := @this: org.apache.ibatis.reflection.factory.DefaultObjectFactory 
(assert (not (= var3596 null-var2248)))
(declare-const var3245 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var3245 null-ClassObject)))
(declare-const var1286 var3541) ; Statement: r0 := @parameter1: java.util.List 
(assert (not (= var1286 null-var3541)))
(declare-const var2305 var3541) ; Statement: r5 := @parameter2: java.util.List 
(assert (not (= var2305 null-var3541)))
 ; Statement: if r0 == null goto $r2 = newarray (java.lang.Class)[0] 
(assert (= var1286 null-var3541)) ; Cond: r0 == null 
(define-const var1090 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r2 = newarray (java.lang.Class)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3038 var1254) ; Statement: $r13 := @caughtexception 
(assert (not (= var3038 null-var1254)))
(define-const var2964 var2050 (var2050_ofNullable/-1077078438 (cast-from-var3541-to-var1116 var1286))) ; Statement: $r15 = staticinvoke <java.util.Optional: java.util.Optional ofNullable(java.lang.Object)>(r0) 
(define-const var1710 var2979 var771_bootstrap$/-1047336569) ; Statement: $r14 = staticinvoke <org.apache.ibatis.reflection.factory.DefaultObjectFactory$emptyList__57: java.util.function.Supplier bootstrap$()>() 
(assert true)
(define-const var2543 var1116 (orElseGet/163946654 var2964 var1710)) ; Statement: $r16 = virtualinvoke $r15.<java.util.Optional: java.lang.Object orElseGet(java.util.function.Supplier)>($r14) 
(define-const var3624 var3541 (cast-from-var1116-to-var3541 var2543)) ; Statement: $r17 = (java.util.List) $r16 
(define-const var3462 var2920 (var3036_stream/-1288525013 (cast-from-var3541-to-var3036 var3624))) ; Statement: $r19 = interfaceinvoke $r17.<java.util.List: java.util.stream.Stream stream()>() 
(define-const var1834 var1117 var3629_bootstrap$/1150634666) ; Statement: $r18 = staticinvoke <org.apache.ibatis.reflection.factory.DefaultObjectFactory$getSimpleName__58: java.util.function.Function bootstrap$()>() 
(define-const var3694 var2920 (var2920_map/130902797 var3462 var1834)) ; Statement: $r21 = interfaceinvoke $r19.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r18) 
(define-const var722 var2842 (var1357_joining/-1302177485 (cast-from-String-to-String ","))) ; Statement: $r20 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector joining(java.lang.CharSequence)>(",") 
(define-const var91 var1116 (var2920_collect/-2050842585 var3694 var722)) ; Statement: $r22 = interfaceinvoke $r21.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r20) 
(define-const var3520 String (cast-from-var1116-to-String var91)) ; Statement: r53 = (java.lang.String) $r22 
(define-const var921 var2050 (var2050_ofNullable/-1077078438 (cast-from-var3541-to-var1116 var2305))) ; Statement: $r24 = staticinvoke <java.util.Optional: java.util.Optional ofNullable(java.lang.Object)>(r5) 
(define-const var3794 var2979 var65_bootstrap$/1198242885) ; Statement: $r23 = staticinvoke <org.apache.ibatis.reflection.factory.DefaultObjectFactory$emptyList__59: java.util.function.Supplier bootstrap$()>() 
(assert true)
(define-const var3216 var1116 (orElseGet/163946654 var921 var3794)) ; Statement: $r25 = virtualinvoke $r24.<java.util.Optional: java.lang.Object orElseGet(java.util.function.Supplier)>($r23) 
(define-const var460 var3541 (cast-from-var1116-to-var3541 var3216)) ; Statement: $r26 = (java.util.List) $r25 
(define-const var1624 var2920 (var3036_stream/-1288525013 (cast-from-var3541-to-var3036 var460))) ; Statement: $r28 = interfaceinvoke $r26.<java.util.List: java.util.stream.Stream stream()>() 
(define-const var1940 var1117 var2626_bootstrap$/1877231230) ; Statement: $r27 = staticinvoke <org.apache.ibatis.reflection.factory.DefaultObjectFactory$valueOf__60: java.util.function.Function bootstrap$()>() 
(define-const var3220 var2920 (var2920_map/130902797 var1624 var1940)) ; Statement: $r30 = interfaceinvoke $r28.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r27) 
(define-const var2419 var2842 (var1357_joining/-1302177485 (cast-from-String-to-String ","))) ; Statement: $r29 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector joining(java.lang.CharSequence)>(",") 
(define-const var1277 var1116 (var2920_collect/-2050842585 var3220 var2419)) ; Statement: $r31 = interfaceinvoke $r30.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r29) 
(define-const var457 String (cast-from-var1116-to-String var1277)) ; Statement: r32 = (java.lang.String) $r31 
(define-const var979 var1139 var1139-init) ; Statement: $r33 = new org.apache.ibatis.reflection.ReflectionException 
(define-const var2689 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2689)) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2689!1 String)
(assert (= var2689!1 ""))
(assert true)
(define-const var1629 String (append/672562846 var2689!1 "Error instantiating ")) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error instantiating ") 
(declare-const var2689!2 String)
(assert (= var2689!2 (str.++ var2689!1 "Error instantiating ")))
(assert true)
(define-const var3726 String (append/-1031950772 var1629 (cast-from-ClassObject-to-var1116 var3245))) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1629!1 String)
(assert (str.prefixof var1629 var1629!1))
(assert true)
(define-const var1837 String (append/672562846 var3726 " with invalid types (")) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with invalid types (") 
(declare-const var3726!1 String)
(assert (= var3726!1 (str.++ var3726 " with invalid types (")))
(assert true)
(define-const var3043 String (append/672562846 var1837 var3520)) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r53) 
(declare-const var1837!1 String)
(assert (= var1837!1 (str.++ var1837 var3520)))
(assert true)
(define-const var345 String (append/672562846 var3043 ") or values (")) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") or values (") 
(declare-const var3043!1 String)
(assert (= var3043!1 (str.++ var3043 ") or values (")))
(assert true)
(define-const var2498 String (append/672562846 var345 var457)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r32) 
(declare-const var345!1 String)
(assert (= var345!1 (str.++ var345 var457)))
(assert true)
(define-const var574 String (append/672562846 var2498 "). Cause: ")) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("). Cause: ") 
(declare-const var2498!1 String)
(assert (= var2498!1 (str.++ var2498 "). Cause: ")))
(assert true)
(define-const var3189 String (append/-1031950772 var574 (cast-from-var1254-to-var1116 var3038))) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13) 
(declare-const var574!1 String)
(assert (str.prefixof var574 var574!1))
(assert true)
(define-const var2266 String (toString/-2075883882 var3189)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1806233911 var979 var2266 (cast-from-var1254-to-var3367 var3038))) ; Statement: specialinvoke $r33.<org.apache.ibatis.reflection.ReflectionException: void <init>(java.lang.String,java.lang.Throwable)>($r43, $r13) 

(declare-const var979!1 var1139)
(declare-const var2266!1 String)
(declare-const var3038!1 var1254)
 ; Statement: throw $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-ClassObject-init=([], java.lang.Class[]), var2050_ofNullable/-1077078438=([java.lang.Object], java.util.Optional), cast-from-var3541-to-var1116=([java.util.List], java.lang.Object), var771_bootstrap$/-1047336569=([], java.util.function.Supplier), orElseGet/163946654=([java.util.Optional, java.util.function.Supplier], java.lang.Object), cast-from-var1116-to-var3541=([java.lang.Object], java.util.List), var3036_stream/-1288525013=([java.util.Collection], java.util.stream.Stream), cast-from-var3541-to-var3036=([java.util.List], java.util.Collection), var3629_bootstrap$/1150634666=([], java.util.function.Function), var2920_map/130902797=([java.util.stream.Stream, java.util.function.Function], java.util.stream.Stream), var1357_joining/-1302177485=([java.lang.CharSequence], java.util.stream.Collector), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var2920_collect/-2050842585=([java.util.stream.Stream, java.util.stream.Collector], java.lang.Object), cast-from-var1116-to-String=([java.lang.Object], java.lang.String), var65_bootstrap$/1198242885=([], java.util.function.Supplier), var2626_bootstrap$/1877231230=([], java.util.function.Function), var1139-init=([], org.apache.ibatis.reflection.ReflectionException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1116=([java.lang.Class], java.lang.Object), cast-from-var1254-to-var1116=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1806233911=([org.apache.ibatis.reflection.ReflectionException, java.lang.String, java.lang.Throwable], void), cast-from-var1254-to-var3367=([java.lang.Exception], java.lang.Throwable)}
; {var2248=org.apache.ibatis.reflection.factory.DefaultObjectFactory, var3596=r51, var3245=r1, var3541=java.util.List, var1286=r0, var2305=r5, var1090=$r2, var1254=java.lang.Exception, var3038=$r13, var2050=java.util.Optional, var1116=java.lang.Object, var2964=$r15, var2979=java.util.function.Supplier, var771=org.apache.ibatis.reflection.factory.DefaultObjectFactory$emptyList__57, var1710=$r14, var2543=$r16, var3624=$r17, var2920=java.util.stream.Stream, var3036=java.util.Collection, var3462=$r19, var1117=java.util.function.Function, var3629=org.apache.ibatis.reflection.factory.DefaultObjectFactory$getSimpleName__58, var1834=$r18, var3694=$r21, var2842=java.util.stream.Collector, var1357=java.util.stream.Collectors, var722=$r20, var91=$r22, var3520=r53, var921=$r24, var65=org.apache.ibatis.reflection.factory.DefaultObjectFactory$emptyList__59, var3794=$r23, var3216=$r25, var460=$r26, var1624=$r28, var2626=org.apache.ibatis.reflection.factory.DefaultObjectFactory$valueOf__60, var1940=$r27, var3220=$r30, var2419=$r29, var1277=$r31, var457=r32, var1139=org.apache.ibatis.reflection.ReflectionException, var979=$r33, var2689=$r34, var1629=$r35, var3726=$r36, var1837=$r37, var3043=$r38, var345=$r39, var2498=$r40, var574=$r41, var3189=$r42, var2266=$r43, var3367=java.lang.Throwable}
; {org.apache.ibatis.reflection.factory.DefaultObjectFactory=var2248, r51=var3596, r1=var3245, java.util.List=var3541, r0=var1286, r5=var2305, $r2=var1090, java.lang.Exception=var1254, $r13=var3038, java.util.Optional=var2050, java.lang.Object=var1116, $r15=var2964, java.util.function.Supplier=var2979, org.apache.ibatis.reflection.factory.DefaultObjectFactory$emptyList__57=var771, $r14=var1710, $r16=var2543, $r17=var3624, java.util.stream.Stream=var2920, java.util.Collection=var3036, $r19=var3462, java.util.function.Function=var1117, org.apache.ibatis.reflection.factory.DefaultObjectFactory$getSimpleName__58=var3629, $r18=var1834, $r21=var3694, java.util.stream.Collector=var2842, java.util.stream.Collectors=var1357, $r20=var722, $r22=var91, r53=var3520, $r24=var921, org.apache.ibatis.reflection.factory.DefaultObjectFactory$emptyList__59=var65, $r23=var3794, $r25=var3216, $r26=var460, $r28=var1624, org.apache.ibatis.reflection.factory.DefaultObjectFactory$valueOf__60=var2626, $r27=var1940, $r30=var3220, $r29=var2419, $r31=var1277, r32=var457, org.apache.ibatis.reflection.ReflectionException=var1139, $r33=var979, $r34=var2689, $r35=var1629, $r36=var3726, $r37=var1837, $r38=var3043, $r39=var345, $r40=var2498, $r41=var574, $r42=var3189, $r43=var2266, java.lang.Throwable=var3367}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r51 := @this: org.apache.ibatis.reflection.factory.DefaultObjectFactory;	r1 := @parameter0: java.lang.Class;	r0 := @parameter1: java.util.List;	r5 := @parameter2: java.util.List;	if r0 == null goto $r2 = newarray (java.lang.Class)[0];	$r2 = newarray (java.lang.Class)[0];	$r13 := @caughtexception;	$r15 = staticinvoke <java.util.Optional: java.util.Optional ofNullable(java.lang.Object)>(r0);	$r14 = staticinvoke <org.apache.ibatis.reflection.factory.DefaultObjectFactory$emptyList__57: java.util.function.Supplier bootstrap$()>();	$r16 = virtualinvoke $r15.<java.util.Optional: java.lang.Object orElseGet(java.util.function.Supplier)>($r14);	$r17 = (java.util.List) $r16;	$r19 = interfaceinvoke $r17.<java.util.List: java.util.stream.Stream stream()>();	$r18 = staticinvoke <org.apache.ibatis.reflection.factory.DefaultObjectFactory$getSimpleName__58: java.util.function.Function bootstrap$()>();	$r21 = interfaceinvoke $r19.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r18);	$r20 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector joining(java.lang.CharSequence)>(",");	$r22 = interfaceinvoke $r21.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r20);	r53 = (java.lang.String) $r22;	$r24 = staticinvoke <java.util.Optional: java.util.Optional ofNullable(java.lang.Object)>(r5);	$r23 = staticinvoke <org.apache.ibatis.reflection.factory.DefaultObjectFactory$emptyList__59: java.util.function.Supplier bootstrap$()>();	$r25 = virtualinvoke $r24.<java.util.Optional: java.lang.Object orElseGet(java.util.function.Supplier)>($r23);	$r26 = (java.util.List) $r25;	$r28 = interfaceinvoke $r26.<java.util.List: java.util.stream.Stream stream()>();	$r27 = staticinvoke <org.apache.ibatis.reflection.factory.DefaultObjectFactory$valueOf__60: java.util.function.Function bootstrap$()>();	$r30 = interfaceinvoke $r28.<java.util.stream.Stream: java.util.stream.Stream map(java.util.function.Function)>($r27);	$r29 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector joining(java.lang.CharSequence)>(",");	$r31 = interfaceinvoke $r30.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r29);	r32 = (java.lang.String) $r31;	$r33 = new org.apache.ibatis.reflection.ReflectionException;	$r34 = new java.lang.StringBuilder;	specialinvoke $r34.<java.lang.StringBuilder: void <init>()>();	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error instantiating ");	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with invalid types (");	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r53);	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") or values (");	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r32);	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("). Cause: ");	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13);	$r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r33.<org.apache.ibatis.reflection.ReflectionException: void <init>(java.lang.String,java.lang.Throwable)>($r43, $r13);	throw $r33
;block_num 3