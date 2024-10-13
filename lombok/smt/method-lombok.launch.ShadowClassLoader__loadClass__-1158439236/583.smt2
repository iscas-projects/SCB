(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1863 0)
(declare-sort var1240 0)
(declare-sort var2675 0)
(declare-sort var3500 0)
(declare-sort var3616 0)
(declare-sort var2443 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun findLoadedClass/1112001413 (var2675 String) ClassObject)
(declare-fun cast-from-var1863-to-var2675 (var1863) var2675)
(declare-fun highlanders/1139179338 (var1863) var3500)
(declare-fun var3500_contains/-441121415 (var3500 var3616) Bool)
(declare-fun cast-from-String-to-var3616 (String) var3616)
(declare-fun String-init () String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_valueOf/-333372740 (var3616) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getResource_/164889481 (var1863 String Bool) var2443)
(declare-fun urlToDefineClass/-710439963 (var1863 String var2443 Bool) ClassObject)
(declare-const null-var1863 var1863)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2443 var2443)
(declare-const var3204 var1863) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var3204 null-var1863)))
(declare-const var2838 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2838 null-String)))
(declare-const var2418 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var2418 null-Bool)))
(assert true)
(define-const var2350 ClassObject (findLoadedClass/1112001413 (cast-from-var1863-to-var2675 var3204) var2838)) ; Statement: r30 = virtualinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class findLoadedClass(java.lang.String)>(r1) 
 ; Statement: if r30 == null goto $r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> 
(assert (= var2350 null-ClassObject)) ; Cond: r30 == null 
(define-const var3894 var3500 (highlanders/1139179338 var3204)) ; Statement: $r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> 
(define-const var302 Bool (var3500_contains/-441121415 var3894 (cast-from-String-to-var3616 var2838))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.List: boolean contains(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (= (ite var302 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2143 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
(define-const var379 String (replace/2138489945 var2838 (cast-from-String-to-String ".") (cast-from-String-to-String "/"))) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/") 
(define-const var871 String (String_valueOf/-333372740 (cast-from-String-to-var3616 var379))) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r4) 
(assert true)
;(assert (<init>/-1061048412 var2143 var871)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5) 
(declare-const var2143!1 String)
(assert (= var2143!1 var871))
(assert true)
(define-const var1784 String (append/672562846 var2143!1 ".class")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var2143!2 String)
(assert (= var2143!2 (str.++ var2143!1 ".class")))
(assert true)
(define-const var1914 String (toString/-2075883882 var1784)) ; Statement: $r16 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1087 var2443 (getResource_/164889481 var3204 var1914 (ite (= 1 1) true false))) ; Statement: $r17 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResource_(java.lang.String,boolean)>($r16, 1) 
(define-const var216 var2443 var1087) ; Statement: r32 = $r17 
 ; Statement: if $r17 != null goto (branch) 
(assert (not (= var1087 null-var2443))) ; Cond: $r17 != null 
 ; Statement: if r32 != null goto $r7 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class urlToDefineClass(java.lang.String,java.net.URL,boolean)>(r1, r32, z1) 
(assert (not (= var216 null-var2443))) ; Cond: r32 != null 
(assert true)
(define-const var1039 ClassObject (urlToDefineClass/-710439963 var3204 var2838 var216 var2418)) ; Statement: $r7 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class urlToDefineClass(java.lang.String,java.net.URL,boolean)>(r1, r32, z1) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {findLoadedClass/1112001413=([java.lang.ClassLoader, java.lang.String], java.lang.Class), cast-from-var1863-to-var2675=([lombok.launch.ShadowClassLoader], java.lang.ClassLoader), highlanders/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var3500_contains/-441121415=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var3616=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_valueOf/-333372740=([java.lang.Object], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getResource_/164889481=([lombok.launch.ShadowClassLoader, java.lang.String, boolean], java.net.URL), urlToDefineClass/-710439963=([lombok.launch.ShadowClassLoader, java.lang.String, java.net.URL, boolean], java.lang.Class)}
; {var1863=lombok.launch.ShadowClassLoader, var3204=r0, var2838=r1, var1240=null_type, var2418=z1, var2675=java.lang.ClassLoader, var2350=r30, var3500=java.util.List, var3894=$r2, var3616=java.lang.Object, var302=$z0, var2143=$r3, var379=$r4, var871=$r5, var1784=$r6, var1914=$r16, var2443=java.net.URL, var1087=$r17, var216=r32, var1039=$r7}
; {lombok.launch.ShadowClassLoader=var1863, r0=var3204, r1=var2838, null_type=var1240, z1=var2418, java.lang.ClassLoader=var2675, r30=var2350, java.util.List=var3500, $r2=var3894, java.lang.Object=var3616, $z0=var302, $r3=var2143, $r4=var379, $r5=var871, $r6=var1784, $r16=var1914, java.net.URL=var2443, $r17=var1087, r32=var216, $r7=var1039}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1,"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	r30 = virtualinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class findLoadedClass(java.lang.String)>(r1);	if r30 == null goto $r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders>;	$r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders>;	$z0 = interfaceinvoke $r2.<java.util.List: boolean contains(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/");	$r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r4);	specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	$r16 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResource_(java.lang.String,boolean)>($r16, 1);	r32 = $r17;	if $r17 != null goto (branch);	if r32 != null goto $r7 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class urlToDefineClass(java.lang.String,java.net.URL,boolean)>(r1, r32, z1);	$r7 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class urlToDefineClass(java.lang.String,java.net.URL,boolean)>(r1, r32, z1);	return $r7
;block_num 5