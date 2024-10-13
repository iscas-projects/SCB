(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2478 0)
(declare-sort var79 0)
(declare-sort var2165 0)
(declare-sort var2647 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var2165) String)
(declare-fun getWrappedClob/1430976714 (var2478) var2647)
(declare-const null-var2478 var2478)
(declare-const null-var79 var79)
(declare-const null-var2165 var2165)
(declare-const null-__Array__Int__var79__ (Array Int var79))
(declare-const var3113 var2478) ; Statement: r3 := @this: org.hibernate.engine.jdbc.SerializableClobProxy 
(assert (not (= var3113 null-var2478)))
(declare-const var1627 var79) ; Statement: r16 := @parameter0: java.lang.Object 
(assert (not (= var1627 null-var79)))
(declare-const var2783 var2165) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var2783 null-var2165)))
(declare-const var3336 (Array Int var79)) ; Statement: r4 := @parameter2: java.lang.Object[] 
(assert (not (= var3336 null-__Array__Int__var79__)))
(define-const var3198 String "getWrappedClob") ; Statement: $r2 = "getWrappedClob" 
(assert true)
(define-const var1208 String (getName/1227988463 var2783)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var2604 Bool (= var3198 var1208)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r3.<org.hibernate.engine.jdbc.SerializableClobProxy: java.sql.Clob getWrappedClob()>() 
(assert (not (= (ite var2604 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2946 var2647 (getWrappedClob/1430976714 var3113)) ; Statement: $r7 = virtualinvoke r3.<org.hibernate.engine.jdbc.SerializableClobProxy: java.sql.Clob getWrappedClob()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), getWrappedClob/1430976714=([org.hibernate.engine.jdbc.SerializableClobProxy], java.sql.Clob)}
; {var2478=org.hibernate.engine.jdbc.SerializableClobProxy, var3113=r3, var79=java.lang.Object, var1627=r16, var2165=java.lang.reflect.Method, var2783=r0, var3336=r4, var3198=$r2, var1208=$r1, var2604=$z0, var2647=java.sql.Clob, var2946=$r7}
; {org.hibernate.engine.jdbc.SerializableClobProxy=var2478, r3=var3113, java.lang.Object=var79, r16=var1627, java.lang.reflect.Method=var2165, r0=var2783, r4=var3336, $r2=var3198, $r1=var1208, $z0=var2604, java.sql.Clob=var2647, $r7=var2946}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.hibernate.engine.jdbc.SerializableClobProxy;	r16 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r4 := @parameter2: java.lang.Object[];	$r2 = "getWrappedClob";	$r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r5 = virtualinvoke r3.<org.hibernate.engine.jdbc.SerializableClobProxy: java.sql.Clob getWrappedClob()>();	$r7 = virtualinvoke r3.<org.hibernate.engine.jdbc.SerializableClobProxy: java.sql.Clob getWrappedClob()>();	return $r7
;block_num 2