(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2615 0)
(declare-sort var629 0)
(declare-sort var513 0)
(declare-sort var1172 0)
(declare-sort var1788 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var513) String)
(declare-fun getTargetException/2075407118 (var1172) var1788)
(declare-const null-var2615 var2615)
(declare-const null-var629 var629)
(declare-const null-var513 var513)
(declare-const null-__Array__Int__var629__ (Array Int var629))
(declare-const null-var1172 var1172)
(declare-const var951 var2615) ; Statement: r3 := @this: org.hibernate.engine.jdbc.SerializableClobProxy 
(assert (not (= var951 null-var2615)))
(declare-const var308 var629) ; Statement: r16 := @parameter0: java.lang.Object 
(assert (not (= var308 null-var629)))
(declare-const var1743 var513) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var1743 null-var513)))
(declare-const var3824 (Array Int var629)) ; Statement: r4 := @parameter2: java.lang.Object[] 
(assert (not (= var3824 null-__Array__Int__var629__)))
(define-const var3236 String "getWrappedClob") ; Statement: $r2 = "getWrappedClob" 
(assert true)
(define-const var3473 String (getName/1227988463 var1743)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var1649 Bool (= var3236 var3473)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r3.<org.hibernate.engine.jdbc.SerializableClobProxy: java.sql.Clob getWrappedClob()>() 
(assert (not (= (ite var1649 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var835 var1172) ; Statement: $r8 := @caughtexception 
(assert (not (= var835 null-var1172)))
(assert true)
(define-const var1317 var1788 (getTargetException/2075407118 var835)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.reflect.InvocationTargetException: java.lang.Throwable getTargetException()>() 
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), getTargetException/2075407118=([java.lang.reflect.InvocationTargetException], java.lang.Throwable)}
; {var2615=org.hibernate.engine.jdbc.SerializableClobProxy, var951=r3, var629=java.lang.Object, var308=r16, var513=java.lang.reflect.Method, var1743=r0, var3824=r4, var3236=$r2, var3473=$r1, var1649=$z0, var1172=java.lang.reflect.InvocationTargetException, var835=$r8, var1788=java.lang.Throwable, var1317=$r9}
; {org.hibernate.engine.jdbc.SerializableClobProxy=var2615, r3=var951, java.lang.Object=var629, r16=var308, java.lang.reflect.Method=var513, r0=var1743, r4=var3824, $r2=var3236, $r1=var3473, $z0=var1649, java.lang.reflect.InvocationTargetException=var1172, $r8=var835, java.lang.Throwable=var1788, $r9=var1317}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.hibernate.engine.jdbc.SerializableClobProxy;	r16 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r4 := @parameter2: java.lang.Object[];	$r2 = "getWrappedClob";	$r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r5 = virtualinvoke r3.<org.hibernate.engine.jdbc.SerializableClobProxy: java.sql.Clob getWrappedClob()>();	$r8 := @caughtexception;	$r9 = virtualinvoke $r8.<java.lang.reflect.InvocationTargetException: java.lang.Throwable getTargetException()>();	throw $r9
;block_num 2