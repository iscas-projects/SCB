(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var84 0)
(declare-sort var3344 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun interfaces/-1028346880 (var84) (Array Int ClassObject))
(declare-fun superClass/-1028346880 (var84) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun superName/-1028346880 (var84) String)
(declare-fun basename/-1028346880 (var84) String)
(declare-fun getModifiers/698981592 (ClassObject) Int)
(declare-fun var3344_isFinal/22304210 (Int) Bool)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var84 var84)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-ClassObject ClassObject)
(declare-const var84-onlyPublicMethods Bool)
(declare-const var2131 var84) ; Statement: r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var2131 null-var84)))
(define-const var1864 (Array Int ClassObject) (interfaces/-1028346880 var2131)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert (not (= var1864 null-__Array__Int__ClassObject__))) ; Cond: $r1 != null 
(define-const var1797 ClassObject (superClass/-1028346880 var2131)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
 ; Statement: if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert (not (= var1797 null-ClassObject))) ; Cond: $r2 != null 
(define-const var1463 ClassObject (superClass/-1028346880 var2131)) ; Statement: $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var3265 String (getName/-1958580599 var1463)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(declare-const var2131!1 var84)
(assert (not (= var2131!1 null-var84)))
(assert (= (superName/-1028346880 var2131!1) var3265)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> = $r4 
(define-const var2993 String (superName/-1028346880 var2131!1)) ; Statement: $r5 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> 
(declare-const var2131!2 var84)
(assert (not (= var2131!2 null-var84)))
(assert (= (basename/-1028346880 var2131!2) var2993)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r5 
(assert true) ; Non Conditional
(define-const var3001 ClassObject (superClass/-1028346880 var2131!2)) ; Statement: $r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var391 Int (getModifiers/698981592 var3001)) ; Statement: $i0 = virtualinvoke $r6.<java.lang.Class: int getModifiers()>() 
(define-const var645 Bool (var3344_isFinal/22304210 var391)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0) 
 ; Statement: if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert (= (ite var645 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2221 String (basename/-1028346880 var2131!2)) ; Statement: $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert true)
(define-const var3564 Bool (startsWith/-1785782452 var2221 "java.")) ; Statement: $z1 = virtualinvoke $r7.<java.lang.String: boolean startsWith(java.lang.String)>("java.") 
 ; Statement: if $z1 != 0 goto $r23 = new java.lang.StringBuilder 
(assert (not (not (= (ite var3564 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var1523 String (basename/-1028346880 var2131!2)) ; Statement: $r8 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert true)
(define-const var1048 Bool (startsWith/-1785782452 var1523 "jdk.")) ; Statement: $z2 = virtualinvoke $r8.<java.lang.String: boolean startsWith(java.lang.String)>("jdk.") 
 ; Statement: if $z2 != 0 goto $r23 = new java.lang.StringBuilder 
(assert (not (not (= (ite var1048 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var3180 Bool var84-onlyPublicMethods) ; Statement: $z3 = <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean onlyPublicMethods> 
 ; Statement: if $z3 == 0 goto return 
(assert (not (= (ite var3180 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var2780 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2780)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2780!1 String)
(assert (= var2780!1 ""))
(assert true)
(define-const var2403 String (append/672562846 var2780!1 "org.apache.ibatis.javassist.util.proxy.")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("org.apache.ibatis.javassist.util.proxy.") 
(declare-const var2780!2 String)
(assert (= var2780!2 (str.++ var2780!1 "org.apache.ibatis.javassist.util.proxy.")))
(define-const var1028 String (basename/-1028346880 var2131!2)) ; Statement: $r25 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert true)
(define-const var1272 String (replace/1524665721 var1028 46 95)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.String: java.lang.String replace(char,char)>(46, 95) 
(assert true)
(define-const var2205 String (append/672562846 var2403 var1272)) ; Statement: $r27 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var2403!1 String)
(assert (= var2403!1 (str.++ var2403 var1272)))
(assert true)
(define-const var1590 String (toString/-2075883882 var2205)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2131!3 var84)
(assert (not (= var2131!3 null-var84)))
(assert (= (basename/-1028346880 var2131!3) var1590)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r28 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {interfaces/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class[]), superClass/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), superName/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.String), basename/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.String), getModifiers/698981592=([java.lang.Class], int), var3344_isFinal/22304210=([int], boolean), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), replace/1524665721=([java.lang.String, char, char], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var84=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var2131=r0, var1864=$r1, var1797=$r2, var1463=$r3, var3265=$r4, var2993=$r5, var3001=$r6, var391=$i0, var3344=java.lang.reflect.Modifier, var645=$z0, var2221=$r7, var3564=$z1, var1523=$r8, var1048=$z2, var3180=$z3, var2780=$r23, var2403=$r24, var1028=$r25, var1272=$r26, var2205=$r27, var1590=$r28}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var84, r0=var2131, $r1=var1864, $r2=var1797, $r3=var1463, $r4=var3265, $r5=var2993, $r6=var3001, $i0=var391, java.lang.reflect.Modifier=var3344, $z0=var645, $r7=var2221, $z1=var3564, $r8=var1523, $z2=var1048, $z3=var3180, $r23=var2780, $r24=var2403, $r25=var1028, $r26=var1272, $r27=var2205, $r28=var1590}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	$r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> = $r4;	$r5 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName>;	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r5;	$r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$i0 = virtualinvoke $r6.<java.lang.Class: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0);	if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$z1 = virtualinvoke $r7.<java.lang.String: boolean startsWith(java.lang.String)>("java.");	if $z1 != 0 goto $r23 = new java.lang.StringBuilder;	$r8 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$z2 = virtualinvoke $r8.<java.lang.String: boolean startsWith(java.lang.String)>("jdk.");	if $z2 != 0 goto $r23 = new java.lang.StringBuilder;	$z3 = <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean onlyPublicMethods>;	if $z3 == 0 goto return;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("org.apache.ibatis.javassist.util.proxy.");	$r25 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$r26 = virtualinvoke $r25.<java.lang.String: java.lang.String replace(char,char)>(46, 95);	$r27 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r28;	return
;block_num 9