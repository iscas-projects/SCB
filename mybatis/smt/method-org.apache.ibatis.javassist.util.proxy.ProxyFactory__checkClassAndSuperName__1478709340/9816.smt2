(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2013 0)
(declare-sort var3222 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun interfaces/-1028346880 (var2013) (Array Int ClassObject))
(declare-fun superClass/-1028346880 (var2013) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun superName/-1028346880 (var2013) String)
(declare-fun basename/-1028346880 (var2013) String)
(declare-fun getModifiers/698981592 (ClassObject) Int)
(declare-fun var3222_isFinal/22304210 (Int) Bool)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2013 var2013)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-ClassObject ClassObject)
(declare-const var2384 var2013) ; Statement: r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var2384 null-var2013)))
(define-const var3412 (Array Int ClassObject) (interfaces/-1028346880 var2384)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert (not (= var3412 null-__Array__Int__ClassObject__))) ; Cond: $r1 != null 
(define-const var537 ClassObject (superClass/-1028346880 var2384)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
 ; Statement: if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert (not (= var537 null-ClassObject))) ; Cond: $r2 != null 
(define-const var2407 ClassObject (superClass/-1028346880 var2384)) ; Statement: $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var1477 String (getName/-1958580599 var2407)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(declare-const var2384!1 var2013)
(assert (not (= var2384!1 null-var2013)))
(assert (= (superName/-1028346880 var2384!1) var1477)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> = $r4 
(define-const var3687 String (superName/-1028346880 var2384!1)) ; Statement: $r5 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> 
(declare-const var2384!2 var2013)
(assert (not (= var2384!2 null-var2013)))
(assert (= (basename/-1028346880 var2384!2) var3687)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r5 
(assert true) ; Non Conditional
(define-const var3137 ClassObject (superClass/-1028346880 var2384!2)) ; Statement: $r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var122 Int (getModifiers/698981592 var3137)) ; Statement: $i0 = virtualinvoke $r6.<java.lang.Class: int getModifiers()>() 
(define-const var3899 Bool (var3222_isFinal/22304210 var122)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0) 
 ; Statement: if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert (= (ite var3899 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2204 String (basename/-1028346880 var2384!2)) ; Statement: $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert true)
(define-const var1576 Bool (startsWith/-1785782452 var2204 "java.")) ; Statement: $z1 = virtualinvoke $r7.<java.lang.String: boolean startsWith(java.lang.String)>("java.") 
 ; Statement: if $z1 != 0 goto $r23 = new java.lang.StringBuilder 
(assert (not (not (= (ite var1576 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var351 String (basename/-1028346880 var2384!2)) ; Statement: $r8 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert true)
(define-const var2225 Bool (startsWith/-1785782452 var351 "jdk.")) ; Statement: $z2 = virtualinvoke $r8.<java.lang.String: boolean startsWith(java.lang.String)>("jdk.") 
 ; Statement: if $z2 != 0 goto $r23 = new java.lang.StringBuilder 
(assert (not (= (ite var2225 1 0) 0))) ; Cond: $z2 != 0 
(define-const var1774 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1774)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1774!1 String)
(assert (= var1774!1 ""))
(assert true)
(define-const var3067 String (append/672562846 var1774!1 "org.apache.ibatis.javassist.util.proxy.")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("org.apache.ibatis.javassist.util.proxy.") 
(declare-const var1774!2 String)
(assert (= var1774!2 (str.++ var1774!1 "org.apache.ibatis.javassist.util.proxy.")))
(define-const var2789 String (basename/-1028346880 var2384!2)) ; Statement: $r25 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert true)
(define-const var1391 String (replace/1524665721 var2789 46 95)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.String: java.lang.String replace(char,char)>(46, 95) 
(assert true)
(define-const var2350 String (append/672562846 var3067 var1391)) ; Statement: $r27 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var3067!1 String)
(assert (= var3067!1 (str.++ var3067 var1391)))
(assert true)
(define-const var517 String (toString/-2075883882 var2350)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2384!3 var2013)
(assert (not (= var2384!3 null-var2013)))
(assert (= (basename/-1028346880 var2384!3) var517)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r28 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {interfaces/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class[]), superClass/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), superName/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.String), basename/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.String), getModifiers/698981592=([java.lang.Class], int), var3222_isFinal/22304210=([int], boolean), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), replace/1524665721=([java.lang.String, char, char], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2013=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var2384=r0, var3412=$r1, var537=$r2, var2407=$r3, var1477=$r4, var3687=$r5, var3137=$r6, var122=$i0, var3222=java.lang.reflect.Modifier, var3899=$z0, var2204=$r7, var1576=$z1, var351=$r8, var2225=$z2, var1774=$r23, var3067=$r24, var2789=$r25, var1391=$r26, var2350=$r27, var517=$r28}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var2013, r0=var2384, $r1=var3412, $r2=var537, $r3=var2407, $r4=var1477, $r5=var3687, $r6=var3137, $i0=var122, java.lang.reflect.Modifier=var3222, $z0=var3899, $r7=var2204, $z1=var1576, $r8=var351, $z2=var2225, $r23=var1774, $r24=var3067, $r25=var2789, $r26=var1391, $r27=var2350, $r28=var517}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	$r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> = $r4;	$r5 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName>;	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r5;	$r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$i0 = virtualinvoke $r6.<java.lang.Class: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0);	if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$z1 = virtualinvoke $r7.<java.lang.String: boolean startsWith(java.lang.String)>("java.");	if $z1 != 0 goto $r23 = new java.lang.StringBuilder;	$r8 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$z2 = virtualinvoke $r8.<java.lang.String: boolean startsWith(java.lang.String)>("jdk.");	if $z2 != 0 goto $r23 = new java.lang.StringBuilder;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("org.apache.ibatis.javassist.util.proxy.");	$r25 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$r26 = virtualinvoke $r25.<java.lang.String: java.lang.String replace(char,char)>(46, 95);	$r27 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r28;	return
;block_num 8