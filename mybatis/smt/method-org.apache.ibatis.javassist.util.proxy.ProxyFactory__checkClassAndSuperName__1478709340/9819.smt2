(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1877 0)
(declare-sort var2997 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun interfaces/-1028346880 (var1877) (Array Int ClassObject))
(declare-fun superClass/-1028346880 (var1877) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun superName/-1028346880 (var1877) String)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun basename/-1028346880 (var1877) String)
(declare-fun getModifiers/698981592 (ClassObject) Int)
(declare-fun var2997_isFinal/22304210 (Int) Bool)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1877 var1877)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-ClassObject ClassObject)
(declare-const var1877-OBJECT_TYPE ClassObject)
(declare-const var1130 var1877) ; Statement: r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var1130 null-var1877)))
(define-const var3115 (Array Int ClassObject) (interfaces/-1028346880 var1130)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert (not (= var3115 null-__Array__Int__ClassObject__))) ; Cond: $r1 != null 
(define-const var1725 ClassObject (superClass/-1028346880 var1130)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
 ; Statement: if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert (not (not (= var1725 null-ClassObject)))) ; Negate: Cond: $r2 != null  
(define-const var1891 ClassObject var1877-OBJECT_TYPE) ; Statement: $r15 = <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class OBJECT_TYPE> 
(declare-const var1130!1 var1877)
(assert (not (= var1130!1 null-var1877)))
(assert (= (superClass/-1028346880 var1130!1) var1891)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> = $r15 
(define-const var314 ClassObject (superClass/-1028346880 var1130!1)) ; Statement: $r16 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var3078 String (getName/-1958580599 var314)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.Class: java.lang.String getName()>() 
(declare-const var1130!2 var1877)
(assert (not (= var1130!2 null-var1877)))
(assert (= (superName/-1028346880 var1130!2) var3078)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> = $r17 
(define-const var374 (Array Int ClassObject) (interfaces/-1028346880 var1130!2)) ; Statement: $r18 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(define-const var601 Int (getLength-Arr-ClassObject-1 var374)) ; Statement: $i1 = lengthof $r18 
 ; Statement: if $i1 != 0 goto $r19 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(assert (not (not (= var601 0)))) ; Negate: Cond: $i1 != 0  
(define-const var304 String (superName/-1028346880 var1130!2)) ; Statement: $r22 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> 
 ; Statement: goto [?= r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r22] 
(assert true) ; Non Conditional
(declare-const var1130!3 var1877)
(assert (not (= var1130!3 null-var1877)))
(assert (= (basename/-1028346880 var1130!3) var304)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r22 
 ; Statement: goto [?= $r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>] 
(assert true) ; Non Conditional
(define-const var3720 ClassObject (superClass/-1028346880 var1130!3)) ; Statement: $r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var1131 Int (getModifiers/698981592 var3720)) ; Statement: $i0 = virtualinvoke $r6.<java.lang.Class: int getModifiers()>() 
(define-const var235 Bool (var2997_isFinal/22304210 var1131)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0) 
 ; Statement: if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert (= (ite var235 1 0) 0)) ; Cond: $z0 == 0 
(define-const var733 String (basename/-1028346880 var1130!3)) ; Statement: $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert true)
(define-const var3691 Bool (startsWith/-1785782452 var733 "java.")) ; Statement: $z1 = virtualinvoke $r7.<java.lang.String: boolean startsWith(java.lang.String)>("java.") 
 ; Statement: if $z1 != 0 goto $r23 = new java.lang.StringBuilder 
(assert (not (= (ite var3691 1 0) 0))) ; Cond: $z1 != 0 
(define-const var3680 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3680)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3680!1 String)
(assert (= var3680!1 ""))
(assert true)
(define-const var3733 String (append/672562846 var3680!1 "org.apache.ibatis.javassist.util.proxy.")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("org.apache.ibatis.javassist.util.proxy.") 
(declare-const var3680!2 String)
(assert (= var3680!2 (str.++ var3680!1 "org.apache.ibatis.javassist.util.proxy.")))
(define-const var3912 String (basename/-1028346880 var1130!3)) ; Statement: $r25 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert true)
(define-const var3089 String (replace/1524665721 var3912 46 95)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.String: java.lang.String replace(char,char)>(46, 95) 
(assert true)
(define-const var359 String (append/672562846 var3733 var3089)) ; Statement: $r27 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var3733!1 String)
(assert (= var3733!1 (str.++ var3733 var3089)))
(assert true)
(define-const var3467 String (toString/-2075883882 var359)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1130!4 var1877)
(assert (not (= var1130!4 null-var1877)))
(assert (= (basename/-1028346880 var1130!4) var3467)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r28 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {interfaces/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class[]), superClass/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), superName/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.String), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), basename/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.String), getModifiers/698981592=([java.lang.Class], int), var2997_isFinal/22304210=([int], boolean), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), replace/1524665721=([java.lang.String, char, char], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1877=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var1130=r0, var3115=$r1, var1725=$r2, var1891=$r15, var314=$r16, var3078=$r17, var374=$r18, var601=$i1, var304=$r22, var3720=$r6, var1131=$i0, var2997=java.lang.reflect.Modifier, var235=$z0, var733=$r7, var3691=$z1, var3680=$r23, var3733=$r24, var3912=$r25, var3089=$r26, var359=$r27, var3467=$r28}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var1877, r0=var1130, $r1=var3115, $r2=var1725, $r15=var1891, $r16=var314, $r17=var3078, $r18=var374, $i1=var601, $r22=var304, $r6=var3720, $i0=var1131, java.lang.reflect.Modifier=var2997, $z0=var235, $r7=var733, $z1=var3691, $r23=var3680, $r24=var3733, $r25=var3912, $r26=var3089, $r27=var359, $r28=var3467}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	$r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r15 = <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class OBJECT_TYPE>;	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> = $r15;	$r16 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r17 = virtualinvoke $r16.<java.lang.Class: java.lang.String getName()>();	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> = $r17;	$r18 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$i1 = lengthof $r18;	if $i1 != 0 goto $r19 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$r22 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName>;	goto [?= r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r22];	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r22;	goto [?= $r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>];	$r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$i0 = virtualinvoke $r6.<java.lang.Class: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0);	if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$z1 = virtualinvoke $r7.<java.lang.String: boolean startsWith(java.lang.String)>("java.");	if $z1 != 0 goto $r23 = new java.lang.StringBuilder;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("org.apache.ibatis.javassist.util.proxy.");	$r25 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$r26 = virtualinvoke $r25.<java.lang.String: java.lang.String replace(char,char)>(46, 95);	$r27 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r28;	return
;block_num 9