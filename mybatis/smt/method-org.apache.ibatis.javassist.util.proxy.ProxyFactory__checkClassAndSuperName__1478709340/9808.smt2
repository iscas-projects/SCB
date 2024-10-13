(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1323 0)
(declare-sort var869 0)
(declare-sort var444 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun interfaces/-1028346880 (var1323) (Array Int ClassObject))
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun superClass/-1028346880 (var1323) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun superName/-1028346880 (var1323) String)
(declare-fun basename/-1028346880 (var1323) String)
(declare-fun getModifiers/698981592 (ClassObject) Int)
(declare-fun var869_isFinal/22304210 (Int) Bool)
(declare-fun var444-init () var444)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var444 String) void)
(declare-const null-var1323 var1323)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-ClassObject ClassObject)
(declare-const var1504 var1323) ; Statement: r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var1504 null-var1323)))
(define-const var1318 (Array Int ClassObject) (interfaces/-1028346880 var1504)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert (not (not (= var1318 null-__Array__Int__ClassObject__)))) ; Negate: Cond: $r1 != null  
(define-const var3115 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r21 = newarray (java.lang.Class)[0] 
(declare-const var1504!1 var1323)
(assert (not (= var1504!1 null-var1323)))
(assert (= (interfaces/-1028346880 var1504!1) var3115)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> = $r21 
(assert true) ; Non Conditional
(define-const var2755 ClassObject (superClass/-1028346880 var1504!1)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
 ; Statement: if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert (not (= var2755 null-ClassObject))) ; Cond: $r2 != null 
(define-const var3586 ClassObject (superClass/-1028346880 var1504!1)) ; Statement: $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var3869 String (getName/-1958580599 var3586)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(declare-const var1504!2 var1323)
(assert (not (= var1504!2 null-var1323)))
(assert (= (superName/-1028346880 var1504!2) var3869)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> = $r4 
(define-const var1156 String (superName/-1028346880 var1504!2)) ; Statement: $r5 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> 
(declare-const var1504!3 var1323)
(assert (not (= var1504!3 null-var1323)))
(assert (= (basename/-1028346880 var1504!3) var1156)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r5 
(assert true) ; Non Conditional
(define-const var1421 ClassObject (superClass/-1028346880 var1504!3)) ; Statement: $r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var3365 Int (getModifiers/698981592 var1421)) ; Statement: $i0 = virtualinvoke $r6.<java.lang.Class: int getModifiers()>() 
(define-const var1819 Bool (var869_isFinal/22304210 var3365)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0) 
 ; Statement: if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert (not (= (ite var1819 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1705 var444 var444-init) ; Statement: $r9 = new java.lang.RuntimeException 
(define-const var1659 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1659)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1659!1 String)
(assert (= var1659!1 ""))
(define-const var2073 String (superName/-1028346880 var1504!3)) ; Statement: $r11 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> 
(assert true)
(define-const var3259 String (append/672562846 var1659!1 var2073)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1659!2 String)
(assert (= var1659!2 (str.++ var1659!1 var2073)))
(assert true)
(define-const var2056 String (append/672562846 var3259 " is final")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is final") 
(declare-const var3259!1 String)
(assert (= var3259!1 (str.++ var3259 " is final")))
(assert true)
(define-const var2819 String (toString/-2075883882 var2056)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var1705 var2819)) ; Statement: specialinvoke $r9.<java.lang.RuntimeException: void <init>(java.lang.String)>($r14) 

(declare-const var1705!1 var444)
(declare-const var2819!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {interfaces/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class[]), arr-ClassObject-init=([], java.lang.Class[]), superClass/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), superName/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.String), basename/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.String), getModifiers/698981592=([java.lang.Class], int), var869_isFinal/22304210=([int], boolean), var444-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var1323=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var1504=r0, var1318=$r1, var3115=$r21, var2755=$r2, var3586=$r3, var3869=$r4, var1156=$r5, var1421=$r6, var3365=$i0, var869=java.lang.reflect.Modifier, var1819=$z0, var444=java.lang.RuntimeException, var1705=$r9, var1659=$r10, var2073=$r11, var3259=$r12, var2056=$r13, var2819=$r14}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var1323, r0=var1504, $r1=var1318, $r21=var3115, $r2=var2755, $r3=var3586, $r4=var3869, $r5=var1156, $r6=var1421, $i0=var3365, java.lang.reflect.Modifier=var869, $z0=var1819, java.lang.RuntimeException=var444, $r9=var1705, $r10=var1659, $r11=var2073, $r12=var3259, $r13=var2056, $r14=var2819}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	$r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r21 = newarray (java.lang.Class)[0];	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> = $r21;	$r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> = $r4;	$r5 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName>;	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r5;	$r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$i0 = virtualinvoke $r6.<java.lang.Class: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0);	if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$r9 = new java.lang.RuntimeException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName>;	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is final");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.RuntimeException: void <init>(java.lang.String)>($r14);	throw $r9
;block_num 6