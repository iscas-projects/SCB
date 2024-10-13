(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var703 0)
(declare-sort var1453 0)
(declare-sort var2232 0)
(declare-sort var3584 0)
(declare-sort var870 0)
(declare-sort var1249 0)
(declare-sort var1622 0)
(declare-sort var1029 0)
(declare-sort var2994 0)
(declare-sort var221 0)
(declare-sort var967 0)
(declare-sort var3077 0)
(declare-sort var564 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var703!class ClassObject)
(declare-fun <init>/-1574031999 (var1453 var1453) void)
(declare-fun cast-from-var703-to-var1453 (var703) var1453)
(declare-fun var870-init () var870)
(declare-fun <init>/-325640736 (var870) void)
(declare-fun cast-from-var870-to-var3584 (var870) var3584)
(declare-fun override/1139179338 (var703) var3584)
(declare-fun parentExclusion/1139179338 (var703) var3584)
(declare-fun highlanders/1139179338 (var703) var3584)
(declare-fun var1249-init () var1249)
(declare-fun <init>/-460065511 (var1249) void)
(declare-fun var1029_newSetFromMap/-447129444 (var2994) var1622)
(declare-fun cast-from-var1249-to-var2994 (var1249) var2994)
(declare-fun prependedParentLoaders/1139179338 (var703) var1622)
(declare-fun var221-init () var221)
(declare-fun arr-String-init () (Array Int String))
(declare-fun <init>/334488186 (var221 (Array Int String)) void)
(declare-fun shader/1139179338 (var703) var221)
(declare-fun var967-init () var967)
(declare-fun <init>/-201242697 (var967) void)
(declare-fun cast-from-var967-to-var2994 (var967) var2994)
(declare-fun mapJarPathToTracker/1139179338 (var703) var2994)
(declare-fun fileRootCache/1139179338 (var703) var2994)
(declare-fun jarLocCache/1139179338 (var703) var2994)
(declare-fun sclSuffix/1139179338 (var703) String)
(declare-fun getResource/413390302 (ClassObject String) var3077)
(declare-fun toString/-1839352374 (var3077) String)
(declare-fun getClassLoader/-563698447 (ClassObject) var1453)
(declare-fun var564-init () var564)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var564 String) void)
(declare-const null-var703 var703)
(declare-const null-var1453 var1453)
(declare-const null-String String)
(declare-const null-var3584 var3584)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var3077 var3077)
(declare-const var2433 var703) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var2433 null-var703)))
(declare-const var1131 var1453) ; Statement: r1 := @parameter0: java.lang.ClassLoader 
(assert (not (= var1131 null-var1453)))
(declare-const var3492 String) ; Statement: r12 := @parameter1: java.lang.String 
(assert (not (= var3492 null-String)))
(declare-const var3093 String) ; Statement: r15 := @parameter2: java.lang.String 
(assert (not (= var3093 null-String)))
(declare-const var2734 var3584) ; Statement: r13 := @parameter3: java.util.List 
(assert (not (= var2734 null-var3584)))
(declare-const var1827 var3584) ; Statement: r14 := @parameter4: java.util.List 
(assert (not (= var1827 null-var3584)))
(assert true)
;(assert (<init>/-1574031999 (cast-from-var703-to-var1453 var2433) var1131)) ; Statement: specialinvoke r0.<java.lang.ClassLoader: void <init>(java.lang.ClassLoader)>(r1) 

(declare-const var2433!1 var703)
(declare-const var1131!1 var1453)
(define-const var2783 var870 var870-init) ; Statement: $r71 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2783)) ; Statement: specialinvoke $r71.<java.util.ArrayList: void <init>()>() 

