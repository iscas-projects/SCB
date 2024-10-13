(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1151 0)
(declare-sort var2546 0)
(declare-sort var3411 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun interfaces/-1028346880 (var1151) (Array Int ClassObject))
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun superClass/-1028346880 (var1151) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun superName/-1028346880 (var1151) String)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun basename/-1028346880 (var1151) String)
(declare-fun getModifiers/698981592 (ClassObject) Int)
(declare-fun var2546_isFinal/22304210 (Int) Bool)
(declare-fun var3411-init () var3411)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var3411 String) void)
(declare-const null-var1151 var1151)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-ClassObject ClassObject)
(declare-const var1151-OBJECT_TYPE ClassObject)
(declare-const var2884 var1151) ; Statement: r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var2884 null-var1151)))
(define-const var3128 (Array Int ClassObject) (interfaces/-1028346880 var2884)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert (not (not (= var3128 null-__Array__Int__ClassObject__)))) ; Negate: Cond: $r1 != null  
(define-const var1226 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r21 = newarray (java.lang.Class)[0] 
(declare-const var2884!1 var1151)
(assert (not (= var2884!1 null-var1151)))
(assert (= (interfaces/-1028346880 var2884!1) var1226)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> = $r21 
(assert true) ; Non Conditional
(define-const var1130 ClassObject (superClass/-1028346880 var2884!1)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
 ; Statement: if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert (not (not (= var1130 null-ClassObject)))) ; Negate: Cond: $r2 != null  
(define-const var2338 ClassObject var1151-OBJECT_TYPE) ; Statement: $r15 = <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class OBJECT_TYPE> 
(declare-const var2884!2 var1151)
(assert (not (= var2884!2 null-var1151)))
(assert (= (superClass/-1028346880 var2884!2) var2338)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> = $r15 
(define-const var2374 ClassObject (superClass/-1028346880 var2884!2)) ; Statement: $r16 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var1101 String (getName/-1958580599 var2374)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.Class: java.lang.String getName()>() 
(declare-const var2884!3 var1151)
(assert (not (= var2884!3 null-var1151)))
(assert (= (superName/-1028346880 var2884!3) var1101)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> = $r17 
(define-const var3983 (Array Int ClassObject) (interfaces/-1028346880 var2884!3)) ; Statement: $r18 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(define-const var1267 Int (getLength-Arr-ClassObject-1 var3983)) ; Statement: $i1 = lengthof $r18 
 ; Statement: if $i1 != 0 goto $r19 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(assert (not (not (= var1267 0)))) ; Negate: Cond: $i1 != 0  
(define-const var160 String (superName/-1028346880 var2884!3)) ; Statement: $r22 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> 
 ; Statement: goto [?= r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r22] 
(assert true) ; Non Conditional
(declare-const var2884!4 var1151)
(assert (not (= var2884!4 null-var1151)))
(assert (= (basename/-1028346880 var2884!4) var160)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r22 
 ; Statement: goto [?= $r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>] 
(assert true) ; Non Conditional
(define-const var2782 ClassObject (superClass/-1028346880 var2884!4)) ; Statement: $r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var625 Int (getModifiers/698981592 var2782)) ; Statement: $i0 = virtualinvoke $r6.<java.lang.Class: int getModifiers()>() 
(define-const var101 Bool (var2546_isFinal/22304210 var625)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0) 
 ; Statement: if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert (not (= (ite var101 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3528 var3411 var3411-init) ; Statement: $r9 = new java.lang.RuntimeException 
(define-const var3913 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3913)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3913!1 String)
(assert (= var3913!1 ""))
(define-const var325 String (superName/-1028346880 var2884!4)) ; Statement: $r11 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> 
(assert true)
(define-const var3187 String (append/672562846 var3913!1 var325)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3913!2 String)
(assert (= var3913!2 (str.++ var3913!1 var325)))
(assert true)
(define-const var3637 String (append/672562846 var3187 " is final")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is final") 
(declare-const var3187!1 String)
(assert (= var3187!1 (str.++ var3187 " is final")))
(assert true)
(define-const var2177 String (toString/-2075883882 var3637)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var3528 var2177)) ; Statement: specialinvoke $r9.<java.lang.RuntimeException: void <init>(java.lang.String)>($r14) 

(declare-const var3528!1 var3411)
(declare-const var2177!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {interfaces/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class[]), arr-ClassObject-init=([], java.lang.Class[]), superClass/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), superName/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.String), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), basename/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.String), getModifiers/698981592=([java.lang.Class], int), var2546_isFinal/22304210=([int], boolean), var3411-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var1151=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var2884=r0, var3128=$r1, var1226=$r21, var1130=$r2, var2338=$r15, var2374=$r16, var1101=$r17, var3983=$r18, var1267=$i1, var160=$r22, var2782=$r6, var625=$i0, var2546=java.lang.reflect.Modifier, var101=$z0, var3411=java.lang.RuntimeException, var3528=$r9, var3913=$r10, var325=$r11, var3187=$r12, var3637=$r13, var2177=$r14}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var1151, r0=var2884, $r1=var3128, $r21=var1226, $r2=var1130, $r15=var2338, $r16=var2374, $r17=var1101, $r18=var3983, $i1=var1267, $r22=var160, $r6=var2782, $i0=var625, java.lang.reflect.Modifier=var2546, $z0=var101, java.lang.RuntimeException=var3411, $r9=var3528, $r10=var3913, $r11=var325, $r12=var3187, $r13=var3637, $r14=var2177}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	$r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r21 = newarray (java.lang.Class)[0];	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> = $r21;	$r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r15 = <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class OBJECT_TYPE>;	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> = $r15;	$r16 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r17 = virtualinvoke $r16.<java.lang.Class: java.lang.String getName()>();	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> = $r17;	$r18 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$i1 = lengthof $r18;	if $i1 != 0 goto $r19 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$r22 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName>;	goto [?= r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r22];	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r22;	goto [?= $r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>];	$r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$i0 = virtualinvoke $r6.<java.lang.Class: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0);	if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$r9 = new java.lang.RuntimeException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName>;	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is final");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.RuntimeException: void <init>(java.lang.String)>($r14);	throw $r9
;block_num 8