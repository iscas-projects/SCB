(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3895 0)
(declare-sort var3565 0)
(declare-sort var1187 0)
(declare-sort var854 0)
(declare-sort var3673 0)
(declare-sort var2136 0)
(declare-sort var1801 0)
(declare-sort var3967 0)
(declare-sort var2800 0)
(declare-sort var470 0)
(declare-sort var3842 0)
(declare-sort var3605 0)
(declare-sort var792 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1574031999 (var3565 var3565) void)
(declare-fun cast-from-var3895-to-var3565 (var3895) var3565)
(declare-fun var3673-init () var3673)
(declare-fun <init>/-325640736 (var3673) void)
(declare-fun cast-from-var3673-to-var854 (var3673) var854)
(declare-fun override/1139179338 (var3895) var854)
(declare-fun parentExclusion/1139179338 (var3895) var854)
(declare-fun highlanders/1139179338 (var3895) var854)
(declare-fun var2136-init () var2136)
(declare-fun <init>/-460065511 (var2136) void)
(declare-fun var3967_newSetFromMap/-447129444 (var2800) var1801)
(declare-fun cast-from-var2136-to-var2800 (var2136) var2800)
(declare-fun prependedParentLoaders/1139179338 (var3895) var1801)
(declare-fun var470-init () var470)
(declare-fun arr-String-init () (Array Int String))
(declare-fun <init>/334488186 (var470 (Array Int String)) void)
(declare-fun shader/1139179338 (var3895) var470)
(declare-fun var3842-init () var3842)
(declare-fun <init>/-201242697 (var3842) void)
(declare-fun cast-from-var3842-to-var2800 (var3842) var2800)
(declare-fun mapJarPathToTracker/1139179338 (var3895) var2800)
(declare-fun fileRootCache/1139179338 (var3895) var2800)
(declare-fun jarLocCache/1139179338 (var3895) var2800)
(declare-fun sclSuffix/1139179338 (var3895) String)
(declare-fun SELF_BASE/1139179338 (var3895) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun SELF_BASE_LENGTH/1139179338 (var3895) Int)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun var3605-init () var3605)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun <init>/-1681595970 (var3605 String) void)
(declare-fun SELF_BASE_FILE/1139179338 (var3895) var3605)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var792_getProperty/258823597 (String) String)
(declare-const null-var3895 var3895)
(declare-const null-var3565 var3565)
(declare-const null-String String)
(declare-const null-var854 var854)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var274 var3895) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var274 null-var3895)))
(declare-const var3648 var3565) ; Statement: r1 := @parameter0: java.lang.ClassLoader 
(assert (not (= var3648 null-var3565)))
(declare-const var425 String) ; Statement: r12 := @parameter1: java.lang.String 
(assert (not (= var425 null-String)))
(declare-const var2933 String) ; Statement: r15 := @parameter2: java.lang.String 
(assert (not (= var2933 null-String)))
(declare-const var1976 var854) ; Statement: r13 := @parameter3: java.util.List 
(assert (not (= var1976 null-var854)))
(declare-const var3713 var854) ; Statement: r14 := @parameter4: java.util.List 
(assert (not (= var3713 null-var854)))
(assert true)
;(assert (<init>/-1574031999 (cast-from-var3895-to-var3565 var274) var3648)) ; Statement: specialinvoke r0.<java.lang.ClassLoader: void <init>(java.lang.ClassLoader)>(r1) 

(declare-const var274!1 var3895)
(declare-const var3648!1 var3565)
(define-const var2230 var3673 var3673-init) ; Statement: $r71 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2230)) ; Statement: specialinvoke $r71.<java.util.ArrayList: void <init>()>() 

