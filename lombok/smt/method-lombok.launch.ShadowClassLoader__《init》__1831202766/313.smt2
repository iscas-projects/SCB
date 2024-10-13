(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var149 0)
(declare-sort var2228 0)
(declare-sort var1502 0)
(declare-sort var898 0)
(declare-sort var1290 0)
(declare-sort var191 0)
(declare-sort var1019 0)
(declare-sort var2074 0)
(declare-sort var1379 0)
(declare-sort var1087 0)
(declare-sort var1280 0)
(declare-sort var2261 0)
(declare-sort var751 0)
(declare-sort var3102 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var149!class ClassObject)
(declare-fun <init>/-1574031999 (var2228 var2228) void)
(declare-fun cast-from-var149-to-var2228 (var149) var2228)
(declare-fun var1290-init () var1290)
(declare-fun <init>/-325640736 (var1290) void)
(declare-fun cast-from-var1290-to-var898 (var1290) var898)
(declare-fun override/1139179338 (var149) var898)
(declare-fun parentExclusion/1139179338 (var149) var898)
(declare-fun highlanders/1139179338 (var149) var898)
(declare-fun var191-init () var191)
(declare-fun <init>/-460065511 (var191) void)
(declare-fun var2074_newSetFromMap/-447129444 (var1379) var1019)
(declare-fun cast-from-var191-to-var1379 (var191) var1379)
(declare-fun prependedParentLoaders/1139179338 (var149) var1019)
(declare-fun var1087-init () var1087)
(declare-fun arr-String-init () (Array Int String))
(declare-fun <init>/334488186 (var1087 (Array Int String)) void)
(declare-fun shader/1139179338 (var149) var1087)
(declare-fun var1280-init () var1280)
(declare-fun <init>/-201242697 (var1280) void)
(declare-fun cast-from-var1280-to-var1379 (var1280) var1379)
(declare-fun mapJarPathToTracker/1139179338 (var149) var1379)
(declare-fun fileRootCache/1139179338 (var149) var1379)
(declare-fun jarLocCache/1139179338 (var149) var1379)
(declare-fun sclSuffix/1139179338 (var149) String)
(declare-fun getResource/413390302 (ClassObject String) var2261)
(declare-fun toString/-1839352374 (var2261) String)
(declare-fun getClassLoader/-563698447 (ClassObject) var2228)
(declare-fun var751-init () var751)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun getClass/1258963082 (var3102) ClassObject)
(declare-fun cast-from-var2228-to-var3102 (var2228) var3102)
(declare-fun toString/-1020053180 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var751 String) void)
(declare-const null-var149 var149)
(declare-const null-var2228 var2228)
(declare-const null-String String)
(declare-const null-var898 var898)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var2261 var2261)
(declare-const var1911 var149) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var1911 null-var149)))
(declare-const var1098 var2228) ; Statement: r1 := @parameter0: java.lang.ClassLoader 
(assert (not (= var1098 null-var2228)))
(declare-const var3354 String) ; Statement: r12 := @parameter1: java.lang.String 
(assert (not (= var3354 null-String)))
(declare-const var3028 String) ; Statement: r15 := @parameter2: java.lang.String 
(assert (not (= var3028 null-String)))
(declare-const var3695 var898) ; Statement: r13 := @parameter3: java.util.List 
(assert (not (= var3695 null-var898)))
(declare-const var66 var898) ; Statement: r14 := @parameter4: java.util.List 
(assert (not (= var66 null-var898)))
(assert true)
;(assert (<init>/-1574031999 (cast-from-var149-to-var2228 var1911) var1098)) ; Statement: specialinvoke r0.<java.lang.ClassLoader: void <init>(java.lang.ClassLoader)>(r1) 

(declare-const var1911!1 var149)
(declare-const var1098!1 var2228)
(define-const var1057 var1290 var1290-init) ; Statement: $r71 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1057)) ; Statement: specialinvoke $r71.<java.util.ArrayList: void <init>()>() 

