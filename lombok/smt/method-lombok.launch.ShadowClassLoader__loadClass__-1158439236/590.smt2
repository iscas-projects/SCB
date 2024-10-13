(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1565 0)
(declare-sort var1770 0)
(declare-sort var2531 0)
(declare-sort var1907 0)
(declare-sort var1711 0)
(declare-sort var845 0)
(declare-sort var270 0)
(declare-sort var2400 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun findLoadedClass/1112001413 (var2531 String) ClassObject)
(declare-fun cast-from-var1565-to-var2531 (var1565) var2531)
(declare-fun highlanders/1139179338 (var1565) var1907)
(declare-fun var1907_contains/-441121415 (var1907 var1711) Bool)
(declare-fun cast-from-String-to-var1711 (String) var1711)
(declare-fun String-init () String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_valueOf/-333372740 (var1711) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getResource_/164889481 (var1565 String Bool) var845)
(declare-fun exclusionListMatch/93518237 (var1565 String) Bool)
(declare-fun prependedParentLoaders/1139179338 (var1565) var270)
(declare-fun sclSuffix/1139179338 (var1565) String)
(declare-const null-var1565 var1565)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-ClassObject ClassObject)
(declare-const null-var845 var845)
(declare-const null-var2400 var2400)
(declare-const var3361 var1565) ; Statement: r0 := @this: lombok.launch.ShadowClassLoader 
(assert (not (= var3361 null-var1565)))
(declare-const var3169 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3169 null-String)))
(declare-const var1343 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var1343 null-Bool)))
(assert true)
(define-const var1060 ClassObject (findLoadedClass/1112001413 (cast-from-var1565-to-var2531 var3361) var3169)) ; Statement: r30 = virtualinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class findLoadedClass(java.lang.String)>(r1) 
 ; Statement: if r30 == null goto $r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> 
