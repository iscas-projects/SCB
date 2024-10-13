(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var785 0)
(declare-sort var256 0)
(declare-sort var2272 0)
(declare-sort var1011 0)
(declare-sort var2796 0)
(declare-sort var2789 0)
(declare-sort var2245 0)
(declare-sort var2737 0)
(declare-sort var2625 0)
(declare-sort var1870 0)
(declare-sort var3870 0)
(declare-sort var2222 0)
(declare-sort var2819 0)
(declare-sort var2334 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var785!class ClassObject)
(declare-fun <init>/-1574031999 (var256 var256) void)
(declare-fun cast-from-var785-to-var256 (var785) var256)
(declare-fun var2796-init () var2796)
(declare-fun <init>/-325640736 (var2796) void)
(declare-fun cast-from-var2796-to-var1011 (var2796) var1011)
(declare-fun override/1139179338 (var785) var1011)
(declare-fun parentExclusion/1139179338 (var785) var1011)
(declare-fun highlanders/1139179338 (var785) var1011)
(declare-fun var2789-init () var2789)
(declare-fun <init>/-460065511 (var2789) void)
(declare-fun var2737_newSetFromMap/-447129444 (var2625) var2245)
(declare-fun cast-from-var2789-to-var2625 (var2789) var2625)
(declare-fun prependedParentLoaders/1139179338 (var785) var2245)
(declare-fun var1870-init () var1870)
(declare-fun arr-String-init () (Array Int String))
(declare-fun <init>/334488186 (var1870 (Array Int String)) void)
(declare-fun shader/1139179338 (var785) var1870)
(declare-fun var3870-init () var3870)
(declare-fun <init>/-201242697 (var3870) void)
(declare-fun cast-from-var3870-to-var2625 (var3870) var2625)
(declare-fun mapJarPathToTracker/1139179338 (var785) var2625)
(declare-fun fileRootCache/1139179338 (var785) var2625)
(declare-fun jarLocCache/1139179338 (var785) var2625)
(declare-fun sclSuffix/1139179338 (var785) String)
(declare-fun getResource/413390302 (ClassObject String) var2222)
(declare-fun getClassLoader/-563698447 (ClassObject) var256)
(declare-fun var2819-init () var2819)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun getClass/1258963082 (var2334) ClassObject)
(declare-fun cast-from-var256-to-var2334 (var256) var2334)
(declare-fun toString/-1020053180 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var2819 String) void)
(declare-const null-var785 var785)
(declare-const null-var256 var256)
(declare-const null-String String)
(declare-const null-var1011 var1011)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var2222 var2222)
(declare-const var70 var785) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var70 null-var785)))
(declare-const var2875 var256) ; Statement: r1 := @parameter0: java.lang.ClassLoader 
(assert (not (= var2875 null-var256)))
(declare-const var823 String) ; Statement: r12 := @parameter1: java.lang.String 
(assert (not (= var823 null-String)))
(declare-const var1089 String) ; Statement: r15 := @parameter2: java.lang.String 
(assert (not (= var1089 null-String)))
(declare-const var3312 var1011) ; Statement: r13 := @parameter3: java.util.List 
(assert (not (= var3312 null-var1011)))
(declare-const var2339 var1011) ; Statement: r14 := @parameter4: java.util.List 
(assert (not (= var2339 null-var1011)))
(assert true)
;(assert (<init>/-1574031999 (cast-from-var785-to-var256 var70) var2875)) ; Statement: specialinvoke r0.<java.lang.ClassLoader: void <init>(java.lang.ClassLoader)>(r1) 

(declare-const var70!1 var785)
(declare-const var2875!1 var256)
(define-const var3979 var2796 var2796-init) ; Statement: $r71 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3979)) ; Statement: specialinvoke $r71.<java.util.ArrayList: void <init>()>() 

