(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2603 0)
(declare-sort var1177 0)
(declare-sort var3115 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun superClass/-1028346880 (var2603) ClassObject)
(declare-fun interfaces/-1028346880 (var2603) (Array Int ClassObject))
(declare-fun getClass/1258963082 (var3115) ClassObject)
(declare-fun cast-from-var2603-to-var3115 (var2603) var3115)
(declare-fun getClassLoader/-563698447 (ClassObject) var1177)
(declare-const null-var2603 var2603)
(declare-const null-var1177 var1177)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var1920 var2603) ; Statement: r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var1920 null-var2603)))
(define-const var3983 var1177 null-var1177) ; Statement: r11 = null 
(define-const var685 ClassObject (superClass/-1028346880 var1920)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass> 
 ; Statement: if $r1 == null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
(assert (= var685 null-ClassObject)) ; Cond: $r1 == null 
(define-const var3161 (Array Int ClassObject) (interfaces/-1028346880 var1920)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces> 
 ; Statement: if $r2 == null goto (branch) 
(assert (= var3161 null-__Array__Int__ClassObject__)) ; Cond: $r2 == null 
 ; Statement: if r11 != null goto return r11 
(assert (not (not (= var3983 null-var1177)))) ; Negate: Cond: r11 != null  
(assert true)
(define-const var3235 ClassObject (getClass/1258963082 (cast-from-var2603-to-var3115 var1920))) ; Statement: $r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3983!1 var1177 (getClassLoader/-563698447 var3235)) ; Statement: r11 = virtualinvoke $r3.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
 ; Statement: if r11 != null goto return r11 
(assert (not (= var3983!1 null-var1177))) ; Cond: r11 != null 
 ; Statement: return r11 
(check-sat)
(get-model)
(get-unsat-core)
; {superClass/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class), interfaces/-1028346880=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Class[]), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2603-to-var3115=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], java.lang.Object), getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader)}
; {var2603=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var1920=r0, var1177=java.lang.ClassLoader, var3983=r11, var685=$r1, var3161=$r2, var3115=java.lang.Object, var3235=$r3}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var2603, r0=var1920, java.lang.ClassLoader=var1177, r11=var3983, $r1=var685, $r2=var3161, java.lang.Object=var3115, $r3=var3235}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	r11 = null;	$r1 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class superClass>;	if $r1 == null goto $r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	$r2 = r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: java.lang.Class[] interfaces>;	if $r2 == null goto (branch);	if r11 != null goto return r11;	$r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	r11 = virtualinvoke $r3.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	if r11 != null goto return r11;	return r11
;block_num 5