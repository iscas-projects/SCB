(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1519 0)
(declare-sort var3365 0)
(declare-sort var1305 0)
(declare-sort var3748 0)
(declare-sort var2817 0)
(declare-sort var1902 0)
(declare-sort var3555 0)
(declare-sort var3274 0)
(declare-sort var578 0)
(declare-sort var484 0)
(declare-sort var1123 0)
(declare-sort var3123 0)
(declare-sort var3855 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1574031999 (var3365 var3365) void)
(declare-fun cast-from-var1519-to-var3365 (var1519) var3365)
(declare-fun var2817-init () var2817)
(declare-fun <init>/-325640736 (var2817) void)
(declare-fun cast-from-var2817-to-var3748 (var2817) var3748)
(declare-fun override/1139179338 (var1519) var3748)
(declare-fun parentExclusion/1139179338 (var1519) var3748)
(declare-fun highlanders/1139179338 (var1519) var3748)
(declare-fun var1902-init () var1902)
(declare-fun <init>/-460065511 (var1902) void)
(declare-fun var3274_newSetFromMap/-447129444 (var578) var3555)
(declare-fun cast-from-var1902-to-var578 (var1902) var578)
(declare-fun prependedParentLoaders/1139179338 (var1519) var3555)
(declare-fun var484-init () var484)
(declare-fun arr-String-init () (Array Int String))
(declare-fun <init>/334488186 (var484 (Array Int String)) void)
(declare-fun shader/1139179338 (var1519) var484)
(declare-fun var1123-init () var1123)
(declare-fun <init>/-201242697 (var1123) void)
(declare-fun cast-from-var1123-to-var578 (var1123) var578)
(declare-fun mapJarPathToTracker/1139179338 (var1519) var578)
(declare-fun fileRootCache/1139179338 (var1519) var578)
(declare-fun jarLocCache/1139179338 (var1519) var578)
(declare-fun sclSuffix/1139179338 (var1519) String)
(declare-fun SELF_BASE/1139179338 (var1519) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun SELF_BASE_LENGTH/1139179338 (var1519) Int)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var3123-init () var3123)
(declare-fun <init>/-1681595970 (var3123 String) void)
(declare-fun SELF_BASE_FILE/1139179338 (var1519) var3123)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3855_getProperty/258823597 (String) String)
(declare-const null-var1519 var1519)
(declare-const null-var3365 var3365)
(declare-const null-String String)
(declare-const null-var3748 var3748)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2201 var1519) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var2201 null-var1519)))
(declare-const var2054 var3365) ; Statement: r1 := @parameter0: java.lang.ClassLoader 
(assert (not (= var2054 null-var3365)))
(declare-const var1219 String) ; Statement: r12 := @parameter1: java.lang.String 
(assert (not (= var1219 null-String)))
(declare-const var2952 String) ; Statement: r15 := @parameter2: java.lang.String 
(assert (not (= var2952 null-String)))
(declare-const var3765 var3748) ; Statement: r13 := @parameter3: java.util.List 
(assert (not (= var3765 null-var3748)))
(declare-const var382 var3748) ; Statement: r14 := @parameter4: java.util.List 
(assert (not (= var382 null-var3748)))
(assert true)
;(assert (<init>/-1574031999 (cast-from-var1519-to-var3365 var2201) var2054)) ; Statement: specialinvoke r0.<java.lang.ClassLoader: void <init>(java.lang.ClassLoader)>(r1) 

(declare-const var2201!1 var1519)
(declare-const var2054!1 var3365)
(define-const var1401 var2817 var2817-init) ; Statement: $r71 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1401)) ; Statement: specialinvoke $r71.<java.util.ArrayList: void <init>()>() 

