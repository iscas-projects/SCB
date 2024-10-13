(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3583 0)
(declare-sort var3285 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun interfaces/-1028346880 (var3583) (Array Int ClassObject))
(declare-fun superClass/-1028346880 (var3583) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun superName/-1028346880 (var3583) String)
(declare-fun basename/-1028346880 (var3583) String)
(declare-fun getModifiers/698981592 (ClassObject) Int)
(declare-fun var3285_isFinal/22304210 (Int) Bool)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var3583 var3583)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-ClassObject ClassObject)
(declare-const var3583-onlyPublicMethods Bool)
(declare-const var889 var3583) ; Statement: r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var889 null-var3583)))
(define-const var3908 (Array Int ClassObject) (interfaces/-1028346880 var889)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert (not (= var3908 null-__Array__Int__ClassObject__))) ; Cond: $r1 != null 
(define-const var1970 ClassObject (superClass/-1028346880 var889)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
 ; Statement: if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert (not (= var1970 null-ClassObject))) ; Cond: $r2 != null 
(define-const var324 ClassObject (superClass/-1028346880 var889)) ; Statement: $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var2382 String (getName/-1958580599 var324)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(declare-const var889!1 var3583)
(assert (not (= var889!1 null-var3583)))
(assert (= (superName/-1028346880 var889!1) var2382)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> = $r4 
(define-const var2448 String (superName/-1028346880 var889!1)) ; Statement: $r5 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> 
(declare-const var889!2 var3583)
(assert (not (= var889!2 null-var3583)))
(assert (= (basename/-1028346880 var889!2) var2448)) ; Statement: r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r5 
(assert true) ; Non Conditional
(define-const var3415 ClassObject (superClass/-1028346880 var889!2)) ; Statement: $r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var1946 Int (getModifiers/698981592 var3415)) ; Statement: $i0 = virtualinvoke $r6.<java.lang.Class: int getModifiers()>() 
(define-const var1623 Bool (var3285_isFinal/22304210 var1946)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0) 
 ; Statement: if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert (= (ite var1623 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1061 String (basename/-1028346880 var889!2)) ; Statement: $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert true)
(define-const var21 Bool (startsWith/-1785782452 var1061 "java.")) ; Statement: $z1 = virtualinvoke $r7.<java.lang.String: boolean startsWith(java.lang.String)>("java.") 
 ; Statement: if $z1 != 0 goto $r23 = new java.lang.StringBuilder 
(assert (not (not (= (ite var21 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var2255 String (basename/-1028346880 var889!2)) ; Statement: $r8 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> 
(assert true)
(define-const var162 Bool (startsWith/-1785782452 var2255 "jdk.")) ; Statement: $z2 = virtualinvoke $r8.<java.lang.String: boolean startsWith(java.lang.String)>("jdk.") 
 ; Statement: if $z2 != 0 goto $r23 = new java.lang.StringBuilder 
(assert (not (not (= (ite var162 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var2073 Bool var3583-onlyPublicMethods) ; Statement: $z3 = <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean onlyPublicMethods> 
 ; Statement: if $z3 == 0 goto return 
(assert (= (ite var2073 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {interfaces/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class[]), superClass/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), superName/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.String), basename/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.String), getModifiers/698981592=([java.lang.Class], int), var3285_isFinal/22304210=([int], boolean), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3583=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var889=r0, var3908=$r1, var1970=$r2, var324=$r3, var2382=$r4, var2448=$r5, var3415=$r6, var1946=$i0, var3285=java.lang.reflect.Modifier, var1623=$z0, var1061=$r7, var21=$z1, var2255=$r8, var162=$z2, var2073=$z3}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var3583, r0=var889, $r1=var3908, $r2=var1970, $r3=var324, $r4=var2382, $r5=var2448, $r6=var3415, $i0=var1946, java.lang.reflect.Modifier=var3285, $z0=var1623, $r7=var1061, $z1=var21, $r8=var2255, $z2=var162, $z3=var2073}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2}
;stmts r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	$r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	if $r2 != null goto $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName> = $r4;	$r5 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String superName>;	r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename> = $r5;	$r6 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$i0 = virtualinvoke $r6.<java.lang.Class: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isFinal(int)>($i0);	if $z0 == 0 goto $r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$z1 = virtualinvoke $r7.<java.lang.String: boolean startsWith(java.lang.String)>("java.");	if $z1 != 0 goto $r23 = new java.lang.StringBuilder;	$r8 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.String basename>;	$z2 = virtualinvoke $r8.<java.lang.String: boolean startsWith(java.lang.String)>("jdk.");	if $z2 != 0 goto $r23 = new java.lang.StringBuilder;	$z3 = <org.apache.ibatis.javassist.util.proxy.ProxyFactory: boolean onlyPublicMethods>;	if $z3 == 0 goto return;	return
;block_num 8