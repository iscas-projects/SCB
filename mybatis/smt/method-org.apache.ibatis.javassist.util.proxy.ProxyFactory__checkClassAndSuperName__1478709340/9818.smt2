(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1682 0)
(declare-sort var3006 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun interfaces/-1028346880 (var1682) (Array Int ClassObject))
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun superClass/-1028346880 (var1682) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun superName/-1028346880 (var1682) String)
(declare-fun basename/-1028346880 (var1682) String)
(declare-fun getModifiers/698981592 (ClassObject) Int)
(declare-fun var3006_isFinal/22304210 (Int) Bool)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1682 var1682)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-ClassObject ClassObject)
(declare-const var2515 var1682) ; Statement: r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var2515 null-var1682)))
(define-const var2569 (Array Int ClassObject) (interfaces/-1028346880 var2515)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert (not (not (= var2569 null-__Array__Int__ClassObject__)))) ; Negate: Cond: $r1 != null  
(define-const var156 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r21 = newarray (java.lang.Class)[0] 
(declare-const var2515!1 var1682)
(assert (not (= var2515!1 null-var1682)))
(assert (= (interfaces/-1028346880 var2515!1) var156)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> = $r21 
(assert true) ; Non Conditional
(define-const var735 ClassObject (superClass/-1028346880 var2515!1)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
 ; Statement: if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert (not (= var735 null-ClassObject))) ; Cond: $r2 != null 
(define-const var3815 ClassObject (superClass/-1028346880 var2515!1)) ; Statement: $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var3051 String (getName/-1958580599 var3815)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(declare-const var2515!2 var1682)
(assert (not (= var2515!2 null-var1682)))
(assert (= (superName/-1028346880 var2515!2) var3051)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> = $r4 
(define-const var2590 String (superName/-1028346880 var2515!2)) ; Statement: $r5 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> 
(declare-const var2515!3 var1682)
(assert (not (= var2515!3 null-var1682)))
(assert (= (basename/-1028346880 var2515!3) var2590)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r5 
(assert true) ; Non Conditional
(define-const var920 ClassObject (superClass/-1028346880 var2515!3)) ; Statement: $r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var959 Int (getModifiers/698981592 var920)) ; Statement: $i0 = virtualinvoke $r6.<java.lang.Class: int getModifiers()>() 
(define-const var1245 Bool (var3006_isFinal/22304210 var959)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0) 
 ; Statement: if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert (= (ite var1245 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2668 String (basename/-1028346880 var2515!3)) ; Statement: $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert true)
(define-const var929 Bool (startsWith/-1785782452 var2668 "java.")) ; Statement: $z1 = virtualinvoke $r7.<java.lang.String: boolean startsWith(java.lang.String)>("java.") 
 ; Statement: if $z1 != 0 goto $r23 = new java.lang.StringBuilder 
(assert (not (not (= (ite var929 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3734 String (basename/-1028346880 var2515!3)) ; Statement: $r8 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert true)
(define-const var3002 Bool (startsWith/-1785782452 var3734 "jdk.")) ; Statement: $z2 = virtualinvoke $r8.<java.lang.String: boolean startsWith(java.lang.String)>("jdk.") 
 ; Statement: if $z2 != 0 goto $r23 = new java.lang.StringBuilder 
(assert (not (= (ite var3002 1 0) 0))) ; Cond: $z2 != 0 
(define-const var1160 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1160)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1160!1 String)
(assert (= var1160!1 ""))
(assert true)
(define-const var2359 String (append/672562846 var1160!1 "org.apache.ibatis.javassist.util.proxy.")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("org.apache.ibatis.javassist.util.proxy.") 
(declare-const var1160!2 String)
(assert (= var1160!2 (str.++ var1160!1 "org.apache.ibatis.javassist.util.proxy.")))
(define-const var2240 String (basename/-1028346880 var2515!3)) ; Statement: $r25 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert true)
(define-const var3031 String (replace/1524665721 var2240 46 95)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.String: java.lang.String replace(char,char)>(46, 95) 
(assert true)
(define-const var1397 String (append/672562846 var2359 var3031)) ; Statement: $r27 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var2359!1 String)
(assert (= var2359!1 (str.++ var2359 var3031)))
(assert true)
(define-const var2246 String (toString/-2075883882 var1397)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2515!4 var1682)
(assert (not (= var2515!4 null-var1682)))
(assert (= (basename/-1028346880 var2515!4) var2246)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r28 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {interfaces/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class[]), arr-ClassObject-init=([], java.lang.Class[]), superClass/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), superName/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.String), basename/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.String), getModifiers/698981592=([java.lang.Class], int), var3006_isFinal/22304210=([int], boolean), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), replace/1524665721=([java.lang.String, char, char], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1682=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var2515=r0, var2569=$r1, var156=$r21, var735=$r2, var3815=$r3, var3051=$r4, var2590=$r5, var920=$r6, var959=$i0, var3006=java.lang.reflect.Modifier, var1245=$z0, var2668=$r7, var929=$z1, var3734=$r8, var3002=$z2, var1160=$r23, var2359=$r24, var2240=$r25, var3031=$r26, var1397=$r27, var2246=$r28}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var1682, r0=var2515, $r1=var2569, $r21=var156, $r2=var735, $r3=var3815, $r4=var3051, $r5=var2590, $r6=var920, $i0=var959, java.lang.reflect.Modifier=var3006, $z0=var1245, $r7=var2668, $z1=var929, $r8=var3734, $z2=var3002, $r23=var1160, $r24=var2359, $r25=var2240, $r26=var3031, $r27=var1397, $r28=var2246}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	$r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r21 = newarray (java.lang.Class)[0];	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> = $r21;	$r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> = $r4;	$r5 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName>;	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r5;	$r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$i0 = virtualinvoke $r6.<java.lang.Class: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0);	if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$z1 = virtualinvoke $r7.<java.lang.String: boolean startsWith(java.lang.String)>("java.");	if $z1 != 0 goto $r23 = new java.lang.StringBuilder;	$r8 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$z2 = virtualinvoke $r8.<java.lang.String: boolean startsWith(java.lang.String)>("jdk.");	if $z2 != 0 goto $r23 = new java.lang.StringBuilder;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("org.apache.ibatis.javassist.util.proxy.");	$r25 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$r26 = virtualinvoke $r25.<java.lang.String: java.lang.String replace(char,char)>(46, 95);	$r27 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r28;	return
;block_num 9