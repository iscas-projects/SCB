(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2918 0)
(declare-sort var1569 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun interfaces/-1028346880 (var2918) (Array Int ClassObject))
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun superClass/-1028346880 (var2918) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun superName/-1028346880 (var2918) String)
(declare-fun basename/-1028346880 (var2918) String)
(declare-fun getModifiers/698981592 (ClassObject) Int)
(declare-fun var1569_isFinal/22304210 (Int) Bool)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var2918 var2918)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-ClassObject ClassObject)
(declare-const var2918-onlyPublicMethods Bool)
(declare-const var2160 var2918) ; Statement: r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var2160 null-var2918)))
(define-const var1149 (Array Int ClassObject) (interfaces/-1028346880 var2160)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert (not (not (= var1149 null-__Array__Int__ClassObject__)))) ; Negate: Cond: $r1 != null  
(define-const var1192 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r21 = newarray (java.lang.Class)[0] 
(declare-const var2160!1 var2918)
(assert (not (= var2160!1 null-var2918)))
(assert (= (interfaces/-1028346880 var2160!1) var1192)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> = $r21 
(assert true) ; Non Conditional
(define-const var2214 ClassObject (superClass/-1028346880 var2160!1)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
 ; Statement: if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert (not (= var2214 null-ClassObject))) ; Cond: $r2 != null 
(define-const var2662 ClassObject (superClass/-1028346880 var2160!1)) ; Statement: $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var2893 String (getName/-1958580599 var2662)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(declare-const var2160!2 var2918)
(assert (not (= var2160!2 null-var2918)))
(assert (= (superName/-1028346880 var2160!2) var2893)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> = $r4 
(define-const var2665 String (superName/-1028346880 var2160!2)) ; Statement: $r5 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> 
(declare-const var2160!3 var2918)
(assert (not (= var2160!3 null-var2918)))
(assert (= (basename/-1028346880 var2160!3) var2665)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r5 
(assert true) ; Non Conditional
(define-const var873 ClassObject (superClass/-1028346880 var2160!3)) ; Statement: $r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var1480 Int (getModifiers/698981592 var873)) ; Statement: $i0 = virtualinvoke $r6.<java.lang.Class: int getModifiers()>() 
(define-const var3037 Bool (var1569_isFinal/22304210 var1480)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0) 
 ; Statement: if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert (= (ite var3037 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2458 String (basename/-1028346880 var2160!3)) ; Statement: $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert true)
(define-const var706 Bool (startsWith/-1785782452 var2458 "java.")) ; Statement: $z1 = virtualinvoke $r7.<java.lang.String: boolean startsWith(java.lang.String)>("java.") 
 ; Statement: if $z1 != 0 goto $r23 = new java.lang.StringBuilder 
(assert (not (not (= (ite var706 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var2107 String (basename/-1028346880 var2160!3)) ; Statement: $r8 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert true)
(define-const var1409 Bool (startsWith/-1785782452 var2107 "jdk.")) ; Statement: $z2 = virtualinvoke $r8.<java.lang.String: boolean startsWith(java.lang.String)>("jdk.") 
 ; Statement: if $z2 != 0 goto $r23 = new java.lang.StringBuilder 
(assert (not (not (= (ite var1409 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var1189 Bool var2918-onlyPublicMethods) ; Statement: $z3 = <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean onlyPublicMethods> 
 ; Statement: if $z3 == 0 goto return 
(assert (= (ite var1189 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {interfaces/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class[]), arr-ClassObject-init=([], java.lang.Class[]), superClass/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), superName/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.String), basename/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.String), getModifiers/698981592=([java.lang.Class], int), var1569_isFinal/22304210=([int], boolean), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var2918=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var2160=r0, var1149=$r1, var1192=$r21, var2214=$r2, var2662=$r3, var2893=$r4, var2665=$r5, var873=$r6, var1480=$i0, var1569=java.lang.reflect.Modifier, var3037=$z0, var2458=$r7, var706=$z1, var2107=$r8, var1409=$z2, var1189=$z3}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var2918, r0=var2160, $r1=var1149, $r21=var1192, $r2=var2214, $r3=var2662, $r4=var2893, $r5=var2665, $r6=var873, $i0=var1480, java.lang.reflect.Modifier=var1569, $z0=var3037, $r7=var2458, $z1=var706, $r8=var2107, $z2=var1409, $z3=var1189}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2}
;stmts r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	$r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r21 = newarray (java.lang.Class)[0];	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> = $r21;	$r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> = $r4;	$r5 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName>;	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r5;	$r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$i0 = virtualinvoke $r6.<java.lang.Class: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0);	if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$z1 = virtualinvoke $r7.<java.lang.String: boolean startsWith(java.lang.String)>("java.");	if $z1 != 0 goto $r23 = new java.lang.StringBuilder;	$r8 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$z2 = virtualinvoke $r8.<java.lang.String: boolean startsWith(java.lang.String)>("jdk.");	if $z2 != 0 goto $r23 = new java.lang.StringBuilder;	$z3 = <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean onlyPublicMethods>;	if $z3 == 0 goto return;	return
;block_num 9