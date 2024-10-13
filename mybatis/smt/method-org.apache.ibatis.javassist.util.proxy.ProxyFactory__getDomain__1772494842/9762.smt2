(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var356 0)
(declare-sort var1680 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun superClass/-1028346880 (var356) ClassObject)
(declare-fun interfaces/-1028346880 (var356) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun getProtectionDomain/49749181 (ClassObject) var1680)
(declare-const null-var356 var356)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var3860 var356) ; Statement: r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var3860 null-var356)))
(define-const var1017 ClassObject (superClass/-1028346880 var3860)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
 ; Statement: if $r1 == null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(assert (= var1017 null-ClassObject)) ; Cond: $r1 == null 
(define-const var2745 (Array Int ClassObject) (interfaces/-1028346880 var3860)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
 ; Statement: if $r2 == null goto r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= var2745 null-__Array__Int__ClassObject__))) ; Negate: Cond: $r2 == null  
(define-const var60 (Array Int ClassObject) (interfaces/-1028346880 var3860)) ; Statement: $r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(define-const var2343 Int (getLength-Arr-ClassObject-1 var60)) ; Statement: $i0 = lengthof $r3 
 ; Statement: if $i0 <= 0 goto r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (<= var2343 0))) ; Negate: Cond: $i0 <= 0  
(define-const var571 (Array Int ClassObject) (interfaces/-1028346880 var3860)) ; Statement: $r4 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(define-const var2014 ClassObject (select var571 0)) ; Statement: r7 = $r4[0] 
 ; Statement: goto [?= $r8 = virtualinvoke r7.<java.lang.Class: java.security.ProtectionDomain getProtectionDomain()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1955 var1680 (getProtectionDomain/49749181 var2014)) ; Statement: $r8 = virtualinvoke r7.<java.lang.Class: java.security.ProtectionDomain getProtectionDomain()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {superClass/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class), interfaces/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), getProtectionDomain/49749181=([java.lang.Class], java.security.ProtectionDomain)}
; {var356=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var3860=r0, var1017=$r1, var2745=$r2, var60=$r3, var2343=$i0, var571=$r4, var2014=r7, var1680=java.security.ProtectionDomain, var1955=$r8}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var356, r0=var3860, $r1=var1017, $r2=var2745, $r3=var60, $i0=var2343, $r4=var571, r7=var2014, java.security.ProtectionDomain=var1680, $r8=var1955}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	$r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	if $r1 == null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	if $r2 == null goto r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r3 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$i0 = lengthof $r3;	if $i0 <= 0 goto r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r4 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	r7 = $r4[0];	goto [?= $r8 = virtualinvoke r7.<java.lang.Class: java.security.ProtectionDomain getProtectionDomain()>()];	$r8 = virtualinvoke r7.<java.lang.Class: java.security.ProtectionDomain getProtectionDomain()>();	return $r8
;block_num 5