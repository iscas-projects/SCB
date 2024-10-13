(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var170 0)
(declare-sort var3995 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var3995) String)
(declare-const null-var170 var170)
(declare-const null-var3995 var3995)
(declare-const var3212 var170) ; Statement: r2 := @this: com.mysql.cj.jdbc.ha.MultiHostConnectionProxy 
(assert (not (= var3212 null-var170)))
(declare-const var1459 var3995) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var1459 null-var3995)))
(assert true)
(define-const var1114 String (getName/1227988463 var1459)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var434 Bool (= var1114 "getAutoCommit")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("getAutoCommit") 
 ; Statement: if $z0 != 0 goto $z6 = 1 
(assert (not (= (ite var434 1 0) 0))) ; Cond: $z0 != 0 
(define-const var743 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= return $z6] 
(assert true) ; Non Conditional
 ; Statement: return $z6 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String)}
; {var170=com.mysql.cj.jdbc.ha.MultiHostConnectionProxy, var3212=r2, var3995=java.lang.reflect.Method, var1459=r0, var1114=r1, var434=$z0, var743=$z6}
; {com.mysql.cj.jdbc.ha.MultiHostConnectionProxy=var170, r2=var3212, java.lang.reflect.Method=var3995, r0=var1459, r1=var1114, $z0=var434, $z6=var743}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: com.mysql.cj.jdbc.ha.MultiHostConnectionProxy;	r0 := @parameter0: java.lang.reflect.Method;	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("getAutoCommit");	if $z0 != 0 goto $z6 = 1;	$z6 = 1;	goto [?= return $z6];	return $z6
;block_num 3