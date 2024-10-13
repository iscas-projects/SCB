(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2467 0)
(declare-sort var3099 0)
(declare-sort var1381 0)
(declare-sort var1594 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var1381) String)
(declare-fun equals/-1650223740 (var3099 var3099) Bool)
(declare-fun cast-from-var2467-to-var3099 (var2467) var3099)
(declare-fun var1594_valueOf/1602327315 (Bool) var1594)
(declare-const null-var2467 var2467)
(declare-const null-var3099 var3099)
(declare-const null-var1381 var1381)
(declare-const null-__Array__Int__var3099__ (Array Int var3099))
(declare-const var2622 var2467) ; Statement: r3 := @this: com.mysql.cj.jdbc.ha.MultiHostConnectionProxy$JdbcInterfaceProxy 
(assert (not (= var2622 null-var2467)))
(declare-const var1759 var3099) ; Statement: r19 := @parameter0: java.lang.Object 
(assert (not (= var1759 null-var3099)))
(declare-const var1746 var1381) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var1746 null-var1381)))
(declare-const var1318 (Array Int var3099)) ; Statement: r6 := @parameter2: java.lang.Object[] 
(assert (not (= var1318 null-__Array__Int__var3099__)))
(define-const var3953 String "equals") ; Statement: $r2 = "equals" 
(assert true)
(define-const var2593 String (getName/1227988463 var1746)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var80 Bool (= var3953 var2593)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r4 = r3.<com.mysql.cj.jdbc.ha.MultiHostConnectionProxy$JdbcInterfaceProxy: com.mysql.cj.jdbc.ha.MultiHostConnectionProxy this$0> 
(assert (not (= (ite var80 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3457 var3099 (select var1318 0)) ; Statement: $r12 = r6[0] 
(assert true)
(define-const var238 Bool (equals/-1650223740 var3457 (cast-from-var2467-to-var3099 var2622))) ; Statement: $z1 = virtualinvoke $r12.<java.lang.Object: boolean equals(java.lang.Object)>(r3) 
(define-const var750 var1594 (var1594_valueOf/1602327315 var238)) ; Statement: $r13 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z1) 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-var2467-to-var3099=([com.mysql.cj.jdbc.ha.MultiHostConnectionProxy$JdbcInterfaceProxy], java.lang.Object), var1594_valueOf/1602327315=([boolean], java.lang.Boolean)}
; {var2467=com.mysql.cj.jdbc.ha.MultiHostConnectionProxy$JdbcInterfaceProxy, var2622=r3, var3099=java.lang.Object, var1759=r19, var1381=java.lang.reflect.Method, var1746=r0, var1318=r6, var3953=$r2, var2593=$r1, var80=$z0, var3457=$r12, var238=$z1, var1594=java.lang.Boolean, var750=$r13}
; {com.mysql.cj.jdbc.ha.MultiHostConnectionProxy$JdbcInterfaceProxy=var2467, r3=var2622, java.lang.Object=var3099, r19=var1759, java.lang.reflect.Method=var1381, r0=var1746, r6=var1318, $r2=var3953, $r1=var2593, $z0=var80, $r12=var3457, $z1=var238, java.lang.Boolean=var1594, $r13=var750}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: com.mysql.cj.jdbc.ha.MultiHostConnectionProxy$JdbcInterfaceProxy;	r19 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r6 := @parameter2: java.lang.Object[];	$r2 = "equals";	$r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r4 = r3.<com.mysql.cj.jdbc.ha.MultiHostConnectionProxy$JdbcInterfaceProxy: com.mysql.cj.jdbc.ha.MultiHostConnectionProxy this$0>;	$r12 = r6[0];	$z1 = virtualinvoke $r12.<java.lang.Object: boolean equals(java.lang.Object)>(r3);	$r13 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z1);	return $r13
;block_num 2