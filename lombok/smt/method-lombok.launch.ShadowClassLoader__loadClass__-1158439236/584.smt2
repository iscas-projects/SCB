(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1675 0)
(declare-sort var1593 0)
(declare-sort var2565 0)
(declare-sort var723 0)
(declare-sort var673 0)
(declare-sort var1045 0)
(declare-sort var3869 0)
(declare-sort var3900 0)
(declare-sort var2325 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun findLoadedClass/1112001413 (var2565 String) ClassObject)
(declare-fun cast-from-var1675-to-var2565 (var1675) var2565)
(declare-fun highlanders/1139179338 (var1675) var723)
(declare-fun var723_contains/-441121415 (var723 var673) Bool)
(declare-fun cast-from-String-to-var673 (String) var673)
(declare-fun var3869_get/1088891777 (var3869 var673) var673)
(declare-fun cast-from-var1045-to-var3869 (var1045) var3869)
(declare-fun cast-from-var673-to-ClassObject (var673) ClassObject)
(declare-fun String-init () String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_valueOf/-333372740 (var673) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getResource_/164889481 (var1675 String Bool) var3900)
(declare-fun var2325-init () var2325)
(declare-fun <init>/1087086210 (var2325 String) void)
(declare-const null-var1675 var1675)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-ClassObject ClassObject)
(declare-const var1675-highlanderMap var1045)
(declare-const null-var3900 var3900)
(declare-const var1141 var1675) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var1141 null-var1675)))
(declare-const var696 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var696 null-String)))
(declare-const var575 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var575 null-Bool)))
(assert true)
(define-const var815 ClassObject (findLoadedClass/1112001413 (cast-from-var1675-to-var2565 var1141) var696)) ; Statement: r30 = virtualinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class findLoadedClass(java.lang.String)>(r1) 
 ; Statement: if r30 == null goto $r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> 
