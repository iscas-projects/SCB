(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2009 0)
(declare-sort var868 0)
(declare-sort var3846 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun superClass/-1028346880 (var2009) ClassObject)
(declare-fun interfaces/-1028346880 (var2009) (Array Int ClassObject))
(declare-fun getClass/1258963082 (var868) ClassObject)
(declare-fun cast-from-var2009-to-var868 (var2009) var868)
(declare-fun getProtectionDomain/49749181 (ClassObject) var3846)
(declare-const null-var2009 var2009)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var1736 var2009) ; Statement: r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var1736 null-var2009)))
(define-const var1664 ClassObject (superClass/-1028346880 var1736)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
 ; Statement: if $r1 == null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(assert (= var1664 null-ClassObject)) ; Cond: $r1 == null 
(define-const var3089 (Array Int ClassObject) (interfaces/-1028346880 var1736)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
 ; Statement: if $r2 == null goto r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (= var3089 null-__Array__Int__ClassObject__)) ; Cond: $r2 == null 
(assert true)
(define-const var1498 ClassObject (getClass/1258963082 (cast-from-var2009-to-var868 var1736))) ; Statement: r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var1903 var3846 (getProtectionDomain/49749181 var1498)) ; Statement: $r8 = virtualinvoke r7.<java.lang.Class: java.security.ProtectionDomain getProtectionDomain()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {superClass/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class), interfaces/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class[]), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2009-to-var868=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Object), getProtectionDomain/49749181=([java.lang.Class], java.security.ProtectionDomain)}
; {var2009=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var1736=r0, var1664=$r1, var3089=$r2, var868=java.lang.Object, var1498=r7, var3846=java.security.ProtectionDomain, var1903=$r8}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var2009, r0=var1736, $r1=var1664, $r2=var3089, java.lang.Object=var868, r7=var1498, java.security.ProtectionDomain=var3846, $r8=var1903}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	$r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	if $r1 == null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	if $r2 == null goto r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r8 = virtualinvoke r7.<java.lang.Class: java.security.ProtectionDomain getProtectionDomain()>();	return $r8
;block_num 4