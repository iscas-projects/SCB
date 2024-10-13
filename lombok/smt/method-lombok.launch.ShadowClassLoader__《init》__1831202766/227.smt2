(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2527 0)
(declare-sort var26 0)
(declare-sort var2777 0)
(declare-sort var2389 0)
(declare-sort var570 0)
(declare-sort var2686 0)
(declare-sort var103 0)
(declare-sort var3117 0)
(declare-sort var2016 0)
(declare-sort var2712 0)
(declare-sort var802 0)
(declare-sort var2381 0)
(declare-sort var1503 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1574031999 (var26 var26) void)
(declare-fun cast-from-var2527-to-var26 (var2527) var26)
(declare-fun var570-init () var570)
(declare-fun <init>/-325640736 (var570) void)
(declare-fun cast-from-var570-to-var2389 (var570) var2389)
(declare-fun override/1139179338 (var2527) var2389)
(declare-fun parentExclusion/1139179338 (var2527) var2389)
(declare-fun highlanders/1139179338 (var2527) var2389)
(declare-fun var2686-init () var2686)
(declare-fun <init>/-460065511 (var2686) void)
(declare-fun var3117_newSetFromMap/-447129444 (var2016) var103)
(declare-fun cast-from-var2686-to-var2016 (var2686) var2016)
(declare-fun prependedParentLoaders/1139179338 (var2527) var103)
(declare-fun var2712-init () var2712)
(declare-fun arr-String-init () (Array Int String))
(declare-fun <init>/334488186 (var2712 (Array Int String)) void)
(declare-fun shader/1139179338 (var2527) var2712)
(declare-fun var802-init () var802)
(declare-fun <init>/-201242697 (var802) void)
(declare-fun cast-from-var802-to-var2016 (var802) var2016)
(declare-fun mapJarPathToTracker/1139179338 (var2527) var2016)
(declare-fun fileRootCache/1139179338 (var2527) var2016)
(declare-fun jarLocCache/1139179338 (var2527) var2016)
(declare-fun sclSuffix/1139179338 (var2527) String)
(declare-fun SELF_BASE/1139179338 (var2527) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun SELF_BASE_LENGTH/1139179338 (var2527) Int)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var2381-init () var2381)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun <init>/-1681595970 (var2381 String) void)
(declare-fun SELF_BASE_FILE/1139179338 (var2527) var2381)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1503_getProperty/258823597 (String) String)
(declare-const null-var2527 var2527)
(declare-const null-var26 var26)
(declare-const null-String String)
(declare-const null-var2389 var2389)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3013 var2527) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var3013 null-var2527)))
(declare-const var3542 var26) ; Statement: r1 := @parameter0: java.lang.ClassLoader 
(assert (not (= var3542 null-var26)))
(declare-const var1149 String) ; Statement: r12 := @parameter1: java.lang.String 
(assert (not (= var1149 null-String)))
(declare-const var3458 String) ; Statement: r15 := @parameter2: java.lang.String 
(assert (not (= var3458 null-String)))
(declare-const var1060 var2389) ; Statement: r13 := @parameter3: java.util.List 
(assert (not (= var1060 null-var2389)))
(declare-const var1586 var2389) ; Statement: r14 := @parameter4: java.util.List 
(assert (not (= var1586 null-var2389)))
(assert true)
;(assert (<init>/-1574031999 (cast-from-var2527-to-var26 var3013) var3542)) ; Statement: specialinvoke r0.<java.lang.ClassLoader: void <init>(java.lang.ClassLoader)>(r1) 

(declare-const var3013!1 var2527)
(declare-const var3542!1 var26)
(define-const var682 var570 var570-init) ; Statement: $r71 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var682)) ; Statement: specialinvoke $r71.<java.util.ArrayList: void <init>()>() 

