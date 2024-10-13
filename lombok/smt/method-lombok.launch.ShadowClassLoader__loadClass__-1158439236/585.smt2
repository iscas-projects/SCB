(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3220 0)
(declare-sort var1318 0)
(declare-sort var3538 0)
(declare-sort var1029 0)
(declare-sort var749 0)
(declare-sort var2704 0)
(declare-sort var1807 0)
(declare-sort var490 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun findLoadedClass/1112001413 (var3538 String) ClassObject)
(declare-fun cast-from-var3220-to-var3538 (var3220) var3538)
(declare-fun highlanders/1139179338 (var3220) var1029)
(declare-fun var1029_contains/-441121415 (var1029 var749) Bool)
(declare-fun cast-from-String-to-var749 (String) var749)
(declare-fun var1807_get/1088891777 (var1807 var749) var749)
(declare-fun cast-from-var2704-to-var1807 (var2704) var1807)
(declare-fun cast-from-var749-to-ClassObject (var749) ClassObject)
(declare-fun String-init () String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_valueOf/-333372740 (var749) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getResource_/164889481 (var3220 String Bool) var490)
(declare-fun urlToDefineClass/-710439963 (var3220 String var490 Bool) ClassObject)
(declare-const null-var3220 var3220)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-ClassObject ClassObject)
(declare-const var3220-highlanderMap var2704)
(declare-const null-var490 var490)
(declare-const var592 var3220) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var592 null-var3220)))
(declare-const var201 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var201 null-String)))
(declare-const var150 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var150 null-Bool)))
(assert true)
(define-const var3900 ClassObject (findLoadedClass/1112001413 (cast-from-var3220-to-var3538 var592) var201)) ; Statement: r30 = virtualinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class findLoadedClass(java.lang.String)>(r1) 
 ; Statement: if r30 == null goto $r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> 
(assert (= var3900 null-ClassObject)) ; Cond: r30 == null 
(define-const var133 var1029 (highlanders/1139179338 var592)) ; Statement: $r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> 
(define-const var269 Bool (var1029_contains/-441121415 var133 (cast-from-String-to-var749 var201))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.List: boolean contains(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (not (= (ite var269 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2333 var2704 var3220-highlanderMap) ; Statement: $r14 = <lombok.launch.ShadowClassLoader: java.util.concurrent.ConcurrentMap highlanderMap> 
(define-const var760 var749 (var1807_get/1088891777 (cast-from-var2704-to-var1807 var2333) (cast-from-String-to-var749 var201))) ; Statement: $r15 = interfaceinvoke $r14.<java.util.concurrent.ConcurrentMap: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var3883 ClassObject (cast-from-var749-to-ClassObject var760)) ; Statement: r31 = (java.lang.Class) $r15 
 ; Statement: if r31 == null goto $r3 = new java.lang.StringBuilder 
(assert (= var3883 null-ClassObject)) ; Cond: r31 == null 
(define-const var1599 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
(define-const var2791 String (replace/2138489945 var201 (cast-from-String-to-String ".") (cast-from-String-to-String "/"))) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/") 
(define-const var1988 String (String_valueOf/-333372740 (cast-from-String-to-var749 var2791))) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r4) 
(assert true)
;(assert (<init>/-1061048412 var1599 var1988)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5) 
(declare-const var1599!1 String)
(assert (= var1599!1 var1988))
(assert true)
(define-const var219 String (append/672562846 var1599!1 ".class")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var1599!2 String)
(assert (= var1599!2 (str.++ var1599!1 ".class")))
(assert true)
(define-const var1554 String (toString/-2075883882 var219)) ; Statement: $r16 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1972 var490 (getResource_/164889481 var592 var1554 (ite (= 1 1) true false))) ; Statement: $r17 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResource_(java.lang.String,boolean)>($r16, 1) 
(define-const var570 var490 var1972) ; Statement: r32 = $r17 
 ; Statement: if $r17 != null goto (branch) 
(assert (not (= var1972 null-var490))) ; Cond: $r17 != null 
 ; Statement: if r32 != null goto $r7 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class urlToDefineClass(java.lang.String,java.net.URL,boolean)>(r1, r32, z1) 
(assert (not (= var570 null-var490))) ; Cond: r32 != null 
(assert true)
(define-const var967 ClassObject (urlToDefineClass/-710439963 var592 var201 var570 var150)) ; Statement: $r7 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class urlToDefineClass(java.lang.String,java.net.URL,boolean)>(r1, r32, z1) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {findLoadedClass/1112001413=([java.lang.ClassLoader, java.lang.String], java.lang.Class), cast-from-var3220-to-var3538=([lombok.launch.ShadowClassLoader], java.lang.ClassLoader), highlanders/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var1029_contains/-441121415=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var749=([java.lang.String], java.lang.Object), var1807_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var2704-to-var1807=([java.util.concurrent.ConcurrentMap], java.util.Map), cast-from-var749-to-ClassObject=([java.lang.Object], java.lang.Class), String-init=([], java.lang.StringBuilder), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_valueOf/-333372740=([java.lang.Object], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getResource_/164889481=([lombok.launch.ShadowClassLoader, java.lang.String, boolean], java.net.URL), urlToDefineClass/-710439963=([lombok.launch.ShadowClassLoader, java.lang.String, java.net.URL, boolean], java.lang.Class)}
; {var3220=lombok.launch.ShadowClassLoader, var592=r0, var201=r1, var1318=null_type, var150=z1, var3538=java.lang.ClassLoader, var3900=r30, var1029=java.util.List, var133=$r2, var749=java.lang.Object, var269=$z0, var2704=java.util.concurrent.ConcurrentMap, var2333=$r14, var1807=java.util.Map, var760=$r15, var3883=r31, var1599=$r3, var2791=$r4, var1988=$r5, var219=$r6, var1554=$r16, var490=java.net.URL, var1972=$r17, var570=r32, var967=$r7}
; {lombok.launch.ShadowClassLoader=var3220, r0=var592, r1=var201, null_type=var1318, z1=var150, java.lang.ClassLoader=var3538, r30=var3900, java.util.List=var1029, $r2=var133, java.lang.Object=var749, $z0=var269, java.util.concurrent.ConcurrentMap=var2704, $r14=var2333, java.util.Map=var1807, $r15=var760, r31=var3883, $r3=var1599, $r4=var2791, $r5=var1988, $r6=var219, $r16=var1554, java.net.URL=var490, $r17=var1972, r32=var570, $r7=var967}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1,"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	r30 = virtualinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class findLoadedClass(java.lang.String)>(r1);	if r30 == null goto $r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders>;	$r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders>;	$z0 = interfaceinvoke $r2.<java.util.List: boolean contains(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = new java.lang.StringBuilder;	$r14 = <lombok.launch.ShadowClassLoader: java.util.concurrent.ConcurrentMap highlanderMap>;	$r15 = interfaceinvoke $r14.<java.util.concurrent.ConcurrentMap: java.lang.Object get(java.lang.Object)>(r1);	r31 = (java.lang.Class) $r15;	if r31 == null goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/");	$r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r4);	specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	$r16 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResource_(java.lang.String,boolean)>($r16, 1);	r32 = $r17;	if $r17 != null goto (branch);	if r32 != null goto $r7 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class urlToDefineClass(java.lang.String,java.net.URL,boolean)>(r1, r32, z1);	$r7 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class urlToDefineClass(java.lang.String,java.net.URL,boolean)>(r1, r32, z1);	return $r7
;block_num 6