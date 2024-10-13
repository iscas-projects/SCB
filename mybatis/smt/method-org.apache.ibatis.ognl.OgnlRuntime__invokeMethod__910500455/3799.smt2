(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var533 0)
(declare-sort var2897 0)
(declare-sort var783 0)
(declare-sort var2322 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDeclaringClass/501867354 (var2897) ClassObject)
(declare-fun equals/-188544335 (var2897 var533) Bool)
(declare-fun cast-from-var2897-to-var533 (var2897) var533)
(declare-fun var2322-init () var2322)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var533) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/807490927 (var2322 String) void)
(declare-const null-var533 var533)
(declare-const null-var2897 var2897)
(declare-const null-__Array__Int__var533__ (Array Int var533))
(declare-const var783-_useStricterInvocation Bool)
(declare-const var783-AO_SETACCESSIBLE_REF var2897)
(declare-const var1940 var533) ; Statement: r3 := @parameter0: java.lang.Object 
(assert (not (= var1940 null-var533)))
(declare-const var1287 var2897) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var1287 null-var2897)))
(declare-const var140 (Array Int var533)) ; Statement: r4 := @parameter2: java.lang.Object[] 
(assert (not (= var140 null-__Array__Int__var533__)))
(define-const var3677 Bool var783-_useStricterInvocation) ; Statement: $z0 = <org.apache.ibatis.ognl.OgnlRuntime: boolean _useStricterInvocation> 
 ; Statement: if $z0 == 0 goto entermonitor r0 
(assert (not (= (ite var3677 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var446 ClassObject (getDeclaringClass/501867354 var1287)) ; Statement: r63 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>() 
(define-const var557 var2897 var783-AO_SETACCESSIBLE_REF) ; Statement: $r20 = <org.apache.ibatis.ognl.OgnlRuntime: java.lang.reflect.Method AO_SETACCESSIBLE_REF> 
 ; Statement: if $r20 == null goto $r21 = <org.apache.ibatis.ognl.OgnlRuntime: java.lang.reflect.Method AO_SETACCESSIBLE_ARR_REF> 
(assert (not (= var557 null-var2897))) ; Negate: Cond: $r20 == null  
(define-const var2656 var2897 var783-AO_SETACCESSIBLE_REF) ; Statement: $r36 = <org.apache.ibatis.ognl.OgnlRuntime: java.lang.reflect.Method AO_SETACCESSIBLE_REF> 
(assert true)
(define-const var3170 Bool (equals/-188544335 var2656 (cast-from-var2897-to-var533 var1287))) ; Statement: $z16 = virtualinvoke $r36.<java.lang.reflect.Method: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z16 != 0 goto $r64 = new java.lang.IllegalAccessException 
(assert (not (= (ite var3170 1 0) 0))) ; Cond: $z16 != 0 
(define-const var2665 var2322 var2322-init) ; Statement: $r64 = new java.lang.IllegalAccessException 
(define-const var1166 String String-init) ; Statement: $r65 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1166)) ; Statement: specialinvoke $r65.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1166!1 String)
(assert (= var1166!1 ""))
(assert true)
(define-const var2740 String (append/672562846 var1166!1 "Method [")) ; Statement: $r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method [") 
(declare-const var1166!2 String)
(assert (= var1166!2 (str.++ var1166!1 "Method [")))
(assert true)
(define-const var425 String (append/-1031950772 var2740 (cast-from-var2897-to-var533 var1287))) ; Statement: $r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2740!1 String)
(assert (str.prefixof var2740 var2740!1))
(assert true)
(define-const var3823 String (append/672562846 var425 "] cannot be called from within OGNL invokeMethod() under stricter invocation mode.")) ; Statement: $r68 = virtualinvoke $r67.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] cannot be called from within OGNL invokeMethod() under stricter invocation mode.") 
(declare-const var425!1 String)
(assert (= var425!1 (str.++ var425 "] cannot be called from within OGNL invokeMethod() under stricter invocation mode.")))
(assert true)
(define-const var1208 String (toString/-2075883882 var3823)) ; Statement: $r69 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/807490927 var2665 var1208)) ; Statement: specialinvoke $r64.<java.lang.IllegalAccessException: void <init>(java.lang.String)>($r69) 

(declare-const var2665!1 var2322)
(declare-const var1208!1 String)
 ; Statement: throw $r64 
(check-sat)
(get-model)
(get-unsat-core)
; {getDeclaringClass/501867354=([java.lang.reflect.Method], java.lang.Class), equals/-188544335=([java.lang.reflect.Method, java.lang.Object], boolean), cast-from-var2897-to-var533=([java.lang.reflect.Method], java.lang.Object), var2322-init=([], java.lang.IllegalAccessException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/807490927=([java.lang.IllegalAccessException, java.lang.String], void)}
; {var533=java.lang.Object, var1940=r3, var2897=java.lang.reflect.Method, var1287=r0, var140=r4, var783=org.apache.ibatis.ognl.OgnlRuntime, var3677=$z0, var446=r63, var557=$r20, var2656=$r36, var3170=$z16, var2322=java.lang.IllegalAccessException, var2665=$r64, var1166=$r65, var2740=$r66, var425=$r67, var3823=$r68, var1208=$r69}
; {java.lang.Object=var533, r3=var1940, java.lang.reflect.Method=var2897, r0=var1287, r4=var140, org.apache.ibatis.ognl.OgnlRuntime=var783, $z0=var3677, r63=var446, $r20=var557, $r36=var2656, $z16=var3170, java.lang.IllegalAccessException=var2322, $r64=var2665, $r65=var1166, $r66=var2740, $r67=var425, $r68=var3823, $r69=var1208}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r4 := @parameter2: java.lang.Object[];	$z0 = <org.apache.ibatis.ognl.OgnlRuntime: boolean _useStricterInvocation>;	if $z0 == 0 goto entermonitor r0;	r63 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>();	$r20 = <org.apache.ibatis.ognl.OgnlRuntime: java.lang.reflect.Method AO_SETACCESSIBLE_REF>;	if $r20 == null goto $r21 = <org.apache.ibatis.ognl.OgnlRuntime: java.lang.reflect.Method AO_SETACCESSIBLE_ARR_REF>;	$r36 = <org.apache.ibatis.ognl.OgnlRuntime: java.lang.reflect.Method AO_SETACCESSIBLE_REF>;	$z16 = virtualinvoke $r36.<java.lang.reflect.Method: boolean equals(java.lang.Object)>(r0);	if $z16 != 0 goto $r64 = new java.lang.IllegalAccessException;	$r64 = new java.lang.IllegalAccessException;	$r65 = new java.lang.StringBuilder;	specialinvoke $r65.<java.lang.StringBuilder: void <init>()>();	$r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method [");	$r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r68 = virtualinvoke $r67.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] cannot be called from within OGNL invokeMethod() under stricter invocation mode.");	$r69 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r64.<java.lang.IllegalAccessException: void <init>(java.lang.String)>($r69);	throw $r64
;block_num 4