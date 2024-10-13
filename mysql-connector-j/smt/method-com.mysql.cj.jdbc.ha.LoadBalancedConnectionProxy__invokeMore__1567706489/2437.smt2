(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3792 0)
(declare-sort var1611 0)
(declare-sort var3984 0)
(declare-sort var2101 0)
(declare-sort var3299 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var3984) String)
(declare-fun isClosed/-562425441 (var2101) Bool)
(declare-fun cast-from-var3792-to-var2101 (var3792) var2101)
(declare-fun inTransaction/1580106258 (var3792) Bool)
(declare-const null-var3792 var3792)
(declare-const null-var1611 var1611)
(declare-const null-var3984 var3984)
(declare-const null-__Array__Int__var1611__ (Array Int var1611))
(declare-const null-var3299 var3299)
(declare-const var2398 var3792) ; Statement: r2 := @this: com.mysql.cj.jdbc.ha.LoadBalancedConnectionProxy 
(assert (not (= var2398 null-var3792)))
(declare-const var3557 var1611) ; Statement: r59 := @parameter0: java.lang.Object 
(assert (not (= var3557 null-var1611)))
(declare-const var2880 var3984) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var2880 null-var3984)))
(declare-const var2148 (Array Int var1611)) ; Statement: r3 := @parameter2: java.lang.Object[] 
(assert (not (= var2148 null-__Array__Int__var1611__)))
(assert true)
(define-const var1039 String (getName/1227988463 var2880)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var2288 Bool (isClosed/-562425441 (cast-from-var3792-to-var2101 var2398))) ; Statement: $z0 = r2.<com.mysql.cj.jdbc.ha.LoadBalancedConnectionProxy: boolean isClosed> 
 ; Statement: if $z0 == 0 goto $z11 = r2.<com.mysql.cj.jdbc.ha.LoadBalancedConnectionProxy: boolean inTransaction> 
(assert (= (ite var2288 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2640 Bool (inTransaction/1580106258 var2398)) ; Statement: $z11 = r2.<com.mysql.cj.jdbc.ha.LoadBalancedConnectionProxy: boolean inTransaction> 
 ; Statement: if $z11 != 0 goto r61 = null 
(assert (not (= (ite var2640 1 0) 0))) ; Cond: $z11 != 0 
(define-const var1593 var1611 null-var1611) ; Statement: r61 = null 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var545 var3299) ; Statement: $r32 := @caughtexception 
(assert (not (= var545 null-var3299)))
(assert true) ; Non Conditional
(define-const var2263 String "commit") ; Statement: $r33 = "commit" 
(assert true)
(define-const var3115 Bool (= var2263 var1039)) ; Statement: $z7 = virtualinvoke $r33.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z7 != 0 goto r2.<com.mysql.cj.jdbc.ha.LoadBalancedConnectionProxy: boolean inTransaction> = 0 
(assert (not (not (= (ite var3115 1 0) 0)))) ; Negate: Cond: $z7 != 0  
(define-const var3876 String "rollback") ; Statement: $r43 = "rollback" 
(assert true)
(define-const var3485 Bool (= var3876 var1039)) ; Statement: $z8 = virtualinvoke $r43.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z8 == 0 goto throw $r32 
(assert (= (ite var3485 1 0) 0)) ; Cond: $z8 == 0 
 ; Statement: throw $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), isClosed/-562425441=([com.mysql.cj.jdbc.ha.MultiHostConnectionProxy], boolean), cast-from-var3792-to-var2101=([com.mysql.cj.jdbc.ha.LoadBalancedConnectionProxy], com.mysql.cj.jdbc.ha.MultiHostConnectionProxy), inTransaction/1580106258=([com.mysql.cj.jdbc.ha.LoadBalancedConnectionProxy], boolean)}
; {var3792=com.mysql.cj.jdbc.ha.LoadBalancedConnectionProxy, var2398=r2, var1611=java.lang.Object, var3557=r59, var3984=java.lang.reflect.Method, var2880=r0, var2148=r3, var1039=r1, var2101=com.mysql.cj.jdbc.ha.MultiHostConnectionProxy, var2288=$z0, var2640=$z11, var1593=r61, var3299=java.lang.Throwable, var545=$r32, var2263=$r33, var3115=$z7, var3876=$r43, var3485=$z8}
; {com.mysql.cj.jdbc.ha.LoadBalancedConnectionProxy=var3792, r2=var2398, java.lang.Object=var1611, r59=var3557, java.lang.reflect.Method=var3984, r0=var2880, r3=var2148, r1=var1039, com.mysql.cj.jdbc.ha.MultiHostConnectionProxy=var2101, $z0=var2288, $z11=var2640, r61=var1593, java.lang.Throwable=var3299, $r32=var545, $r33=var2263, $z7=var3115, $r43=var3876, $z8=var3485}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r2 := @this: com.mysql.cj.jdbc.ha.LoadBalancedConnectionProxy;	r59 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r3 := @parameter2: java.lang.Object[];	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = r2.<com.mysql.cj.jdbc.ha.LoadBalancedConnectionProxy: boolean isClosed>;	if $z0 == 0 goto $z11 = r2.<com.mysql.cj.jdbc.ha.LoadBalancedConnectionProxy: boolean inTransaction>;	$z11 = r2.<com.mysql.cj.jdbc.ha.LoadBalancedConnectionProxy: boolean inTransaction>;	if $z11 != 0 goto r61 = null;	r61 = null;	$r32 := @caughtexception;	$r33 = "commit";	$z7 = virtualinvoke $r33.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z7 != 0 goto r2.<com.mysql.cj.jdbc.ha.LoadBalancedConnectionProxy: boolean inTransaction> = 0;	$r43 = "rollback";	$z8 = virtualinvoke $r43.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z8 == 0 goto throw $r32;	throw $r32
;block_num 7