(declare-const var2230!1 var3673)
(declare-const var274!2 var3895)
(assert (not (= var274!2 null-var3895)))
(assert (= (override/1139179338 var274!2) (cast-from-var3673-to-var854 var2230!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.List override> = $r71 
(define-const var922 var3673 var3673-init) ; Statement: $r72 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var922)) ; Statement: specialinvoke $r72.<java.util.ArrayList: void <init>()>() 

(declare-const var922!1 var3673)
(declare-const var274!3 var3895)
(assert (not (= var274!3 null-var3895)))
(assert (= (parentExclusion/1139179338 var274!3) (cast-from-var3673-to-var854 var922!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion> = $r72 
(define-const var1203 var3673 var3673-init) ; Statement: $r73 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1203)) ; Statement: specialinvoke $r73.<java.util.ArrayList: void <init>()>() 

(declare-const var1203!1 var3673)
(declare-const var274!4 var3895)
(assert (not (= var274!4 null-var3895)))
(assert (= (highlanders/1139179338 var274!4) (cast-from-var3673-to-var854 var1203!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> = $r73 
(define-const var806 var2136 var2136-init) ; Statement: $r74 = new java.util.IdentityHashMap 
(assert true)
;(assert (<init>/-460065511 var806)) ; Statement: specialinvoke $r74.<java.util.IdentityHashMap: void <init>()>() 

(declare-const var806!1 var2136)
(define-const var3684 var1801 (var3967_newSetFromMap/-447129444 (cast-from-var2136-to-var2800 var806!1))) ; Statement: $r6 = staticinvoke <java.util.Collections: java.util.Set newSetFromMap(java.util.Map)>($r74) 
(declare-const var274!5 var3895)
(assert (not (= var274!5 null-var3895)))
(assert (= (prependedParentLoaders/1139179338 var274!5) var3684)) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Set prependedParentLoaders> = $r6 
(define-const var225 var470 var470-init) ; Statement: $r75 = new lombok.launch.PackageShader 
(define-const var2358 (Array Int String) arr-String-init) ; Statement: $r8 = newarray (java.lang.String)[2] 
(declare-const var2358!1 (Array Int String))
(assert (not (= var2358!1 null-__Array__Int__String__)))
(assert (= (select var2358!1 0) "org/objectweb/asm/")) ; Statement: $r8[0] = "org/objectweb/asm/" 
(declare-const var2358!2 (Array Int String))
(assert (not (= var2358!2 null-__Array__Int__String__)))
(assert (= (select var2358!2 1) "org/lombokweb/asm/")) ; Statement: $r8[1] = "org/lombokweb/asm/" 
(assert true)
;(assert (<init>/334488186 var225 var2358!2)) ; Statement: specialinvoke $r75.<lombok.launch.PackageShader: void <init>(java.lang.String[])>($r8) 

(declare-const var225!1 var470)
(declare-const var2358!3 (Array Int String))
(declare-const var274!6 var3895)
(assert (not (= var274!6 null-var3895)))
(assert (= (shader/1139179338 var274!6) var225!1)) ; Statement: r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> = $r75 
(define-const var1375 var3842 var3842-init) ; Statement: $r76 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var1375)) ; Statement: specialinvoke $r76.<java.util.HashMap: void <init>()>() 

(declare-const var1375!1 var3842)
(declare-const var274!7 var3895)
(assert (not (= var274!7 null-var3895)))
(assert (= (mapJarPathToTracker/1139179338 var274!7) (cast-from-var3842-to-var2800 var1375!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Map mapJarPathToTracker> = $r76 
(define-const var3124 var3842 var3842-init) ; Statement: $r77 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3124)) ; Statement: specialinvoke $r77.<java.util.HashMap: void <init>()>() 

(declare-const var3124!1 var3842)
(declare-const var274!8 var3895)
(assert (not (= var274!8 null-var3895)))
(assert (= (fileRootCache/1139179338 var274!8) (cast-from-var3842-to-var2800 var3124!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Map fileRootCache> = $r77 
(define-const var2850 var3842 var3842-init) ; Statement: $r78 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var2850)) ; Statement: specialinvoke $r78.<java.util.HashMap: void <init>()>() 

(declare-const var2850!1 var3842)
(declare-const var274!9 var3895)
(assert (not (= var274!9 null-var3895)))
(assert (= (jarLocCache/1139179338 var274!9) (cast-from-var3842-to-var2800 var2850!1))) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.util.Map jarLocCache> = $r78 
(declare-const var274!10 var3895)
(assert (not (= var274!10 null-var3895)))
(assert (= (sclSuffix/1139179338 var274!10) var425)) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.lang.String sclSuffix> = r12 
 ; Statement: if r13 == null goto (branch) 
(assert (= var1976 null-var854)) ; Cond: r13 == null 
 ; Statement: if r14 == null goto (branch) 
(assert (= var3713 null-var854)) ; Cond: r14 == null 
 ; Statement: if r15 == null goto $r16 = class "Llombok/launch/ShadowClassLoader;" 
(assert (not (= var2933 null-String))) ; Negate: Cond: r15 == null  
(declare-const var274!11 var3895)
(assert (not (= var274!11 null-var3895)))
(assert (= (SELF_BASE/1139179338 var274!11) var2933)) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE> = r15 
(assert true)
(define-const var3866 Int (length/-134980193 var2933)) ; Statement: $i10 = virtualinvoke r15.<java.lang.String: int length()>() 
(declare-const var274!12 var3895)
(assert (not (= var274!12 null-var3895)))
(assert (= (SELF_BASE_LENGTH/1139179338 var274!12) var3866)) ; Statement: r0.<lombok.launch.ShadowClassLoader: int SELF_BASE_LENGTH> = $i10 
 ; Statement: goto [?= $r25 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE>] 
(assert true) ; Non Conditional
(define-const var1457 String (SELF_BASE/1139179338 var274!12)) ; Statement: $r25 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE> 
(assert true)
(define-const var1486 Bool (startsWith/-1785782452 var1457 "jar:file:")) ; Statement: $z1 = virtualinvoke $r25.<java.lang.String: boolean startsWith(java.lang.String)>("jar:file:") 
 ; Statement: if $z1 == 0 goto $r26 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE> 
(assert (not (= (ite var1486 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var798 String (SELF_BASE/1139179338 var274!12)) ; Statement: $r43 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE> 
(assert true)
(define-const var1714 Bool (endsWith/985337093 var798 "!/")) ; Statement: $z6 = virtualinvoke $r43.<java.lang.String: boolean endsWith(java.lang.String)>("!/") 
 ; Statement: if $z6 == 0 goto $r26 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE> 
(assert (not (= (ite var1714 1 0) 0))) ; Negate: Cond: $z6 == 0  
(define-const var2550 var3605 var3605-init) ; Statement: $r82 = new java.io.File 
(define-const var307 String (SELF_BASE/1139179338 var274!12)) ; Statement: $r46 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE> 
(define-const var3725 String (SELF_BASE/1139179338 var274!12)) ; Statement: $r45 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE> 
(assert true)
(define-const var1498 Int (length/-134980193 var3725)) ; Statement: $i8 = virtualinvoke $r45.<java.lang.String: int length()>() 
(define-const var490 Int (- var1498 2)) ; Statement: $i9 = $i8 - 2 
(assert (and true (and (>= 9 0) (>= (str.len var307) var490) (>= var490 9))))
(define-const var2201 String (substring/-1240304868 var307 9 var490)) ; Statement: $r47 = virtualinvoke $r46.<java.lang.String: java.lang.String substring(int,int)>(9, $i9) 
(assert true)
;(assert (<init>/-1681595970 var2550 var2201)) ; Statement: specialinvoke $r82.<java.io.File: void <init>(java.lang.String)>($r47) 

(declare-const var2550!1 var3605)
(declare-const var2201!1 String)
(declare-const var274!13 var3895)
(assert (not (= var274!13 null-var3895)))
(assert (= (SELF_BASE_FILE/1139179338 var274!13) var2550!1)) ; Statement: r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE> = $r82 
 ; Statement: goto [?= $r85 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1482 String String-init) ; Statement: $r85 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1482 "shadow.override.")) ; Statement: specialinvoke $r85.<java.lang.StringBuilder: void <init>(java.lang.String)>("shadow.override.") 
(declare-const var1482!1 String)
(assert (= var1482!1 "shadow.override."))
(assert true)
(define-const var3213 String (append/672562846 var1482!1 var425)) ; Statement: $r66 = virtualinvoke $r85.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12) 
(declare-const var1482!2 String)
(assert (= var1482!2 (str.++ var1482!1 var425)))
(assert true)
(define-const var645 String (toString/-2075883882 var3213)) ; Statement: $r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2030 String (var792_getProperty/258823597 var645)) ; Statement: $r68 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>($r67) 
 ; Statement: if $r68 == null goto return 
(assert (= var2030 null-String)) ; Cond: $r68 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1574031999=([java.lang.ClassLoader, java.lang.ClassLoader], void), cast-from-var3895-to-var3565=([lombok.launch.ShadowClassLoader], java.lang.ClassLoader), var3673-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var3673-to-var854=([java.util.ArrayList], java.util.List), override/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), parentExclusion/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), highlanders/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var2136-init=([], java.util.IdentityHashMap), <init>/-460065511=([java.util.IdentityHashMap], void), var3967_newSetFromMap/-447129444=([java.util.Map], java.util.Set), cast-from-var2136-to-var2800=([java.util.IdentityHashMap], java.util.Map), prependedParentLoaders/1139179338=([lombok.launch.ShadowClassLoader], java.util.Set), var470-init=([], lombok.launch.PackageShader), arr-String-init=([], java.lang.String[]), <init>/334488186=([lombok.launch.PackageShader, java.lang.String[]], void), shader/1139179338=([lombok.launch.ShadowClassLoader], lombok.launch.PackageShader), var3842-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var3842-to-var2800=([java.util.HashMap], java.util.Map), mapJarPathToTracker/1139179338=([lombok.launch.ShadowClassLoader], java.util.Map), fileRootCache/1139179338=([lombok.launch.ShadowClassLoader], java.util.Map), jarLocCache/1139179338=([lombok.launch.ShadowClassLoader], java.util.Map), sclSuffix/1139179338=([lombok.launch.ShadowClassLoader], java.lang.String), SELF_BASE/1139179338=([lombok.launch.ShadowClassLoader], java.lang.String), length/-134980193=([java.lang.String], int), SELF_BASE_LENGTH/1139179338=([lombok.launch.ShadowClassLoader], int), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), endsWith/985337093=([java.lang.String, java.lang.String], boolean), var3605-init=([], java.io.File), substring/-1240304868=([java.lang.String, int, int], java.lang.String), <init>/-1681595970=([java.io.File, java.lang.String], void), SELF_BASE_FILE/1139179338=([lombok.launch.ShadowClassLoader], java.io.File), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var792_getProperty/258823597=([java.lang.String], java.lang.String)}
; {var3895=lombok.launch.ShadowClassLoader, var274=r0, var3565=java.lang.ClassLoader, var3648=r1, var425=r12, var1187=null_type, var2933=r15, var854=java.util.List, var1976=r13, var3713=r14, var3673=java.util.ArrayList, var2230=$r71, var922=$r72, var1203=$r73, var2136=java.util.IdentityHashMap, var806=$r74, var1801=java.util.Set, var3967=java.util.Collections, var2800=java.util.Map, var3684=$r6, var470=lombok.launch.PackageShader, var225=$r75, var2358=$r8, var3842=java.util.HashMap, var1375=$r76, var3124=$r77, var2850=$r78, var3866=$i10, var1457=$r25, var1486=$z1, var798=$r43, var1714=$z6, var3605=java.io.File, var2550=$r82, var307=$r46, var3725=$r45, var1498=$i8, var490=$i9, var2201=$r47, var1482=$r85, var3213=$r66, var645=$r67, var792=java.lang.System, var2030=$r68}
; {lombok.launch.ShadowClassLoader=var3895, r0=var274, java.lang.ClassLoader=var3565, r1=var3648, r12=var425, null_type=var1187, r15=var2933, java.util.List=var854, r13=var1976, r14=var3713, java.util.ArrayList=var3673, $r71=var2230, $r72=var922, $r73=var1203, java.util.IdentityHashMap=var2136, $r74=var806, java.util.Set=var1801, java.util.Collections=var3967, java.util.Map=var2800, $r6=var3684, lombok.launch.PackageShader=var470, $r75=var225, $r8=var2358, java.util.HashMap=var3842, $r76=var1375, $r77=var3124, $r78=var2850, $i10=var3866, $r25=var1457, $z1=var1486, $r43=var798, $z6=var1714, java.io.File=var3605, $r82=var2550, $r46=var307, $r45=var3725, $i8=var1498, $i9=var490, $r47=var2201, $r85=var1482, $r66=var3213, $r67=var645, java.lang.System=var792, $r68=var2030}
;seq <java.lang.String: int length()>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.ClassLoader;	r12 := @parameter1: java.lang.String;	r15 := @parameter2: java.lang.String;	r13 := @parameter3: java.util.List;	r14 := @parameter4: java.util.List;	specialinvoke r0.<java.lang.ClassLoader: void <init>(java.lang.ClassLoader)>(r1);	$r71 = new java.util.ArrayList;	specialinvoke $r71.<java.util.ArrayList: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.List override> = $r71;	$r72 = new java.util.ArrayList;	specialinvoke $r72.<java.util.ArrayList: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.List parentExclusion> = $r72;	$r73 = new java.util.ArrayList;	specialinvoke $r73.<java.util.ArrayList: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> = $r73;	$r74 = new java.util.IdentityHashMap;	specialinvoke $r74.<java.util.IdentityHashMap: void <init>()>();	$r6 = staticinvoke <java.util.Collections: java.util.Set newSetFromMap(java.util.Map)>($r74);	r0.<lombok.launch.ShadowClassLoader: java.util.Set prependedParentLoaders> = $r6;	$r75 = new lombok.launch.PackageShader;	$r8 = newarray (java.lang.String)[2];	$r8[0] = "org/objectweb/asm/";	$r8[1] = "org/lombokweb/asm/";	specialinvoke $r75.<lombok.launch.PackageShader: void <init>(java.lang.String[])>($r8);	r0.<lombok.launch.ShadowClassLoader: lombok.launch.PackageShader shader> = $r75;	$r76 = new java.util.HashMap;	specialinvoke $r76.<java.util.HashMap: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.Map mapJarPathToTracker> = $r76;	$r77 = new java.util.HashMap;	specialinvoke $r77.<java.util.HashMap: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.Map fileRootCache> = $r77;	$r78 = new java.util.HashMap;	specialinvoke $r78.<java.util.HashMap: void <init>()>();	r0.<lombok.launch.ShadowClassLoader: java.util.Map jarLocCache> = $r78;	r0.<lombok.launch.ShadowClassLoader: java.lang.String sclSuffix> = r12;	if r13 == null goto (branch);	if r14 == null goto (branch);	if r15 == null goto $r16 = class "Llombok/launch/ShadowClassLoader;";	r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE> = r15;	$i10 = virtualinvoke r15.<java.lang.String: int length()>();	r0.<lombok.launch.ShadowClassLoader: int SELF_BASE_LENGTH> = $i10;	goto [?= $r25 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE>];	$r25 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE>;	$z1 = virtualinvoke $r25.<java.lang.String: boolean startsWith(java.lang.String)>("jar:file:");	if $z1 == 0 goto $r26 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE>;	$r43 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE>;	$z6 = virtualinvoke $r43.<java.lang.String: boolean endsWith(java.lang.String)>("!/");	if $z6 == 0 goto $r26 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE>;	$r82 = new java.io.File;	$r46 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE>;	$r45 = r0.<lombok.launch.ShadowClassLoader: java.lang.String SELF_BASE>;	$i8 = virtualinvoke $r45.<java.lang.String: int length()>();	$i9 = $i8 - 2;	$r47 = virtualinvoke $r46.<java.lang.String: java.lang.String substring(int,int)>(9, $i9);	specialinvoke $r82.<java.io.File: void <init>(java.lang.String)>($r47);	r0.<lombok.launch.ShadowClassLoader: java.io.File SELF_BASE_FILE> = $r82;	goto [?= $r85 = new java.lang.StringBuilder];	$r85 = new java.lang.StringBuilder;	specialinvoke $r85.<java.lang.StringBuilder: void <init>(java.lang.String)>("shadow.override.");	$r66 = virtualinvoke $r85.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12);	$r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.String toString()>();	$r68 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>($r67);	if $r68 == null goto return;	return
;block_num 9