(declare-const var2783!1 var870)
(declare-const var2433!2 var703)
(assert (not (= var2433!2 null-var703)))
(assert (= (override/1139179338 var2433!2) (cast-from-var870-to-var3584 var2783!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.List override> = $r71 
(define-const var919 var870 var870-init) ; Statement: $r72 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var919)) ; Statement: specialinvoke $r72.<java.util.ArrayList: void <init>()>() 

(declare-const var919!1 var870)
(declare-const var2433!3 var703)
(assert (not (= var2433!3 null-var703)))
(assert (= (parentExclusion/1139179338 var2433!3) (cast-from-var870-to-var3584 var919!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion> = $r72 
(define-const var3770 var870 var870-init) ; Statement: $r73 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3770)) ; Statement: specialinvoke $r73.<java.util.ArrayList: void <init>()>() 

(declare-const var3770!1 var870)
(declare-const var2433!4 var703)
(assert (not (= var2433!4 null-var703)))
(assert (= (highlanders/1139179338 var2433!4) (cast-from-var870-to-var3584 var3770!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> = $r73 
(define-const var2242 var1249 var1249-init) ; Statement: $r74 = new java.util.IdentityHashMap 
(assert true)
;(assert (<init>/-460065511 var2242)) ; Statement: specialinvoke $r74.<java.util.IdentityHashMap: void <init>()>() 

(declare-const var2242!1 var1249)
(define-const var30 var1622 (var1029_newSetFromMap/-447129444 (cast-from-var1249-to-var2994 var2242!1))) ; Statement: $r6 = staticinvoke <java.util.Collections: java.util.Set newSetFromMap(java.util.Map)>($r74) 
(declare-const var2433!5 var703)
(assert (not (= var2433!5 null-var703)))
(assert (= (prependedParentLoaders/1139179338 var2433!5) var30)) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Set prependedParentLoaders> = $r6 
(define-const var1419 var221 var221-init) ; Statement: $r75 = new lombok.launch.PackageShader 
(define-const var2154 (Array Int String) arr-String-init) ; Statement: $r8 = newarray (java.lang.String)[2] 
(declare-const var2154!1 (Array Int String))
(assert (not (= var2154!1 null-__Array__Int__String__)))
(assert (= (select var2154!1 0) "org/objectweb/asm/")) ; Statement: $r8[0] = "org/objectweb/asm/" 
(declare-const var2154!2 (Array Int String))
(assert (not (= var2154!2 null-__Array__Int__String__)))
(assert (= (select var2154!2 1) "org/lombokweb/asm/")) ; Statement: $r8[1] = "org/lombokweb/asm/" 
(assert true)
;(assert (<init>/334488186 var1419 var2154!2)) ; Statement: specialinvoke $r75.<lombok.launch.PackageShader: void <init>(java.lang.String[])>($r8) 

(declare-const var1419!1 var221)
(declare-const var2154!3 (Array Int String))
(declare-const var2433!6 var703)
(assert (not (= var2433!6 null-var703)))
(assert (= (shader/1139179338 var2433!6) var1419!1)) ; Statement: r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> = $r75 
(define-const var160 var967 var967-init) ; Statement: $r76 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var160)) ; Statement: specialinvoke $r76.<java.util.HashMap: void <init>()>() 

(declare-const var160!1 var967)
(declare-const var2433!7 var703)
(assert (not (= var2433!7 null-var703)))
(assert (= (mapJarPathToTracker/1139179338 var2433!7) (cast-from-var967-to-var2994 var160!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Map mapJarPathToTracker> = $r76 
(define-const var3034 var967 var967-init) ; Statement: $r77 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3034)) ; Statement: specialinvoke $r77.<java.util.HashMap: void <init>()>() 

(declare-const var3034!1 var967)
(declare-const var2433!8 var703)
(assert (not (= var2433!8 null-var703)))
(assert (= (fileRootCache/1139179338 var2433!8) (cast-from-var967-to-var2994 var3034!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Map fileRootCache> = $r77 
(define-const var505 var967 var967-init) ; Statement: $r78 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var505)) ; Statement: specialinvoke $r78.<java.util.HashMap: void <init>()>() 

(declare-const var505!1 var967)
(declare-const var2433!9 var703)
(assert (not (= var2433!9 null-var703)))
(assert (= (jarLocCache/1139179338 var2433!9) (cast-from-var967-to-var2994 var505!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Map jarLocCache> = $r78 
(declare-const var2433!10 var703)
(assert (not (= var2433!10 null-var703)))
(assert (= (sclSuffix/1139179338 var2433!10) var3492)) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.lang.String sclSuffix> = r12 
 ; Statement: if r13 == null goto (branch) 
(assert (= var2734 null-var3584)) ; Cond: r13 == null 
 ; Statement: if r14 == null goto (branch) 
(assert (= var1827 null-var3584)) ; Cond: r14 == null 
 ; Statement: if r15 == null goto $r16 = class "Llombok/launch/ShadowClassLoader;" 
(assert (= var3093 null-String)) ; Cond: r15 == null 
(define-const var1893 ClassObject var703!class) ; Statement: $r16 = class "Llombok/launch/ShadowClassLoader;" 
(assert true)
(define-const var2637 var3077 (getResource/413390302 var1893 "ShadowClassLoader.class")) ; Statement: r61 = virtualinvoke $r16.<java.lang.Class: java.net.URL getResource(java.lang.String)>("ShadowClassLoader.class") 
 ; Statement: if r61 != null goto $r62 = virtualinvoke r61.<java.net.URL: java.lang.String toString()>() 
(assert (not (= var2637 null-var3077))) ; Cond: r61 != null 
(assert true)
(define-const var2795 String (toString/-1839352374 var2637)) ; Statement: $r62 = virtualinvoke r61.<java.net.URL: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: if $r62 == null goto $r17 = class "Llombok/launch/ShadowClassLoader;" 
(assert (= var2795 null-String)) ; Cond: $r62 == null 
(define-const var3465 ClassObject var703!class) ; Statement: $r17 = class "Llombok/launch/ShadowClassLoader;" 
(assert true)
(define-const var3978 var1453 (getClassLoader/-563698447 var3465)) ; Statement: $r48 = virtualinvoke $r17.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
(define-const var843 var564 var564-init) ; Statement: $r81 = new java.lang.RuntimeException 
(define-const var2094 String String-init) ; Statement: $r80 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2094 "ShadowLoader can\u0027t find itself. SCL loader type: ")) ; Statement: specialinvoke $r80.<java.lang.StringBuilder: void <init>(java.lang.String)>("ShadowLoader can\'t find itself. SCL loader type: ") 
(declare-const var2094!1 String)
(assert (= var2094!1 "ShadowLoader can\u0027t find itself. SCL loader type: "))
 ; Statement: if $r48 != null goto $r20 = virtualinvoke $r48.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (not (= var3978 null-var1453)))) ; Negate: Cond: $r48 != null  
(define-const var2522 String "*NULL*") ; Statement: $r63 = "*NULL*" 
 ; Statement: goto [?= $r21 = virtualinvoke $r80.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3061 String (append/672562846 var2094!1 var2522)) ; Statement: $r21 = virtualinvoke $r80.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63) 
(declare-const var2094!2 String)
(assert (= var2094!2 (str.++ var2094!1 var2522)))
(assert true)
(define-const var3512 String (toString/-2075883882 var3061)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var843 var3512)) ; Statement: specialinvoke $r81.<java.lang.RuntimeException: void <init>(java.lang.String)>($r22) 

(declare-const var843!1 var564)
(declare-const var3512!1 String)
 ; Statement: throw $r81 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1574031999=([java.lang.ClassLoader, java.lang.ClassLoader], void), cast-from-var703-to-var1453=([lombok.launch.ShadowClassLoader], java.lang.ClassLoader), var870-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var870-to-var3584=([java.util.ArrayList], java.util.List), override/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), parentExclusion/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), highlanders/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var1249-init=([], java.util.IdentityHashMap), <init>/-460065511=([java.util.IdentityHashMap], void), var1029_newSetFromMap/-447129444=([java.util.Map], java.util.Set), cast-from-var1249-to-var2994=([java.util.IdentityHashMap], java.util.Map), prependedParentLoaders/1139179338=([lombok.launch.ShadowClassLoader], java.util.Set), var221-init=([], lombok.launch.PackageShader), arr-String-init=([], java.lang.String[]), <init>/334488186=([lombok.launch.PackageShader, java.lang.String[]], void), shader/1139179338=([lombok.launch.ShadowClassLoader], lombok.launch.PackageShader), var967-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var967-to-var2994=([java.util.HashMap], java.util.Map), mapJarPathToTracker/1139179338=([lombok.launch.ShadowClassLoader], java.util.Map), fileRootCache/1139179338=([lombok.launch.ShadowClassLoader], java.util.Map), jarLocCache/1139179338=([lombok.launch.ShadowClassLoader], java.util.Map), sclSuffix/1139179338=([lombok.launch.ShadowClassLoader], java.lang.String), getResource/413390302=([java.lang.Class, java.lang.String], java.net.URL), toString/-1839352374=([java.net.URL], java.lang.String), getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader), var564-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var703=lombok.launch.ShadowClassLoader, var2433=r0, var1453=java.lang.ClassLoader, var1131=r1, var3492=r12, var2232=null_type, var3093=r15, var3584=java.util.List, var2734=r13, var1827=r14, var870=java.util.ArrayList, var2783=$r71, var919=$r72, var3770=$r73, var1249=java.util.IdentityHashMap, var2242=$r74, var1622=java.util.Set, var1029=java.util.Collections, var2994=java.util.Map, var30=$r6, var221=lombok.launch.PackageShader, var1419=$r75, var2154=$r8, var967=java.util.HashMap, var160=$r76, var3034=$r77, var505=$r78, var1893=$r16, var3077=java.net.URL, var2637=r61, var2795=$r62, var3465=$r17, var3978=$r48, var564=java.lang.RuntimeException, var843=$r81, var2094=$r80, var2522=$r63, var3061=$r21, var3512=$r22}
