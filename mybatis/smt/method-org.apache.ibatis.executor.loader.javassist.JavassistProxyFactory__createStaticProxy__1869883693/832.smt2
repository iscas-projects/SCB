(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var32 0)
(declare-sort var655 0)
(declare-sort var1562 0)
(declare-sort var1894 0)
(declare-sort var2225 0)
(declare-sort var990 0)
(declare-sort var3821 0)
(declare-sort var1227 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1562-init () var1562)
(declare-fun <init>/763893513 (var1562) void)
(declare-fun setSuperclass/1176651182 (var1562 ClassObject) void)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var655_size/-959786421 (var655) Int)
(declare-fun var655_toArray/-775711681 (var655 (Array Int var2225)) (Array Int var2225))
(declare-fun cast-from-__Array__Int__ClassObject__-to-__Array__Int__var2225__ ((Array Int ClassObject)) (Array Int var2225))
(declare-fun cast-from-__Array__Int__var2225__-to-__Array__Int__ClassObject__ ((Array Int var2225)) (Array Int ClassObject))
(declare-fun arr-var2225-init () (Array Int var2225))
(declare-fun var3821-init () var3821)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2225) String)
(declare-fun cast-from-var990-to-var2225 (var990) var2225)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1707365385 (var3821 String var1227) void)
(declare-fun cast-from-var990-to-var1227 (var990) var1227)
(declare-const null-ClassObject ClassObject)
(declare-const null-var32 var32)
(declare-const null-var655 var655)
(declare-const null-var1894 var1894)
(declare-const null-var990 var990)
(declare-const var23 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var23 null-ClassObject)))
(declare-const var1563 var32) ; Statement: r6 := @parameter1: org.apache.ibatis.javassist.util.proxy.MethodHandler 
(assert (not (= var1563 null-var32)))
(declare-const var2534 var655) ; Statement: r4 := @parameter2: java.util.List 
(assert (not (= var2534 null-var655)))
(declare-const var389 var655) ; Statement: r5 := @parameter3: java.util.List 
(assert (not (= var389 null-var655)))
(define-const var976 var1562 var1562-init) ; Statement: $r0 = new org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert true)
;(assert (<init>/763893513 var976)) ; Statement: specialinvoke $r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: void <init>()>() 

(declare-const var976!1 var1562)
(assert true)
;(assert (setSuperclass/1176651182 var976!1 var23)) ; Statement: virtualinvoke $r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: void setSuperclass(java.lang.Class)>(r1) 

(declare-const var976!2 var1562)
(declare-const var23!1 ClassObject)
(define-const var636 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r2 = newarray (java.lang.Class)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1579 var1894) ; Statement: $r20 := @caughtexception 
(assert (not (= var1579 null-var1894)))
(assert true) ; Non Conditional
(define-const var3637 Int (var655_size/-959786421 var2534)) ; Statement: $i0 = interfaceinvoke r4.<java.util.List: int size()>() 
(define-const var3688 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r23 = newarray (java.lang.Class)[$i0] 
(define-const var1426 (Array Int var2225) (var655_toArray/-775711681 var2534 (cast-from-__Array__Int__ClassObject__-to-__Array__Int__var2225__ var3688))) ; Statement: $r24 = interfaceinvoke r4.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r23) 
(define-const var1272 (Array Int ClassObject) (cast-from-__Array__Int__var2225__-to-__Array__Int__ClassObject__ var1426)) ; Statement: $r25 = (java.lang.Class[]) $r24 
(define-const var3298 Int (var655_size/-959786421 var389)) ; Statement: $i1 = interfaceinvoke r5.<java.util.List: int size()>() 
(define-const var68 (Array Int var2225) arr-var2225-init) ; Statement: $r26 = newarray (java.lang.Object)[$i1] 
(define-const var3239 (Array Int var2225) (var655_toArray/-775711681 var389 var68)) ; Statement: $r27 = interfaceinvoke r5.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r26) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1978 var990) ; Statement: $r14 := @caughtexception 
(assert (not (= var1978 null-var990)))
(define-const var3801 var3821 var3821-init) ; Statement: $r15 = new org.apache.ibatis.executor.ExecutorException 
(define-const var1285 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1285)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1285!1 String)
(assert (= var1285!1 ""))
(assert true)
(define-const var18 String (append/672562846 var1285!1 "Error creating lazy proxy.  Cause: ")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error creating lazy proxy.  Cause: ") 
(declare-const var1285!2 String)
(assert (= var1285!2 (str.++ var1285!1 "Error creating lazy proxy.  Cause: ")))
(assert true)
(define-const var3108 String (append/-1031950772 var18 (cast-from-var990-to-var2225 var1978))) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14) 
(declare-const var18!1 String)
(assert (str.prefixof var18 var18!1))
(assert true)
(define-const var2322 String (toString/-2075883882 var3108)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1707365385 var3801 var2322 (cast-from-var990-to-var1227 var1978))) ; Statement: specialinvoke $r15.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r14) 

