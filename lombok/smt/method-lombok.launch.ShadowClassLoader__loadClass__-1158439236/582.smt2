(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2985 0)
(declare-sort var3054 0)
(declare-sort var1985 0)
(declare-sort var2366 0)
(declare-sort var2924 0)
(declare-sort var1353 0)
(declare-sort var1886 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun findLoadedClass/1112001413 (var1985 String) ClassObject)
(declare-fun cast-from-var2985-to-var1985 (var2985) var1985)
(declare-fun highlanders/1139179338 (var2985) var2366)
(declare-fun var2366_contains/-441121415 (var2366 var2924) Bool)
(declare-fun cast-from-String-to-var2924 (String) var2924)
(declare-fun String-init () String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_valueOf/-333372740 (var2924) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getResource_/164889481 (var2985 String Bool) var1353)
(declare-fun var1886-init () var1886)
(declare-fun <init>/1087086210 (var1886 String) void)
(declare-const null-var2985 var2985)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1353 var1353)
(declare-const var3750 var2985) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var3750 null-var2985)))
(declare-const var2621 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2621 null-String)))
(declare-const var60 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var60 null-Bool)))
(assert true)
(define-const var2996 ClassObject (findLoadedClass/1112001413 (cast-from-var2985-to-var1985 var3750) var2621)) ; Statement: r30 = virtualinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class findLoadedClass(java.lang.String)>(r1) 
 ; Statement: if r30 == null goto $r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> 
(assert (= var2996 null-ClassObject)) ; Cond: r30 == null 
(define-const var3089 var2366 (highlanders/1139179338 var3750)) ; Statement: $r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> 
(define-const var2704 Bool (var2366_contains/-441121415 var3089 (cast-from-String-to-var2924 var2621))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.List: boolean contains(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (= (ite var2704 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1993 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
(define-const var819 String (replace/2138489945 var2621 (cast-from-String-to-String ".") (cast-from-String-to-String "/"))) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/") 
(define-const var2977 String (String_valueOf/-333372740 (cast-from-String-to-var2924 var819))) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r4) 
(assert true)
;(assert (<init>/-1061048412 var1993 var2977)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5) 
(declare-const var1993!1 String)
(assert (= var1993!1 var2977))
(assert true)
(define-const var2013 String (append/672562846 var1993!1 ".class")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var1993!2 String)
(assert (= var1993!2 (str.++ var1993!1 ".class")))
(assert true)
(define-const var2917 String (toString/-2075883882 var2013)) ; Statement: $r16 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2687 var1353 (getResource_/164889481 var3750 var2917 (ite (= 1 1) true false))) ; Statement: $r17 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResource_(java.lang.String,boolean)>($r16, 1) 
(define-const var1701 var1353 var2687) ; Statement: r32 = $r17 
 ; Statement: if $r17 != null goto (branch) 
(assert (not (= var2687 null-var1353))) ; Cond: $r17 != null 
 ; Statement: if r32 != null goto $r7 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class urlToDefineClass(java.lang.String,java.net.URL,boolean)>(r1, r32, z1) 
(assert (not (not (= var1701 null-var1353)))) ; Negate: Cond: r32 != null  
(define-const var2484 var1886 var1886-init) ; Statement: $r8 = new java.lang.ClassNotFoundException 
(assert true)
;(assert (<init>/1087086210 var2484 var2621)) ; Statement: specialinvoke $r8.<java.lang.ClassNotFoundException: void <init>(java.lang.String)>(r1) 

(declare-const var2484!1 var1886)
(declare-const var2621!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {findLoadedClass/1112001413=([java.lang.ClassLoader, java.lang.String], java.lang.Class), cast-from-var2985-to-var1985=([lombok.launch.ShadowClassLoader], java.lang.ClassLoader), highlanders/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var2366_contains/-441121415=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2924=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_valueOf/-333372740=([java.lang.Object], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getResource_/164889481=([lombok.launch.ShadowClassLoader, java.lang.String, boolean], java.net.URL), var1886-init=([], java.lang.ClassNotFoundException), <init>/1087086210=([java.lang.ClassNotFoundException, java.lang.String], void)}
; {var2985=lombok.launch.ShadowClassLoader, var3750=r0, var2621=r1, var3054=null_type, var60=z1, var1985=java.lang.ClassLoader, var2996=r30, var2366=java.util.List, var3089=$r2, var2924=java.lang.Object, var2704=$z0, var1993=$r3, var819=$r4, var2977=$r5, var2013=$r6, var2917=$r16, var1353=java.net.URL, var2687=$r17, var1701=r32, var1886=java.lang.ClassNotFoundException, var2484=$r8}
; {lombok.launch.ShadowClassLoader=var2985, r0=var3750, r1=var2621, null_type=var3054, z1=var60, java.lang.ClassLoader=var1985, r30=var2996, java.util.List=var2366, $r2=var3089, java.lang.Object=var2924, $z0=var2704, $r3=var1993, $r4=var819, $r5=var2977, $r6=var2013, $r16=var2917, java.net.URL=var1353, $r17=var2687, r32=var1701, java.lang.ClassNotFoundException=var1886, $r8=var2484}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1,"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	r30 = virtualinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class findLoadedClass(java.lang.String)>(r1);	if r30 == null goto $r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders>;	$r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders>;	$z0 = interfaceinvoke $r2.<java.util.List: boolean contains(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/");	$r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r4);	specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	$r16 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResource_(java.lang.String,boolean)>($r16, 1);	r32 = $r17;	if $r17 != null goto (branch);	if r32 != null goto $r7 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class urlToDefineClass(java.lang.String,java.net.URL,boolean)>(r1, r32, z1);	$r8 = new java.lang.ClassNotFoundException;	specialinvoke $r8.<java.lang.ClassNotFoundException: void <init>(java.lang.String)>(r1);	throw $r8
;block_num 5