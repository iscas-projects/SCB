(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3921 0)
(declare-sort var3608 0)
(declare-sort var3281 0)
(declare-sort var2663 0)
(declare-sort var392 0)
(declare-sort var1061 0)
(declare-sort var1164 0)
(declare-sort var1543 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun findLoadedClass/1112001413 (var3281 String) ClassObject)
(declare-fun cast-from-var3921-to-var3281 (var3921) var3281)
(declare-fun highlanders/1139179338 (var3921) var2663)
(declare-fun var2663_contains/-441121415 (var2663 var392) Bool)
(declare-fun cast-from-String-to-var392 (String) var392)
(declare-fun var1164_get/1088891777 (var1164 var392) var392)
(declare-fun cast-from-var1061-to-var1164 (var1061) var1164)
(declare-fun cast-from-var392-to-ClassObject (var392) ClassObject)
(declare-fun String-init () String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_valueOf/-333372740 (var392) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getResource_/164889481 (var3921 String Bool) var1543)
(declare-fun exclusionListMatch/93518237 (var3921 String) Bool)
(declare-fun urlToDefineClass/-710439963 (var3921 String var1543 Bool) ClassObject)
(declare-const null-var3921 var3921)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-ClassObject ClassObject)
(declare-const var3921-highlanderMap var1061)
(declare-const null-var1543 var1543)
(declare-const var1444 var3921) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var1444 null-var3921)))
(declare-const var1757 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1757 null-String)))
(declare-const var3485 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var3485 null-Bool)))
(assert true)
(define-const var1686 ClassObject (findLoadedClass/1112001413 (cast-from-var3921-to-var3281 var1444) var1757)) ; Statement: r30 = virtualinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class findLoadedClass(java.lang.String)>(r1) 
 ; Statement: if r30 == null goto $r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> 