(declare-const var3801!1 var3821)
(declare-const var2322!1 String)
(declare-const var1978!1 var990)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var1562-init=([], org.apache.ibatis.javassist.util.proxy.ProxyFactory), <init>/763893513=([org.apache.ibatis.javassist.util.proxy.ProxyFactory], void), setSuperclass/1176651182=([org.apache.ibatis.javassist.util.proxy.ProxyFactory, java.lang.Class], void), arr-ClassObject-init=([], java.lang.Class[]), var655_size/-959786421=([java.util.List], int), var655_toArray/-775711681=([java.util.List, java.lang.Object[]], java.lang.Object[]), cast-from-__Array__Int__ClassObject__-to-__Array__Int__var2225__=([java.lang.Class[]], java.lang.Object[]), cast-from-__Array__Int__var2225__-to-__Array__Int__ClassObject__=([java.lang.Object[]], java.lang.Class[]), arr-var2225-init=([], java.lang.Object[]), var3821-init=([], org.apache.ibatis.executor.ExecutorException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var990-to-var2225=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1707365385=([org.apache.ibatis.executor.ExecutorException, java.lang.String, java.lang.Throwable], void), cast-from-var990-to-var1227=([java.lang.Exception], java.lang.Throwable)}
; {var23=r1, var32=org.apache.ibatis.javassist.util.proxy.MethodHandler, var1563=r6, var655=java.util.List, var2534=r4, var389=r5, var1562=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var976=$r0, var636=$r2, var1894=java.lang.SecurityException, var1579=$r20, var3637=$i0, var3688=$r23, var2225=java.lang.Object, var1426=$r24, var1272=$r25, var3298=$i1, var68=$r26, var3239=$r27, var990=java.lang.Exception, var1978=$r14, var3821=org.apache.ibatis.executor.ExecutorException, var3801=$r15, var1285=$r16, var18=$r17, var3108=$r18, var2322=$r19, var1227=java.lang.Throwable}
; {r1=var23, org.apache.ibatis.javassist.util.proxy.MethodHandler=var32, r6=var1563, java.util.List=var655, r4=var2534, r5=var389, org.apache.ibatis.javassist.util.proxy.ProxyFactory=var1562, $r0=var976, $r2=var636, java.lang.SecurityException=var1894, $r20=var1579, $i0=var3637, $r23=var3688, java.lang.Object=var2225, $r24=var1426, $r25=var1272, $i1=var3298, $r26=var68, $r27=var3239, java.lang.Exception=var990, $r14=var1978, org.apache.ibatis.executor.ExecutorException=var3821, $r15=var3801, $r16=var1285, $r17=var18, $r18=var3108, $r19=var2322, java.lang.Throwable=var1227}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.Class;	r6 := @parameter1: org.apache.ibatis.javassist.util.proxy.MethodHandler;	r4 := @parameter2: java.util.List;	r5 := @parameter3: java.util.List;	$r0 = new org.apache.ibatis.javassist.util.proxy.ProxyFactory;	specialinvoke $r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: void <init>()>();	virtualinvoke $r0.<org.apache.ibatis.javassist.util.proxy.ProxyFactory: void setSuperclass(java.lang.Class)>(r1);	$r2 = newarray (java.lang.Class)[0];	$r20 := @caughtexception;	$i0 = interfaceinvoke r4.<java.util.List: int size()>();	$r23 = newarray (java.lang.Class)[$i0];	$r24 = interfaceinvoke r4.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r23);	$r25 = (java.lang.Class[]) $r24;	$i1 = interfaceinvoke r5.<java.util.List: int size()>();	$r26 = newarray (java.lang.Object)[$i1];	$r27 = interfaceinvoke r5.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r26);	$r14 := @caughtexception;	$r15 = new org.apache.ibatis.executor.ExecutorException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error creating lazy proxy.  Cause: ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r14);	throw $r15
;block_num 4