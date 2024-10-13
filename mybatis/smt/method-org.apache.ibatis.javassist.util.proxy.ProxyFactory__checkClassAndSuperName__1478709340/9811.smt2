(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1720 0)
(declare-sort var2762 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun interfaces/-1028346880 (var1720) (Array Int ClassObject))
(declare-fun superClass/-1028346880 (var1720) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun superName/-1028346880 (var1720) String)
(declare-fun basename/-1028346880 (var1720) String)
(declare-fun getModifiers/698981592 (ClassObject) Int)
(declare-fun var2762_isFinal/22304210 (Int) Bool)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1720 var1720)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-ClassObject ClassObject)
(declare-const var676 var1720) ; Statement: r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var676 null-var1720)))
(define-const var2885 (Array Int ClassObject) (interfaces/-1028346880 var676)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert (not (= var2885 null-__Array__Int__ClassObject__))) ; Cond: $r1 != null 
(define-const var2424 ClassObject (superClass/-1028346880 var676)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
 ; Statement: if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert (not (= var2424 null-ClassObject))) ; Cond: $r2 != null 
(define-const var3805 ClassObject (superClass/-1028346880 var676)) ; Statement: $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var1227 String (getName/-1958580599 var3805)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(declare-const var676!1 var1720)
(assert (not (= var676!1 null-var1720)))
(assert (= (superName/-1028346880 var676!1) var1227)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> = $r4 
(define-const var3570 String (superName/-1028346880 var676!1)) ; Statement: $r5 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> 
(declare-const var676!2 var1720)
(assert (not (= var676!2 null-var1720)))
(assert (= (basename/-1028346880 var676!2) var3570)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r5 
(assert true) ; Non Conditional
(define-const var2199 ClassObject (superClass/-1028346880 var676!2)) ; Statement: $r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var1589 Int (getModifiers/698981592 var2199)) ; Statement: $i0 = virtualinvoke $r6.<java.lang.Class: int getModifiers()>() 
(define-const var384 Bool (var2762_isFinal/22304210 var1589)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0) 
 ; Statement: if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert (= (ite var384 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3195 String (basename/-1028346880 var676!2)) ; Statement: $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert true)
(define-const var1536 Bool (startsWith/-1785782452 var3195 "java.")) ; Statement: $z1 = virtualinvoke $r7.<java.lang.String: boolean startsWith(java.lang.String)>("java.") 
 ; Statement: if $z1 != 0 goto $r23 = new java.lang.StringBuilder 
(assert (not (= (ite var1536 1 0) 0))) ; Cond: $z1 != 0 
(define-const var1683 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1683)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1683!1 String)
(assert (= var1683!1 ""))
(assert true)
(define-const var1469 String (append/672562846 var1683!1 "org.apache.ibatis.javassist.util.proxy.")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("org.apache.ibatis.javassist.util.proxy.") 
(declare-const var1683!2 String)
(assert (= var1683!2 (str.++ var1683!1 "org.apache.ibatis.javassist.util.proxy.")))
(define-const var3079 String (basename/-1028346880 var676!2)) ; Statement: $r25 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert true)
(define-const var2244 String (replace/1524665721 var3079 46 95)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.String: java.lang.String replace(char,char)>(46, 95) 
(assert true)
(define-const var2223 String (append/672562846 var1469 var2244)) ; Statement: $r27 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var1469!1 String)
(assert (= var1469!1 (str.++ var1469 var2244)))
(assert true)
(define-const var574 String (toString/-2075883882 var2223)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var676!3 var1720)
(assert (not (= var676!3 null-var1720)))
(assert (= (basename/-1028346880 var676!3) var574)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r28 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {interfaces/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class[]), superClass/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), superName/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.String), basename/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.String), getModifiers/698981592=([java.lang.Class], int), var2762_isFinal/22304210=([int], boolean), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), replace/1524665721=([java.lang.String, char, char], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1720=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var676=r0, var2885=$r1, var2424=$r2, var3805=$r3, var1227=$r4, var3570=$r5, var2199=$r6, var1589=$i0, var2762=java.lang.reflect.Modifier, var384=$z0, var3195=$r7, var1536=$z1, var1683=$r23, var1469=$r24, var3079=$r25, var2244=$r26, var2223=$r27, var574=$r28}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var1720, r0=var676, $r1=var2885, $r2=var2424, $r3=var3805, $r4=var1227, $r5=var3570, $r6=var2199, $i0=var1589, java.lang.reflect.Modifier=var2762, $z0=var384, $r7=var3195, $z1=var1536, $r23=var1683, $r24=var1469, $r25=var3079, $r26=var2244, $r27=var2223, $r28=var574}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	$r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> = $r4;	$r5 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName>;	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r5;	$r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$i0 = virtualinvoke $r6.<java.lang.Class: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0);	if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$z1 = virtualinvoke $r7.<java.lang.String: boolean startsWith(java.lang.String)>("java.");	if $z1 != 0 goto $r23 = new java.lang.StringBuilder;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("org.apache.ibatis.javassist.util.proxy.");	$r25 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$r26 = virtualinvoke $r25.<java.lang.String: java.lang.String replace(char,char)>(46, 95);	$r27 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r28;	return
;block_num 7