(declare-const var1057!1 var1290)
(declare-const var1911!2 var149)
(assert (not (= var1911!2 null-var149)))
(assert (= (override/1139179338 var1911!2) (cast-from-var1290-to-var898 var1057!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.List override> = $r71 
(define-const var2624 var1290 var1290-init) ; Statement: $r72 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2624)) ; Statement: specialinvoke $r72.<java.util.ArrayList: void <init>()>() 

(declare-const var2624!1 var1290)
(declare-const var1911!3 var149)
(assert (not (= var1911!3 null-var149)))
(assert (= (parentExclusion/1139179338 var1911!3) (cast-from-var1290-to-var898 var2624!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion> = $r72 
(define-const var1533 var1290 var1290-init) ; Statement: $r73 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1533)) ; Statement: specialinvoke $r73.<java.util.ArrayList: void <init>()>() 

(declare-const var1533!1 var1290)
(declare-const var1911!4 var149)
(assert (not (= var1911!4 null-var149)))
(assert (= (highlanders/1139179338 var1911!4) (cast-from-var1290-to-var898 var1533!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> = $r73 
(define-const var2294 var191 var191-init) ; Statement: $r74 = new java.util.IdentityHashMap 
(assert true)
;(assert (<init>/-460065511 var2294)) ; Statement: specialinvoke $r74.<java.util.IdentityHashMap: void <init>()>() 

(declare-const var2294!1 var191)
(define-const var3664 var1019 (var2074_newSetFromMap/-447129444 (cast-from-var191-to-var1379 var2294!1))) ; Statement: $r6 = staticinvoke <java.util.Collections: java.util.Set newSetFromMap(java.util.Map)>($r74) 
(declare-const var1911!5 var149)
(assert (not (= var1911!5 null-var149)))
(assert (= (prependedParentLoaders/1139179338 var1911!5) var3664)) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Set prependedParentLoaders> = $r6 
(define-const var559 var1087 var1087-init) ; Statement: $r75 = new lombok.launch.PackageShader 
(define-const var741 (Array Int String) arr-String-init) ; Statement: $r8 = newarray (java.lang.String)[2] 
(declare-const var741!1 (Array Int String))
(assert (not (= var741!1 null-__Array__Int__String__)))
(assert (= (select var741!1 0) "org/objectweb/asm/")) ; Statement: $r8[0] = "org/objectweb/asm/" 
(declare-const var741!2 (Array Int String))
(assert (not (= var741!2 null-__Array__Int__String__)))
(assert (= (select var741!2 1) "org/lombokweb/asm/")) ; Statement: $r8[1] = "org/lombokweb/asm/" 
(assert true)
;(assert (<init>/334488186 var559 var741!2)) ; Statement: specialinvoke $r75.<lombok.launch.PackageShader: void <init>(java.lang.String[])>($r8) 

(declare-const var559!1 var1087)
(declare-const var741!3 (Array Int String))
(declare-const var1911!6 var149)
(assert (not (= var1911!6 null-var149)))
(assert (= (shader/1139179338 var1911!6) var559!1)) ; Statement: r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> = $r75 
(define-const var3272 var1280 var1280-init) ; Statement: $r76 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3272)) ; Statement: specialinvoke $r76.<java.util.HashMap: void <init>()>() 

(declare-const var3272!1 var1280)
(declare-const var1911!7 var149)
(assert (not (= var1911!7 null-var149)))
(assert (= (mapJarPathToTracker/1139179338 var1911!7) (cast-from-var1280-to-var1379 var3272!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Map mapJarPathToTracker> = $r76 
(define-const var1690 var1280 var1280-init) ; Statement: $r77 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var1690)) ; Statement: specialinvoke $r77.<java.util.HashMap: void <init>()>() 

(declare-const var1690!1 var1280)
(declare-const var1911!8 var149)
(assert (not (= var1911!8 null-var149)))
(assert (= (fileRootCache/1139179338 var1911!8) (cast-from-var1280-to-var1379 var1690!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Map fileRootCache> = $r77 
(define-const var1744 var1280 var1280-init) ; Statement: $r78 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var1744)) ; Statement: specialinvoke $r78.<java.util.HashMap: void <init>()>() 

(declare-const var1744!1 var1280)
(declare-const var1911!9 var149)
(assert (not (= var1911!9 null-var149)))
(assert (= (jarLocCache/1139179338 var1911!9) (cast-from-var1280-to-var1379 var1744!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Map jarLocCache> = $r78 
(declare-const var1911!10 var149)
(assert (not (= var1911!10 null-var149)))
(assert (= (sclSuffix/1139179338 var1911!10) var3354)) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.lang.String sclSuffix> = r12 
 ; Statement: if r13 == null goto (branch) 
(assert (= var3695 null-var898)) ; Cond: r13 == null 
 ; Statement: if r14 == null goto (branch) 
(assert (= var66 null-var898)) ; Cond: r14 == null 
 ; Statement: if r15 == null goto $r16 = class "Llombok/launch/ShadowClassLoader;" 
(assert (= var3028 null-String)) ; Cond: r15 == null 
(define-const var3729 ClassObject var149!class) ; Statement: $r16 = class "Llombok/launch/ShadowClassLoader;" 
(assert true)
(define-const var542 var2261 (getResource/413390302 var3729 "ShadowClassLoader.class")) ; Statement: r61 = virtualinvoke $r16.<java.lang.Class: java.net.URL getResource(java.lang.String)>("ShadowClassLoader.class") 
 ; Statement: if r61 != null goto $r62 = virtualinvoke r61.<java.net.URL: java.lang.String toString()>() 
(assert (not (= var542 null-var2261))) ; Cond: r61 != null 
(assert true)
(define-const var3350 String (toString/-1839352374 var542)) ; Statement: $r62 = virtualinvoke r61.<java.net.URL: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: if $r62 == null goto $r17 = class "Llombok/launch/ShadowClassLoader;" 
(assert (= var3350 null-String)) ; Cond: $r62 == null 
(define-const var2917 ClassObject var149!class) ; Statement: $r17 = class "Llombok/launch/ShadowClassLoader;" 
(assert true)
(define-const var2273 var2228 (getClassLoader/-563698447 var2917)) ; Statement: $r48 = virtualinvoke $r17.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
(define-const var687 var751 var751-init) ; Statement: $r81 = new java.lang.RuntimeException 
(define-const var2152 String String-init) ; Statement: $r80 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2152 "ShadowLoader can\u0027t find itself. SCL loader type: ")) ; Statement: specialinvoke $r80.<java.lang.StringBuilder: void <init>(java.lang.String)>("ShadowLoader can\'t find itself. SCL loader type: ") 
(declare-const var2152!1 String)
(assert (= var2152!1 "ShadowLoader can\u0027t find itself. SCL loader type: "))
 ; Statement: if $r48 != null goto $r20 = virtualinvoke $r48.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= var2273 null-var2228))) ; Cond: $r48 != null 
(assert true)
(define-const var2288 ClassObject (getClass/1258963082 (cast-from-var2228-to-var3102 var2273))) ; Statement: $r20 = virtualinvoke $r48.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3001 String (toString/-1020053180 var2288)) ; Statement: $r63 = virtualinvoke $r20.<java.lang.Class: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var522 String (append/672562846 var2152!1 var3001)) ; Statement: $r21 = virtualinvoke $r80.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63) 
(declare-const var2152!2 String)
(assert (= var2152!2 (str.++ var2152!1 var3001)))
(assert true)
(define-const var2750 String (toString/-2075883882 var522)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var687 var2750)) ; Statement: specialinvoke $r81.<java.lang.RuntimeException: void <init>(java.lang.String)>($r22) 

