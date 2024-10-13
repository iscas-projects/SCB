(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2786 0)
(declare-sort var667 0)
(declare-sort var2723 0)
(declare-sort var3107 0)
(declare-sort var610 0)
(declare-sort var2965 0)
(declare-sort var3991 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun findLoadedClass/1112001413 (var2723 String) ClassObject)
(declare-fun cast-from-var2786-to-var2723 (var2786) var2723)
(declare-fun highlanders/1139179338 (var2786) var3107)
(declare-fun var3107_contains/-441121415 (var3107 var610) Bool)
(declare-fun cast-from-String-to-var610 (String) var610)
(declare-fun String-init () String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_valueOf/-333372740 (var610) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getResource_/164889481 (var2786 String Bool) var2965)
(declare-fun exclusionListMatch/93518237 (var2786 String) Bool)
(declare-fun var3991-init () var3991)
(declare-fun <init>/1087086210 (var3991 String) void)
(declare-const null-var2786 var2786)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2965 var2965)
(declare-const var122 var2786) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var122 null-var2786)))
(declare-const var1773 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1773 null-String)))
(declare-const var2225 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var2225 null-Bool)))
(assert true)
(define-const var3486 ClassObject (findLoadedClass/1112001413 (cast-from-var2786-to-var2723 var122) var1773)) ; Statement: r30 = virtualinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class findLoadedClass(java.lang.String)>(r1) 
 ; Statement: if r30 == null goto $r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> 
(assert (= var3486 null-ClassObject)) ; Cond: r30 == null 
(define-const var3538 var3107 (highlanders/1139179338 var122)) ; Statement: $r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> 
(define-const var1735 Bool (var3107_contains/-441121415 var3538 (cast-from-String-to-var610 var1773))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.List: boolean contains(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (= (ite var1735 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2574 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
(define-const var1678 String (replace/2138489945 var1773 (cast-from-String-to-String ".") (cast-from-String-to-String "/"))) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/") 
(define-const var1689 String (String_valueOf/-333372740 (cast-from-String-to-var610 var1678))) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r4) 
(assert true)
;(assert (<init>/-1061048412 var2574 var1689)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5) 
(declare-const var2574!1 String)
(assert (= var2574!1 var1689))
(assert true)
(define-const var2248 String (append/672562846 var2574!1 ".class")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var2574!2 String)
(assert (= var2574!2 (str.++ var2574!1 ".class")))
(assert true)
(define-const var3170 String (toString/-2075883882 var2248)) ; Statement: $r16 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var103 var2965 (getResource_/164889481 var122 var3170 (ite (= 1 1) true false))) ; Statement: $r17 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResource_(java.lang.String,boolean)>($r16, 1) 
(define-const var1170 var2965 var103) ; Statement: r32 = $r17 
 ; Statement: if $r17 != null goto (branch) 
(assert (not (not (= var103 null-var2965)))) ; Negate: Cond: $r17 != null  
(assert true)
(define-const var1819 Bool (exclusionListMatch/93518237 var122 var3170)) ; Statement: $z2 = specialinvoke r0.<lombok.launch.ShadowClassLoader: boolean exclusionListMatch(java.lang.String)>($r16) 
 ; Statement: if $z2 != 0 goto (branch) 
(assert (not (= (ite var1819 1 0) 0))) ; Cond: $z2 != 0 
 ; Statement: if r32 != null goto $r7 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class urlToDefineClass(java.lang.String,java.net.URL,boolean)>(r1, r32, z1) 
(assert (not (not (= var1170 null-var2965)))) ; Negate: Cond: r32 != null  
(define-const var2097 var3991 var3991-init) ; Statement: $r8 = new java.lang.ClassNotFoundException 
(assert true)
;(assert (<init>/1087086210 var2097 var1773)) ; Statement: specialinvoke $r8.<java.lang.ClassNotFoundException: void <init>(java.lang.String)>(r1) 

(declare-const var2097!1 var3991)
(declare-const var1773!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {findLoadedClass/1112001413=([java.lang.ClassLoader, java.lang.String], java.lang.Class), cast-from-var2786-to-var2723=([lombok.launch.ShadowClassLoader], java.lang.ClassLoader), highlanders/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var3107_contains/-441121415=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var610=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_valueOf/-333372740=([java.lang.Object], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getResource_/164889481=([lombok.launch.ShadowClassLoader, java.lang.String, boolean], java.net.URL), exclusionListMatch/93518237=([lombok.launch.ShadowClassLoader, java.lang.String], boolean), var3991-init=([], java.lang.ClassNotFoundException), <init>/1087086210=([java.lang.ClassNotFoundException, java.lang.String], void)}
; {var2786=lombok.launch.ShadowClassLoader, var122=r0, var1773=r1, var667=null_type, var2225=z1, var2723=java.lang.ClassLoader, var3486=r30, var3107=java.util.List, var3538=$r2, var610=java.lang.Object, var1735=$z0, var2574=$r3, var1678=$r4, var1689=$r5, var2248=$r6, var3170=$r16, var2965=java.net.URL, var103=$r17, var1170=r32, var1819=$z2, var3991=java.lang.ClassNotFoundException, var2097=$r8}
; {lombok.launch.ShadowClassLoader=var2786, r0=var122, r1=var1773, null_type=var667, z1=var2225, java.lang.ClassLoader=var2723, r30=var3486, java.util.List=var3107, $r2=var3538, java.lang.Object=var610, $z0=var1735, $r3=var2574, $r4=var1678, $r5=var1689, $r6=var2248, $r16=var3170, java.net.URL=var2965, $r17=var103, r32=var1170, $z2=var1819, java.lang.ClassNotFoundException=var3991, $r8=var2097}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1,"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	r30 = virtualinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class findLoadedClass(java.lang.String)>(r1);	if r30 == null goto $r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders>;	$r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders>;	$z0 = interfaceinvoke $r2.<java.util.List: boolean contains(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/");	$r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r4);	specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	$r16 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResource_(java.lang.String,boolean)>($r16, 1);	r32 = $r17;	if $r17 != null goto (branch);	$z2 = specialinvoke r0.<lombok.launch.ShadowClassLoader: boolean exclusionListMatch(java.lang.String)>($r16);	if $z2 != 0 goto (branch);	if r32 != null goto $r7 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class urlToDefineClass(java.lang.String,java.net.URL,boolean)>(r1, r32, z1);	$r8 = new java.lang.ClassNotFoundException;	specialinvoke $r8.<java.lang.ClassNotFoundException: void <init>(java.lang.String)>(r1);	throw $r8
;block_num 6