(declare-const var3979!1 var2796)
(declare-const var70!2 var785)
(assert (not (= var70!2 null-var785)))
(assert (= (override/1139179338 var70!2) (cast-from-var2796-to-var1011 var3979!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.List override> = $r71 
(define-const var2017 var2796 var2796-init) ; Statement: $r72 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2017)) ; Statement: specialinvoke $r72.<java.util.ArrayList: void <init>()>() 

(declare-const var2017!1 var2796)
(declare-const var70!3 var785)
(assert (not (= var70!3 null-var785)))
(assert (= (parentExclusion/1139179338 var70!3) (cast-from-var2796-to-var1011 var2017!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion> = $r72 
(define-const var3769 var2796 var2796-init) ; Statement: $r73 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3769)) ; Statement: specialinvoke $r73.<java.util.ArrayList: void <init>()>() 

(declare-const var3769!1 var2796)
(declare-const var70!4 var785)
(assert (not (= var70!4 null-var785)))
(assert (= (highlanders/1139179338 var70!4) (cast-from-var2796-to-var1011 var3769!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> = $r73 
(define-const var3335 var2789 var2789-init) ; Statement: $r74 = new java.util.IdentityHashMap 
(assert true)
;(assert (<init>/-460065511 var3335)) ; Statement: specialinvoke $r74.<java.util.IdentityHashMap: void <init>()>() 

(declare-const var3335!1 var2789)
(define-const var2370 var2245 (var2737_newSetFromMap/-447129444 (cast-from-var2789-to-var2625 var3335!1))) ; Statement: $r6 = staticinvoke <java.util.Collections: java.util.Set newSetFromMap(java.util.Map)>($r74) 
(declare-const var70!5 var785)
(assert (not (= var70!5 null-var785)))
(assert (= (prependedParentLoaders/1139179338 var70!5) var2370)) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Set prependedParentLoaders> = $r6 
(define-const var39 var1870 var1870-init) ; Statement: $r75 = new lombok.launch.PackageShader 
(define-const var1782 (Array Int String) arr-String-init) ; Statement: $r8 = newarray (java.lang.String)[2] 
(declare-const var1782!1 (Array Int String))
(assert (not (= var1782!1 null-__Array__Int__String__)))
(assert (= (select var1782!1 0) "org/objectweb/asm/")) ; Statement: $r8[0] = "org/objectweb/asm/" 
(declare-const var1782!2 (Array Int String))
(assert (not (= var1782!2 null-__Array__Int__String__)))
(assert (= (select var1782!2 1) "org/lombokweb/asm/")) ; Statement: $r8[1] = "org/lombokweb/asm/" 
(assert true)
;(assert (<init>/334488186 var39 var1782!2)) ; Statement: specialinvoke $r75.<lombok.launch.PackageShader: void <init>(java.lang.String[])>($r8) 

(declare-const var39!1 var1870)
(declare-const var1782!3 (Array Int String))
(declare-const var70!6 var785)
(assert (not (= var70!6 null-var785)))
(assert (= (shader/1139179338 var70!6) var39!1)) ; Statement: r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> = $r75 
(define-const var1320 var3870 var3870-init) ; Statement: $r76 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var1320)) ; Statement: specialinvoke $r76.<java.util.HashMap: void <init>()>() 

(declare-const var1320!1 var3870)
(declare-const var70!7 var785)
(assert (not (= var70!7 null-var785)))
(assert (= (mapJarPathToTracker/1139179338 var70!7) (cast-from-var3870-to-var2625 var1320!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Map mapJarPathToTracker> = $r76 
(define-const var3257 var3870 var3870-init) ; Statement: $r77 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3257)) ; Statement: specialinvoke $r77.<java.util.HashMap: void <init>()>() 

(declare-const var3257!1 var3870)
(declare-const var70!8 var785)
(assert (not (= var70!8 null-var785)))
(assert (= (fileRootCache/1139179338 var70!8) (cast-from-var3870-to-var2625 var3257!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Map fileRootCache> = $r77 
(define-const var3464 var3870 var3870-init) ; Statement: $r78 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3464)) ; Statement: specialinvoke $r78.<java.util.HashMap: void <init>()>() 

(declare-const var3464!1 var3870)
(declare-const var70!9 var785)
(assert (not (= var70!9 null-var785)))
(assert (= (jarLocCache/1139179338 var70!9) (cast-from-var3870-to-var2625 var3464!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Map jarLocCache> = $r78 
(declare-const var70!10 var785)
(assert (not (= var70!10 null-var785)))
(assert (= (sclSuffix/1139179338 var70!10) var823)) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.lang.String sclSuffix> = r12 
 ; Statement: if r13 == null goto (branch) 
(assert (= var3312 null-var1011)) ; Cond: r13 == null 
 ; Statement: if r14 == null goto (branch) 
(assert (= var2339 null-var1011)) ; Cond: r14 == null 
 ; Statement: if r15 == null goto $r16 = class "Llombok/launch/ShadowClassLoader;" 
(assert (= var1089 null-String)) ; Cond: r15 == null 
(define-const var3833 ClassObject var785!class) ; Statement: $r16 = class "Llombok/launch/ShadowClassLoader;" 
(assert true)
(define-const var3208 var2222 (getResource/413390302 var3833 "ShadowClassLoader.class")) ; Statement: r61 = virtualinvoke $r16.<java.lang.Class: java.net.URL getResource(java.lang.String)>("ShadowClassLoader.class") 
 ; Statement: if r61 != null goto $r62 = virtualinvoke r61.<java.net.URL: java.lang.String toString()>() 
(assert (not (not (= var3208 null-var2222)))) ; Negate: Cond: r61 != null  
(define-const var1556 String null-String) ; Statement: $r62 = null 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $r62 == null goto $r17 = class "Llombok/launch/ShadowClassLoader;" 
(assert (= var1556 null-String)) ; Cond: $r62 == null 
(define-const var526 ClassObject var785!class) ; Statement: $r17 = class "Llombok/launch/ShadowClassLoader;" 
(assert true)
(define-const var2628 var256 (getClassLoader/-563698447 var526)) ; Statement: $r48 = virtualinvoke $r17.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
(define-const var1300 var2819 var2819-init) ; Statement: $r81 = new java.lang.RuntimeException 
(define-const var1880 String String-init) ; Statement: $r80 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1880 "ShadowLoader can\u0027t find itself. SCL loader type: ")) ; Statement: specialinvoke $r80.<java.lang.StringBuilder: void <init>(java.lang.String)>("ShadowLoader can\'t find itself. SCL loader type: ") 
(declare-const var1880!1 String)
(assert (= var1880!1 "ShadowLoader can\u0027t find itself. SCL loader type: "))
 ; Statement: if $r48 != null goto $r20 = virtualinvoke $r48.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= var2628 null-var256))) ; Cond: $r48 != null 
(assert true)
(define-const var3253 ClassObject (getClass/1258963082 (cast-from-var256-to-var2334 var2628))) ; Statement: $r20 = virtualinvoke $r48.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1033 String (toString/-1020053180 var3253)) ; Statement: $r63 = virtualinvoke $r20.<java.lang.Class: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var977 String (append/672562846 var1880!1 var1033)) ; Statement: $r21 = virtualinvoke $r80.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63) 
(declare-const var1880!2 String)
(assert (= var1880!2 (str.++ var1880!1 var1033)))
(assert true)
(define-const var1923 String (toString/-2075883882 var977)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var1300 var1923)) ; Statement: specialinvoke $r81.<java.lang.RuntimeException: void <init>(java.lang.String)>($r22) 

