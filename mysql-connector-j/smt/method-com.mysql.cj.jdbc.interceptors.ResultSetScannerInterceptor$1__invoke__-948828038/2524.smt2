(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2852 0)
(declare-sort var3872 0)
(declare-sort var611 0)
(declare-sort var2758 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var611) String)
(declare-fun equals/-1650223740 (var3872 var3872) Bool)
(declare-fun cast-from-var2852-to-var3872 (var2852) var3872)
(declare-fun var2758_valueOf/1602327315 (Bool) var2758)
(declare-const null-var2852 var2852)
(declare-const null-var3872 var3872)
(declare-const null-var611 var611)
(declare-const null-__Array__Int__var3872__ (Array Int var3872))
(declare-const var2922 var2852) ; Statement: r3 := @this: com.mysql.cj.jdbc.interceptors.ResultSetScannerInterceptor$1 
(assert (not (= var2922 null-var2852)))
(declare-const var664 var3872) ; Statement: r15 := @parameter0: java.lang.Object 
(assert (not (= var664 null-var3872)))
(declare-const var2469 var611) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var2469 null-var611)))
(declare-const var3603 (Array Int var3872)) ; Statement: r4 := @parameter2: java.lang.Object[] 
(assert (not (= var3603 null-__Array__Int__var3872__)))
(define-const var3656 String "equals") ; Statement: $r2 = "equals" 
(assert true)
(define-const var756 String (getName/1227988463 var2469)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var3341 Bool (= var3656 var756)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r5 = r3.<com.mysql.cj.jdbc.interceptors.ResultSetScannerInterceptor$1: com.mysql.cj.protocol.Resultset val$finalResultSet> 
(assert (not (= (ite var3341 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1307 var3872 (select var3603 0)) ; Statement: $r13 = r4[0] 
(assert true)
(define-const var2375 Bool (equals/-1650223740 var1307 (cast-from-var2852-to-var3872 var2922))) ; Statement: $z5 = virtualinvoke $r13.<java.lang.Object: boolean equals(java.lang.Object)>(r3) 
(define-const var813 var2758 (var2758_valueOf/1602327315 var2375)) ; Statement: $r14 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z5) 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-var2852-to-var3872=([com.mysql.cj.jdbc.interceptors.ResultSetScannerInterceptor$1], java.lang.Object), var2758_valueOf/1602327315=([boolean], java.lang.Boolean)}
; {var2852=com.mysql.cj.jdbc.interceptors.ResultSetScannerInterceptor$1, var2922=r3, var3872=java.lang.Object, var664=r15, var611=java.lang.reflect.Method, var2469=r0, var3603=r4, var3656=$r2, var756=$r1, var3341=$z0, var1307=$r13, var2375=$z5, var2758=java.lang.Boolean, var813=$r14}
; {com.mysql.cj.jdbc.interceptors.ResultSetScannerInterceptor$1=var2852, r3=var2922, java.lang.Object=var3872, r15=var664, java.lang.reflect.Method=var611, r0=var2469, r4=var3603, $r2=var3656, $r1=var756, $z0=var3341, $r13=var1307, $z5=var2375, java.lang.Boolean=var2758, $r14=var813}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: com.mysql.cj.jdbc.interceptors.ResultSetScannerInterceptor$1;	r15 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r4 := @parameter2: java.lang.Object[];	$r2 = "equals";	$r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r5 = r3.<com.mysql.cj.jdbc.interceptors.ResultSetScannerInterceptor$1: com.mysql.cj.protocol.Resultset val$finalResultSet>;	$r13 = r4[0];	$z5 = virtualinvoke $r13.<java.lang.Object: boolean equals(java.lang.Object)>(r3);	$r14 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z5);	return $r14
;block_num 2