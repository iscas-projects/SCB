(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3731 0)
(declare-sort var3657 0)
(declare-sort var2859 0)
(declare-sort var3998 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var2859) String)
(declare-fun equals/-1650223740 (var3657 var3657) Bool)
(declare-fun cast-from-var3731-to-var3657 (var3731) var3657)
(declare-fun var3998_valueOf/1602327315 (Bool) var3998)
(declare-const null-var3731 var3731)
(declare-const null-var3657 var3657)
(declare-const null-var2859 var2859)
(declare-const null-__Array__Int__var3657__ (Array Int var3657))
(declare-const var1994 var3731) ; Statement: r3 := @this: com.mysql.cj.jdbc.WrapperBase$ConnectionErrorFiringInvocationHandler 
(assert (not (= var1994 null-var3731)))
(declare-const var1115 var3657) ; Statement: r14 := @parameter0: java.lang.Object 
(assert (not (= var1115 null-var3657)))
(declare-const var3313 var2859) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var3313 null-var2859)))
(declare-const var2854 (Array Int var3657)) ; Statement: r4 := @parameter2: java.lang.Object[] 
(assert (not (= var2854 null-__Array__Int__var3657__)))
(define-const var235 String "equals") ; Statement: $r2 = "equals" 
(assert true)
(define-const var2247 String (getName/1227988463 var3313)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var1834 Bool (= var235 var2247)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto r15 = null 
(assert (not (= (ite var1834 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3541 var3657 (select var2854 0)) ; Statement: $r7 = r4[0] 
(assert true)
(define-const var3340 Bool (equals/-1650223740 var3541 (cast-from-var3731-to-var3657 var1994))) ; Statement: $z1 = virtualinvoke $r7.<java.lang.Object: boolean equals(java.lang.Object)>(r3) 
(define-const var2519 var3998 (var3998_valueOf/1602327315 var3340)) ; Statement: $r8 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z1) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-var3731-to-var3657=([com.mysql.cj.jdbc.WrapperBase$ConnectionErrorFiringInvocationHandler], java.lang.Object), var3998_valueOf/1602327315=([boolean], java.lang.Boolean)}
; {var3731=com.mysql.cj.jdbc.WrapperBase$ConnectionErrorFiringInvocationHandler, var1994=r3, var3657=java.lang.Object, var1115=r14, var2859=java.lang.reflect.Method, var3313=r0, var2854=r4, var235=$r2, var2247=$r1, var1834=$z0, var3541=$r7, var3340=$z1, var3998=java.lang.Boolean, var2519=$r8}
; {com.mysql.cj.jdbc.WrapperBase$ConnectionErrorFiringInvocationHandler=var3731, r3=var1994, java.lang.Object=var3657, r14=var1115, java.lang.reflect.Method=var2859, r0=var3313, r4=var2854, $r2=var235, $r1=var2247, $z0=var1834, $r7=var3541, $z1=var3340, java.lang.Boolean=var3998, $r8=var2519}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: com.mysql.cj.jdbc.WrapperBase$ConnectionErrorFiringInvocationHandler;	r14 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r4 := @parameter2: java.lang.Object[];	$r2 = "equals";	$r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto r15 = null;	$r7 = r4[0];	$z1 = virtualinvoke $r7.<java.lang.Object: boolean equals(java.lang.Object)>(r3);	$r8 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z1);	return $r8
;block_num 2