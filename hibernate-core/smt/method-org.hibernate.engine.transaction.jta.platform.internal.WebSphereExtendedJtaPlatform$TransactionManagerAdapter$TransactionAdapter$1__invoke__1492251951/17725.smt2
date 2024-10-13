(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1920 0)
(declare-sort var941 0)
(declare-sort var1201 0)
(declare-sort var1657 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var1201) String)
(declare-fun val$synchronization/1169949235 (var1920) var1657)
(declare-fun toString/-522406933 (var941) String)
(declare-fun cast-from-var1657-to-var941 (var1657) var941)
(declare-const null-var1920 var1920)
(declare-const null-var941 var941)
(declare-const null-var1201 var1201)
(declare-const null-__Array__Int__var941__ (Array Int var941))
(declare-const var2834 var1920) ; Statement: r7 := @this: org.hibernate.engine.transaction.jta.platform.internal.WebSphereExtendedJtaPlatform$TransactionManagerAdapter$TransactionAdapter$1 
(assert (not (= var2834 null-var1920)))
(declare-const var2535 var941) ; Statement: r15 := @parameter0: java.lang.Object 
(assert (not (= var2535 null-var941)))
(declare-const var3275 var1201) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var3275 null-var1201)))
(declare-const var1985 (Array Int var941)) ; Statement: r11 := @parameter2: java.lang.Object[] 
(assert (not (= var1985 null-__Array__Int__var941__)))
(define-const var3526 String "afterCompletion") ; Statement: $r2 = "afterCompletion" 
(assert true)
(define-const var1894 String (getName/1227988463 var3275)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var3944 Bool (= var3526 var1894)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r4 = "beforeCompletion" 
(assert (= (ite var3944 1 0) 0)) ; Cond: $z0 == 0 
(define-const var831 String "beforeCompletion") ; Statement: $r4 = "beforeCompletion" 
(assert true)
(define-const var3163 String (getName/1227988463 var3275)) ; Statement: $r3 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var2007 Bool (= var831 var3163)) ; Statement: $z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z1 == 0 goto $r6 = "toString" 
(assert (= (ite var2007 1 0) 0)) ; Cond: $z1 == 0 
(define-const var172 String "toString") ; Statement: $r6 = "toString" 
(assert true)
(define-const var1639 String (getName/1227988463 var3275)) ; Statement: $r5 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var1061 Bool (= var172 var1639)) ; Statement: $z2 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>($r5) 
 ; Statement: if $z2 == 0 goto return null 
(assert (not (= (ite var1061 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var389 var1657 (val$synchronization/1169949235 var2834)) ; Statement: $r8 = r7.<org.hibernate.engine.transaction.jta.platform.internal.WebSphereExtendedJtaPlatform$TransactionManagerAdapter$TransactionAdapter$1: javax.transaction.Synchronization val$synchronization> 
(assert true)
(define-const var580 String (toString/-522406933 (cast-from-var1657-to-var941 var389))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Object: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), val$synchronization/1169949235=([org.hibernate.engine.transaction.jta.platform.internal.WebSphereExtendedJtaPlatform$TransactionManagerAdapter$TransactionAdapter$1], javax.transaction.Synchronization), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1657-to-var941=([javax.transaction.Synchronization], java.lang.Object)}
; {var1920=org.hibernate.engine.transaction.jta.platform.internal.WebSphereExtendedJtaPlatform$TransactionManagerAdapter$TransactionAdapter$1, var2834=r7, var941=java.lang.Object, var2535=r15, var1201=java.lang.reflect.Method, var3275=r0, var1985=r11, var3526=$r2, var1894=$r1, var3944=$z0, var831=$r4, var3163=$r3, var2007=$z1, var172=$r6, var1639=$r5, var1061=$z2, var1657=javax.transaction.Synchronization, var389=$r8, var580=$r9}
; {org.hibernate.engine.transaction.jta.platform.internal.WebSphereExtendedJtaPlatform$TransactionManagerAdapter$TransactionAdapter$1=var1920, r7=var2834, java.lang.Object=var941, r15=var2535, java.lang.reflect.Method=var1201, r0=var3275, r11=var1985, $r2=var3526, $r1=var1894, $z0=var3944, $r4=var831, $r3=var3163, $z1=var2007, $r6=var172, $r5=var1639, $z2=var1061, javax.transaction.Synchronization=var1657, $r8=var389, $r9=var580}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 3}
;stmts r7 := @this: org.hibernate.engine.transaction.jta.platform.internal.WebSphereExtendedJtaPlatform$TransactionManagerAdapter$TransactionAdapter$1;	r15 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r11 := @parameter2: java.lang.Object[];	$r2 = "afterCompletion";	$r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r4 = "beforeCompletion";	$r4 = "beforeCompletion";	$r3 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z1 == 0 goto $r6 = "toString";	$r6 = "toString";	$r5 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z2 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>($r5);	if $z2 == 0 goto return null;	$r8 = r7.<org.hibernate.engine.transaction.jta.platform.internal.WebSphereExtendedJtaPlatform$TransactionManagerAdapter$TransactionAdapter$1: javax.transaction.Synchronization val$synchronization>;	$r9 = virtualinvoke $r8.<java.lang.Object: java.lang.String toString()>();	return $r9
;block_num 4