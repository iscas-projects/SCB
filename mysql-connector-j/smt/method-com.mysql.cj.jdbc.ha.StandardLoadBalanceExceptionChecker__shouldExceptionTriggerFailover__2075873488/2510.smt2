(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2700 0)
(declare-sort var459 0)
(declare-sort var3650 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var2700 var2700)
(declare-const null-var459 var459)
(declare-const null-String String)
(declare-const var3817 var2700) ; Statement: r2 := @this: com.mysql.cj.jdbc.ha.StandardLoadBalanceExceptionChecker 
(assert (not (= var3817 null-var2700)))
(declare-const var1806 var459) ; Statement: r0 := @parameter0: java.lang.Throwable 
(assert (not (= var1806 null-var459)))
(define-const var2715 Bool false) ; Statement: $z0 = r0 instanceof java.sql.SQLException 
 ; Statement: if $z0 == 0 goto $r13 = null 
(assert (= (ite var2715 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3208 String null-String) ; Statement: $r13 = null 
(assert true) ; Non Conditional
(define-const var2583 String var3208) ; Statement: r1 = $r13 
 ; Statement: if $r13 == null goto $z7 = r0 instanceof com.mysql.cj.jdbc.exceptions.CommunicationsException 
(assert (= var3208 null-String)) ; Cond: $r13 == null 
(define-const var3275 Bool false) ; Statement: $z7 = r0 instanceof com.mysql.cj.jdbc.exceptions.CommunicationsException 
 ; Statement: if $z7 != 0 goto return 1 
(assert (not (= (ite var3275 1 0) 0))) ; Cond: $z7 != 0 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2700=com.mysql.cj.jdbc.ha.StandardLoadBalanceExceptionChecker, var3817=r2, var459=java.lang.Throwable, var1806=r0, var2715=$z0, var3650=null_type, var3208=$r13, var2583=r1, var3275=$z7}
; {com.mysql.cj.jdbc.ha.StandardLoadBalanceExceptionChecker=var2700, r2=var3817, java.lang.Throwable=var459, r0=var1806, $z0=var2715, null_type=var3650, $r13=var3208, r1=var2583, $z7=var3275}
;seq 
;cnt {}
;stmts r2 := @this: com.mysql.cj.jdbc.ha.StandardLoadBalanceExceptionChecker;	r0 := @parameter0: java.lang.Throwable;	$z0 = r0 instanceof java.sql.SQLException;	if $z0 == 0 goto $r13 = null;	$r13 = null;	r1 = $r13;	if $r13 == null goto $z7 = r0 instanceof com.mysql.cj.jdbc.exceptions.CommunicationsException;	$z7 = r0 instanceof com.mysql.cj.jdbc.exceptions.CommunicationsException;	if $z7 != 0 goto return 1;	return 1
;block_num 5