(declare-const var682!1 var570)
(declare-const var3013!2 var2527)
(assert (not (= var3013!2 null-var2527)))
(assert (= (override/1139179338 var3013!2) (cast-from-var570-to-var2389 var682!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.List override> = $r71 
(define-const var514 var570 var570-init) ; Statement: $r72 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var514)) ; Statement: specialinvoke $r72.<java.util.ArrayList: void <init>()>() 

(declare-const var514!1 var570)
(declare-const var3013!3 var2527)
(assert (not (= var3013!3 null-var2527)))
(assert (= (parentExclusion/1139179338 var3013!3) (cast-from-var570-to-var2389 var514!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion> = $r72 
(define-const var3610 var570 var570-init) ; Statement: $r73 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3610)) ; Statement: specialinvoke $r73.<java.util.ArrayList: void <init>()>() 

(declare-const var3610!1 var570)
(declare-const var3013!4 var2527)
(assert (not (= var3013!4 null-var2527)))
(assert (= (highlanders/1139179338 var3013!4) (cast-from-var570-to-var2389 var3610!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> = $r73 
(define-const var569 var2686 var2686-init) ; Statement: $r74 = new java.util.IdentityHashMap 
(assert true)
;(assert (<init>/-460065511 var569)) ; Statement: specialinvoke $r74.<java.util.IdentityHashMap: void <init>()>() 

(declare-const var569!1 var2686)
(define-const var1920 var103 (var3117_newSetFromMap/-447129444 (cast-from-var2686-to-var2016 var569!1))) ; Statement: $r6 = staticinvoke <java.util.Collections: java.util.Set newSetFromMap(java.util.Map)>($r74) 
(declare-const var3013!5 var2527)
(assert (not (= var3013!5 null-var2527)))
(assert (= (prependedParentLoaders/1139179338 var3013!5) var1920)) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Set prependedParentLoaders> = $r6 
(define-const var2919 var2712 var2712-init) ; Statement: $r75 = new lombok.launch.PackageShader 
(define-const var1807 (Array Int String) arr-String-init) ; Statement: $r8 = newarray (java.lang.String)[2] 
(declare-const var1807!1 (Array Int String))
(assert (not (= var1807!1 null-__Array__Int__String__)))
(assert (= (select var1807!1 0) "org/objectweb/asm/")) ; Statement: $r8[0] = "org/objectweb/asm/" 
(declare-const var1807!2 (Array Int String))
(assert (not (= var1807!2 null-__Array__Int__String__)))
(assert (= (select var1807!2 1) "org/lombokweb/asm/")) ; Statement: $r8[1] = "org/lombokweb/asm/" 
(assert true)
;(assert (<init>/334488186 var2919 var1807!2)) ; Statement: specialinvoke $r75.<lombok.launch.PackageShader: void <init>(java.lang.String[])>($r8) 

(declare-const var2919!1 var2712)
(declare-const var1807!3 (Array Int String))
(declare-const var3013!6 var2527)
(assert (not (= var3013!6 null-var2527)))
(assert (= (shader/1139179338 var3013!6) var2919!1)) ; Statement: r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> = $r75 
(define-const var1124 var802 var802-init) ; Statement: $r76 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var1124)) ; Statement: specialinvoke $r76.<java.util.HashMap: void <init>()>() 

(declare-const var1124!1 var802)
(declare-const var3013!7 var2527)
(assert (not (= var3013!7 null-var2527)))
(assert (= (mapJarPathToTracker/1139179338 var3013!7) (cast-from-var802-to-var2016 var1124!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Map mapJarPathToTracker> = $r76 
(define-const var3442 var802 var802-init) ; Statement: $r77 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3442)) ; Statement: specialinvoke $r77.<java.util.HashMap: void <init>()>() 

(declare-const var3442!1 var802)
(declare-const var3013!8 var2527)
(assert (not (= var3013!8 null-var2527)))
(assert (= (fileRootCache/1139179338 var3013!8) (cast-from-var802-to-var2016 var3442!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Map fileRootCache> = $r77 
(define-const var1033 var802 var802-init) ; Statement: $r78 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var1033)) ; Statement: specialinvoke $r78.<java.util.HashMap: void <init>()>() 

(declare-const var1033!1 var802)
(declare-const var3013!9 var2527)
(assert (not (= var3013!9 null-var2527)))
(assert (= (jarLocCache/1139179338 var3013!9) (cast-from-var802-to-var2016 var1033!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Map jarLocCache> = $r78 
(declare-const var3013!10 var2527)
(assert (not (= var3013!10 null-var2527)))
(assert (= (sclSuffix/1139179338 var3013!10) var1149)) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.lang.String sclSuffix> = r12 
 ; Statement: if r13 == null goto (branch) 
(assert (= var1060 null-var2389)) ; Cond: r13 == null 
 ; Statement: if r14 == null goto (branch) 
(assert (= var1586 null-var2389)) ; Cond: r14 == null 
 ; Statement: if r15 == null goto $r16 = class "Llombok/launch/ShadowClassLoader;" 
(assert (not (= var3458 null-String))) ; Negate: Cond: r15 == null  
(declare-const var3013!11 var2527)
(assert (not (= var3013!11 null-var2527)))
(assert (= (SELF_BASE/1139179338 var3013!11) var3458)) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE> = r15 
(assert true)
(define-const var1186 Int (length/-134980193 var3458)) ; Statement: $i10 = virtualinvoke r15.<java.lang.String: int length()>() 
(declare-const var3013!12 var2527)
(assert (not (= var3013!12 null-var2527)))
(assert (= (SELF_BASE_LENGTH/1139179338 var3013!12) var1186)) ; Statement: r0.<lombok.launch.ShadowClassLoader: int SELF_BASE_LENGTH> = $i10 
 ; Statement: goto [?= $r25 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE>] 
(assert true) ; Non Conditional
(define-const var460 String (SELF_BASE/1139179338 var3013!12)) ; Statement: $r25 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE> 
(assert true)
(define-const var1354 Bool (startsWith/-1785782452 var460 "jar:file:")) ; Statement: $z1 = virtualinvoke $r25.<java.lang.String: boolean startsWith(java.lang.String)>("jar:file:") 
 ; Statement: if $z1 == 0 goto $r26 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE> 
(assert (= (ite var1354 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3149 String (SELF_BASE/1139179338 var3013!12)) ; Statement: $r26 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE> 
(assert true)
(define-const var3246 Bool (startsWith/-1785782452 var3149 "file:")) ; Statement: $z2 = virtualinvoke $r26.<java.lang.String: boolean startsWith(java.lang.String)>("file:") 
 ; Statement: if $z2 == 0 goto $r84 = new java.io.File 
(assert (not (= (ite var3246 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1631 var2381 var2381-init) ; Statement: $r83 = new java.io.File 
(define-const var1523 String (SELF_BASE/1139179338 var3013!12)) ; Statement: $r41 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE> 
(assert (and true (and (>= 5 0) (>= (str.len var1523) 5))))
(define-const var2632 String (substring/850833817 var1523 5)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.String: java.lang.String substring(int)>(5) 
(assert true)
;(assert (<init>/-1681595970 var1631 var2632)) ; Statement: specialinvoke $r83.<java.io.File: void <init>(java.lang.String)>($r42) 

(declare-const var1631!1 var2381)
(declare-const var2632!1 String)
(declare-const var3013!13 var2527)
(assert (not (= var3013!13 null-var2527)))
(assert (= (SELF_BASE_FILE/1139179338 var3013!13) var1631!1)) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE> = $r83 
 ; Statement: goto [?= $r85 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1463 String String-init) ; Statement: $r85 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1463 "shadow.override.")) ; Statement: specialinvoke $r85.<java.lang.StringBuilder: void <init>(java.lang.String)>("shadow.override.") 
(declare-const var1463!1 String)
(assert (= var1463!1 "shadow.override."))
(assert true)
(define-const var43 String (append/672562846 var1463!1 var1149)) ; Statement: $r66 = virtualinvoke $r85.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12) 
(declare-const var1463!2 String)
(assert (= var1463!2 (str.++ var1463!1 var1149)))
(assert true)
(define-const var3039 String (toString/-2075883882 var43)) ; Statement: $r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var507 String (var1503_getProperty/258823597 var3039)) ; Statement: $r68 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>($r67) 
 ; Statement: if $r68 == null goto return 
(assert (= var507 null-String)) ; Cond: $r68 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1574031999=([java.lang.ClassLoader, java.lang.ClassLoader], void), cast-from-var2527-to-var26=([lombok.launch.ShadowClassLoader], java.lang.ClassLoader), var570-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var570-to-var2389=([java.util.ArrayList], java.util.List), override/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), parentExclusion/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), highlanders/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var2686-init=([], java.util.IdentityHashMap), <init>/-460065511=([java.util.IdentityHashMap], void), var3117_newSetFromMap/-447129444=([java.util.Map], java.util.Set), cast-from-var2686-to-var2016=([java.util.IdentityHashMap], java.util.Map), prependedParentLoaders/1139179338=([lombok.launch.ShadowClassLoader], java.util.Set), var2712-init=([], lombok.launch.PackageShader), arr-String-init=([], java.lang.String[]), <init>/334488186=([lombok.launch.PackageShader, java.lang.String[]], void), shader/1139179338=([lombok.launch.ShadowClassLoader], lombok.launch.PackageShader), var802-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var802-to-var2016=([java.util.HashMap], java.util.Map), mapJarPathToTracker/1139179338=([lombok.launch.ShadowClassLoader], java.util.Map), fileRootCache/1139179338=([lombok.launch.ShadowClassLoader], java.util.Map), jarLocCache/1139179338=([lombok.launch.ShadowClassLoader], java.util.Map), sclSuffix/1139179338=([lombok.launch.ShadowClassLoader], java.lang.String), SELF_BASE/1139179338=([lombok.launch.ShadowClassLoader], java.lang.String), length/-134980193=([java.lang.String], int), SELF_BASE_LENGTH/1139179338=([lombok.launch.ShadowClassLoader], int), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var2381-init=([], java.io.File), substring/850833817=([java.lang.String, int], java.lang.String), <init>/-1681595970=([java.io.File, java.lang.String], void), SELF_BASE_FILE/1139179338=([lombok.launch.ShadowClassLoader], java.io.File), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1503_getProperty/258823597=([java.lang.String], java.lang.String)}
; {var2527=lombok.launch.ShadowClassLoader, var3013=r0, var26=java.lang.ClassLoader, var3542=r1, var1149=r12, var2777=null_type, var3458=r15, var2389=java.util.List, var1060=r13, var1586=r14, var570=java.util.ArrayList, var682=$r71, var514=$r72, var3610=$r73, var2686=java.util.IdentityHashMap, var569=$r74, var103=java.util.Set, var3117=java.util.Collections, var2016=java.util.Map, var1920=$r6, var2712=lombok.launch.PackageShader, var2919=$r75, var1807=$r8, var802=java.util.HashMap, var1124=$r76, var3442=$r77, var1033=$r78, var1186=$i10, var460=$r25, var1354=$z1, var3149=$r26, var3246=$z2, var2381=java.io.File, var1631=$r83, var1523=$r41, var2632=$r42, var1463=$r85, var43=$r66, var3039=$r67, var1503=java.lang.System, var507=$r68}
; {lombok.launch.ShadowClassLoader=var2527, r0=var3013, java.lang.ClassLoader=var26, r1=var3542, r12=var1149, null_type=var2777, r15=var3458, java.util.List=var2389, r13=var1060, r14=var1586, java.util.ArrayList=var570, $r71=var682, $r72=var514, $r73=var3610, java.util.IdentityHashMap=var2686, $r74=var569, java.util.Set=var103, java.util.Collections=var3117, java.util.Map=var2016, $r6=var1920, lombok.launch.PackageShader=var2712, $r75=var2919, $r8=var1807, java.util.HashMap=var802, $r76=var1124, $r77=var3442, $r78=var1033, $i10=var1186, $r25=var460, $z1=var1354, $r26=var3149, $z2=var3246, java.io.File=var2381, $r83=var1631, $r41=var1523, $r42=var2632, $r85=var1463, $r66=var43, $r67=var3039, java.lang.System=var1503, $r68=var507}
;seq <java.lang.String: int length()>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 2,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.ClassLoader;	r12 := @parameter1: java.lang.String;	r15 := @parameter2: java.lang.String;	r13 := @parameter3: java.util.List;	r14 := @parameter4: java.util.List;	specialinvoke r0.<java.lang.ClassLoader: void <init>(java.lang.ClassLoader)>(r1);	$r71 = new java.util.ArrayList;	specialinvoke $r71.<java.util.ArrayList: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.List override> = $r71;	$r72 = new java.util.ArrayList;	specialinvoke $r72.<java.util.ArrayList: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion> = $r72;	$r73 = new java.util.ArrayList;	specialinvoke $r73.<java.util.ArrayList: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> = $r73;	$r74 = new java.util.IdentityHashMap;	specialinvoke $r74.<java.util.IdentityHashMap: void <init>()>();	$r6 = staticinvoke <java.util.Collections: java.util.Set newSetFromMap(java.util.Map)>($r74);	r0.<lombok.launch.ShadowClassLoader: java.util.Set prependedParentLoaders> = $r6;	$r75 = new lombok.launch.PackageShader;	$r8 = newarray (java.lang.String)[2];	$r8[0] = "org/objectweb/asm/";	$r8[1] = "org/lombokweb/asm/";	specialinvoke $r75.<lombok.launch.PackageShader: void <init>(java.lang.String[])>($r8);	r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> = $r75;	$r76 = new java.util.HashMap;	specialinvoke $r76.<java.util.HashMap: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.Map mapJarPathToTracker> = $r76;	$r77 = new java.util.HashMap;	specialinvoke $r77.<java.util.HashMap: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.Map fileRootCache> = $r77;	$r78 = new java.util.HashMap;	specialinvoke $r78.<java.util.HashMap: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.Map jarLocCache> = $r78;	r0.<lombok.launch.ShadowClassLoader: java.lang.String sclSuffix> = r12;	if r13 == null goto (branch);	if r14 == null goto (branch);	if r15 == null goto $r16 = class "Llombok/launch/ShadowClassLoader;";	r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE> = r15;	$i10 = virtualinvoke r15.<java.lang.String: int length()>();	r0.<lombok.launch.ShadowClassLoader: int SELF_BASE_LENGTH> = $i10;	goto [?= $r25 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE>];	$r25 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE>;	$z1 = virtualinvoke $r25.<java.lang.String: boolean startsWith(java.lang.String)>("jar:file:");	if $z1 == 0 goto $r26 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE>;	$r26 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE>;	$z2 = virtualinvoke $r26.<java.lang.String: boolean startsWith(java.lang.String)>("file:");	if $z2 == 0 goto $r84 = new java.io.File;	$r83 = new java.io.File;	$r41 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE>;	$r42 = virtualinvoke $r41.<java.lang.String: java.lang.String substring(int)>(5);	specialinvoke $r83.<java.io.File: void <init>(java.lang.String)>($r42);	r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE> = $r83;	goto [?= $r85 = new java.lang.StringBuilder];	$r85 = new java.lang.StringBuilder;	specialinvoke $r85.<java.lang.StringBuilder: void <init>(java.lang.String)>("shadow.override.");	$r66 = virtualinvoke $r85.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12);	$r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>();	$r68 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>($r67);	if $r68 == null goto return;	return
;block_num 9