(assert (= var1686 null-ClassObject)) ; Cond: r30 == null 
(define-const var3621 var2663 (highlanders/1139179338 var1444)) ; Statement: $r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> 
(define-const var2152 Bool (var2663_contains/-441121415 var3621 (cast-from-String-to-var392 var1757))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.List: boolean contains(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (not (= (ite var2152 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1640 var1061 var3921-highlanderMap) ; Statement: $r14 = <lombok.launch.ShadowClassLoader: java.util.concurrent.ConcurrentMap highlanderMap> 
(define-const var664 var392 (var1164_get/1088891777 (cast-from-var1061-to-var1164 var1640) (cast-from-String-to-var392 var1757))) ; Statement: $r15 = interfaceinvoke $r14.<java.util.concurrent.ConcurrentMap: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var3066 ClassObject (cast-from-var392-to-ClassObject var664)) ; Statement: r31 = (java.lang.Class) $r15 
 ; Statement: if r31 == null goto $r3 = new java.lang.StringBuilder 
(assert (= var3066 null-ClassObject)) ; Cond: r31 == null 
(define-const var933 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
(define-const var1513 String (replace/2138489945 var1757 (cast-from-String-to-String ".") (cast-from-String-to-String "/"))) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/") 
(define-const var2390 String (String_valueOf/-333372740 (cast-from-String-to-var392 var1513))) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r4) 
(assert true)
;(assert (<init>/-1061048412 var933 var2390)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5) 
(declare-const var933!1 String)
(assert (= var933!1 var2390))
(assert true)
(define-const var707 String (append/672562846 var933!1 ".class")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var933!2 String)
(assert (= var933!2 (str.++ var933!1 ".class")))
(assert true)
(define-const var2265 String (toString/-2075883882 var707)) ; Statement: $r16 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3811 var1543 (getResource_/164889481 var1444 var2265 (ite (= 1 1) true false))) ; Statement: $r17 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResource_(java.lang.String,boolean)>($r16, 1) 
(define-const var1670 var1543 var3811) ; Statement: r32 = $r17 
 ; Statement: if $r17 != null goto (branch) 
(assert (not (not (= var3811 null-var1543)))) ; Negate: Cond: $r17 != null  
(assert true)
(define-const var2763 Bool (exclusionListMatch/93518237 var1444 var2265)) ; Statement: $z2 = specialinvoke r0.<lombok.launch.ShadowClassLoader: boolean exclusionListMatch(java.lang.String)>($r16) 
 ; Statement: if $z2 != 0 goto (branch) 
(assert (not (= (ite var2763 1 0) 0))) ; Cond: $z2 != 0 
 ; Statement: if r32 != null goto $r7 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class urlToDefineClass(java.lang.String,java.net.URL,boolean)>(r1, r32, z1) 
(assert (not (= var1670 null-var1543))) ; Cond: r32 != null 
(assert true)
(define-const var271 ClassObject (urlToDefineClass/-710439963 var1444 var1757 var1670 var3485)) ; Statement: $r7 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class urlToDefineClass(java.lang.String,java.net.URL,boolean)>(r1, r32, z1) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {findLoadedClass/1112001413=([java.lang.ClassLoader, java.lang.String], java.lang.Class), cast-from-var3921-to-var3281=([lombok.launch.ShadowClassLoader], java.lang.ClassLoader), highlanders/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var2663_contains/-441121415=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var392=([java.lang.String], java.lang.Object), var1164_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var1061-to-var1164=([java.util.concurrent.ConcurrentMap], java.util.Map), cast-from-var392-to-ClassObject=([java.lang.Object], java.lang.Class), String-init=([], java.lang.StringBuilder), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_valueOf/-333372740=([java.lang.Object], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getResource_/164889481=([lombok.launch.ShadowClassLoader, java.lang.String, boolean], java.net.URL), exclusionListMatch/93518237=([lombok.launch.ShadowClassLoader, java.lang.String], boolean), urlToDefineClass/-710439963=([lombok.launch.ShadowClassLoader, java.lang.String, java.net.URL, boolean], java.lang.Class)}
; {var3921=lombok.launch.ShadowClassLoader, var1444=r0, var1757=r1, var3608=null_type, var3485=z1, var3281=java.lang.ClassLoader, var1686=r30, var2663=java.util.List, var3621=$r2, var392=java.lang.Object, var2152=$z0, var1061=java.util.concurrent.ConcurrentMap, var1640=$r14, var1164=java.util.Map, var664=$r15, var3066=r31, var933=$r3, var1513=$r4, var2390=$r5, var707=$r6, var2265=$r16, var1543=java.net.URL, var3811=$r17, var1670=r32, var2763=$z2, var271=$r7}
; {lombok.launch.ShadowClassLoader=var3921, r0=var1444, r1=var1757, null_type=var3608, z1=var3485, java.lang.ClassLoader=var3281, r30=var1686, java.util.List=var2663, $r2=var3621, java.lang.Object=var392, $z0=var2152, java.util.concurrent.ConcurrentMap=var1061, $r14=var1640, java.util.Map=var1164, $r15=var664, r31=var3066, $r3=var933, $r4=var1513, $r5=var2390, $r6=var707, $r16=var2265, java.net.URL=var1543, $r17=var3811, r32=var1670, $z2=var2763, $r7=var271}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1,"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	r30 = virtualinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class findLoadedClass(java.lang.String)>(r1);	if r30 == null goto $r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders>;	$r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders>;	$z0 = interfaceinvoke $r2.<java.util.List: boolean contains(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = new java.lang.StringBuilder;	$r14 = <lombok.launch.ShadowClassLoader: java.util.concurrent.ConcurrentMap highlanderMap>;	$r15 = interfaceinvoke $r14.<java.util.concurrent.ConcurrentMap: java.lang.Object get(java.lang.Object)>(r1);	r31 = (java.lang.Class) $r15;	if r31 == null goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/");	$r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r4);	specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	$r16 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResource_(java.lang.String,boolean)>($r16, 1);	r32 = $r17;	if $r17 != null goto (branch);	$z2 = specialinvoke r0.<lombok.launch.ShadowClassLoader: boolean exclusionListMatch(java.lang.String)>($r16);	if $z2 != 0 goto (branch);	if r32 != null goto $r7 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class urlToDefineClass(java.lang.String,java.net.URL,boolean)>(r1, r32, z1);	$r7 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class urlToDefineClass(java.lang.String,java.net.URL,boolean)>(r1, r32, z1);	return $r7
;block_num 7