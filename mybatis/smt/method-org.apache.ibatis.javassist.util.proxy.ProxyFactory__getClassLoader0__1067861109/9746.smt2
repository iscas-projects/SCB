(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3208 0)
(declare-sort var1825 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun superClass/-1028346880 (var3208) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun interfaces/-1028346880 (var3208) (Array Int ClassObject))
(declare-const null-var3208 var3208)
(declare-const null-var1825 var1825)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var22 var3208) ; Statement: r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var22 null-var3208)))
(define-const var2972 var1825 null-var1825) ; Statement: r11 = null 
(define-const var2659 ClassObject (superClass/-1028346880 var22)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
 ; Statement: if $r1 == null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(assert (not (= var2659 null-ClassObject))) ; Negate: Cond: $r1 == null  
(define-const var3194 ClassObject (superClass/-1028346880 var22)) ; Statement: $r8 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var375 String (getName/-1958580599 var3194)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2162 Bool (= var375 "java.lang.Object")) ; Statement: $z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.Object") 
 ; Statement: if $z0 != 0 goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(assert (not (= (ite var2162 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3097 (Array Int ClassObject) (interfaces/-1028346880 var22)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
 ; Statement: if $r2 == null goto (branch) 
(assert (= var3097 null-__Array__Int__ClassObject__)) ; Cond: $r2 == null 
 ; Statement: if r11 != null goto return r11 
(assert (not (= var2972 null-var1825))) ; Cond: r11 != null 
 ; Statement: return r11 
(check-sat)
(get-model)
(get-unsat-core)
; {superClass/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), interfaces/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class[])}
; {var3208=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var22=r0, var1825=java.lang.ClassLoader, var2972=r11, var2659=$r1, var3194=$r8, var375=$r9, var2162=$z0, var3097=$r2}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var3208, r0=var22, java.lang.ClassLoader=var1825, r11=var2972, $r1=var2659, $r8=var3194, $r9=var375, $z0=var2162, $r2=var3097}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	r11 = null;	$r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	if $r1 == null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$r8 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.Object");	if $z0 != 0 goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	if $r2 == null goto (branch);	if r11 != null goto return r11;	return r11
;block_num 5