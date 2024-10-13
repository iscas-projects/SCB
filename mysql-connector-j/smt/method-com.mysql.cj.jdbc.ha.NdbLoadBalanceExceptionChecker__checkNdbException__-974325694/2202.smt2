(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3816 0)
(declare-sort var2579 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMessage/849299655 (var2579) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var3816 var3816)
(declare-const null-var2579 var2579)
(declare-const var54 var3816) ; Statement: r4 := @this: com.mysql.cj.jdbc.ha.NdbLoadBalanceExceptionChecker 
(assert (not (= var54 null-var3816)))
(declare-const var236 var2579) ; Statement: r0 := @parameter0: java.lang.Throwable 
(assert (not (= var236 null-var2579)))
(assert true)
(define-const var834 String (getMessage/849299655 var236)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Throwable: java.lang.String getMessage()>() 
(assert true)
(define-const var591 Bool (startsWith/-1785782452 var834 "Lock wait timeout exceeded")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("Lock wait timeout exceeded") 
 ; Statement: if $z0 != 0 goto $z3 = 1 
(assert (not (= (ite var591 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3991 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= return $z3] 
(assert true) ; Non Conditional
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {getMessage/849299655=([java.lang.Throwable], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3816=com.mysql.cj.jdbc.ha.NdbLoadBalanceExceptionChecker, var54=r4, var2579=java.lang.Throwable, var236=r0, var834=$r1, var591=$z0, var3991=$z3}
; {com.mysql.cj.jdbc.ha.NdbLoadBalanceExceptionChecker=var3816, r4=var54, java.lang.Throwable=var2579, r0=var236, $r1=var834, $z0=var591, $z3=var3991}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r4 := @this: com.mysql.cj.jdbc.ha.NdbLoadBalanceExceptionChecker;	r0 := @parameter0: java.lang.Throwable;	$r1 = virtualinvoke r0.<java.lang.Throwable: java.lang.String getMessage()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("Lock wait timeout exceeded");	if $z0 != 0 goto $z3 = 1;	$z3 = 1;	goto [?= return $z3];	return $z3
;block_num 3