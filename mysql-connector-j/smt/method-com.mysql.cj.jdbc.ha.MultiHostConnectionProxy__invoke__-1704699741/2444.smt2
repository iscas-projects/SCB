(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var379 0)
(declare-sort var3411 0)
(declare-sort var3315 0)
(declare-sort var1738 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var3315) String)
(declare-fun thisAsConnection/-562425441 (var379) var1738)
(declare-const null-var379 var379)
(declare-const null-var3411 var3411)
(declare-const null-var3315 var3315)
(declare-const null-__Array__Int__var3411__ (Array Int var3411))
(declare-const var1941 var379) ; Statement: r5 := @this: com.mysql.cj.jdbc.ha.MultiHostConnectionProxy 
(assert (not (= var1941 null-var379)))
(declare-const var1551 var3411) ; Statement: r11 := @parameter0: java.lang.Object 
(assert (not (= var1551 null-var3411)))
(declare-const var3472 var3315) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var3472 null-var3315)))
(declare-const var3364 (Array Int var3411)) ; Statement: r12 := @parameter2: java.lang.Object[] 
(assert (not (= var3364 null-__Array__Int__var3411__)))
(assert true)
(define-const var3026 String (getName/1227988463 var3472)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var1218 String "getMultiHostSafeProxy") ; Statement: $r2 = "getMultiHostSafeProxy" 
(assert true)
(define-const var2854 Bool (= var1218 var3026)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = "equals" 
(assert (not (= (ite var2854 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3016 var1738 (thisAsConnection/-562425441 var1941)) ; Statement: $r24 = r5.<com.mysql.cj.jdbc.ha.MultiHostConnectionProxy: com.mysql.cj.jdbc.JdbcConnection thisAsConnection> 
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), thisAsConnection/-562425441=([com.mysql.cj.jdbc.ha.MultiHostConnectionProxy], com.mysql.cj.jdbc.JdbcConnection)}
; {var379=com.mysql.cj.jdbc.ha.MultiHostConnectionProxy, var1941=r5, var3411=java.lang.Object, var1551=r11, var3315=java.lang.reflect.Method, var3472=r0, var3364=r12, var3026=r1, var1218=$r2, var2854=$z0, var1738=com.mysql.cj.jdbc.JdbcConnection, var3016=$r24}
; {com.mysql.cj.jdbc.ha.MultiHostConnectionProxy=var379, r5=var1941, java.lang.Object=var3411, r11=var1551, java.lang.reflect.Method=var3315, r0=var3472, r12=var3364, r1=var3026, $r2=var1218, $z0=var2854, com.mysql.cj.jdbc.JdbcConnection=var1738, $r24=var3016}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: com.mysql.cj.jdbc.ha.MultiHostConnectionProxy;	r11 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r12 := @parameter2: java.lang.Object[];	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$r2 = "getMultiHostSafeProxy";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = "equals";	$r24 = r5.<com.mysql.cj.jdbc.ha.MultiHostConnectionProxy: com.mysql.cj.jdbc.JdbcConnection thisAsConnection>;	return $r24
;block_num 2