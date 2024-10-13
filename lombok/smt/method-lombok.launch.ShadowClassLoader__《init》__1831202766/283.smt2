(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var793 0)
(declare-sort var749 0)
(declare-sort var3124 0)
(declare-sort var3400 0)
(declare-sort var1261 0)
(declare-sort var1162 0)
(declare-sort var3950 0)
(declare-sort var2812 0)
(declare-sort var3801 0)
(declare-sort var1511 0)
(declare-sort var276 0)
(declare-sort var2845 0)
(declare-sort var3090 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var793!class ClassObject)
(declare-fun <init>/-1574031999 (var749 var749) void)
(declare-fun cast-from-var793-to-var749 (var793) var749)
(declare-fun var1261-init () var1261)
(declare-fun <init>/-325640736 (var1261) void)
(declare-fun cast-from-var1261-to-var3400 (var1261) var3400)
(declare-fun override/1139179338 (var793) var3400)
(declare-fun parentExclusion/1139179338 (var793) var3400)
(declare-fun highlanders/1139179338 (var793) var3400)
(declare-fun var1162-init () var1162)
(declare-fun <init>/-460065511 (var1162) void)
(declare-fun var2812_newSetFromMap/-447129444 (var3801) var3950)
(declare-fun cast-from-var1162-to-var3801 (var1162) var3801)
(declare-fun prependedParentLoaders/1139179338 (var793) var3950)
(declare-fun var1511-init () var1511)
(declare-fun arr-String-init () (Array Int String))
(declare-fun <init>/334488186 (var1511 (Array Int String)) void)
(declare-fun shader/1139179338 (var793) var1511)
(declare-fun var276-init () var276)
(declare-fun <init>/-201242697 (var276) void)
(declare-fun cast-from-var276-to-var3801 (var276) var3801)
(declare-fun mapJarPathToTracker/1139179338 (var793) var3801)
(declare-fun fileRootCache/1139179338 (var793) var3801)
(declare-fun jarLocCache/1139179338 (var793) var3801)
(declare-fun sclSuffix/1139179338 (var793) String)
(declare-fun getResource/413390302 (ClassObject String) var2845)
(declare-fun getClassLoader/-563698447 (ClassObject) var749)
(declare-fun var3090-init () var3090)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var3090 String) void)
(declare-const null-var793 var793)
(declare-const null-var749 var749)
(declare-const null-String String)
(declare-const null-var3400 var3400)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var2845 var2845)
(declare-const var3156 var793) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var3156 null-var793)))
(declare-const var2424 var749) ; Statement: r1 := @parameter0: java.lang.ClassLoader 
(assert (not (= var2424 null-var749)))
(declare-const var310 String) ; Statement: r12 := @parameter1: java.lang.String 
(assert (not (= var310 null-String)))
(declare-const var307 String) ; Statement: r15 := @parameter2: java.lang.String 
(assert (not (= var307 null-String)))
(declare-const var418 var3400) ; Statement: r13 := @parameter3: java.util.List 
(assert (not (= var418 null-var3400)))
(declare-const var3279 var3400) ; Statement: r14 := @parameter4: java.util.List 
(assert (not (= var3279 null-var3400)))
(assert true)
;(assert (<init>/-1574031999 (cast-from-var793-to-var749 var3156) var2424)) ; Statement: specialinvoke r0.<java.lang.ClassLoader: void <init>(java.lang.ClassLoader)>(r1) 

(declare-const var3156!1 var793)
(declare-const var2424!1 var749)
(define-const var1161 var1261 var1261-init) ; Statement: $r71 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1161)) ; Statement: specialinvoke $r71.<java.util.ArrayList: void <init>()>() 

