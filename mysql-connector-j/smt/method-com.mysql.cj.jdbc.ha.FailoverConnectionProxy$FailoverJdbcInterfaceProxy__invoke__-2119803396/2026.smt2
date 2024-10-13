(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3320 0)
(declare-sort var3372 0)
(declare-sort var2550 0)
(declare-sort var1493 0)
(declare-sort var3078 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var2550) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun this$0/-1847367944 (var3320) var1493)
(declare-fun connectedToSecondaryHost/1765536413 (var1493) Bool)
(declare-fun invoke/1634828241 (var3078 var3372 var2550 (Array Int var3372)) var3372)
(declare-fun cast-from-var3320-to-var3078 (var3320) var3078)
(declare-fun var1493_access$000/1122453523 (var1493) Bool)
(declare-const null-var3320 var3320)
(declare-const null-var3372 var3372)
(declare-const null-var2550 var2550)
(declare-const null-__Array__Int__var3372__ (Array Int var3372))
(declare-const var3442 var3320) ; Statement: r2 := @this: com.mysql.cj.jdbc.ha.FailoverConnectionProxy$FailoverJdbcInterfaceProxy 
(assert (not (= var3442 null-var3320)))
(declare-const var1719 var3372) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var1719 null-var3372)))
(declare-const var850 var2550) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var850 null-var2550)))
(declare-const var489 (Array Int var3372)) ; Statement: r5 := @parameter2: java.lang.Object[] 
(assert (not (= var489 null-__Array__Int__var3372__)))
(assert true)
(define-const var1718 String (getName/1227988463 var850)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var3350 Bool (startsWith/-1785782452 var1718 "execute")) ; Statement: z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("execute") 
(define-const var2403 var1493 (this$0/-1847367944 var3442)) ; Statement: $r3 = r2.<com.mysql.cj.jdbc.ha.FailoverConnectionProxy$FailoverJdbcInterfaceProxy: com.mysql.cj.jdbc.ha.FailoverConnectionProxy this$0> 
(assert true)
(define-const var1793 Bool (connectedToSecondaryHost/1765536413 var2403)) ; Statement: $z1 = virtualinvoke $r3.<com.mysql.cj.jdbc.ha.FailoverConnectionProxy: boolean connectedToSecondaryHost()>() 
 ; Statement: if $z1 == 0 goto $r9 = specialinvoke r2.<com.mysql.cj.jdbc.ha.MultiHostConnectionProxy$JdbcInterfaceProxy: java.lang.Object invoke(java.lang.Object,java.lang.reflect.Method,java.lang.Object[])>(r4, r0, r5) 
(assert (= (ite var1793 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1704 var3372 (invoke/1634828241 (cast-from-var3320-to-var3078 var3442) var1719 var850 var489)) ; Statement: $r9 = specialinvoke r2.<com.mysql.cj.jdbc.ha.MultiHostConnectionProxy$JdbcInterfaceProxy: java.lang.Object invoke(java.lang.Object,java.lang.reflect.Method,java.lang.Object[])>(r4, r0, r5) 
(define-const var332 var1493 (this$0/-1847367944 var3442)) ; Statement: $r10 = r2.<com.mysql.cj.jdbc.ha.FailoverConnectionProxy$FailoverJdbcInterfaceProxy: com.mysql.cj.jdbc.ha.FailoverConnectionProxy this$0> 
(define-const var1485 Bool (var1493_access$000/1122453523 var332)) ; Statement: $z3 = staticinvoke <com.mysql.cj.jdbc.ha.FailoverConnectionProxy: boolean access$000(com.mysql.cj.jdbc.ha.FailoverConnectionProxy)>($r10) 
 ; Statement: if $z3 == 0 goto return $r9 
(assert (= (ite var1485 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), this$0/-1847367944=([com.mysql.cj.jdbc.ha.FailoverConnectionProxy$FailoverJdbcInterfaceProxy], com.mysql.cj.jdbc.ha.FailoverConnectionProxy), connectedToSecondaryHost/1765536413=([com.mysql.cj.jdbc.ha.FailoverConnectionProxy], boolean), invoke/1634828241=([com.mysql.cj.jdbc.ha.MultiHostConnectionProxy$JdbcInterfaceProxy, java.lang.Object, java.lang.reflect.Method, java.lang.Object[]], java.lang.Object), cast-from-var3320-to-var3078=([com.mysql.cj.jdbc.ha.FailoverConnectionProxy$FailoverJdbcInterfaceProxy], com.mysql.cj.jdbc.ha.MultiHostConnectionProxy$JdbcInterfaceProxy), var1493_access$000/1122453523=([com.mysql.cj.jdbc.ha.FailoverConnectionProxy], boolean)}
; {var3320=com.mysql.cj.jdbc.ha.FailoverConnectionProxy$FailoverJdbcInterfaceProxy, var3442=r2, var3372=java.lang.Object, var1719=r4, var2550=java.lang.reflect.Method, var850=r0, var489=r5, var1718=r1, var3350=z0, var1493=com.mysql.cj.jdbc.ha.FailoverConnectionProxy, var2403=$r3, var1793=$z1, var3078=com.mysql.cj.jdbc.ha.MultiHostConnectionProxy$JdbcInterfaceProxy, var1704=$r9, var332=$r10, var1485=$z3}
; {com.mysql.cj.jdbc.ha.FailoverConnectionProxy$FailoverJdbcInterfaceProxy=var3320, r2=var3442, java.lang.Object=var3372, r4=var1719, java.lang.reflect.Method=var2550, r0=var850, r5=var489, r1=var1718, z0=var3350, com.mysql.cj.jdbc.ha.FailoverConnectionProxy=var1493, $r3=var2403, $z1=var1793, com.mysql.cj.jdbc.ha.MultiHostConnectionProxy$JdbcInterfaceProxy=var3078, $r9=var1704, $r10=var332, $z3=var1485}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r2 := @this: com.mysql.cj.jdbc.ha.FailoverConnectionProxy$FailoverJdbcInterfaceProxy;	r4 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r5 := @parameter2: java.lang.Object[];	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("execute");	$r3 = r2.<com.mysql.cj.jdbc.ha.FailoverConnectionProxy$FailoverJdbcInterfaceProxy: com.mysql.cj.jdbc.ha.FailoverConnectionProxy this$0>;	$z1 = virtualinvoke $r3.<com.mysql.cj.jdbc.ha.FailoverConnectionProxy: boolean connectedToSecondaryHost()>();	if $z1 == 0 goto $r9 = specialinvoke r2.<com.mysql.cj.jdbc.ha.MultiHostConnectionProxy$JdbcInterfaceProxy: java.lang.Object invoke(java.lang.Object,java.lang.reflect.Method,java.lang.Object[])>(r4, r0, r5);	$r9 = specialinvoke r2.<com.mysql.cj.jdbc.ha.MultiHostConnectionProxy$JdbcInterfaceProxy: java.lang.Object invoke(java.lang.Object,java.lang.reflect.Method,java.lang.Object[])>(r4, r0, r5);	$r10 = r2.<com.mysql.cj.jdbc.ha.FailoverConnectionProxy$FailoverJdbcInterfaceProxy: com.mysql.cj.jdbc.ha.FailoverConnectionProxy this$0>;	$z3 = staticinvoke <com.mysql.cj.jdbc.ha.FailoverConnectionProxy: boolean access$000(com.mysql.cj.jdbc.ha.FailoverConnectionProxy)>($r10);	if $z3 == 0 goto return $r9;	return $r9
;block_num 3