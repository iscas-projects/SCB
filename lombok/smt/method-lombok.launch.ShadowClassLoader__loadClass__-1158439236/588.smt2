(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3403 0)
(declare-sort var2276 0)
(declare-sort var3592 0)
(declare-sort var109 0)
(declare-sort var28 0)
(declare-sort var2428 0)
(declare-sort var1836 0)
(declare-sort var2444 0)
(declare-sort var3773 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun findLoadedClass/1112001413 (var3592 String) ClassObject)
(declare-fun cast-from-var3403-to-var3592 (var3403) var3592)
(declare-fun highlanders/1139179338 (var3403) var109)
(declare-fun var109_contains/-441121415 (var109 var28) Bool)
(declare-fun cast-from-String-to-var28 (String) var28)
(declare-fun var1836_get/1088891777 (var1836 var28) var28)
(declare-fun cast-from-var2428-to-var1836 (var2428) var1836)
(declare-fun cast-from-var28-to-ClassObject (var28) ClassObject)
(declare-fun String-init () String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_valueOf/-333372740 (var28) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getResource_/164889481 (var3403 String Bool) var2444)
(declare-fun exclusionListMatch/93518237 (var3403 String) Bool)
(declare-fun var3773-init () var3773)
(declare-fun <init>/1087086210 (var3773 String) void)
(declare-const null-var3403 var3403)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-ClassObject ClassObject)
(declare-const var3403-highlanderMap var2428)
(declare-const null-var2444 var2444)
(declare-const var2162 var3403) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var2162 null-var3403)))
(declare-const var2843 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2843 null-String)))
(declare-const var1781 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var1781 null-Bool)))
(assert true)
(define-const var3878 ClassObject (findLoadedClass/1112001413 (cast-from-var3403-to-var3592 var2162) var2843)) ; Statement: r30 = virtualinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class findLoadedClass(java.lang.String)>(r1) 
 ; Statement: if r30 == null goto $r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> 
