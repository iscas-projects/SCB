(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var17 0)
(declare-sort var1492 0)
(declare-sort var363 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var363) String)
(declare-const null-var17 var17)
(declare-const null-var1492 var1492)
(declare-const null-var363 var363)
(declare-const null-__Array__Int__var1492__ (Array Int var1492))
(declare-const var2694 var17) ; Statement: r7 := @this: org.hibernate.engine.transaction.jta.platform.internal.WebSphereExtendedJtaPlatform$TransactionManagerAdapter$TransactionAdapter$1 
(assert (not (= var2694 null-var17)))
(declare-const var6 var1492) ; Statement: r15 := @parameter0: java.lang.Object 
(assert (not (= var6 null-var1492)))
(declare-const var2080 var363) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var2080 null-var363)))
(declare-const var3796 (Array Int var1492)) ; Statement: r11 := @parameter2: java.lang.Object[] 
(assert (not (= var3796 null-__Array__Int__var1492__)))
(define-const var2368 String "afterCompletion") ; Statement: $r2 = "afterCompletion" 
(assert true)
(define-const var157 String (getName/1227988463 var2080)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var848 Bool (= var2368 var157)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r4 = "beforeCompletion" 
(assert (= (ite var848 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1459 String "beforeCompletion") ; Statement: $r4 = "beforeCompletion" 
(assert true)
(define-const var533 String (getName/1227988463 var2080)) ; Statement: $r3 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var1630 Bool (= var1459 var533)) ; Statement: $z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z1 == 0 goto $r6 = "toString" 
(assert (= (ite var1630 1 0) 0)) ; Cond: $z1 == 0 
(define-const var649 String "toString") ; Statement: $r6 = "toString" 
(assert true)
(define-const var1095 String (getName/1227988463 var2080)) ; Statement: $r5 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var869 Bool (= var649 var1095)) ; Statement: $z2 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>($r5) 
 ; Statement: if $z2 == 0 goto return null 
(assert (= (ite var869 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String)}
; {var17=org.hibernate.engine.transaction.jta.platform.internal.WebSphereExtendedJtaPlatform$TransactionManagerAdapter$TransactionAdapter$1, var2694=r7, var1492=java.lang.Object, var6=r15, var363=java.lang.reflect.Method, var2080=r0, var3796=r11, var2368=$r2, var157=$r1, var848=$z0, var1459=$r4, var533=$r3, var1630=$z1, var649=$r6, var1095=$r5, var869=$z2}
; {org.hibernate.engine.transaction.jta.platform.internal.WebSphereExtendedJtaPlatform$TransactionManagerAdapter$TransactionAdapter$1=var17, r7=var2694, java.lang.Object=var1492, r15=var6, java.lang.reflect.Method=var363, r0=var2080, r11=var3796, $r2=var2368, $r1=var157, $z0=var848, $r4=var1459, $r3=var533, $z1=var1630, $r6=var649, $r5=var1095, $z2=var869}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 3}
;stmts r7 := @this: org.hibernate.engine.transaction.jta.platform.internal.WebSphereExtendedJtaPlatform$TransactionManagerAdapter$TransactionAdapter$1;	r15 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r11 := @parameter2: java.lang.Object[];	$r2 = "afterCompletion";	$r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r4 = "beforeCompletion";	$r4 = "beforeCompletion";	$r3 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z1 == 0 goto $r6 = "toString";	$r6 = "toString";	$r5 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z2 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>($r5);	if $z2 == 0 goto return null;	return null
;block_num 4