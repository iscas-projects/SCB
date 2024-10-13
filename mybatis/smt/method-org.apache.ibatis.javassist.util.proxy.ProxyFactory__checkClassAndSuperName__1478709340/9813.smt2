(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2073 0)
(declare-sort var2150 0)
(declare-sort var560 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun interfaces/-1028346880 (var2073) (Array Int ClassObject))
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun superClass/-1028346880 (var2073) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun superName/-1028346880 (var2073) String)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun basename/-1028346880 (var2073) String)
(declare-fun getModifiers/698981592 (ClassObject) Int)
(declare-fun var2150_isFinal/22304210 (Int) Bool)
(declare-fun var560-init () var560)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var560 String) void)
(declare-const null-var2073 var2073)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-ClassObject ClassObject)
(declare-const var2073-OBJECT_TYPE ClassObject)
(declare-const var1219 var2073) ; Statement: r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var1219 null-var2073)))
(define-const var449 (Array Int ClassObject) (interfaces/-1028346880 var1219)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert (not (not (= var449 null-__Array__Int__ClassObject__)))) ; Negate: Cond: $r1 != null  
(define-const var940 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r21 = newarray (java.lang.Class)[0] 
(declare-const var1219!1 var2073)
(assert (not (= var1219!1 null-var2073)))
(assert (= (interfaces/-1028346880 var1219!1) var940)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> = $r21 
(assert true) ; Non Conditional
(define-const var3464 ClassObject (superClass/-1028346880 var1219!1)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
 ; Statement: if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert (not (not (= var3464 null-ClassObject)))) ; Negate: Cond: $r2 != null  
(define-const var943 ClassObject var2073-OBJECT_TYPE) ; Statement: $r15 = <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class OBJECT_TYPE> 
(declare-const var1219!2 var2073)
(assert (not (= var1219!2 null-var2073)))
(assert (= (superClass/-1028346880 var1219!2) var943)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> = $r15 
(define-const var722 ClassObject (superClass/-1028346880 var1219!2)) ; Statement: $r16 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var1572 String (getName/-1958580599 var722)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.Class: java.lang.String getName()>() 
(declare-const var1219!3 var2073)
(assert (not (= var1219!3 null-var2073)))
(assert (= (superName/-1028346880 var1219!3) var1572)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> = $r17 
(define-const var2220 (Array Int ClassObject) (interfaces/-1028346880 var1219!3)) ; Statement: $r18 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(define-const var2131 Int (getLength-Arr-ClassObject-1 var2220)) ; Statement: $i1 = lengthof $r18 
 ; Statement: if $i1 != 0 goto $r19 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(assert (not (= var2131 0))) ; Cond: $i1 != 0 
(define-const var2990 (Array Int ClassObject) (interfaces/-1028346880 var1219!3)) ; Statement: $r19 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(define-const var31 ClassObject (select var2990 0)) ; Statement: $r20 = $r19[0] 
(assert true)
(define-const var3454 String (getName/-1958580599 var31)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.Class: java.lang.String getName()>() 
(assert true) ; Non Conditional
(declare-const var1219!4 var2073)
(assert (not (= var1219!4 null-var2073)))
(assert (= (basename/-1028346880 var1219!4) var3454)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r22 
 ; Statement: goto [?= $r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>] 
(assert true) ; Non Conditional
(define-const var441 ClassObject (superClass/-1028346880 var1219!4)) ; Statement: $r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var923 Int (getModifiers/698981592 var441)) ; Statement: $i0 = virtualinvoke $r6.<java.lang.Class: int getModifiers()>() 
(define-const var1005 Bool (var2150_isFinal/22304210 var923)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0) 
 ; Statement: if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert (not (= (ite var1005 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var536 var560 var560-init) ; Statement: $r9 = new java.lang.RuntimeException 
(define-const var3097 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3097)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3097!1 String)
(assert (= var3097!1 ""))
(define-const var1382 String (superName/-1028346880 var1219!4)) ; Statement: $r11 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> 
(assert true)
(define-const var3143 String (append/672562846 var3097!1 var1382)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3097!2 String)
(assert (= var3097!2 (str.++ var3097!1 var1382)))
(assert true)
(define-const var2343 String (append/672562846 var3143 " is final")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is final") 
(declare-const var3143!1 String)
(assert (= var3143!1 (str.++ var3143 " is final")))
(assert true)
(define-const var1036 String (toString/-2075883882 var2343)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var536 var1036)) ; Statement: specialinvoke $r9.<java.lang.RuntimeException: void <init>(java.lang.String)>($r14) 

(declare-const var536!1 var560)
(declare-const var1036!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {interfaces/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class[]), arr-ClassObject-init=([], java.lang.Class[]), superClass/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), superName/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.String), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), basename/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.String), getModifiers/698981592=([java.lang.Class], int), var2150_isFinal/22304210=([int], boolean), var560-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var2073=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var1219=r0, var449=$r1, var940=$r21, var3464=$r2, var943=$r15, var722=$r16, var1572=$r17, var2220=$r18, var2131=$i1, var2990=$r19, var31=$r20, var3454=$r22, var441=$r6, var923=$i0, var2150=java.lang.reflect.Modifier, var1005=$z0, var560=java.lang.RuntimeException, var536=$r9, var3097=$r10, var1382=$r11, var3143=$r12, var2343=$r13, var1036=$r14}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var2073, r0=var1219, $r1=var449, $r21=var940, $r2=var3464, $r15=var943, $r16=var722, $r17=var1572, $r18=var2220, $i1=var2131, $r19=var2990, $r20=var31, $r22=var3454, $r6=var441, $i0=var923, java.lang.reflect.Modifier=var2150, $z0=var1005, java.lang.RuntimeException=var560, $r9=var536, $r10=var3097, $r11=var1382, $r12=var3143, $r13=var2343, $r14=var1036}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	$r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r21 = newarray (java.lang.Class)[0];	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> = $r21;	$r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r15 = <org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class OBJECT_TYPE>;	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> = $r15;	$r16 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r17 = virtualinvoke $r16.<java.lang.Class: java.lang.String getName()>();	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> = $r17;	$r18 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$i1 = lengthof $r18;	if $i1 != 0 goto $r19 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$r19 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$r20 = $r19[0];	$r22 = virtualinvoke $r20.<java.lang.Class: java.lang.String getName()>();	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r22;	goto [?= $r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>];	$r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$i0 = virtualinvoke $r6.<java.lang.Class: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0);	if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$r9 = new java.lang.RuntimeException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName>;	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is final");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.RuntimeException: void <init>(java.lang.String)>($r14);	throw $r9
;block_num 8