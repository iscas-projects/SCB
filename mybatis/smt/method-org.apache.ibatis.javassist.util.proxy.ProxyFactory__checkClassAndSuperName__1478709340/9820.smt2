(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1401 0)
(declare-sort var1647 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun interfaces/-1028346880 (var1401) (Array Int ClassObject))
(declare-fun superClass/-1028346880 (var1401) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun superName/-1028346880 (var1401) String)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun basename/-1028346880 (var1401) String)
(declare-fun getModifiers/698981592 (ClassObject) Int)
(declare-fun var1647_isFinal/22304210 (Int) Bool)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1401 var1401)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-ClassObject ClassObject)
(declare-const var1401-OBJECT_TYPE ClassObject)
(declare-const var220 var1401) ; Statement: r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var220 null-var1401)))
(define-const var1539 (Array Int ClassObject) (interfaces/-1028346880 var220)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert (not (= var1539 null-__Array__Int__ClassObject__))) ; Cond: $r1 != null 
(define-const var3297 ClassObject (superClass/-1028346880 var220)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
 ; Statement: if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert (not (not (= var3297 null-ClassObject)))) ; Negate: Cond: $r2 != null  
(define-const var3485 ClassObject var1401-OBJECT_TYPE) ; Statement: $r15 = <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class OBJECT_TYPE> 
(declare-const var220!1 var1401)
(assert (not (= var220!1 null-var1401)))
(assert (= (superClass/-1028346880 var220!1) var3485)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> = $r15 
(define-const var147 ClassObject (superClass/-1028346880 var220!1)) ; Statement: $r16 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var557 String (getName/-1958580599 var147)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.Class: java.lang.String getName()>() 
(declare-const var220!2 var1401)
(assert (not (= var220!2 null-var1401)))
(assert (= (superName/-1028346880 var220!2) var557)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> = $r17 
(define-const var2405 (Array Int ClassObject) (interfaces/-1028346880 var220!2)) ; Statement: $r18 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(define-const var2135 Int (getLength-Arr-ClassObject-1 var2405)) ; Statement: $i1 = lengthof $r18 
 ; Statement: if $i1 != 0 goto $r19 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(assert (not (= var2135 0))) ; Cond: $i1 != 0 
(define-const var2308 (Array Int ClassObject) (interfaces/-1028346880 var220!2)) ; Statement: $r19 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(define-const var790 ClassObject (select var2308 0)) ; Statement: $r20 = $r19[0] 
(assert true)
(define-const var1037 String (getName/-1958580599 var790)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.Class: java.lang.String getName()>() 
(assert true) ; Non Conditional
(declare-const var220!3 var1401)
(assert (not (= var220!3 null-var1401)))
(assert (= (basename/-1028346880 var220!3) var1037)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r22 
 ; Statement: goto [?= $r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>] 
(assert true) ; Non Conditional
(define-const var780 ClassObject (superClass/-1028346880 var220!3)) ; Statement: $r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var2128 Int (getModifiers/698981592 var780)) ; Statement: $i0 = virtualinvoke $r6.<java.lang.Class: int getModifiers()>() 
(define-const var3986 Bool (var1647_isFinal/22304210 var2128)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0) 
 ; Statement: if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert (= (ite var3986 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1081 String (basename/-1028346880 var220!3)) ; Statement: $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert true)
(define-const var2016 Bool (startsWith/-1785782452 var1081 "java.")) ; Statement: $z1 = virtualinvoke $r7.<java.lang.String: boolean startsWith(java.lang.String)>("java.") 
 ; Statement: if $z1 != 0 goto $r23 = new java.lang.StringBuilder 
(assert (not (= (ite var2016 1 0) 0))) ; Cond: $z1 != 0 
(define-const var3850 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3850)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3850!1 String)
(assert (= var3850!1 ""))
(assert true)
(define-const var3469 String (append/672562846 var3850!1 "org.apache.ibatis.javassist.util.proxy.")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("org.apache.ibatis.javassist.util.proxy.") 
(declare-const var3850!2 String)
(assert (= var3850!2 (str.++ var3850!1 "org.apache.ibatis.javassist.util.proxy.")))
(define-const var3386 String (basename/-1028346880 var220!3)) ; Statement: $r25 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert true)
(define-const var1570 String (replace/1524665721 var3386 46 95)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.String: java.lang.String replace(char,char)>(46, 95) 
(assert true)
(define-const var1778 String (append/672562846 var3469 var1570)) ; Statement: $r27 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var3469!1 String)
(assert (= var3469!1 (str.++ var3469 var1570)))
(assert true)
(define-const var2933 String (toString/-2075883882 var1778)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var220!4 var1401)
(assert (not (= var220!4 null-var1401)))
(assert (= (basename/-1028346880 var220!4) var2933)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r28 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {interfaces/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class[]), superClass/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), superName/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.String), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), basename/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.String), getModifiers/698981592=([java.lang.Class], int), var1647_isFinal/22304210=([int], boolean), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), replace/1524665721=([java.lang.String, char, char], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1401=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var220=r0, var1539=$r1, var3297=$r2, var3485=$r15, var147=$r16, var557=$r17, var2405=$r18, var2135=$i1, var2308=$r19, var790=$r20, var1037=$r22, var780=$r6, var2128=$i0, var1647=java.lang.reflect.Modifier, var3986=$z0, var1081=$r7, var2016=$z1, var3850=$r23, var3469=$r24, var3386=$r25, var1570=$r26, var1778=$r27, var2933=$r28}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var1401, r0=var220, $r1=var1539, $r2=var3297, $r15=var3485, $r16=var147, $r17=var557, $r18=var2405, $i1=var2135, $r19=var2308, $r20=var790, $r22=var1037, $r6=var780, $i0=var2128, java.lang.reflect.Modifier=var1647, $z0=var3986, $r7=var1081, $z1=var2016, $r23=var3850, $r24=var3469, $r25=var3386, $r26=var1570, $r27=var1778, $r28=var2933}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	$r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r15 = <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class OBJECT_TYPE>;	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> = $r15;	$r16 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r17 = virtualinvoke $r16.<java.lang.Class: java.lang.String getName()>();	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> = $r17;	$r18 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$i1 = lengthof $r18;	if $i1 != 0 goto $r19 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$r19 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$r20 = $r19[0];	$r22 = virtualinvoke $r20.<java.lang.Class: java.lang.String getName()>();	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r22;	goto [?= $r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>];	$r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$i0 = virtualinvoke $r6.<java.lang.Class: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0);	if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$z1 = virtualinvoke $r7.<java.lang.String: boolean startsWith(java.lang.String)>("java.");	if $z1 != 0 goto $r23 = new java.lang.StringBuilder;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("org.apache.ibatis.javassist.util.proxy.");	$r25 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$r26 = virtualinvoke $r25.<java.lang.String: java.lang.String replace(char,char)>(46, 95);	$r27 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r28;	return
;block_num 9