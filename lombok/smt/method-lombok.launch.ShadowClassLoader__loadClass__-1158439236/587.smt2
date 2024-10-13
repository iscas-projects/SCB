(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3406 0)
(declare-sort var2013 0)
(declare-sort var1686 0)
(declare-sort var2351 0)
(declare-sort var762 0)
(declare-sort var1174 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun findLoadedClass/1112001413 (var1686 String) ClassObject)
(declare-fun cast-from-var3406-to-var1686 (var3406) var1686)
(declare-fun highlanders/1139179338 (var3406) var2351)
(declare-fun var2351_contains/-441121415 (var2351 var762) Bool)
(declare-fun cast-from-String-to-var762 (String) var762)
(declare-fun String-init () String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_valueOf/-333372740 (var762) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getResource_/164889481 (var3406 String Bool) var1174)
(declare-fun exclusionListMatch/93518237 (var3406 String) Bool)
(declare-fun urlToDefineClass/-710439963 (var3406 String var1174 Bool) ClassObject)
(declare-const null-var3406 var3406)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1174 var1174)
(declare-const var2921 var3406) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var2921 null-var3406)))
(declare-const var3172 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3172 null-String)))
(declare-const var3658 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var3658 null-Bool)))
(assert true)
(define-const var2189 ClassObject (findLoadedClass/1112001413 (cast-from-var3406-to-var1686 var2921) var3172)) ; Statement: r30 = virtualinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class findLoadedClass(java.lang.String)>(r1) 
 ; Statement: if r30 == null goto $r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> 
(assert (= var2189 null-ClassObject)) ; Cond: r30 == null 
(define-const var2099 var2351 (highlanders/1139179338 var2921)) ; Statement: $r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> 
(define-const var3012 Bool (var2351_contains/-441121415 var2099 (cast-from-String-to-var762 var3172))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.List: boolean contains(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (= (ite var3012 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3451 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
(define-const var1672 String (replace/2138489945 var3172 (cast-from-String-to-String ".") (cast-from-String-to-String "/"))) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/") 
(define-const var1448 String (String_valueOf/-333372740 (cast-from-String-to-var762 var1672))) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r4) 
(assert true)
;(assert (<init>/-1061048412 var3451 var1448)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5) 
(declare-const var3451!1 String)
(assert (= var3451!1 var1448))
(assert true)
(define-const var831 String (append/672562846 var3451!1 ".class")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var3451!2 String)
(assert (= var3451!2 (str.++ var3451!1 ".class")))
(assert true)
(define-const var3131 String (toString/-2075883882 var831)) ; Statement: $r16 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var616 var1174 (getResource_/164889481 var2921 var3131 (ite (= 1 1) true false))) ; Statement: $r17 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResource_(java.lang.String,boolean)>($r16, 1) 
(define-const var1895 var1174 var616) ; Statement: r32 = $r17 
 ; Statement: if $r17 != null goto (branch) 
(assert (not (not (= var616 null-var1174)))) ; Negate: Cond: $r17 != null  
(assert true)
(define-const var453 Bool (exclusionListMatch/93518237 var2921 var3131)) ; Statement: $z2 = specialinvoke r0.<lombok.launch.ShadowClassLoader: boolean exclusionListMatch(java.lang.String)>($r16) 
 ; Statement: if $z2 != 0 goto (branch) 
(assert (not (= (ite var453 1 0) 0))) ; Cond: $z2 != 0 
 ; Statement: if r32 != null goto $r7 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class urlToDefineClass(java.lang.String,java.net.URL,boolean)>(r1, r32, z1) 
(assert (not (= var1895 null-var1174))) ; Cond: r32 != null 
(assert true)
(define-const var1556 ClassObject (urlToDefineClass/-710439963 var2921 var3172 var1895 var3658)) ; Statement: $r7 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class urlToDefineClass(java.lang.String,java.net.URL,boolean)>(r1, r32, z1) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {findLoadedClass/1112001413=([java.lang.ClassLoader, java.lang.String], java.lang.Class), cast-from-var3406-to-var1686=([lombok.launch.ShadowClassLoader], java.lang.ClassLoader), highlanders/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var2351_contains/-441121415=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var762=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_valueOf/-333372740=([java.lang.Object], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getResource_/164889481=([lombok.launch.ShadowClassLoader, java.lang.String, boolean], java.net.URL), exclusionListMatch/93518237=([lombok.launch.ShadowClassLoader, java.lang.String], boolean), urlToDefineClass/-710439963=([lombok.launch.ShadowClassLoader, java.lang.String, java.net.URL, boolean], java.lang.Class)}
; {var3406=lombok.launch.ShadowClassLoader, var2921=r0, var3172=r1, var2013=null_type, var3658=z1, var1686=java.lang.ClassLoader, var2189=r30, var2351=java.util.List, var2099=$r2, var762=java.lang.Object, var3012=$z0, var3451=$r3, var1672=$r4, var1448=$r5, var831=$r6, var3131=$r16, var1174=java.net.URL, var616=$r17, var1895=r32, var453=$z2, var1556=$r7}
; {lombok.launch.ShadowClassLoader=var3406, r0=var2921, r1=var3172, null_type=var2013, z1=var3658, java.lang.ClassLoader=var1686, r30=var2189, java.util.List=var2351, $r2=var2099, java.lang.Object=var762, $z0=var3012, $r3=var3451, $r4=var1672, $r5=var1448, $r6=var831, $r16=var3131, java.net.URL=var1174, $r17=var616, r32=var1895, $z2=var453, $r7=var1556}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1,"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	r30 = virtualinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class findLoadedClass(java.lang.String)>(r1);	if r30 == null goto $r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders>;	$r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders>;	$z0 = interfaceinvoke $r2.<java.util.List: boolean contains(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/");	$r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r4);	specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	$r16 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResource_(java.lang.String,boolean)>($r16, 1);	r32 = $r17;	if $r17 != null goto (branch);	$z2 = specialinvoke r0.<lombok.launch.ShadowClassLoader: boolean exclusionListMatch(java.lang.String)>($r16);	if $z2 != 0 goto (branch);	if r32 != null goto $r7 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class urlToDefineClass(java.lang.String,java.net.URL,boolean)>(r1, r32, z1);	$r7 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class urlToDefineClass(java.lang.String,java.net.URL,boolean)>(r1, r32, z1);	return $r7
;block_num 6