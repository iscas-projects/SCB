(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3466 0)
(declare-sort var3153 0)
(declare-sort var3309 0)
(declare-sort var1356 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3153-to-var3309 (var3153) var3309)
(declare-fun getSQLState/-1621497016 (var3309) String)
(declare-const null-var3466 var3466)
(declare-const null-var3153 var3153)
(declare-const null-String String)
(declare-const var3692 var3466) ; Statement: r2 := @this: com.mysql.cj.jdbc.ha.StandardLoadBalanceExceptionChecker 
(assert (not (= var3692 null-var3466)))
(declare-const var3805 var3153) ; Statement: r0 := @parameter0: java.lang.Throwable 
(assert (not (= var3805 null-var3153)))
(define-const var3950 Bool false) ; Statement: $z0 = r0 instanceof java.sql.SQLException 
 ; Statement: if $z0 == 0 goto $r13 = null 
(assert (not (= (ite var3950 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var62 var3309 (cast-from-var3153-to-var3309 var3805)) ; Statement: $r12 = (java.sql.SQLException) r0 
(assert true)
(define-const var1951 String (getSQLState/-1621497016 var62)) ; Statement: $r13 = virtualinvoke $r12.<java.sql.SQLException: java.lang.String getSQLState()>() 
 ; Statement: goto [?= r1 = $r13] 
(assert true) ; Non Conditional
(define-const var3089 String var1951) ; Statement: r1 = $r13 
 ; Statement: if $r13 == null goto $z7 = r0 instanceof com.mysql.cj.jdbc.exceptions.CommunicationsException 
(assert (= var1951 null-String)) ; Cond: $r13 == null 
(define-const var3613 Bool false) ; Statement: $z7 = r0 instanceof com.mysql.cj.jdbc.exceptions.CommunicationsException 
 ; Statement: if $z7 != 0 goto return 1 
(assert (not (= (ite var3613 1 0) 0))) ; Cond: $z7 != 0 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3153-to-var3309=([java.lang.Throwable], java.sql.SQLException), getSQLState/-1621497016=([java.sql.SQLException], java.lang.String)}
; {var3466=com.mysql.cj.jdbc.ha.StandardLoadBalanceExceptionChecker, var3692=r2, var3153=java.lang.Throwable, var3805=r0, var3950=$z0, var3309=java.sql.SQLException, var62=$r12, var1951=$r13, var3089=r1, var1356=null_type, var3613=$z7}
; {com.mysql.cj.jdbc.ha.StandardLoadBalanceExceptionChecker=var3466, r2=var3692, java.lang.Throwable=var3153, r0=var3805, $z0=var3950, java.sql.SQLException=var3309, $r12=var62, $r13=var1951, r1=var3089, null_type=var1356, $z7=var3613}
;seq 
;cnt {}
;stmts r2 := @this: com.mysql.cj.jdbc.ha.StandardLoadBalanceExceptionChecker;	r0 := @parameter0: java.lang.Throwable;	$z0 = r0 instanceof java.sql.SQLException;	if $z0 == 0 goto $r13 = null;	$r12 = (java.sql.SQLException) r0;	$r13 = virtualinvoke $r12.<java.sql.SQLException: java.lang.String getSQLState()>();	goto [?= r1 = $r13];	r1 = $r13;	if $r13 == null goto $z7 = r0 instanceof com.mysql.cj.jdbc.exceptions.CommunicationsException;	$z7 = r0 instanceof com.mysql.cj.jdbc.exceptions.CommunicationsException;	if $z7 != 0 goto return 1;	return 1
;block_num 5