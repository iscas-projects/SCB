(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var399 0)
(declare-sort var2319 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun superClass/-1028346880 (var399) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getProtectionDomain/49749181 (ClassObject) var2319)
(declare-const null-var399 var399)
(declare-const null-ClassObject ClassObject)
(declare-const var963 var399) ; Statement: r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var963 null-var399)))
(define-const var1745 ClassObject (superClass/-1028346880 var963)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
 ; Statement: if $r1 == null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(assert (not (= var1745 null-ClassObject))) ; Negate: Cond: $r1 == null  
(define-const var3452 ClassObject (superClass/-1028346880 var963)) ; Statement: $r5 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var71 String (getName/-1958580599 var3452)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2968 Bool (= var71 "java.lang.Object")) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.Object") 
 ; Statement: if $z0 != 0 goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(assert (not (not (= (ite var2968 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2872 ClassObject (superClass/-1028346880 var963)) ; Statement: r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
 ; Statement: goto [?= $r8 = virtualinvoke r7.<java.lang.Class: java.security.ProtectionDomain getProtectionDomain()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1564 var2319 (getProtectionDomain/49749181 var2872)) ; Statement: $r8 = virtualinvoke r7.<java.lang.Class: java.security.ProtectionDomain getProtectionDomain()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {superClass/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), getProtectionDomain/49749181=([java.lang.Class], java.security.ProtectionDomain)}
; {var399=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var963=r0, var1745=$r1, var3452=$r5, var71=$r6, var2968=$z0, var2872=r7, var2319=java.security.ProtectionDomain, var1564=$r8}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var399, r0=var963, $r1=var1745, $r5=var3452, $r6=var71, $z0=var2968, r7=var2872, java.security.ProtectionDomain=var2319, $r8=var1564}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	$r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	if $r1 == null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$r5 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.Object");	if $z0 != 0 goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	r7 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	goto [?= $r8 = virtualinvoke r7.<java.lang.Class: java.security.ProtectionDomain getProtectionDomain()>()];	$r8 = virtualinvoke r7.<java.lang.Class: java.security.ProtectionDomain getProtectionDomain()>();	return $r8
;block_num 4