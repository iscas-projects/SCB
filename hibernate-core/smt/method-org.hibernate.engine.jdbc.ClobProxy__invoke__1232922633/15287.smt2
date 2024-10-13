(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1223 0)
(declare-sort var196 0)
(declare-sort var213 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var213) String)
(declare-fun getParameterCount/184216570 (var213) Int)
(declare-fun getLength/-1059239466 (var1223) Int)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-const null-var1223 var1223)
(declare-const null-var196 var196)
(declare-const null-var213 var213)
(declare-const null-__Array__Int__var196__ (Array Int var196))
(declare-const var3751 var1223) ; Statement: r12 := @this: org.hibernate.engine.jdbc.ClobProxy 
(assert (not (= var3751 null-var1223)))
(declare-const var3291 var196) ; Statement: r14 := @parameter0: java.lang.Object 
(assert (not (= var3291 null-var196)))
(declare-const var3354 var213) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var3354 null-var213)))
(declare-const var713 (Array Int var196)) ; Statement: r15 := @parameter2: java.lang.Object[] 
(assert (not (= var713 null-__Array__Int__var196__)))
(assert true)
(define-const var3505 String (getName/1227988463 var3354)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var2322 Int (getParameterCount/184216570 var3354)) ; Statement: i0 = virtualinvoke r0.<java.lang.reflect.Method: int getParameterCount()>() 
(define-const var189 String "length") ; Statement: $r2 = "length" 
(assert true)
(define-const var30 Bool (= var189 var3505)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = "getUnderlyingStream" 
(assert (not (= (ite var30 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: if i0 != 0 goto $r3 = "getUnderlyingStream" 
(assert (not (not (= var2322 0)))) ; Negate: Cond: i0 != 0  
(assert true)
(define-const var812 Int (getLength/-1059239466 var3751)) ; Statement: $l12 = virtualinvoke r12.<org.hibernate.engine.jdbc.ClobProxy: long getLength()>() 
(define-const var2528 Int (Int_valueOf/-1102777585 var812)) ; Statement: $r54 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l12) 
 ; Statement: return $r54 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), getParameterCount/184216570=([java.lang.reflect.Method], int), getLength/-1059239466=([org.hibernate.engine.jdbc.ClobProxy], long), Int_valueOf/-1102777585=([long], java.lang.Long)}
; {var1223=org.hibernate.engine.jdbc.ClobProxy, var3751=r12, var196=java.lang.Object, var3291=r14, var213=java.lang.reflect.Method, var3354=r0, var713=r15, var3505=r1, var2322=i0, var189=$r2, var30=$z0, var812=$l12, var2528=$r54}
; {org.hibernate.engine.jdbc.ClobProxy=var1223, r12=var3751, java.lang.Object=var196, r14=var3291, java.lang.reflect.Method=var213, r0=var3354, r15=var713, r1=var3505, i0=var2322, $r2=var189, $z0=var30, $l12=var812, $r54=var2528}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r12 := @this: org.hibernate.engine.jdbc.ClobProxy;	r14 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r15 := @parameter2: java.lang.Object[];	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	i0 = virtualinvoke r0.<java.lang.reflect.Method: int getParameterCount()>();	$r2 = "length";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = "getUnderlyingStream";	if i0 != 0 goto $r3 = "getUnderlyingStream";	$l12 = virtualinvoke r12.<org.hibernate.engine.jdbc.ClobProxy: long getLength()>();	$r54 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l12);	return $r54
;block_num 3