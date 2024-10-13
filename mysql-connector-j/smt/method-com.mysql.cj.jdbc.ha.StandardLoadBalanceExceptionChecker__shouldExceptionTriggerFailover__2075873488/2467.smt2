(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3356 0)
(declare-sort var1622 0)
(declare-sort var764 0)
(declare-sort var663 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1622-to-var764 (var1622) var764)
(declare-fun getSQLState/-1621497016 (var764) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var3356 var3356)
(declare-const null-var1622 var1622)
(declare-const null-String String)
(declare-const var3497 var3356) ; Statement: r2 := @this: com.mysql.cj.jdbc.ha.StandardLoadBalanceExceptionChecker 
(assert (not (= var3497 null-var3356)))
(declare-const var1227 var1622) ; Statement: r0 := @parameter0: java.lang.Throwable 
(assert (not (= var1227 null-var1622)))
(define-const var2270 Bool false) ; Statement: $z0 = r0 instanceof java.sql.SQLException 
 ; Statement: if $z0 == 0 goto $r13 = null 
(assert (not (= (ite var2270 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3055 var764 (cast-from-var1622-to-var764 var1227)) ; Statement: $r12 = (java.sql.SQLException) r0 
(assert true)
(define-const var3431 String (getSQLState/-1621497016 var3055)) ; Statement: $r13 = virtualinvoke $r12.<java.sql.SQLException: java.lang.String getSQLState()>() 
 ; Statement: goto [?= r1 = $r13] 
(assert true) ; Non Conditional
(define-const var3154 String var3431) ; Statement: r1 = $r13 
 ; Statement: if $r13 == null goto $z7 = r0 instanceof com.mysql.cj.jdbc.exceptions.CommunicationsException 
(assert (not (= var3431 null-String))) ; Negate: Cond: $r13 == null  
(assert true)
(define-const var3973 Bool (startsWith/-1785782452 var3431 "08")) ; Statement: $z4 = virtualinvoke $r13.<java.lang.String: boolean startsWith(java.lang.String)>("08") 
 ; Statement: if $z4 == 0 goto $r7 = r2.<com.mysql.cj.jdbc.ha.StandardLoadBalanceExceptionChecker: java.util.List sqlStateList> 
(assert (not (= (ite var3973 1 0) 0))) ; Negate: Cond: $z4 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1622-to-var764=([java.lang.Throwable], java.sql.SQLException), getSQLState/-1621497016=([java.sql.SQLException], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3356=com.mysql.cj.jdbc.ha.StandardLoadBalanceExceptionChecker, var3497=r2, var1622=java.lang.Throwable, var1227=r0, var2270=$z0, var764=java.sql.SQLException, var3055=$r12, var3431=$r13, var3154=r1, var663=null_type, var3973=$z4}
; {com.mysql.cj.jdbc.ha.StandardLoadBalanceExceptionChecker=var3356, r2=var3497, java.lang.Throwable=var1622, r0=var1227, $z0=var2270, java.sql.SQLException=var764, $r12=var3055, $r13=var3431, r1=var3154, null_type=var663, $z4=var3973}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r2 := @this: com.mysql.cj.jdbc.ha.StandardLoadBalanceExceptionChecker;	r0 := @parameter0: java.lang.Throwable;	$z0 = r0 instanceof java.sql.SQLException;	if $z0 == 0 goto $r13 = null;	$r12 = (java.sql.SQLException) r0;	$r13 = virtualinvoke $r12.<java.sql.SQLException: java.lang.String getSQLState()>();	goto [?= r1 = $r13];	r1 = $r13;	if $r13 == null goto $z7 = r0 instanceof com.mysql.cj.jdbc.exceptions.CommunicationsException;	$z4 = virtualinvoke $r13.<java.lang.String: boolean startsWith(java.lang.String)>("08");	if $z4 == 0 goto $r7 = r2.<com.mysql.cj.jdbc.ha.StandardLoadBalanceExceptionChecker: java.util.List sqlStateList>;	return 1
;block_num 5