(assert (= var3878 null-ClassObject)) ; Cond: r30 == null 
(define-const var2342 var109 (highlanders/1139179338 var2162)) ; Statement: $r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> 
(define-const var2321 Bool (var109_contains/-441121415 var2342 (cast-from-String-to-var28 var2843))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.List: boolean contains(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (not (= (ite var2321 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var915 var2428 var3403-highlanderMap) ; Statement: $r14 = <lombok.launch.ShadowClassLoader: java.util.concurrent.ConcurrentMap highlanderMap> 
(define-const var3382 var28 (var1836_get/1088891777 (cast-from-var2428-to-var1836 var915) (cast-from-String-to-var28 var2843))) ; Statement: $r15 = interfaceinvoke $r14.<java.util.concurrent.ConcurrentMap: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2798 ClassObject (cast-from-var28-to-ClassObject var3382)) ; Statement: r31 = (java.lang.Class) $r15 
 ; Statement: if r31 == null goto $r3 = new java.lang.StringBuilder 
(assert (= var2798 null-ClassObject)) ; Cond: r31 == null 
(define-const var1088 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
(define-const var3829 String (replace/2138489945 var2843 (cast-from-String-to-String ".") (cast-from-String-to-String "/"))) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/") 
(define-const var656 String (String_valueOf/-333372740 (cast-from-String-to-var28 var3829))) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r4) 
(assert true)
;(assert (<init>/-1061048412 var1088 var656)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5) 
(declare-const var1088!1 String)
(assert (= var1088!1 var656))
(assert true)
(define-const var2620 String (append/672562846 var1088!1 ".class")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var1088!2 String)
(assert (= var1088!2 (str.++ var1088!1 ".class")))
(assert true)
(define-const var2289 String (toString/-2075883882 var2620)) ; Statement: $r16 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1838 var2444 (getResource_/164889481 var2162 var2289 (ite (= 1 1) true false))) ; Statement: $r17 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResource_(java.lang.String,boolean)>($r16, 1) 
(define-const var2594 var2444 var1838) ; Statement: r32 = $r17 
 ; Statement: if $r17 != null goto (branch) 
(assert (not (not (= var1838 null-var2444)))) ; Negate: Cond: $r17 != null  
(assert true)
(define-const var741 Bool (exclusionListMatch/93518237 var2162 var2289)) ; Statement: $z2 = specialinvoke r0.<lombok.launch.ShadowClassLoader: boolean exclusionListMatch(java.lang.String)>($r16) 
 ; Statement: if $z2 != 0 goto (branch) 
(assert (not (= (ite var741 1 0) 0))) ; Cond: $z2 != 0 
 ; Statement: if r32 != null goto $r7 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class urlToDefineClass(java.lang.String,java.net.URL,boolean)>(r1, r32, z1) 
(assert (not (not (= var2594 null-var2444)))) ; Negate: Cond: r32 != null  
(define-const var1064 var3773 var3773-init) ; Statement: $r8 = new java.lang.ClassNotFoundException 
(assert true)
;(assert (<init>/1087086210 var1064 var2843)) ; Statement: specialinvoke $r8.<java.lang.ClassNotFoundException: void <init>(java.lang.String)>(r1) 

(declare-const var1064!1 var3773)
(declare-const var2843!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {findLoadedClass/1112001413=([java.lang.ClassLoader, java.lang.String], java.lang.Class), cast-from-var3403-to-var3592=([lombok.launch.ShadowClassLoader], java.lang.ClassLoader), highlanders/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var109_contains/-441121415=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var28=([java.lang.String], java.lang.Object), var1836_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var2428-to-var1836=([java.util.concurrent.ConcurrentMap], java.util.Map), cast-from-var28-to-ClassObject=([java.lang.Object], java.lang.Class), String-init=([], java.lang.StringBuilder), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_valueOf/-333372740=([java.lang.Object], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getResource_/164889481=([lombok.launch.ShadowClassLoader, java.lang.String, boolean], java.net.URL), exclusionListMatch/93518237=([lombok.launch.ShadowClassLoader, java.lang.String], boolean), var3773-init=([], java.lang.ClassNotFoundException), <init>/1087086210=([java.lang.ClassNotFoundException, java.lang.String], void)}
; {var3403=lombok.launch.ShadowClassLoader, var2162=r0, var2843=r1, var2276=null_type, var1781=z1, var3592=java.lang.ClassLoader, var3878=r30, var109=java.util.List, var2342=$r2, var28=java.lang.Object, var2321=$z0, var2428=java.util.concurrent.ConcurrentMap, var915=$r14, var1836=java.util.Map, var3382=$r15, var2798=r31, var1088=$r3, var3829=$r4, var656=$r5, var2620=$r6, var2289=$r16, var2444=java.net.URL, var1838=$r17, var2594=r32, var741=$z2, var3773=java.lang.ClassNotFoundException, var1064=$r8}
; {lombok.launch.ShadowClassLoader=var3403, r0=var2162, r1=var2843, null_type=var2276, z1=var1781, java.lang.ClassLoader=var3592, r30=var3878, java.util.List=var109, $r2=var2342, java.lang.Object=var28, $z0=var2321, java.util.concurrent.ConcurrentMap=var2428, $r14=var915, java.util.Map=var1836, $r15=var3382, r31=var2798, $r3=var1088, $r4=var3829, $r5=var656, $r6=var2620, $r16=var2289, java.net.URL=var2444, $r17=var1838, r32=var2594, $z2=var741, java.lang.ClassNotFoundException=var3773, $r8=var1064}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1,"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	r30 = virtualinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class findLoadedClass(java.lang.String)>(r1);	if r30 == null goto $r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders>;	$r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders>;	$z0 = interfaceinvoke $r2.<java.util.List: boolean contains(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = new java.lang.StringBuilder;	$r14 = <lombok.launch.ShadowClassLoader: java.util.concurrent.ConcurrentMap highlanderMap>;	$r15 = interfaceinvoke $r14.<java.util.concurrent.ConcurrentMap: java.lang.Object get(java.lang.Object)>(r1);	r31 = (java.lang.Class) $r15;	if r31 == null goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/");	$r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r4);	specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	$r16 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResource_(java.lang.String,boolean)>($r16, 1);	r32 = $r17;	if $r17 != null goto (branch);	$z2 = specialinvoke r0.<lombok.launch.ShadowClassLoader: boolean exclusionListMatch(java.lang.String)>($r16);	if $z2 != 0 goto (branch);	if r32 != null goto $r7 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class urlToDefineClass(java.lang.String,java.net.URL,boolean)>(r1, r32, z1);	$r8 = new java.lang.ClassNotFoundException;	specialinvoke $r8.<java.lang.ClassNotFoundException: void <init>(java.lang.String)>(r1);	throw $r8
;block_num 7