(declare-const var1401!1 var2817)
(declare-const var2201!2 var1519)
(assert (not (= var2201!2 null-var1519)))
(assert (= (override/1139179338 var2201!2) (cast-from-var2817-to-var3748 var1401!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.List override> = $r71 
(define-const var3622 var2817 var2817-init) ; Statement: $r72 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3622)) ; Statement: specialinvoke $r72.<java.util.ArrayList: void <init>()>() 

(declare-const var3622!1 var2817)
(declare-const var2201!3 var1519)
(assert (not (= var2201!3 null-var1519)))
(assert (= (parentExclusion/1139179338 var2201!3) (cast-from-var2817-to-var3748 var3622!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion> = $r72 
(define-const var689 var2817 var2817-init) ; Statement: $r73 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var689)) ; Statement: specialinvoke $r73.<java.util.ArrayList: void <init>()>() 

(declare-const var689!1 var2817)
(declare-const var2201!4 var1519)
(assert (not (= var2201!4 null-var1519)))
(assert (= (highlanders/1139179338 var2201!4) (cast-from-var2817-to-var3748 var689!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> = $r73 
(define-const var1945 var1902 var1902-init) ; Statement: $r74 = new java.util.IdentityHashMap 
(assert true)
;(assert (<init>/-460065511 var1945)) ; Statement: specialinvoke $r74.<java.util.IdentityHashMap: void <init>()>() 

(declare-const var1945!1 var1902)
(define-const var1680 var3555 (var3274_newSetFromMap/-447129444 (cast-from-var1902-to-var578 var1945!1))) ; Statement: $r6 = staticinvoke <java.util.Collections: java.util.Set newSetFromMap(java.util.Map)>($r74) 
(declare-const var2201!5 var1519)
(assert (not (= var2201!5 null-var1519)))
(assert (= (prependedParentLoaders/1139179338 var2201!5) var1680)) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Set prependedParentLoaders> = $r6 
(define-const var1605 var484 var484-init) ; Statement: $r75 = new lombok.launch.PackageShader 
(define-const var1300 (Array Int String) arr-String-init) ; Statement: $r8 = newarray (java.lang.String)[2] 
(declare-const var1300!1 (Array Int String))
(assert (not (= var1300!1 null-__Array__Int__String__)))
(assert (= (select var1300!1 0) "org/objectweb/asm/")) ; Statement: $r8[0] = "org/objectweb/asm/" 
(declare-const var1300!2 (Array Int String))
(assert (not (= var1300!2 null-__Array__Int__String__)))
(assert (= (select var1300!2 1) "org/lombokweb/asm/")) ; Statement: $r8[1] = "org/lombokweb/asm/" 
(assert true)
;(assert (<init>/334488186 var1605 var1300!2)) ; Statement: specialinvoke $r75.<lombok.launch.PackageShader: void <init>(java.lang.String[])>($r8) 

(declare-const var1605!1 var484)
(declare-const var1300!3 (Array Int String))
(declare-const var2201!6 var1519)
(assert (not (= var2201!6 null-var1519)))
(assert (= (shader/1139179338 var2201!6) var1605!1)) ; Statement: r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> = $r75 
(define-const var3102 var1123 var1123-init) ; Statement: $r76 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3102)) ; Statement: specialinvoke $r76.<java.util.HashMap: void <init>()>() 

(declare-const var3102!1 var1123)
(declare-const var2201!7 var1519)
(assert (not (= var2201!7 null-var1519)))
(assert (= (mapJarPathToTracker/1139179338 var2201!7) (cast-from-var1123-to-var578 var3102!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Map mapJarPathToTracker> = $r76 
(define-const var1119 var1123 var1123-init) ; Statement: $r77 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var1119)) ; Statement: specialinvoke $r77.<java.util.HashMap: void <init>()>() 

(declare-const var1119!1 var1123)
(declare-const var2201!8 var1519)
(assert (not (= var2201!8 null-var1519)))
(assert (= (fileRootCache/1139179338 var2201!8) (cast-from-var1123-to-var578 var1119!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Map fileRootCache> = $r77 
(define-const var2285 var1123 var1123-init) ; Statement: $r78 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var2285)) ; Statement: specialinvoke $r78.<java.util.HashMap: void <init>()>() 

(declare-const var2285!1 var1123)
(declare-const var2201!9 var1519)
(assert (not (= var2201!9 null-var1519)))
(assert (= (jarLocCache/1139179338 var2201!9) (cast-from-var1123-to-var578 var2285!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Map jarLocCache> = $r78 
(declare-const var2201!10 var1519)
(assert (not (= var2201!10 null-var1519)))
(assert (= (sclSuffix/1139179338 var2201!10) var1219)) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.lang.String sclSuffix> = r12 
 ; Statement: if r13 == null goto (branch) 
(assert (= var3765 null-var3748)) ; Cond: r13 == null 
 ; Statement: if r14 == null goto (branch) 
(assert (= var382 null-var3748)) ; Cond: r14 == null 
 ; Statement: if r15 == null goto $r16 = class "Llombok/launch/ShadowClassLoader;" 
(assert (not (= var2952 null-String))) ; Negate: Cond: r15 == null  
(declare-const var2201!11 var1519)
(assert (not (= var2201!11 null-var1519)))
(assert (= (SELF_BASE/1139179338 var2201!11) var2952)) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE> = r15 
(assert true)
(define-const var3903 Int (length/-134980193 var2952)) ; Statement: $i10 = virtualinvoke r15.<java.lang.String: int length()>() 
(declare-const var2201!12 var1519)
(assert (not (= var2201!12 null-var1519)))
(assert (= (SELF_BASE_LENGTH/1139179338 var2201!12) var3903)) ; Statement: r0.<lombok.launch.ShadowClassLoader: int SELF_BASE_LENGTH> = $i10 
 ; Statement: goto [?= $r25 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE>] 
(assert true) ; Non Conditional
(define-const var286 String (SELF_BASE/1139179338 var2201!12)) ; Statement: $r25 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE> 
(assert true)
(define-const var244 Bool (startsWith/-1785782452 var286 "jar:file:")) ; Statement: $z1 = virtualinvoke $r25.<java.lang.String: boolean startsWith(java.lang.String)>("jar:file:") 
 ; Statement: if $z1 == 0 goto $r26 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE> 
(assert (= (ite var244 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1847 String (SELF_BASE/1139179338 var2201!12)) ; Statement: $r26 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE> 
(assert true)
(define-const var3220 Bool (startsWith/-1785782452 var1847 "file:")) ; Statement: $z2 = virtualinvoke $r26.<java.lang.String: boolean startsWith(java.lang.String)>("file:") 
 ; Statement: if $z2 == 0 goto $r84 = new java.io.File 
(assert (= (ite var3220 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3418 var3123 var3123-init) ; Statement: $r84 = new java.io.File 
(define-const var2226 String (SELF_BASE/1139179338 var2201!12)) ; Statement: $r28 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE> 
(assert true)
;(assert (<init>/-1681595970 var3418 var2226)) ; Statement: specialinvoke $r84.<java.io.File: void <init>(java.lang.String)>($r28) 

(declare-const var3418!1 var3123)
(declare-const var2226!1 String)
(declare-const var2201!13 var1519)
(assert (not (= var2201!13 null-var1519)))
(assert (= (SELF_BASE_FILE/1139179338 var2201!13) var3418!1)) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE> = $r84 
(assert true) ; Non Conditional
(define-const var1412 String String-init) ; Statement: $r85 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1412 "shadow.override.")) ; Statement: specialinvoke $r85.<java.lang.StringBuilder: void <init>(java.lang.String)>("shadow.override.") 
(declare-const var1412!1 String)
(assert (= var1412!1 "shadow.override."))
(assert true)
(define-const var2264 String (append/672562846 var1412!1 var1219)) ; Statement: $r66 = virtualinvoke $r85.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12) 
(declare-const var1412!2 String)
(assert (= var1412!2 (str.++ var1412!1 var1219)))
(assert true)
(define-const var300 String (toString/-2075883882 var2264)) ; Statement: $r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1908 String (var3855_getProperty/258823597 var300)) ; Statement: $r68 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>($r67) 
 ; Statement: if $r68 == null goto return 
(assert (= var1908 null-String)) ; Cond: $r68 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1574031999=([java.lang.ClassLoader, java.lang.ClassLoader], void), cast-from-var1519-to-var3365=([lombok.launch.ShadowClassLoader], java.lang.ClassLoader), var2817-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var2817-to-var3748=([java.util.ArrayList], java.util.List), override/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), parentExclusion/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), highlanders/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var1902-init=([], java.util.IdentityHashMap), <init>/-460065511=([java.util.IdentityHashMap], void), var3274_newSetFromMap/-447129444=([java.util.Map], java.util.Set), cast-from-var1902-to-var578=([java.util.IdentityHashMap], java.util.Map), prependedParentLoaders/1139179338=([lombok.launch.ShadowClassLoader], java.util.Set), var484-init=([], lombok.launch.PackageShader), arr-String-init=([], java.lang.String[]), <init>/334488186=([lombok.launch.PackageShader, java.lang.String[]], void), shader/1139179338=([lombok.launch.ShadowClassLoader], lombok.launch.PackageShader), var1123-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var1123-to-var578=([java.util.HashMap], java.util.Map), mapJarPathToTracker/1139179338=([lombok.launch.ShadowClassLoader], java.util.Map), fileRootCache/1139179338=([lombok.launch.ShadowClassLoader], java.util.Map), jarLocCache/1139179338=([lombok.launch.ShadowClassLoader], java.util.Map), sclSuffix/1139179338=([lombok.launch.ShadowClassLoader], java.lang.String), SELF_BASE/1139179338=([lombok.launch.ShadowClassLoader], java.lang.String), length/-134980193=([java.lang.String], int), SELF_BASE_LENGTH/1139179338=([lombok.launch.ShadowClassLoader], int), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var3123-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), SELF_BASE_FILE/1139179338=([lombok.launch.ShadowClassLoader], java.io.File), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3855_getProperty/258823597=([java.lang.String], java.lang.String)}
; {var1519=lombok.launch.ShadowClassLoader, var2201=r0, var3365=java.lang.ClassLoader, var2054=r1, var1219=r12, var1305=null_type, var2952=r15, var3748=java.util.List, var3765=r13, var382=r14, var2817=java.util.ArrayList, var1401=$r71, var3622=$r72, var689=$r73, var1902=java.util.IdentityHashMap, var1945=$r74, var3555=java.util.Set, var3274=java.util.Collections, var578=java.util.Map, var1680=$r6, var484=lombok.launch.PackageShader, var1605=$r75, var1300=$r8, var1123=java.util.HashMap, var3102=$r76, var1119=$r77, var2285=$r78, var3903=$i10, var286=$r25, var244=$z1, var1847=$r26, var3220=$z2, var3123=java.io.File, var3418=$r84, var2226=$r28, var1412=$r85, var2264=$r66, var300=$r67, var3855=java.lang.System, var1908=$r68}
; {lombok.launch.ShadowClassLoader=var1519, r0=var2201, java.lang.ClassLoader=var3365, r1=var2054, r12=var1219, null_type=var1305, r15=var2952, java.util.List=var3748, r13=var3765, r14=var382, java.util.ArrayList=var2817, $r71=var1401, $r72=var3622, $r73=var689, java.util.IdentityHashMap=var1902, $r74=var1945, java.util.Set=var3555, java.util.Collections=var3274, java.util.Map=var578, $r6=var1680, lombok.launch.PackageShader=var484, $r75=var1605, $r8=var1300, java.util.HashMap=var1123, $r76=var3102, $r77=var1119, $r78=var2285, $i10=var3903, $r25=var286, $z1=var244, $r26=var1847, $z2=var3220, java.io.File=var3123, $r84=var3418, $r28=var2226, $r85=var1412, $r66=var2264, $r67=var300, java.lang.System=var3855, $r68=var1908}
;seq <java.lang.String: int length()>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 2,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.ClassLoader;	r12 := @parameter1: java.lang.String;	r15 := @parameter2: java.lang.String;	r13 := @parameter3: java.util.List;	r14 := @parameter4: java.util.List;	specialinvoke r0.<java.lang.ClassLoader: void <init>(java.lang.ClassLoader)>(r1);	$r71 = new java.util.ArrayList;	specialinvoke $r71.<java.util.ArrayList: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.List override> = $r71;	$r72 = new java.util.ArrayList;	specialinvoke $r72.<java.util.ArrayList: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion> = $r72;	$r73 = new java.util.ArrayList;	specialinvoke $r73.<java.util.ArrayList: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> = $r73;	$r74 = new java.util.IdentityHashMap;	specialinvoke $r74.<java.util.IdentityHashMap: void <init>()>();	$r6 = staticinvoke <java.util.Collections: java.util.Set newSetFromMap(java.util.Map)>($r74);	r0.<lombok.launch.ShadowClassLoader: java.util.Set prependedParentLoaders> = $r6;	$r75 = new lombok.launch.PackageShader;	$r8 = newarray (java.lang.String)[2];	$r8[0] = "org/objectweb/asm/";	$r8[1] = "org/lombokweb/asm/";	specialinvoke $r75.<lombok.launch.PackageShader: void <init>(java.lang.String[])>($r8);	r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> = $r75;	$r76 = new java.util.HashMap;	specialinvoke $r76.<java.util.HashMap: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.Map mapJarPathToTracker> = $r76;	$r77 = new java.util.HashMap;	specialinvoke $r77.<java.util.HashMap: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.Map fileRootCache> = $r77;	$r78 = new java.util.HashMap;	specialinvoke $r78.<java.util.HashMap: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.Map jarLocCache> = $r78;	r0.<lombok.launch.ShadowClassLoader: java.lang.String sclSuffix> = r12;	if r13 == null goto (branch);	if r14 == null goto (branch);	if r15 == null goto $r16 = class "Llombok/launch/ShadowClassLoader;";	r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE> = r15;	$i10 = virtualinvoke r15.<java.lang.String: int length()>();	r0.<lombok.launch.ShadowClassLoader: int SELF_BASE_LENGTH> = $i10;	goto [?= $r25 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE>];	$r25 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE>;	$z1 = virtualinvoke $r25.<java.lang.String: boolean startsWith(java.lang.String)>("jar:file:");	if $z1 == 0 goto $r26 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE>;	$r26 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE>;	$z2 = virtualinvoke $r26.<java.lang.String: boolean startsWith(java.lang.String)>("file:");	if $z2 == 0 goto $r84 = new java.io.File;	$r84 = new java.io.File;	$r28 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE>;	specialinvoke $r84.<java.io.File: void <init>(java.lang.String)>($r28);	r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE> = $r84;	$r85 = new java.lang.StringBuilder;	specialinvoke $r85.<java.lang.StringBuilder: void <init>(java.lang.String)>("shadow.override.");	$r66 = virtualinvoke $r85.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12);	$r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>();	$r68 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>($r67);	if $r68 == null goto return;	return
;block_num 9