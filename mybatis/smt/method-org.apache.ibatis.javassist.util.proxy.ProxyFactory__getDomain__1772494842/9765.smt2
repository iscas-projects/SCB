(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2594 0)
(declare-sort var1890 0)
(declare-sort var1106 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun superClass/-1028346880 (var2594) ClassObject)
(declare-fun interfaces/-1028346880 (var2594) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun getClass/1258963082 (var1890) ClassObject)
(declare-fun cast-from-var2594-to-var1890 (var2594) var1890)
(declare-fun getProtectionDomain/49749181 (ClassObject) var1106)
(declare-const null-var2594 var2594)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var826 var2594) ; Statement: r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var826 null-var2594)))
(define-const var1866 ClassObject (superClass/-1028346880 var826)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
 ; Statement: if $r1 == null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(assert (= var1866 null-ClassObject)) ; Cond: $r1 == null 
(define-const var3528 (Array Int ClassObject) (interfaces/-1028346880 var826)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
 ; Statement: if $r2 == null goto r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= var3528 null-__Array__Int__ClassObject__))) ; Negate: Cond: $r2 == null  
(define-const var2096 (Array Int ClassObject) (interfaces/-1028346880 var826)) ; Statement: $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(define-const var3748 Int (getLength-Arr-ClassObject-1 var2096)) ; Statement: $i0 = lengthof $r3 
 ; Statement: if $i0 <= 0 goto r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (<= var3748 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var32 ClassObject (getClass/1258963082 (cast-from-var2594-to-var1890 var826))) ; Statement: r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var706 var1106 (getProtectionDomain/49749181 var32)) ; Statement: $r8 = virtualinvoke r7.<java.lang.Class: java.security.ProtectionDomain getProtectionDomain()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {superClass/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class), interfaces/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2594-to-var1890=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Object), getProtectionDomain/49749181=([java.lang.Class], java.security.ProtectionDomain)}
; {var2594=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var826=r0, var1866=$r1, var3528=$r2, var2096=$r3, var3748=$i0, var1890=java.lang.Object, var32=r7, var1106=java.security.ProtectionDomain, var706=$r8}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var2594, r0=var826, $r1=var1866, $r2=var3528, $r3=var2096, $i0=var3748, java.lang.Object=var1890, r7=var32, java.security.ProtectionDomain=var1106, $r8=var706}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	$r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	if $r1 == null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	if $r2 == null goto r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$i0 = lengthof $r3;	if $i0 <= 0 goto r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r8 = virtualinvoke r7.<java.lang.Class: java.security.ProtectionDomain getProtectionDomain()>();	return $r8
;block_num 5