(declare-const var1300!1 var2819)
(declare-const var1923!1 String)
 ; Statement: throw $r81 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1574031999=([java.lang.ClassLoader, java.lang.ClassLoader], void), cast-from-var785-to-var256=([lombok.launch.ShadowClassLoader], java.lang.ClassLoader), var2796-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var2796-to-var1011=([java.util.ArrayList], java.util.List), override/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), parentExclusion/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), highlanders/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var2789-init=([], java.util.IdentityHashMap), <init>/-460065511=([java.util.IdentityHashMap], void), var2737_newSetFromMap/-447129444=([java.util.Map], java.util.Set), cast-from-var2789-to-var2625=([java.util.IdentityHashMap], java.util.Map), prependedParentLoaders/1139179338=([lombok.launch.ShadowClassLoader], java.util.Set), var1870-init=([], lombok.launch.PackageShader), arr-String-init=([], java.lang.String[]), <init>/334488186=([lombok.launch.PackageShader, java.lang.String[]], void), shader/1139179338=([lombok.launch.ShadowClassLoader], lombok.launch.PackageShader), var3870-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var3870-to-var2625=([java.util.HashMap], java.util.Map), mapJarPathToTracker/1139179338=([lombok.launch.ShadowClassLoader], java.util.Map), fileRootCache/1139179338=([lombok.launch.ShadowClassLoader], java.util.Map), jarLocCache/1139179338=([lombok.launch.ShadowClassLoader], java.util.Map), sclSuffix/1139179338=([lombok.launch.ShadowClassLoader], java.lang.String), getResource/413390302=([java.lang.Class, java.lang.String], java.net.URL), getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader), var2819-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var256-to-var2334=([java.lang.ClassLoader], java.lang.Object), toString/-1020053180=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var785=lombok.launch.ShadowClassLoader, var70=r0, var256=java.lang.ClassLoader, var2875=r1, var823=r12, var2272=null_type, var1089=r15, var1011=java.util.List, var3312=r13, var2339=r14, var2796=java.util.ArrayList, var3979=$r71, var2017=$r72, var3769=$r73, var2789=java.util.IdentityHashMap, var3335=$r74, var2245=java.util.Set, var2737=java.util.Collections, var2625=java.util.Map, var2370=$r6, var1870=lombok.launch.PackageShader, var39=$r75, var1782=$r8, var3870=java.util.HashMap, var1320=$r76, var3257=$r77, var3464=$r78, var3833=$r16, var2222=java.net.URL, var3208=r61, var1556=$r62, var526=$r17, var2628=$r48, var2819=java.lang.RuntimeException, var1300=$r81, var1880=$r80, var2334=java.lang.Object, var3253=$r20, var1033=$r63, var977=$r21, var1923=$r22}
