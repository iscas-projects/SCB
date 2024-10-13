(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var225 0)
(declare-sort var2257 0)
(declare-sort var2313 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun interfaces/-1028346880 (var225) (Array Int ClassObject))
(declare-fun superClass/-1028346880 (var225) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun superName/-1028346880 (var225) String)
(declare-fun basename/-1028346880 (var225) String)
(declare-fun getModifiers/698981592 (ClassObject) Int)
(declare-fun var2257_isFinal/22304210 (Int) Bool)
(declare-fun var2313-init () var2313)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var2313 String) void)
(declare-const null-var225 var225)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-ClassObject ClassObject)
(declare-const var1890 var225) ; Statement: r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var1890 null-var225)))
(define-const var1536 (Array Int ClassObject) (interfaces/-1028346880 var1890)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert (not (= var1536 null-__Array__Int__ClassObject__))) ; Cond: $r1 != null 
(define-const var2449 ClassObject (superClass/-1028346880 var1890)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
 ; Statement: if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert (not (= var2449 null-ClassObject))) ; Cond: $r2 != null 
(define-const var2190 ClassObject (superClass/-1028346880 var1890)) ; Statement: $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var2937 String (getName/-1958580599 var2190)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(declare-const var1890!1 var225)
(assert (not (= var1890!1 null-var225)))
(assert (= (superName/-1028346880 var1890!1) var2937)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> = $r4 
(define-const var3983 String (superName/-1028346880 var1890!1)) ; Statement: $r5 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> 
(declare-const var1890!2 var225)
(assert (not (= var1890!2 null-var225)))
(assert (= (basename/-1028346880 var1890!2) var3983)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r5 
(assert true) ; Non Conditional
(define-const var2376 ClassObject (superClass/-1028346880 var1890!2)) ; Statement: $r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var3728 Int (getModifiers/698981592 var2376)) ; Statement: $i0 = virtualinvoke $r6.<java.lang.Class: int getModifiers()>() 
(define-const var2014 Bool (var2257_isFinal/22304210 var3728)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0) 
 ; Statement: if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert (not (= (ite var2014 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2126 var2313 var2313-init) ; Statement: $r9 = new java.lang.RuntimeException 
(define-const var2259 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2259)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2259!1 String)
(assert (= var2259!1 ""))
(define-const var3978 String (superName/-1028346880 var1890!2)) ; Statement: $r11 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> 
(assert true)
(define-const var848 String (append/672562846 var2259!1 var3978)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2259!2 String)
(assert (= var2259!2 (str.++ var2259!1 var3978)))
(assert true)
(define-const var1762 String (append/672562846 var848 " is final")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is final") 
(declare-const var848!1 String)
(assert (= var848!1 (str.++ var848 " is final")))
(assert true)
(define-const var403 String (toString/-2075883882 var1762)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var2126 var403)) ; Statement: specialinvoke $r9.<java.lang.RuntimeException: void <init>(java.lang.String)>($r14) 

(declare-const var2126!1 var2313)
(declare-const var403!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {interfaces/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class[]), superClass/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), superName/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.String), basename/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.String), getModifiers/698981592=([java.lang.Class], int), var2257_isFinal/22304210=([int], boolean), var2313-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var225=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var1890=r0, var1536=$r1, var2449=$r2, var2190=$r3, var2937=$r4, var3983=$r5, var2376=$r6, var3728=$i0, var2257=java.lang.reflect.Modifier, var2014=$z0, var2313=java.lang.RuntimeException, var2126=$r9, var2259=$r10, var3978=$r11, var848=$r12, var1762=$r13, var403=$r14}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var225, r0=var1890, $r1=var1536, $r2=var2449, $r3=var2190, $r4=var2937, $r5=var3983, $r6=var2376, $i0=var3728, java.lang.reflect.Modifier=var2257, $z0=var2014, java.lang.RuntimeException=var2313, $r9=var2126, $r10=var2259, $r11=var3978, $r12=var848, $r13=var1762, $r14=var403}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	$r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> = $r4;	$r5 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName>;	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r5;	$r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$i0 = virtualinvoke $r6.<java.lang.Class: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0);	if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$r9 = new java.lang.RuntimeException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName>;	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is final");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.RuntimeException: void <init>(java.lang.String)>($r14);	throw $r9
;block_num 5