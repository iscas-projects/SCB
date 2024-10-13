(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2572 0)
(declare-sort var2008 0)
(declare-sort var1982 0)
(declare-sort var1840 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2008) void)
(declare-fun cast-from-var2572-to-var2008 (var2572) var2008)
(declare-fun getDeclaringClass/501867354 (var1982) ClassObject)
(declare-fun var1840_contains/-441121415 (var1840 var2008) Bool)
(declare-fun cast-from-ClassObject-to-var2008 (ClassObject) var2008)
(declare-fun target/-24660695 (var2572) var2008)
(declare-fun method/-24660695 (var2572) var1982)
(declare-fun args/-24660695 (var2572) (Array Int var2008))
(declare-const null-var2572 var2572)
(declare-const null-var2008 var2008)
(declare-const null-var1982 var1982)
(declare-const null-__Array__Int__var2008__ (Array Int var2008))
(declare-const var2572-targetClasses var1840)
(declare-const var3607 var2572) ; Statement: r0 := @this: org.apache.ibatis.plugin.Invocation 
(assert (not (= var3607 null-var2572)))
(declare-const var2226 var2008) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var2226 null-var2008)))
(declare-const var2362 var1982) ; Statement: r1 := @parameter1: java.lang.reflect.Method 
(assert (not (= var2362 null-var1982)))
(declare-const var763 (Array Int var2008)) ; Statement: r5 := @parameter2: java.lang.Object[] 
(assert (not (= var763 null-__Array__Int__var2008__)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2572-to-var2008 var3607))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3607!1 var2572)
(define-const var2078 var1840 var2572-targetClasses) ; Statement: $r2 = <org.apache.ibatis.plugin.Invocation: java.util.List targetClasses> 
(assert true)
(define-const var2916 ClassObject (getDeclaringClass/501867354 var2362)) ; Statement: $r3 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>() 
(define-const var2975 Bool (var1840_contains/-441121415 var2078 (cast-from-ClassObject-to-var2008 var2916))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.List: boolean contains(java.lang.Object)>($r3) 
 ; Statement: if $z0 != 0 goto r0.<org.apache.ibatis.plugin.Invocation: java.lang.Object target> = r4 
(assert (not (= (ite var2975 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var3607!2 var2572)
(assert (not (= var3607!2 null-var2572)))
(assert (= (target/-24660695 var3607!2) var2226)) ; Statement: r0.<org.apache.ibatis.plugin.Invocation: java.lang.Object target> = r4 
(declare-const var3607!3 var2572)
(assert (not (= var3607!3 null-var2572)))
(assert (= (method/-24660695 var3607!3) var2362)) ; Statement: r0.<org.apache.ibatis.plugin.Invocation: java.lang.reflect.Method method> = r1 
(declare-const var3607!4 var2572)
(assert (not (= var3607!4 null-var2572)))
(assert (= (args/-24660695 var3607!4) var763)) ; Statement: r0.<org.apache.ibatis.plugin.Invocation: java.lang.Object[] args> = r5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2572-to-var2008=([org.apache.ibatis.plugin.Invocation], java.lang.Object), getDeclaringClass/501867354=([java.lang.reflect.Method], java.lang.Class), var1840_contains/-441121415=([java.util.List, java.lang.Object], boolean), cast-from-ClassObject-to-var2008=([java.lang.Class], java.lang.Object), target/-24660695=([org.apache.ibatis.plugin.Invocation], java.lang.Object), method/-24660695=([org.apache.ibatis.plugin.Invocation], java.lang.reflect.Method), args/-24660695=([org.apache.ibatis.plugin.Invocation], java.lang.Object[])}
; {var2572=org.apache.ibatis.plugin.Invocation, var3607=r0, var2008=java.lang.Object, var2226=r4, var1982=java.lang.reflect.Method, var2362=r1, var763=r5, var1840=java.util.List, var2078=$r2, var2916=$r3, var2975=$z0}
; {org.apache.ibatis.plugin.Invocation=var2572, r0=var3607, java.lang.Object=var2008, r4=var2226, java.lang.reflect.Method=var1982, r1=var2362, r5=var763, java.util.List=var1840, $r2=var2078, $r3=var2916, $z0=var2975}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.plugin.Invocation;	r4 := @parameter0: java.lang.Object;	r1 := @parameter1: java.lang.reflect.Method;	r5 := @parameter2: java.lang.Object[];	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = <org.apache.ibatis.plugin.Invocation: java.util.List targetClasses>;	$r3 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>();	$z0 = interfaceinvoke $r2.<java.util.List: boolean contains(java.lang.Object)>($r3);	if $z0 != 0 goto r0.<org.apache.ibatis.plugin.Invocation: java.lang.Object target> = r4;	r0.<org.apache.ibatis.plugin.Invocation: java.lang.Object target> = r4;	r0.<org.apache.ibatis.plugin.Invocation: java.lang.reflect.Method method> = r1;	r0.<org.apache.ibatis.plugin.Invocation: java.lang.Object[] args> = r5;	return
;block_num 2