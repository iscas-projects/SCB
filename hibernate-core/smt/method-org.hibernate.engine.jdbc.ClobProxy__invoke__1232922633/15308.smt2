(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2456 0)
(declare-sort var2523 0)
(declare-sort var3483 0)
(declare-sort var3742 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var3483) String)
(declare-fun getParameterCount/184216570 (var3483) Int)
(declare-fun getUnderlyingStream/1536319389 (var2456) var3742)
(declare-const null-var2456 var2456)
(declare-const null-var2523 var2523)
(declare-const null-var3483 var3483)
(declare-const null-__Array__Int__var2523__ (Array Int var2523))
(declare-const var2776 var2456) ; Statement: r12 := @this: org.hibernate.engine.jdbc.ClobProxy 
(assert (not (= var2776 null-var2456)))
(declare-const var1083 var2523) ; Statement: r14 := @parameter0: java.lang.Object 
(assert (not (= var1083 null-var2523)))
(declare-const var3976 var3483) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var3976 null-var3483)))
(declare-const var2414 (Array Int var2523)) ; Statement: r15 := @parameter2: java.lang.Object[] 
(assert (not (= var2414 null-__Array__Int__var2523__)))
(assert true)
(define-const var1278 String (getName/1227988463 var3976)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var1084 Int (getParameterCount/184216570 var3976)) ; Statement: i0 = virtualinvoke r0.<java.lang.reflect.Method: int getParameterCount()>() 
(define-const var246 String "length") ; Statement: $r2 = "length" 
(assert true)
(define-const var1107 Bool (= var246 var1278)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = "getUnderlyingStream" 
(assert (= (ite var1107 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1966 String "getUnderlyingStream") ; Statement: $r3 = "getUnderlyingStream" 
(assert true)
(define-const var1007 Bool (= var1966 var1278)) ; Statement: $z1 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z1 == 0 goto $r4 = "getAsciiStream" 
(assert (not (= (ite var1007 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var1187 var3742 (getUnderlyingStream/1536319389 var2776)) ; Statement: $r53 = virtualinvoke r12.<org.hibernate.engine.jdbc.ClobProxy: org.hibernate.engine.jdbc.CharacterStream getUnderlyingStream()>() 
 ; Statement: return $r53 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), getParameterCount/184216570=([java.lang.reflect.Method], int), getUnderlyingStream/1536319389=([org.hibernate.engine.jdbc.ClobProxy], org.hibernate.engine.jdbc.CharacterStream)}
; {var2456=org.hibernate.engine.jdbc.ClobProxy, var2776=r12, var2523=java.lang.Object, var1083=r14, var3483=java.lang.reflect.Method, var3976=r0, var2414=r15, var1278=r1, var1084=i0, var246=$r2, var1107=$z0, var1966=$r3, var1007=$z1, var3742=org.hibernate.engine.jdbc.CharacterStream, var1187=$r53}
; {org.hibernate.engine.jdbc.ClobProxy=var2456, r12=var2776, java.lang.Object=var2523, r14=var1083, java.lang.reflect.Method=var3483, r0=var3976, r15=var2414, r1=var1278, i0=var1084, $r2=var246, $z0=var1107, $r3=var1966, $z1=var1007, org.hibernate.engine.jdbc.CharacterStream=var3742, $r53=var1187}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r12 := @this: org.hibernate.engine.jdbc.ClobProxy;	r14 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r15 := @parameter2: java.lang.Object[];	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	i0 = virtualinvoke r0.<java.lang.reflect.Method: int getParameterCount()>();	$r2 = "length";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = "getUnderlyingStream";	$r3 = "getUnderlyingStream";	$z1 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z1 == 0 goto $r4 = "getAsciiStream";	$r53 = virtualinvoke r12.<org.hibernate.engine.jdbc.ClobProxy: org.hibernate.engine.jdbc.CharacterStream getUnderlyingStream()>();	return $r53
;block_num 3