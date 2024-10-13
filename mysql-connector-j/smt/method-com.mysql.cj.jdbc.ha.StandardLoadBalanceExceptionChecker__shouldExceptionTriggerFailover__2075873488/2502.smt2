(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2410 0)
(declare-sort var3556 0)
(declare-sort var2832 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var2410 var2410)
(declare-const null-var3556 var3556)
(declare-const null-String String)
(declare-const var3768 var2410) ; Statement: r2 := @this: com.mysql.cj.jdbc.ha.StandardLoadBalanceExceptionChecker 
(assert (not (= var3768 null-var2410)))
(declare-const var3126 var3556) ; Statement: r0 := @parameter0: java.lang.Throwable 
(assert (not (= var3126 null-var3556)))
(define-const var3083 Bool false) ; Statement: $z0 = r0 instanceof java.sql.SQLException 
 ; Statement: if $z0 == 0 goto $r13 = null 
(assert (= (ite var3083 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2554 String null-String) ; Statement: $r13 = null 
(assert true) ; Non Conditional
(define-const var2539 String var2554) ; Statement: r1 = $r13 
 ; Statement: if $r13 == null goto $z7 = r0 instanceof com.mysql.cj.jdbc.exceptions.CommunicationsException 
(assert (not (= var2554 null-String))) ; Negate: Cond: $r13 == null  
(assert true)
(define-const var3549 Bool (startsWith/-1785782452 var2554 "08")) ; Statement: $z4 = virtualinvoke $r13.<java.lang.String: boolean startsWith(java.lang.String)>("08") 
 ; Statement: if $z4 == 0 goto $r7 = r2.<com.mysql.cj.jdbc.ha.StandardLoadBalanceExceptionChecker: java.util.List sqlStateList> 
(assert (not (= (ite var3549 1 0) 0))) ; Negate: Cond: $z4 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var2410=com.mysql.cj.jdbc.ha.StandardLoadBalanceExceptionChecker, var3768=r2, var3556=java.lang.Throwable, var3126=r0, var3083=$z0, var2832=null_type, var2554=$r13, var2539=r1, var3549=$z4}
; {com.mysql.cj.jdbc.ha.StandardLoadBalanceExceptionChecker=var2410, r2=var3768, java.lang.Throwable=var3556, r0=var3126, $z0=var3083, null_type=var2832, $r13=var2554, r1=var2539, $z4=var3549}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r2 := @this: com.mysql.cj.jdbc.ha.StandardLoadBalanceExceptionChecker;	r0 := @parameter0: java.lang.Throwable;	$z0 = r0 instanceof java.sql.SQLException;	if $z0 == 0 goto $r13 = null;	$r13 = null;	r1 = $r13;	if $r13 == null goto $z7 = r0 instanceof com.mysql.cj.jdbc.exceptions.CommunicationsException;	$z4 = virtualinvoke $r13.<java.lang.String: boolean startsWith(java.lang.String)>("08");	if $z4 == 0 goto $r7 = r2.<com.mysql.cj.jdbc.ha.StandardLoadBalanceExceptionChecker: java.util.List sqlStateList>;	return 1
;block_num 5