(declare-const var687!1 var751)
(declare-const var2750!1 String)
 ; Statement: throw $r81 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1574031999=([java.lang.ClassLoader, java.lang.ClassLoader], void), cast-from-var149-to-var2228=([lombok.launch.ShadowClassLoader], java.lang.ClassLoader), var1290-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var1290-to-var898=([java.util.ArrayList], java.util.List), override/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), parentExclusion/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), highlanders/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var191-init=([], java.util.IdentityHashMap), <init>/-460065511=([java.util.IdentityHashMap], void), var2074_newSetFromMap/-447129444=([java.util.Map], java.util.Set), cast-from-var191-to-var1379=([java.util.IdentityHashMap], java.util.Map), prependedParentLoaders/1139179338=([lombok.launch.ShadowClassLoader], java.util.Set), var1087-init=([], lombok.launch.PackageShader), arr-String-init=([], java.lang.String[]), <init>/334488186=([lombok.launch.PackageShader, java.lang.String[]], void), shader/1139179338=([lombok.launch.ShadowClassLoader], lombok.launch.PackageShader), var1280-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var1280-to-var1379=([java.util.HashMap], java.util.Map), mapJarPathToTracker/1139179338=([lombok.launch.ShadowClassLoader], java.util.Map), fileRootCache/1139179338=([lombok.launch.ShadowClassLoader], java.util.Map), jarLocCache/1139179338=([lombok.launch.ShadowClassLoader], java.util.Map), sclSuffix/1139179338=([lombok.launch.ShadowClassLoader], java.lang.String), getResource/413390302=([java.lang.Class, java.lang.String], java.net.URL), toString/-1839352374=([java.net.URL], java.lang.String), getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader), var751-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2228-to-var3102=([java.lang.ClassLoader], java.lang.Object), toString/-1020053180=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var149=lombok.launch.ShadowClassLoader, var1911=r0, var2228=java.lang.ClassLoader, var1098=r1, var3354=r12, var1502=null_type, var3028=r15, var898=java.util.List, var3695=r13, var66=r14, var1290=java.util.ArrayList, var1057=$r71, var2624=$r72, var1533=$r73, var191=java.util.IdentityHashMap, var2294=$r74, var1019=java.util.Set, var2074=java.util.Collections, var1379=java.util.Map, var3664=$r6, var1087=lombok.launch.PackageShader, var559=$r75, var741=$r8, var1280=java.util.HashMap, var3272=$r76, var1690=$r77, var1744=$r78, var3729=$r16, var2261=java.net.URL, var542=r61, var3350=$r62, var2917=$r17, var2273=$r48, var751=java.lang.RuntimeException, var687=$r81, var2152=$r80, var3102=java.lang.Object, var2288=$r20, var3001=$r63, var522=$r21, var2750=$r22}
