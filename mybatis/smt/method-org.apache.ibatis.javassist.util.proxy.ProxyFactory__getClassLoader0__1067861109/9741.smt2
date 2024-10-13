(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1414 0)
(declare-sort var3429 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun superClass/-1028346880 (var1414) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getClassLoader/-563698447 (ClassObject) var3429)
(declare-const null-var1414 var1414)
(declare-const null-var3429 var3429)
(declare-const null-ClassObject ClassObject)
(declare-const var3110 var1414) ; Statement: r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var3110 null-var1414)))
(define-const var3494 var3429 null-var3429) ; Statement: r11 = null 
(define-const var2473 ClassObject (superClass/-1028346880 var3110)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
 ; Statement: if $r1 == null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(assert (not (= var2473 null-ClassObject))) ; Negate: Cond: $r1 == null  
(define-const var1212 ClassObject (superClass/-1028346880 var3110)) ; Statement: $r8 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var1659 String (getName/-1958580599 var1212)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1931 Bool (= var1659 "java.lang.Object")) ; Statement: $z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.Object") 
 ; Statement: if $z0 != 0 goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(assert (not (not (= (ite var1931 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var197 ClassObject (superClass/-1028346880 var3110)) ; Statement: $r10 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
(assert true)
(define-const var3494!1 var3429 (getClassLoader/-563698447 var197)) ; Statement: r11 = virtualinvoke $r10.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r11 != null goto return r11 
(assert (not (= var3494!1 null-var3429))) ; Cond: r11 != null 
 ; Statement: return r11 
(check-sat)
(get-model)
(get-unsat-core)
; {superClass/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader)}
; {var1414=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var3110=r0, var3429=java.lang.ClassLoader, var3494=r11, var2473=$r1, var1212=$r8, var1659=$r9, var1931=$z0, var197=$r10}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var1414, r0=var3110, java.lang.ClassLoader=var3429, r11=var3494, $r1=var2473, $r8=var1212, $r9=var1659, $z0=var1931, $r10=var197}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	r11 = null;	$r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	if $r1 == null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$r8 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	$r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.Object");	if $z0 != 0 goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$r10 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	r11 = virtualinvoke $r10.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	goto [?= (branch)];	if r11 != null goto return r11;	return r11
;block_num 5