(assert (= var815 null-ClassObject)) ; Cond: r30 == null 
(define-const var2779 var723 (highlanders/1139179338 var1141)) ; Statement: $r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> 
(define-const var1465 Bool (var723_contains/-441121415 var2779 (cast-from-String-to-var673 var696))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.List: boolean contains(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (not (= (ite var1465 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1995 var1045 var1675-highlanderMap) ; Statement: $r14 = <lombok.launch.ShadowClassLoader: java.util.concurrent.ConcurrentMap highlanderMap> 
(define-const var628 var673 (var3869_get/1088891777 (cast-from-var1045-to-var3869 var1995) (cast-from-String-to-var673 var696))) ; Statement: $r15 = interfaceinvoke $r14.<java.util.concurrent.ConcurrentMap: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2895 ClassObject (cast-from-var673-to-ClassObject var628)) ; Statement: r31 = (java.lang.Class) $r15 
 ; Statement: if r31 == null goto $r3 = new java.lang.StringBuilder 
(assert (= var2895 null-ClassObject)) ; Cond: r31 == null 
(define-const var2507 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
(define-const var3532 String (replace/2138489945 var696 (cast-from-String-to-String ".") (cast-from-String-to-String "/"))) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/") 
(define-const var684 String (String_valueOf/-333372740 (cast-from-String-to-var673 var3532))) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r4) 
(assert true)
;(assert (<init>/-1061048412 var2507 var684)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5) 
(declare-const var2507!1 String)
(assert (= var2507!1 var684))
(assert true)
(define-const var3578 String (append/672562846 var2507!1 ".class")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var2507!2 String)
(assert (= var2507!2 (str.++ var2507!1 ".class")))
(assert true)
(define-const var1769 String (toString/-2075883882 var3578)) ; Statement: $r16 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2481 var3900 (getResource_/164889481 var1141 var1769 (ite (= 1 1) true false))) ; Statement: $r17 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResource_(java.lang.String,boolean)>($r16, 1) 
(define-const var1347 var3900 var2481) ; Statement: r32 = $r17 
 ; Statement: if $r17 != null goto (branch) 
(assert (not (= var2481 null-var3900))) ; Cond: $r17 != null 
 ; Statement: if r32 != null goto $r7 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class urlToDefineClass(java.lang.String,java.net.URL,boolean)>(r1, r32, z1) 
(assert (not (not (= var1347 null-var3900)))) ; Negate: Cond: r32 != null  
(define-const var2545 var2325 var2325-init) ; Statement: $r8 = new java.lang.ClassNotFoundException 
(assert true)
;(assert (<init>/1087086210 var2545 var696)) ; Statement: specialinvoke $r8.<java.lang.ClassNotFoundException: void <init>(java.lang.String)>(r1) 

(declare-const var2545!1 var2325)
(declare-const var696!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {findLoadedClass/1112001413=([java.lang.ClassLoader, java.lang.String], java.lang.Class), cast-from-var1675-to-var2565=([lombok.launch.ShadowClassLoader], java.lang.ClassLoader), highlanders/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var723_contains/-441121415=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var673=([java.lang.String], java.lang.Object), var3869_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var1045-to-var3869=([java.util.concurrent.ConcurrentMap], java.util.Map), cast-from-var673-to-ClassObject=([java.lang.Object], java.lang.Class), String-init=([], java.lang.StringBuilder), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_valueOf/-333372740=([java.lang.Object], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getResource_/164889481=([lombok.launch.ShadowClassLoader, java.lang.String, boolean], java.net.URL), var2325-init=([], java.lang.ClassNotFoundException), <init>/1087086210=([java.lang.ClassNotFoundException, java.lang.String], void)}
; {var1675=lombok.launch.ShadowClassLoader, var1141=r0, var696=r1, var1593=null_type, var575=z1, var2565=java.lang.ClassLoader, var815=r30, var723=java.util.List, var2779=$r2, var673=java.lang.Object, var1465=$z0, var1045=java.util.concurrent.ConcurrentMap, var1995=$r14, var3869=java.util.Map, var628=$r15, var2895=r31, var2507=$r3, var3532=$r4, var684=$r5, var3578=$r6, var1769=$r16, var3900=java.net.URL, var2481=$r17, var1347=r32, var2325=java.lang.ClassNotFoundException, var2545=$r8}
; {lombok.launch.ShadowClassLoader=var1675, r0=var1141, r1=var696, null_type=var1593, z1=var575, java.lang.ClassLoader=var2565, r30=var815, java.util.List=var723, $r2=var2779, java.lang.Object=var673, $z0=var1465, java.util.concurrent.ConcurrentMap=var1045, $r14=var1995, java.util.Map=var3869, $r15=var628, r31=var2895, $r3=var2507, $r4=var3532, $r5=var684, $r6=var3578, $r16=var1769, java.net.URL=var3900, $r17=var2481, r32=var1347, java.lang.ClassNotFoundException=var2325, $r8=var2545}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1,"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	r30 = virtualinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class findLoadedClass(java.lang.String)>(r1);	if r30 == null goto $r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders>;	$r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders>;	$z0 = interfaceinvoke $r2.<java.util.List: boolean contains(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = new java.lang.StringBuilder;	$r14 = <lombok.launch.ShadowClassLoader: java.util.concurrent.ConcurrentMap highlanderMap>;	$r15 = interfaceinvoke $r14.<java.util.concurrent.ConcurrentMap: java.lang.Object get(java.lang.Object)>(r1);	r31 = (java.lang.Class) $r15;	if r31 == null goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/");	$r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r4);	specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	$r16 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResource_(java.lang.String,boolean)>($r16, 1);	r32 = $r17;	if $r17 != null goto (branch);	if r32 != null goto $r7 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class urlToDefineClass(java.lang.String,java.net.URL,boolean)>(r1, r32, z1);	$r8 = new java.lang.ClassNotFoundException;	specialinvoke $r8.<java.lang.ClassNotFoundException: void <init>(java.lang.String)>(r1);	throw $r8
;block_num 6