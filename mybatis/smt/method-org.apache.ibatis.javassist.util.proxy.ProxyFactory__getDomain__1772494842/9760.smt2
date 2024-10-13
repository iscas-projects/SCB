(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2556 0)
(declare-sort var1023 0)
(declare-sort var722 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun superClass/-1028346880 (var2556) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun interfaces/-1028346880 (var2556) (Array Int ClassObject))
(declare-fun getClass/1258963082 (var1023) ClassObject)
(declare-fun cast-from-var2556-to-var1023 (var2556) var1023)
(declare-fun getProtectionDomain/49749181 (ClassObject) var722)
(declare-const null-var2556 var2556)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var1007 var2556) ; Statement: r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var1007 null-var2556)))
(define-const var1336 ClassObject (superClass/-1028346880 var1007)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
 ; Statement: if $r1 == null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(assert (not (= var1336 null-ClassObject))) ; Negate: Cond: $r1 == null  
(define-const var2917 ClassObject (superClass/-1028346880 var1007)) ; Statement: $r5 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var3770 String (getName/-1958580599 var2917)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var56 Bool (= var3770 "java.lang.Object")) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.Object") 
 ; Statement: if $z0 != 0 goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(assert (not (= (ite var56 1 0) 0))) ; Cond: $z0 != 0 
(define-const var825 (Array Int ClassObject) (interfaces/-1028346880 var1007)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
 ; Statement: if $r2 == null goto r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (= var825 null-__Array__Int__ClassObject__)) ; Cond: $r2 == null 
(assert true)
(define-const var1131 ClassObject (getClass/1258963082 (cast-from-var2556-to-var1023 var1007))) ; Statement: r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var3567 var722 (getProtectionDomain/49749181 var1131)) ; Statement: $r8 = virtualinvoke r7.<java.lang.Class: java.security.ProtectionDomain getProtectionDomain()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {superClass/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), interfaces/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class[]), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2556-to-var1023=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Object), getProtectionDomain/49749181=([java.lang.Class], java.security.ProtectionDomain)}
; {var2556=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var1007=r0, var1336=$r1, var2917=$r5, var3770=$r6, var56=$z0, var825=$r2, var1023=java.lang.Object, var1131=r7, var722=java.security.ProtectionDomain, var3567=$r8}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var2556, r0=var1007, $r1=var1336, $r5=var2917, $r6=var3770, $z0=var56, $r2=var825, java.lang.Object=var1023, r7=var1131, java.security.ProtectionDomain=var722, $r8=var3567}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	$r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	if $r1 == null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$r5 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.Object");	if $z0 != 0 goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	if $r2 == null goto r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r8 = virtualinvoke r7.<java.lang.Class: java.security.ProtectionDomain getProtectionDomain()>();	return $r8
;block_num 5