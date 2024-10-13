(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3673 0)
(declare-sort var3581 0)
(declare-sort var1221 0)
(declare-sort var490 0)
(declare-sort var2023 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var1221) String)
(declare-fun getTargetException/2075407118 (var490) var2023)
(declare-const null-var3673 var3673)
(declare-const null-var3581 var3581)
(declare-const null-var1221 var1221)
(declare-const null-__Array__Int__var3581__ (Array Int var3581))
(declare-const null-var490 var490)
(declare-const var2077 var3673) ; Statement: r3 := @this: org.hibernate.engine.jdbc.SerializableBlobProxy 
(assert (not (= var2077 null-var3673)))
(declare-const var2858 var3581) ; Statement: r16 := @parameter0: java.lang.Object 
(assert (not (= var2858 null-var3581)))
(declare-const var3136 var1221) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var3136 null-var1221)))
(declare-const var1666 (Array Int var3581)) ; Statement: r4 := @parameter2: java.lang.Object[] 
(assert (not (= var1666 null-__Array__Int__var3581__)))
(define-const var3451 String "getWrappedBlob") ; Statement: $r2 = "getWrappedBlob" 
(assert true)
(define-const var1245 String (getName/1227988463 var3136)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var614 Bool (= var3451 var1245)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r3.<org.hibernate.engine.jdbc.SerializableBlobProxy: java.sql.Blob getWrappedBlob()>() 
(assert (not (= (ite var614 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var843 var490) ; Statement: $r8 := @caughtexception 
(assert (not (= var843 null-var490)))
(assert true)
(define-const var237 var2023 (getTargetException/2075407118 var843)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.reflect.InvocationTargetException: java.lang.Throwable getTargetException()>() 
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), getTargetException/2075407118=([java.lang.reflect.InvocationTargetException], java.lang.Throwable)}
; {var3673=org.hibernate.engine.jdbc.SerializableBlobProxy, var2077=r3, var3581=java.lang.Object, var2858=r16, var1221=java.lang.reflect.Method, var3136=r0, var1666=r4, var3451=$r2, var1245=$r1, var614=$z0, var490=java.lang.reflect.InvocationTargetException, var843=$r8, var2023=java.lang.Throwable, var237=$r9}
; {org.hibernate.engine.jdbc.SerializableBlobProxy=var3673, r3=var2077, java.lang.Object=var3581, r16=var2858, java.lang.reflect.Method=var1221, r0=var3136, r4=var1666, $r2=var3451, $r1=var1245, $z0=var614, java.lang.reflect.InvocationTargetException=var490, $r8=var843, java.lang.Throwable=var2023, $r9=var237}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.hibernate.engine.jdbc.SerializableBlobProxy;	r16 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r4 := @parameter2: java.lang.Object[];	$r2 = "getWrappedBlob";	$r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r5 = virtualinvoke r3.<org.hibernate.engine.jdbc.SerializableBlobProxy: java.sql.Blob getWrappedBlob()>();	$r8 := @caughtexception;	$r9 = virtualinvoke $r8.<java.lang.reflect.InvocationTargetException: java.lang.Throwable getTargetException()>();	throw $r9
;block_num 2