; {lombok.launch.ShadowClassLoader=var703, r0=var2433, java.lang.ClassLoader=var1453, r1=var1131, r12=var3492, null_type=var2232, r15=var3093, java.util.List=var3584, r13=var2734, r14=var1827, java.util.ArrayList=var870, $r71=var2783, $r72=var919, $r73=var3770, java.util.IdentityHashMap=var1249, $r74=var2242, java.util.Set=var1622, java.util.Collections=var1029, java.util.Map=var2994, $r6=var30, lombok.launch.PackageShader=var221, $r75=var1419, $r8=var2154, java.util.HashMap=var967, $r76=var160, $r77=var3034, $r78=var505, $r16=var1893, java.net.URL=var3077, r61=var2637, $r62=var2795, $r17=var3465, $r48=var3978, java.lang.RuntimeException=var564, $r81=var843, $r80=var2094, $r63=var2522, $r21=var3061, $r22=var3512}
;seq <java.net.URL: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.ClassLoader;	r12 := @parameter1: java.lang.String;	r15 := @parameter2: java.lang.String;	r13 := @parameter3: java.util.List;	r14 := @parameter4: java.util.List;	specialinvoke r0.<java.lang.ClassLoader: void <init>(java.lang.ClassLoader)>(r1);	$r71 = new java.util.ArrayList;	specialinvoke $r71.<java.util.ArrayList: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.List override> = $r71;	$r72 = new java.util.ArrayList;	specialinvoke $r72.<java.util.ArrayList: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion> = $r72;	$r73 = new java.util.ArrayList;	specialinvoke $r73.<java.util.ArrayList: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> = $r73;	$r74 = new java.util.IdentityHashMap;	specialinvoke $r74.<java.util.IdentityHashMap: void <init>()>();	$r6 = staticinvoke <java.util.Collections: java.util.Set newSetFromMap(java.util.Map)>($r74);	r0.<lombok.launch.ShadowClassLoader: java.util.Set prependedParentLoaders> = $r6;	$r75 = new lombok.launch.PackageShader;	$r8 = newarray (java.lang.String)[2];	$r8[0] = "org/objectweb/asm/";	$r8[1] = "org/lombokweb/asm/";	specialinvoke $r75.<lombok.launch.PackageShader: void <init>(java.lang.String[])>($r8);	r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> = $r75;	$r76 = new java.util.HashMap;	specialinvoke $r76.<java.util.HashMap: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.Map mapJarPathToTracker> = $r76;	$r77 = new java.util.HashMap;	specialinvoke $r77.<java.util.HashMap: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.Map fileRootCache> = $r77;	$r78 = new java.util.HashMap;	specialinvoke $r78.<java.util.HashMap: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.Map jarLocCache> = $r78;	r0.<lombok.launch.ShadowClassLoader: java.lang.String sclSuffix> = r12;	if r13 == null goto (branch);	if r14 == null goto (branch);	if r15 == null goto $r16 = class "Llombok/launch/ShadowClassLoader;";	$r16 = class "Llombok/launch/ShadowClassLoader;";	r61 = virtualinvoke $r16.<java.lang.Class: java.net.URL getResource(java.lang.String)>("ShadowClassLoader.class");	if r61 != null goto $r62 = virtualinvoke r61.<java.net.URL: java.lang.String toString()>();	$r62 = virtualinvoke r61.<java.net.URL: java.lang.String toString()>();	if $r62 == null goto $r17 = class "Llombok/launch/ShadowClassLoader;";	$r17 = class "Llombok/launch/ShadowClassLoader;";	$r48 = virtualinvoke $r17.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	$r81 = new java.lang.RuntimeException;	$r80 = new java.lang.StringBuilder;	specialinvoke $r80.<java.lang.StringBuilder: void <init>(java.lang.String)>("ShadowLoader can\'t find itself. SCL loader type: ");	if $r48 != null goto $r20 = virtualinvoke $r48.<java.lang.Object: java.lang.Class getClass()>();	$r63 = "*NULL*";	goto [?= $r21 = virtualinvoke $r80.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63)];	$r21 = virtualinvoke $r80.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r63);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r81.<java.lang.RuntimeException: void <init>(java.lang.String)>($r22);	throw $r81
;block_num 9