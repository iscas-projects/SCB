(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var297 0)
(declare-sort var809 0)
(declare-sort var1283 0)
(declare-sort var3988 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var1283) String)
(declare-fun cast-from-var809-to-var3988 (var809) var3988)
(declare-fun explicitlyReadOnly/-631504722 (var297) var3988)
(declare-fun failoverReadOnly/-631504722 (var297) Bool)
(declare-fun connectedToSecondaryHost/1765536413 (var297) Bool)
(declare-const null-var297 var297)
(declare-const null-var809 var809)
(declare-const null-var1283 var1283)
(declare-const null-__Array__Int__var809__ (Array Int var809))
(declare-const var2172 var297) ; Statement: r3 := @this: com.mysql.cj.jdbc.ha.FailoverConnectionProxy 
(assert (not (= var2172 null-var297)))
(declare-const var353 var809) ; Statement: r20 := @parameter0: java.lang.Object 
(assert (not (= var353 null-var809)))
(declare-const var3603 var1283) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var3603 null-var1283)))
(declare-const var1088 (Array Int var809)) ; Statement: r4 := @parameter2: java.lang.Object[] 
(assert (not (= var1088 null-__Array__Int__var809__)))
(assert true)
(define-const var523 String (getName/1227988463 var3603)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var1298 String "setReadOnly") ; Statement: $r2 = "setReadOnly" 
(assert true)
(define-const var2228 Bool (= var1298 var523)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $z11 = r3.<com.mysql.cj.jdbc.ha.FailoverConnectionProxy: boolean isClosed> 
(assert (not (= (ite var2228 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1551 var809 (select var1088 0)) ; Statement: $r17 = r4[0] 
(define-const var1890 var3988 (cast-from-var809-to-var3988 var1551)) ; Statement: $r18 = (java.lang.Boolean) $r17 
(declare-const var2172!1 var297)
(assert (not (= var2172!1 null-var297)))
(assert (= (explicitlyReadOnly/-631504722 var2172!1) var1890)) ; Statement: r3.<com.mysql.cj.jdbc.ha.FailoverConnectionProxy: java.lang.Boolean explicitlyReadOnly> = $r18 
(define-const var3349 Bool (failoverReadOnly/-631504722 var2172!1)) ; Statement: $z9 = r3.<com.mysql.cj.jdbc.ha.FailoverConnectionProxy: boolean failoverReadOnly> 
 ; Statement: if $z9 == 0 goto $z11 = r3.<com.mysql.cj.jdbc.ha.FailoverConnectionProxy: boolean isClosed> 
(assert (not (= (ite var3349 1 0) 0))) ; Negate: Cond: $z9 == 0  
(assert true)
(define-const var3651 Bool (connectedToSecondaryHost/1765536413 var2172!1)) ; Statement: $z10 = virtualinvoke r3.<com.mysql.cj.jdbc.ha.FailoverConnectionProxy: boolean connectedToSecondaryHost()>() 
 ; Statement: if $z10 == 0 goto $z11 = r3.<com.mysql.cj.jdbc.ha.FailoverConnectionProxy: boolean isClosed> 
(assert (not (= (ite var3651 1 0) 0))) ; Negate: Cond: $z10 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), cast-from-var809-to-var3988=([java.lang.Object], java.lang.Boolean), explicitlyReadOnly/-631504722=([com.mysql.cj.jdbc.ha.FailoverConnectionProxy], java.lang.Boolean), failoverReadOnly/-631504722=([com.mysql.cj.jdbc.ha.FailoverConnectionProxy], boolean), connectedToSecondaryHost/1765536413=([com.mysql.cj.jdbc.ha.FailoverConnectionProxy], boolean)}
; {var297=com.mysql.cj.jdbc.ha.FailoverConnectionProxy, var2172=r3, var809=java.lang.Object, var353=r20, var1283=java.lang.reflect.Method, var3603=r0, var1088=r4, var523=r1, var1298=$r2, var2228=$z0, var1551=$r17, var3988=java.lang.Boolean, var1890=$r18, var3349=$z9, var3651=$z10}
; {com.mysql.cj.jdbc.ha.FailoverConnectionProxy=var297, r3=var2172, java.lang.Object=var809, r20=var353, java.lang.reflect.Method=var1283, r0=var3603, r4=var1088, r1=var523, $r2=var1298, $z0=var2228, $r17=var1551, java.lang.Boolean=var3988, $r18=var1890, $z9=var3349, $z10=var3651}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: com.mysql.cj.jdbc.ha.FailoverConnectionProxy;	r20 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r4 := @parameter2: java.lang.Object[];	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$r2 = "setReadOnly";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $z11 = r3.<com.mysql.cj.jdbc.ha.FailoverConnectionProxy: boolean isClosed>;	$r17 = r4[0];	$r18 = (java.lang.Boolean) $r17;	r3.<com.mysql.cj.jdbc.ha.FailoverConnectionProxy: java.lang.Boolean explicitlyReadOnly> = $r18;	$z9 = r3.<com.mysql.cj.jdbc.ha.FailoverConnectionProxy: boolean failoverReadOnly>;	if $z9 == 0 goto $z11 = r3.<com.mysql.cj.jdbc.ha.FailoverConnectionProxy: boolean isClosed>;	$z10 = virtualinvoke r3.<com.mysql.cj.jdbc.ha.FailoverConnectionProxy: boolean connectedToSecondaryHost()>();	if $z10 == 0 goto $z11 = r3.<com.mysql.cj.jdbc.ha.FailoverConnectionProxy: boolean isClosed>;	return null
;block_num 4