; {lombok.launch.ShadowClassLoader=var785, r0=var70, java.lang.ClassLoader=var256, r1=var2875, r12=var823, null_type=var2272, r15=var1089, java.util.List=var1011, r13=var3312, r14=var2339, java.util.ArrayList=var2796, $r71=var3979, $r72=var2017, $r73=var3769, java.util.IdentityHashMap=var2789, $r74=var3335, java.util.Set=var2245, java.util.Collections=var2737, java.util.Map=var2625, $r6=var2370, lombok.launch.PackageShader=var1870, $r75=var39, $r8=var1782, java.util.HashMap=var3870, $r76=var1320, $r77=var3257, $r78=var3464, $r16=var3833, java.net.URL=var2222, r61=var3208, $r62=var1556, $r17=var526, $r48=var2628, java.lang.RuntimeException=var2819, $r81=var1300, $r80=var1880, java.lang.Object=var2334, $r20=var3253, $r63=var1033, $r21=var977, $r22=var1923}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.Class: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.ClassLoader;	r12 := @parameter1: java.lang.String;	r15 := @parameter2: java.lang.String;	r13 := @parameter3: java.util.List;	r14 := @parameter4: java.util.List;	specialinvoke r0.<java.lang.ClassLoader: void <init>(java.lang.ClassLoader)>(r1);	$r71 = new java.util.ArrayList;	specialinvoke $r71.<java.util.ArrayList: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.List override> = $r71;	$r72 = new java.util.ArrayList;	specialinvoke $r72.<java.util.ArrayList: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion> = $r72;	$r73 = new java.util.ArrayList;	specialinvoke $r73.<java.util.ArrayList: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> = $r73;	$r74 = new java.util.IdentityHashMap;	specialinvoke $r74.<java.util.IdentityHashMap: void <init>()>();	$r6 = staticinvoke <java.util.Collections: java.util.Set newSetFromMap(java.util.Map)>($r74);	r0.<lombok.launch.ShadowClassLoader: java.util.Set prependedParentLoaders> = $r6;	$r75 = new lombok.launch.PackageShader;	$r8 = newarray (java.lang.String)[2];	$r8[0] = "org/objectweb/asm/";	$r8[1] = "org/lombokweb/asm/";	specialinvoke $r75.<lombok.launch.PackageShader: void <init>(java.lang.String[])>($r8);	r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> = $r75;	$r76 = new java.util.HashMap;	specialinvoke $r76.<java.util.HashMap: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.Map mapJarPathToTracker> = $r76;	$r77 = new java.util.HashMap;	specialinvoke $r77.<java.util.HashMap: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.Map fileRootCache> = $r77;	$r78 = new java.util.HashMap;	specialinvoke $r78.<java.util.HashMap: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.Map jarLocCache> = $r78;	r0.<lombok.launch.ShadowClassLoader: java.lang.String sclSuffix> = r12;	if r13 == null goto (branch);	if r14 == null goto (branch);	if r15 == null goto $r16 = class "Llombok/launch/ShadowClassLoader;";	$r16 = class "Llombok/launch/ShadowClassLoader;";	r61 = virtualinvoke $r16.<java.lang.Class: java.net.URL getResource(java.lang.String)>("ShadowClassLoader.class");	if r61 != null goto $r62 = virtualinvoke r61.<java.net.URL: java.lang.String toString()>();	$r62 = null;	goto [?= (branch)];	if $r62 == null goto $r17 = class "Llombok/launch/ShadowClassLoader;";	$r17 = class "Llombok/launch/ShadowClassLoader;";	$r48 = virtualinvoke $r17.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	$r81 = new java.lang.RuntimeException;	$r80 = new java.lang.StringBuilder;	specialinvoke $r80.<java.lang.StringBuilder: void <init>(java.lang.String)>("ShadowLoader can\'t find itself. SCL loader type: ");	if $r48 != null goto $r20 = virtualinvoke $r48.<java.lang.Object: java.lang.Class getClass()>();	$r20 = virtualinvoke $r48.<java.lang.Object: java.lang.Class getClass()>();	$r63 = virtualinvoke $r20.<java.lang.Class: java.lang.String toString()>();	$r21 = virtualinvoke $r80.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r81.<java.lang.RuntimeException: void <init>(java.lang.String)>($r22);	throw $r81
;block_num 9