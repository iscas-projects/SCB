(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3474 0)
(declare-sort var3286 0)
(declare-sort var2320 0)
(declare-sort var83 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var2320) String)
(declare-fun val$synchronization/1169949235 (var3474) var83)
(declare-fun var83_beforeCompletion/1742269816 (var83) void)
(declare-const null-var3474 var3474)
(declare-const null-var3286 var3286)
(declare-const null-var2320 var2320)
(declare-const null-__Array__Int__var3286__ (Array Int var3286))
(declare-const var2557 var3474) ; Statement: r7 := @this: org.hibernate.engine.transaction.jta.platform.internal.WebSphereExtendedJtaPlatform$TransactionManagerAdapter$TransactionAdapter$1 
(assert (not (= var2557 null-var3474)))
(declare-const var1273 var3286) ; Statement: r15 := @parameter0: java.lang.Object 
(assert (not (= var1273 null-var3286)))
(declare-const var1991 var2320) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var1991 null-var2320)))
(declare-const var2074 (Array Int var3286)) ; Statement: r11 := @parameter2: java.lang.Object[] 
(assert (not (= var2074 null-__Array__Int__var3286__)))
(define-const var117 String "afterCompletion") ; Statement: $r2 = "afterCompletion" 
(assert true)
(define-const var621 String (getName/1227988463 var1991)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var3994 Bool (= var117 var621)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r4 = "beforeCompletion" 
(assert (= (ite var3994 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2093 String "beforeCompletion") ; Statement: $r4 = "beforeCompletion" 
(assert true)
(define-const var2475 String (getName/1227988463 var1991)) ; Statement: $r3 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var400 Bool (= var2093 var2475)) ; Statement: $z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z1 == 0 goto $r6 = "toString" 
(assert (not (= (ite var400 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var589 var83 (val$synchronization/1169949235 var2557)) ; Statement: $r10 = r7.<org.hibernate.engine.transaction.jta.platform.internal.WebSphereExtendedJtaPlatform$TransactionManagerAdapter$TransactionAdapter$1: javax.transaction.Synchronization val$synchronization> 
;(assert (var83_beforeCompletion/1742269816 var589)) ; Statement: interfaceinvoke $r10.<javax.transaction.Synchronization: void beforeCompletion()>() 

(declare-const var589!1 var83)
 ; Statement: goto [?= return null] 
(assert true) ; Non Conditional
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), val$synchronization/1169949235=([org.hibernate.engine.transaction.jta.platform.internal.WebSphereExtendedJtaPlatform$TransactionManagerAdapter$TransactionAdapter$1], javax.transaction.Synchronization), var83_beforeCompletion/1742269816=([javax.transaction.Synchronization], void)}
; {var3474=org.hibernate.engine.transaction.jta.platform.internal.WebSphereExtendedJtaPlatform$TransactionManagerAdapter$TransactionAdapter$1, var2557=r7, var3286=java.lang.Object, var1273=r15, var2320=java.lang.reflect.Method, var1991=r0, var2074=r11, var117=$r2, var621=$r1, var3994=$z0, var2093=$r4, var2475=$r3, var400=$z1, var83=javax.transaction.Synchronization, var589=$r10}
; {org.hibernate.engine.transaction.jta.platform.internal.WebSphereExtendedJtaPlatform$TransactionManagerAdapter$TransactionAdapter$1=var3474, r7=var2557, java.lang.Object=var3286, r15=var1273, java.lang.reflect.Method=var2320, r0=var1991, r11=var2074, $r2=var117, $r1=var621, $z0=var3994, $r4=var2093, $r3=var2475, $z1=var400, javax.transaction.Synchronization=var83, $r10=var589}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r7 := @this: org.hibernate.engine.transaction.jta.platform.internal.WebSphereExtendedJtaPlatform$TransactionManagerAdapter$TransactionAdapter$1;	r15 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r11 := @parameter2: java.lang.Object[];	$r2 = "afterCompletion";	$r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r4 = "beforeCompletion";	$r4 = "beforeCompletion";	$r3 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z1 == 0 goto $r6 = "toString";	$r10 = r7.<org.hibernate.engine.transaction.jta.platform.internal.WebSphereExtendedJtaPlatform$TransactionManagerAdapter$TransactionAdapter$1: javax.transaction.Synchronization val$synchronization>;	interfaceinvoke $r10.<javax.transaction.Synchronization: void beforeCompletion()>();	goto [?= return null];	return null
;block_num 4