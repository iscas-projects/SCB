(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2203 0)
(declare-sort var622 0)
(declare-sort var3193 0)
(declare-sort var1341 0)
(declare-sort var2080 0)
(declare-sort var3061 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1341-init () var1341)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun constructor/1700380021 (var2203) var2080)
(declare-fun getDeclaringClass/729915409 (var2080) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1292940450 (var1341 String var3193) void)
(declare-fun cast-from-var1341-to-var3061 (var1341) var3061)
(declare-const null-var2203 var2203)
(declare-const null-__Array__Int__var622__ (Array Int var622))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var3193 var3193)
(declare-const var3202 var2203) ; Statement: r0 := @this: org.hibernate.transform.AliasToBeanConstructorResultTransformer 
(assert (not (= var3202 null-var2203)))
(declare-const var3349 (Array Int var622)) ; Statement: r1 := @parameter0: java.lang.Object[] 
(assert (not (= var3349 null-__Array__Int__var622__)))
(declare-const var3735 (Array Int String)) ; Statement: r14 := @parameter1: java.lang.String[] 
(assert (not (= var3735 null-__Array__Int__String__)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2987 var3193) ; Statement: $r4 := @caughtexception 
(assert (not (= var2987 null-var3193)))
(define-const var1400 var1341 var1341-init) ; Statement: $r16 = new org.hibernate.QueryException 
(define-const var1381 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1381)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1381!1 String)
(assert (= var1381!1 ""))
(assert true)
(define-const var476 String (append/672562846 var1381!1 "could not instantiate class [")) ; Statement: $r10 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not instantiate class [") 
(declare-const var1381!2 String)
(assert (= var1381!2 (str.++ var1381!1 "could not instantiate class [")))
(define-const var1011 var2080 (constructor/1700380021 var3202)) ; Statement: $r7 = r0.<org.hibernate.transform.AliasToBeanConstructorResultTransformer: java.lang.reflect.Constructor constructor> 
(assert true)
(define-const var844 ClassObject (getDeclaringClass/729915409 var1011)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.reflect.Constructor: java.lang.Class getDeclaringClass()>() 
(assert true)
(define-const var2426 String (getName/-1958580599 var844)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3530 String (append/672562846 var476 var2426)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var476!1 String)
(assert (= var476!1 (str.++ var476 var2426)))
(assert true)
(define-const var169 String (append/672562846 var3530 "] from tuple")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] from tuple") 
(declare-const var3530!1 String)
(assert (= var3530!1 (str.++ var3530 "] from tuple")))
(assert true)
(define-const var433 String (toString/-2075883882 var169)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1292940450 var1400 var433 var2987)) ; Statement: specialinvoke $r16.<org.hibernate.QueryException: void <init>(java.lang.String,java.lang.Exception)>($r13, $r4) 

(declare-const var1400!1 var1341)
(declare-const var433!1 String)
(declare-const var2987!1 var3193)
(define-const var587 var3061 (cast-from-var1341-to-var3061 var1400!1)) ; Statement: $r17 = (java.lang.Throwable) $r16 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var1341-init=([], org.hibernate.QueryException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), constructor/1700380021=([org.hibernate.transform.AliasToBeanConstructorResultTransformer], java.lang.reflect.Constructor), getDeclaringClass/729915409=([java.lang.reflect.Constructor], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1292940450=([org.hibernate.QueryException, java.lang.String, java.lang.Exception], void), cast-from-var1341-to-var3061=([org.hibernate.QueryException], java.lang.Throwable)}
; {var2203=org.hibernate.transform.AliasToBeanConstructorResultTransformer, var3202=r0, var622=java.lang.Object, var3349=r1, var3735=r14, var3193=java.lang.Exception, var2987=$r4, var1341=org.hibernate.QueryException, var1400=$r16, var1381=$r15, var476=$r10, var2080=java.lang.reflect.Constructor, var1011=$r7, var844=$r8, var2426=$r9, var3530=$r11, var169=$r12, var433=$r13, var3061=java.lang.Throwable, var587=$r17}
; {org.hibernate.transform.AliasToBeanConstructorResultTransformer=var2203, r0=var3202, java.lang.Object=var622, r1=var3349, r14=var3735, java.lang.Exception=var3193, $r4=var2987, org.hibernate.QueryException=var1341, $r16=var1400, $r15=var1381, $r10=var476, java.lang.reflect.Constructor=var2080, $r7=var1011, $r8=var844, $r9=var2426, $r11=var3530, $r12=var169, $r13=var433, java.lang.Throwable=var3061, $r17=var587}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.transform.AliasToBeanConstructorResultTransformer;	r1 := @parameter0: java.lang.Object[];	r14 := @parameter1: java.lang.String[];	$r4 := @caughtexception;	$r16 = new org.hibernate.QueryException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not instantiate class [");	$r7 = r0.<org.hibernate.transform.AliasToBeanConstructorResultTransformer: java.lang.reflect.Constructor constructor>;	$r8 = virtualinvoke $r7.<java.lang.reflect.Constructor: java.lang.Class getDeclaringClass()>();	$r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] from tuple");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<org.hibernate.QueryException: void <init>(java.lang.String,java.lang.Exception)>($r13, $r4);	$r17 = (java.lang.Throwable) $r16;	throw $r17
;block_num 2