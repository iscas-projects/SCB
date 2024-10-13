(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2139 0)
(declare-sort var2080 0)
(declare-sort var2597 0)
(declare-sort var2364 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2139_appendXid/-1053669842 (String var2080) void)
(declare-fun underlyingConnection/707451556 (var2139) var2364)
(declare-fun var2364_setInGlobalTx/-1769930601 (var2364 Bool) void)
(declare-const null-var2139 var2139)
(declare-const null-var2080 var2080)
(declare-const null-Bool Bool)
(declare-const null-var2597 var2597)
(declare-const var411 var2139) ; Statement: r2 := @this: com.mysql.cj.jdbc.MysqlXAConnection 
(assert (not (= var411 null-var2139)))
(declare-const var2038 var2080) ; Statement: r1 := @parameter0: javax.transaction.xa.Xid 
(assert (not (= var2038 null-var2080)))
(declare-const var1194 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1194 null-Bool)))
(define-const var849 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var849 300)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(300) 

(declare-const var849!1 String)
(declare-const var950 Int)
(assert true)
;(assert (append/672562846 var849!1 "XA COMMIT ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("XA COMMIT ") 
(declare-const var849!2 String)
(assert (= var849!2 (str.++ var849!1 "XA COMMIT ")))
;(assert (var2139_appendXid/-1053669842 var849!2 var2038)) ; Statement: staticinvoke <com.mysql.cj.jdbc.MysqlXAConnection: void appendXid(java.lang.StringBuilder,javax.transaction.xa.Xid)>($r0, r1) 

(declare-const var849!3 String)
(declare-const var2038!1 var2080)
 ; Statement: if z0 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= (ite var1194 1 0) 0))) ; Negate: Cond: z0 == 0  
(declare-const var1106 var2597) ; Statement: $r5 := @caughtexception 
(assert (not (= var1106 null-var2597)))
(assert true) ; Non Conditional
(define-const var1485 var2364 (underlyingConnection/707451556 var411)) ; Statement: $r6 = r2.<com.mysql.cj.jdbc.MysqlXAConnection: com.mysql.cj.jdbc.JdbcConnection underlyingConnection> 
;(assert (var2364_setInGlobalTx/-1769930601 var1485 (ite (= 1 0) true false))) ; Statement: interfaceinvoke $r6.<com.mysql.cj.jdbc.JdbcConnection: void setInGlobalTx(boolean)>(0) 

(declare-const var1485!1 var2364)
(declare-const var1997 Int)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2139_appendXid/-1053669842=([java.lang.StringBuilder, javax.transaction.xa.Xid], void), underlyingConnection/707451556=([com.mysql.cj.jdbc.MysqlXAConnection], com.mysql.cj.jdbc.JdbcConnection), var2364_setInGlobalTx/-1769930601=([com.mysql.cj.jdbc.JdbcConnection, boolean], void)}
; {var2139=com.mysql.cj.jdbc.MysqlXAConnection, var411=r2, var2080=javax.transaction.xa.Xid, var2038=r1, var1194=z0, var849=$r0, var950=300, var2597=java.lang.Throwable, var1106=$r5, var2364=com.mysql.cj.jdbc.JdbcConnection, var1485=$r6, var1997=0}
; {com.mysql.cj.jdbc.MysqlXAConnection=var2139, r2=var411, javax.transaction.xa.Xid=var2080, r1=var2038, z0=var1194, $r0=var849, 300=var950, java.lang.Throwable=var2597, $r5=var1106, com.mysql.cj.jdbc.JdbcConnection=var2364, $r6=var1485, 0=var1997}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r2 := @this: com.mysql.cj.jdbc.MysqlXAConnection;	r1 := @parameter0: javax.transaction.xa.Xid;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(300);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("XA COMMIT ");	staticinvoke <com.mysql.cj.jdbc.MysqlXAConnection: void appendXid(java.lang.StringBuilder,javax.transaction.xa.Xid)>($r0, r1);	if z0 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 := @caughtexception;	$r6 = r2.<com.mysql.cj.jdbc.MysqlXAConnection: com.mysql.cj.jdbc.JdbcConnection underlyingConnection>;	interfaceinvoke $r6.<com.mysql.cj.jdbc.JdbcConnection: void setInGlobalTx(boolean)>(0);	throw $r5
;block_num 3