(declare-const var1161!1 var1261)
(declare-const var3156!2 var793)
(assert (not (= var3156!2 null-var793)))
(assert (= (override/1139179338 var3156!2) (cast-from-var1261-to-var3400 var1161!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.List override> = $r71 
(define-const var194 var1261 var1261-init) ; Statement: $r72 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var194)) ; Statement: specialinvoke $r72.<java.util.ArrayList: void <init>()>() 

(declare-const var194!1 var1261)
(declare-const var3156!3 var793)
(assert (not (= var3156!3 null-var793)))
(assert (= (parentExclusion/1139179338 var3156!3) (cast-from-var1261-to-var3400 var194!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion> = $r72 
(define-const var508 var1261 var1261-init) ; Statement: $r73 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var508)) ; Statement: specialinvoke $r73.<java.util.ArrayList: void <init>()>() 

(declare-const var508!1 var1261)
(declare-const var3156!4 var793)
(assert (not (= var3156!4 null-var793)))
(assert (= (highlanders/1139179338 var3156!4) (cast-from-var1261-to-var3400 var508!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> = $r73 
(define-const var3380 var1162 var1162-init) ; Statement: $r74 = new java.util.IdentityHashMap 
(assert true)
;(assert (<init>/-460065511 var3380)) ; Statement: specialinvoke $r74.<java.util.IdentityHashMap: void <init>()>() 

(declare-const var3380!1 var1162)
(define-const var3853 var3950 (var2812_newSetFromMap/-447129444 (cast-from-var1162-to-var3801 var3380!1))) ; Statement: $r6 = staticinvoke <java.util.Collections: java.util.Set newSetFromMap(java.util.Map)>($r74) 
(declare-const var3156!5 var793)
(assert (not (= var3156!5 null-var793)))
(assert (= (prependedParentLoaders/1139179338 var3156!5) var3853)) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Set prependedParentLoaders> = $r6 
(define-const var3832 var1511 var1511-init) ; Statement: $r75 = new lombok.launch.PackageShader 
(define-const var3421 (Array Int String) arr-String-init) ; Statement: $r8 = newarray (java.lang.String)[2] 
(declare-const var3421!1 (Array Int String))
(assert (not (= var3421!1 null-__Array__Int__String__)))
(assert (= (select var3421!1 0) "org/objectweb/asm/")) ; Statement: $r8[0] = "org/objectweb/asm/" 
(declare-const var3421!2 (Array Int String))
(assert (not (= var3421!2 null-__Array__Int__String__)))
(assert (= (select var3421!2 1) "org/lombokweb/asm/")) ; Statement: $r8[1] = "org/lombokweb/asm/" 
(assert true)
;(assert (<init>/334488186 var3832 var3421!2)) ; Statement: specialinvoke $r75.<lombok.launch.PackageShader: void <init>(java.lang.String[])>($r8) 

(declare-const var3832!1 var1511)
(declare-const var3421!3 (Array Int String))
(declare-const var3156!6 var793)
(assert (not (= var3156!6 null-var793)))
(assert (= (shader/1139179338 var3156!6) var3832!1)) ; Statement: r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> = $r75 
(define-const var3084 var276 var276-init) ; Statement: $r76 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3084)) ; Statement: specialinvoke $r76.<java.util.HashMap: void <init>()>() 

(declare-const var3084!1 var276)
(declare-const var3156!7 var793)
(assert (not (= var3156!7 null-var793)))
(assert (= (mapJarPathToTracker/1139179338 var3156!7) (cast-from-var276-to-var3801 var3084!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Map mapJarPathToTracker> = $r76 
(define-const var3636 var276 var276-init) ; Statement: $r77 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3636)) ; Statement: specialinvoke $r77.<java.util.HashMap: void <init>()>() 

(declare-const var3636!1 var276)
(declare-const var3156!8 var793)
(assert (not (= var3156!8 null-var793)))
(assert (= (fileRootCache/1139179338 var3156!8) (cast-from-var276-to-var3801 var3636!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Map fileRootCache> = $r77 
(define-const var145 var276 var276-init) ; Statement: $r78 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var145)) ; Statement: specialinvoke $r78.<java.util.HashMap: void <init>()>() 

(declare-const var145!1 var276)
(declare-const var3156!9 var793)
(assert (not (= var3156!9 null-var793)))
(assert (= (jarLocCache/1139179338 var3156!9) (cast-from-var276-to-var3801 var145!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Map jarLocCache> = $r78 
(declare-const var3156!10 var793)
(assert (not (= var3156!10 null-var793)))
(assert (= (sclSuffix/1139179338 var3156!10) var310)) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.lang.String sclSuffix> = r12 
 ; Statement: if r13 == null goto (branch) 
(assert (= var418 null-var3400)) ; Cond: r13 == null 
 ; Statement: if r14 == null goto (branch) 
(assert (= var3279 null-var3400)) ; Cond: r14 == null 
 ; Statement: if r15 == null goto $r16 = class "Llombok/launch/ShadowClassLoader;" 
(assert (= var307 null-String)) ; Cond: r15 == null 
(define-const var1652 ClassObject var793!class) ; Statement: $r16 = class "Llombok/launch/ShadowClassLoader;" 
(assert true)
(define-const var1108 var2845 (getResource/413390302 var1652 "ShadowClassLoader.class")) ; Statement: r61 = virtualinvoke $r16.<java.lang.Class: java.net.URL getResource(java.lang.String)>("ShadowClassLoader.class") 
 ; Statement: if r61 != null goto $r62 = virtualinvoke r61.<java.net.URL: java.lang.String toString()>() 
(assert (not (not (= var1108 null-var2845)))) ; Negate: Cond: r61 != null  
(define-const var732 String null-String) ; Statement: $r62 = null 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $r62 == null goto $r17 = class "Llombok/launch/ShadowClassLoader;" 
(assert (= var732 null-String)) ; Cond: $r62 == null 
(define-const var3631 ClassObject var793!class) ; Statement: $r17 = class "Llombok/launch/ShadowClassLoader;" 
(assert true)
(define-const var3719 var749 (getClassLoader/-563698447 var3631)) ; Statement: $r48 = virtualinvoke $r17.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
(define-const var3822 var3090 var3090-init) ; Statement: $r81 = new java.lang.RuntimeException 
(define-const var1317 String String-init) ; Statement: $r80 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1317 "ShadowLoader can\u0027t find itself. SCL loader type: ")) ; Statement: specialinvoke $r80.<java.lang.StringBuilder: void <init>(java.lang.String)>("ShadowLoader can\'t find itself. SCL loader type: ") 
(declare-const var1317!1 String)
(assert (= var1317!1 "ShadowLoader can\u0027t find itself. SCL loader type: "))
 ; Statement: if $r48 != null goto $r20 = virtualinvoke $r48.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (not (= var3719 null-var749)))) ; Negate: Cond: $r48 != null  
(define-const var1267 String "*NULL*") ; Statement: $r63 = "*NULL*" 
 ; Statement: goto [?= $r21 = virtualinvoke $r80.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1158 String (append/672562846 var1317!1 var1267)) ; Statement: $r21 = virtualinvoke $r80.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63) 
(declare-const var1317!2 String)
(assert (= var1317!2 (str.++ var1317!1 var1267)))
(assert true)
(define-const var3522 String (toString/-2075883882 var1158)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var3822 var3522)) ; Statement: specialinvoke $r81.<java.lang.RuntimeException: void <init>(java.lang.String)>($r22) 

(declare-const var3822!1 var3090)
(declare-const var3522!1 String)
 ; Statement: throw $r81 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1574031999=([java.lang.ClassLoader, java.lang.ClassLoader], void), cast-from-var793-to-var749=([lombok.launch.ShadowClassLoader], java.lang.ClassLoader), var1261-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var1261-to-var3400=([java.util.ArrayList], java.util.List), override/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), parentExclusion/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), highlanders/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var1162-init=([], java.util.IdentityHashMap), <init>/-460065511=([java.util.IdentityHashMap], void), var2812_newSetFromMap/-447129444=([java.util.Map], java.util.Set), cast-from-var1162-to-var3801=([java.util.IdentityHashMap], java.util.Map), prependedParentLoaders/1139179338=([lombok.launch.ShadowClassLoader], java.util.Set), var1511-init=([], lombok.launch.PackageShader), arr-String-init=([], java.lang.String[]), <init>/334488186=([lombok.launch.PackageShader, java.lang.String[]], void), shader/1139179338=([lombok.launch.ShadowClassLoader], lombok.launch.PackageShader), var276-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var276-to-var3801=([java.util.HashMap], java.util.Map), mapJarPathToTracker/1139179338=([lombok.launch.ShadowClassLoader], java.util.Map), fileRootCache/1139179338=([lombok.launch.ShadowClassLoader], java.util.Map), jarLocCache/1139179338=([lombok.launch.ShadowClassLoader], java.util.Map), sclSuffix/1139179338=([lombok.launch.ShadowClassLoader], java.lang.String), getResource/413390302=([java.lang.Class, java.lang.String], java.net.URL), getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader), var3090-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var793=lombok.launch.ShadowClassLoader, var3156=r0, var749=java.lang.ClassLoader, var2424=r1, var310=r12, var3124=null_type, var307=r15, var3400=java.util.List, var418=r13, var3279=r14, var1261=java.util.ArrayList, var1161=$r71, var194=$r72, var508=$r73, var1162=java.util.IdentityHashMap, var3380=$r74, var3950=java.util.Set, var2812=java.util.Collections, var3801=java.util.Map, var3853=$r6, var1511=lombok.launch.PackageShader, var3832=$r75, var3421=$r8, var276=java.util.HashMap, var3084=$r76, var3636=$r77, var145=$r78, var1652=$r16, var2845=java.net.URL, var1108=r61, var732=$r62, var3631=$r17, var3719=$r48, var3090=java.lang.RuntimeException, var3822=$r81, var1317=$r80, var1267=$r63, var1158=$r21, var3522=$r22}