(assert (= var1060 null-ClassObject)) ; Cond: r30 == null 
(define-const var429 var1907 (highlanders/1139179338 var3361)) ; Statement: $r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders> 
(define-const var1032 Bool (var1907_contains/-441121415 var429 (cast-from-String-to-var1711 var3169))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.List: boolean contains(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (= (ite var1032 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1810 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
(define-const var2320 String (replace/2138489945 var3169 (cast-from-String-to-String ".") (cast-from-String-to-String "/"))) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/") 
(define-const var730 String (String_valueOf/-333372740 (cast-from-String-to-var1711 var2320))) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r4) 
(assert true)
;(assert (<init>/-1061048412 var1810 var730)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5) 
(declare-const var1810!1 String)
(assert (= var1810!1 var730))
(assert true)
(define-const var2269 String (append/672562846 var1810!1 ".class")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var1810!2 String)
(assert (= var1810!2 (str.++ var1810!1 ".class")))
(assert true)
(define-const var234 String (toString/-2075883882 var2269)) ; Statement: $r16 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3695 var845 (getResource_/164889481 var3361 var234 (ite (= 1 1) true false))) ; Statement: $r17 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResource_(java.lang.String,boolean)>($r16, 1) 
(define-const var1418 var845 var3695) ; Statement: r32 = $r17 
 ; Statement: if $r17 != null goto (branch) 
(assert (not (not (= var3695 null-var845)))) ; Negate: Cond: $r17 != null  
(assert true)
(define-const var213 Bool (exclusionListMatch/93518237 var3361 var234)) ; Statement: $z2 = specialinvoke r0.<lombok.launch.ShadowClassLoader: boolean exclusionListMatch(java.lang.String)>($r16) 
 ; Statement: if $z2 != 0 goto (branch) 
(assert (not (not (= (ite var213 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var1100 var270 (prependedParentLoaders/1139179338 var3361)) ; Statement: $r9 = r0.<lombok.launch.ShadowClassLoader: java.util.Set prependedParentLoaders> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1692 var2400) ; Statement: $r18 := @caughtexception 
(assert (not (= var1692 null-var2400)))
(define-const var1148 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1148 "secondaryLoading.SCL.")) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>(java.lang.String)>("secondaryLoading.SCL.") 
(declare-const var1148!1 String)
(assert (= var1148!1 "secondaryLoading.SCL."))
(define-const var3059 String (sclSuffix/1139179338 var3361)) ; Statement: $r20 = r0.<lombok.launch.ShadowClassLoader: java.lang.String sclSuffix> 
(assert true)
(define-const var2528 String (append/672562846 var1148!1 var3059)) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var1148!2 String)
(assert (= var1148!2 (str.++ var1148!1 var3059)))
(assert true)
(define-const var1274 String (append/672562846 var2528 "/")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var2528!1 String)
(assert (= var2528!1 (str.++ var2528 "/")))
(assert true)
(define-const var2968 String (replace/2138489945 var3169 (cast-from-String-to-String ".") (cast-from-String-to-String "/"))) ; Statement: $r22 = virtualinvoke r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/") 
(assert true)
(define-const var3221 String (append/672562846 var1274 var2968)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var1274!1 String)
(assert (= var1274!1 (str.++ var1274 var2968)))
(assert true)
(define-const var2228 String (append/672562846 var3221 ".SCL.")) ; Statement: $r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".SCL.") 
(declare-const var3221!1 String)
(assert (= var3221!1 (str.++ var3221 ".SCL.")))
(define-const var2782 String (sclSuffix/1139179338 var3361)) ; Statement: $r25 = r0.<lombok.launch.ShadowClassLoader: java.lang.String sclSuffix> 
(assert true)
(define-const var2166 String (append/672562846 var2228 var2782)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var2228!1 String)
(assert (= var2228!1 (str.++ var2228 var2782)))
(assert true)
(define-const var3505 String (toString/-2075883882 var2166)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1418!1 var845 (getResource_/164889481 var3361 var3505 (ite (= 1 1) true false))) ; Statement: r32 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResource_(java.lang.String,boolean)>($r28, 1) 
 ; Statement: if r32 != null goto (branch) 
(assert (not (not (= var1418!1 null-var845)))) ; Negate: Cond: r32 != null  
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {findLoadedClass/1112001413=([java.lang.ClassLoader, java.lang.String], java.lang.Class), cast-from-var1565-to-var2531=([lombok.launch.ShadowClassLoader], java.lang.ClassLoader), highlanders/1139179338=([lombok.launch.ShadowClassLoader], java.util.List), var1907_contains/-441121415=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1711=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_valueOf/-333372740=([java.lang.Object], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getResource_/164889481=([lombok.launch.ShadowClassLoader, java.lang.String, boolean], java.net.URL), exclusionListMatch/93518237=([lombok.launch.ShadowClassLoader, java.lang.String], boolean), prependedParentLoaders/1139179338=([lombok.launch.ShadowClassLoader], java.util.Set), sclSuffix/1139179338=([lombok.launch.ShadowClassLoader], java.lang.String)}
; {var1565=lombok.launch.ShadowClassLoader, var3361=r0, var3169=r1, var1770=null_type, var1343=z1, var2531=java.lang.ClassLoader, var1060=r30, var1907=java.util.List, var429=$r2, var1711=java.lang.Object, var1032=$z0, var1810=$r3, var2320=$r4, var730=$r5, var2269=$r6, var234=$r16, var845=java.net.URL, var3695=$r17, var1418=r32, var213=$z2, var270=java.util.Set, var1100=$r9, var2400=java.lang.ClassNotFoundException, var1692=$r18, var1148=$r19, var3059=$r20, var2528=$r21, var1274=$r23, var2968=$r22, var3221=$r24, var2228=$r26, var2782=$r25, var2166=$r27, var3505=$r28}
; {lombok.launch.ShadowClassLoader=var1565, r0=var3361, r1=var3169, null_type=var1770, z1=var1343, java.lang.ClassLoader=var2531, r30=var1060, java.util.List=var1907, $r2=var429, java.lang.Object=var1711, $z0=var1032, $r3=var1810, $r4=var2320, $r5=var730, $r6=var2269, $r16=var234, java.net.URL=var845, $r17=var3695, r32=var1418, $z2=var213, java.util.Set=var270, $r9=var1100, java.lang.ClassNotFoundException=var2400, $r18=var1692, $r19=var1148, $r20=var3059, $r21=var2528, $r23=var1274, $r22=var2968, $r24=var3221, $r26=var2228, $r25=var2782, $r27=var2166, $r28=var3505}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 2,"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: lombok.launch.ShadowClassLoader;	r1 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	r30 = virtualinvoke r0.<lombok.launch.ShadowClassLoader: java.lang.Class findLoadedClass(java.lang.String)>(r1);	if r30 == null goto $r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders>;	$r2 = r0.<lombok.launch.ShadowClassLoader: java.util.List highlanders>;	$z0 = interfaceinvoke $r2.<java.util.List: boolean contains(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/");	$r5 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r4);	specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	$r16 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResource_(java.lang.String,boolean)>($r16, 1);	r32 = $r17;	if $r17 != null goto (branch);	$z2 = specialinvoke r0.<lombok.launch.ShadowClassLoader: boolean exclusionListMatch(java.lang.String)>($r16);	if $z2 != 0 goto (branch);	$r9 = r0.<lombok.launch.ShadowClassLoader: java.util.Set prependedParentLoaders>;	$r18 := @caughtexception;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>(java.lang.String)>("secondaryLoading.SCL.");	$r20 = r0.<lombok.launch.ShadowClassLoader: java.lang.String sclSuffix>;	$r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r22 = virtualinvoke r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(".", "/");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".SCL.");	$r25 = r0.<lombok.launch.ShadowClassLoader: java.lang.String sclSuffix>;	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	r32 = specialinvoke r0.<lombok.launch.ShadowClassLoader: java.net.URL getResource_(java.lang.String,boolean)>($r28, 1);	if r32 != null goto (branch);	throw $r18
;block_num 7