; {lombok.launch.ShadowClassLoader=var149, r0=var1911, java.lang.ClassLoader=var2228, r1=var1098, r12=var3354, null_type=var1502, r15=var3028, java.util.List=var898, r13=var3695, r14=var66, java.util.ArrayList=var1290, $r71=var1057, $r72=var2624, $r73=var1533, java.util.IdentityHashMap=var191, $r74=var2294, java.util.Set=var1019, java.util.Collections=var2074, java.util.Map=var1379, $r6=var3664, lombok.launch.PackageShader=var1087, $r75=var559, $r8=var741, java.util.HashMap=var1280, $r76=var3272, $r77=var1690, $r78=var1744, $r16=var3729, java.net.URL=var2261, r61=var542, $r62=var3350, $r17=var2917, $r48=var2273, java.lang.RuntimeException=var751, $r81=var687, $r80=var2152, java.lang.Object=var3102, $r20=var2288, $r63=var3001, $r21=var522, $r22=var2750}
;seq <java.net.URL: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.Class: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.ClassLoader;	r12 := @parameter1: java.lang.String;	r15 := @parameter2: java.lang.String;	r13 := @parameter3: java.util.List;	r14 := @parameter4: java.util.List;	specialinvoke r0.<java.lang.ClassLoader: void <init>(java.lang.ClassLoader)>(r1);	$r71 = new java.util.ArrayList;	specialinvoke $r71.<java.util.ArrayList: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.List override> = $r71;	$r72 = new java.util.ArrayList;	specialinvoke $r72.<java.util.ArrayList: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion> = $r72;	$r73 = new java.util.ArrayList;	specialinvoke $r73.<java.util.ArrayList: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> = $r73;	$r74 = new java.util.IdentityHashMap;	specialinvoke $r74.<java.util.IdentityHashMap: void <init>()>();	$r6 = staticinvoke <java.util.Collections: java.util.Set newSetFromMap(java.util.Map)>($r74);	r0.<lombok.launch.ShadowClassLoader: java.util.Set prependedParentLoaders> = $r6;	$r75 = new lombok.launch.PackageShader;	$r8 = newarray (java.lang.String)[2];	$r8[0] = "org/objectweb/asm/";	$r8[1] = "org/lombokweb/asm/";	specialinvoke $r75.<lombok.launch.PackageShader: void <init>(java.lang.String[])>($r8);	r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> = $r75;	$r76 = new java.util.HashMap;	specialinvoke $r76.<java.util.HashMap: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.Map mapJarPathToTracker> = $r76;	$r77 = new java.util.HashMap;	specialinvoke $r77.<java.util.HashMap: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.Map fileRootCache> = $r77;	$r78 = new java.util.HashMap;	specialinvoke $r78.<java.util.HashMap: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.Map jarLocCache> = $r78;	r0.<lombok.launch.ShadowClassLoader: java.lang.String sclSuffix> = r12;	if r13 == null goto (branch);	if r14 == null goto (branch);	if r15 == null goto $r16 = class "Llombok/launch/ShadowClassLoader;";	$r16 = class "Llombok/launch/ShadowClassLoader;";	r61 = virtualinvoke $r16.<java.lang.Class: java.net.URL getResource(java.lang.String)>("ShadowClassLoader.class");	if r61 != null goto $r62 = virtualinvoke r61.<java.net.URL: java.lang.String toString()>();	$r62 = virtualinvoke r61.<java.net.URL: java.lang.String toString()>();	if $r62 == null goto $r17 = class "Llombok/launch/ShadowClassLoader;";	$r17 = class "Llombok/launch/ShadowClassLoader;";	$r48 = virtualinvoke $r17.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	$r81 = new java.lang.RuntimeException;	$r80 = new java.lang.StringBuilder;	specialinvoke $r80.<java.lang.StringBuilder: void <init>(java.lang.String)>("ShadowLoader can\'t find itself. SCL loader type: ");	if $r48 != null goto $r20 = virtualinvoke $r48.<java.lang.Object: java.lang.Class getClass()>();	$r20 = virtualinvoke $r48.<java.lang.Object: java.lang.Class getClass()>();	$r63 = virtualinvoke $r20.<java.lang.Class: java.lang.String toString()>();	$r21 = virtualinvoke $r80.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r81.<java.lang.RuntimeException: void <init>(java.lang.String)>($r22);	throw $r81
;block_num 9