; {lombok.launch.ShadowClassLoader=var793, r0=var3156, java.lang.ClassLoader=var749, r1=var2424, r12=var310, null_type=var3124, r15=var307, java.util.List=var3400, r13=var418, r14=var3279, java.util.ArrayList=var1261, $r71=var1161, $r72=var194, $r73=var508, java.util.IdentityHashMap=var1162, $r74=var3380, java.util.Set=var3950, java.util.Collections=var2812, java.util.Map=var3801, $r6=var3853, lombok.launch.PackageShader=var1511, $r75=var3832, $r8=var3421, java.util.HashMap=var276, $r76=var3084, $r77=var3636, $r78=var145, $r16=var1652, java.net.URL=var2845, r61=var1108, $r62=var732, $r17=var3631, $r48=var3719, java.lang.RuntimeException=var3090, $r81=var3822, $r80=var1317, $r63=var1267, $r21=var1158, $r22=var3522}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.ClassLoader;	r12 := @parameter1: java.lang.String;	r15 := @parameter2: java.lang.String;	r13 := @parameter3: java.util.List;	r14 := @parameter4: java.util.List;	specialinvoke r0.<java.lang.ClassLoader: void <init>(java.lang.ClassLoader)>(r1);	$r71 = new java.util.ArrayList;	specialinvoke $r71.<java.util.ArrayList: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.List override> = $r71;	$r72 = new java.util.ArrayList;	specialinvoke $r72.<java.util.ArrayList: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion> = $r72;	$r73 = new java.util.ArrayList;	specialinvoke $r73.<java.util.ArrayList: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> = $r73;	$r74 = new java.util.IdentityHashMap;	specialinvoke $r74.<java.util.IdentityHashMap: void <init>()>();	$r6 = staticinvoke <java.util.Collections: java.util.Set newSetFromMap(java.util.Map)>($r74);	r0.<lombok.launch.ShadowClassLoader: java.util.Set prependedParentLoaders> = $r6;	$r75 = new lombok.launch.PackageShader;	$r8 = newarray (java.lang.String)[2];	$r8[0] = "org/objectweb/asm/";	$r8[1] = "org/lombokweb/asm/";	specialinvoke $r75.<lombok.launch.PackageShader: void <init>(java.lang.String[])>($r8);	r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> = $r75;	$r76 = new java.util.HashMap;	specialinvoke $r76.<java.util.HashMap: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.Map mapJarPathToTracker> = $r76;	$r77 = new java.util.HashMap;	specialinvoke $r77.<java.util.HashMap: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.Map fileRootCache> = $r77;	$r78 = new java.util.HashMap;	specialinvoke $r78.<java.util.HashMap: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.Map jarLocCache> = $r78;	r0.<lombok.launch.ShadowClassLoader: java.lang.String sclSuffix> = r12;	if r13 == null goto (branch);	if r14 == null goto (branch);	if r15 == null goto $r16 = class "Llombok/launch/ShadowClassLoader;";	$r16 = class "Llombok/launch/ShadowClassLoader;";	r61 = virtualinvoke $r16.<java.lang.Class: java.net.URL getResource(java.lang.String)>("ShadowClassLoader.class");	if r61 != null goto $r62 = virtualinvoke r61.<java.net.URL: java.lang.String toString()>();	$r62 = null;	goto [?= (branch)];	if $r62 == null goto $r17 = class "Llombok/launch/ShadowClassLoader;";	$r17 = class "Llombok/launch/ShadowClassLoader;";	$r48 = virtualinvoke $r17.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	$r81 = new java.lang.RuntimeException;	$r80 = new java.lang.StringBuilder;	specialinvoke $r80.<java.lang.StringBuilder: void <init>(java.lang.String)>("ShadowLoader can\'t find itself. SCL loader type: ");	if $r48 != null goto $r20 = virtualinvoke $r48.<java.lang.Object: java.lang.Class getClass()>();	$r63 = "*NULL*";	goto [?= $r21 = virtualinvoke $r80.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63)];	$r21 = virtualinvoke $r80.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r81.<java.lang.RuntimeException: void <init>(java.lang.String)>($r22);	throw $r81
;block_num 9