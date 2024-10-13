(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2440 0)
(declare-sort var1932 0)
(declare-sort var2870 0)
(declare-sort var1199 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2440_appendXid/-1053669842 (String var1932) void)
(declare-fun underlyingConnection/707451556 (var2440) var1199)
(declare-fun var1199_setInGlobalTx/-1769930601 (var1199 Bool) void)
(declare-const null-var2440 var2440)
(declare-const null-var1932 var1932)
(declare-const null-var2870 var2870)
(declare-const var2970 var2440) ; Statement: r2 := @this: com.mysql.cj.jdbc.MysqlXAConnection 
(assert (not (= var2970 null-var2440)))
(declare-const var663 var1932) ; Statement: r1 := @parameter0: javax.transaction.xa.Xid 
(assert (not (= var663 null-var1932)))
(define-const var220 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var220 300)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(300) 

(declare-const var220!1 String)
(declare-const var1679 Int)
(assert true)
;(assert (append/672562846 var220!1 "XA ROLLBACK ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("XA ROLLBACK ") 
(declare-const var220!2 String)
(assert (= var220!2 (str.++ var220!1 "XA ROLLBACK ")))
;(assert (var2440_appendXid/-1053669842 var220!2 var663)) ; Statement: staticinvoke <com.mysql.cj.jdbc.MysqlXAConnection: void appendXid(java.lang.StringBuilder,javax.transaction.xa.Xid)>($r0, r1) 

(declare-const var220!3 String)
(declare-const var663!1 var1932)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3690 var2870) ; Statement: $r5 := @caughtexception 
(assert (not (= var3690 null-var2870)))
(define-const var2996 var1199 (underlyingConnection/707451556 var2970)) ; Statement: $r6 = r2.<com.mysql.cj.jdbc.MysqlXAConnection: com.mysql.cj.jdbc.JdbcConnection underlyingConnection> 
;(assert (var1199_setInGlobalTx/-1769930601 var2996 (ite (= 1 0) true false))) ; Statement: interfaceinvoke $r6.<com.mysql.cj.jdbc.JdbcConnection: void setInGlobalTx(boolean)>(0) 

(declare-const var2996!1 var1199)
(declare-const var1598 Int)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2440_appendXid/-1053669842=([java.lang.StringBuilder, javax.transaction.xa.Xid], void), underlyingConnection/707451556=([com.mysql.cj.jdbc.MysqlXAConnection], com.mysql.cj.jdbc.JdbcConnection), var1199_setInGlobalTx/-1769930601=([com.mysql.cj.jdbc.JdbcConnection, boolean], void)}
; {var2440=com.mysql.cj.jdbc.MysqlXAConnection, var2970=r2, var1932=javax.transaction.xa.Xid, var663=r1, var220=$r0, var1679=300, var2870=java.lang.Throwable, var3690=$r5, var1199=com.mysql.cj.jdbc.JdbcConnection, var2996=$r6, var1598=0}
; {com.mysql.cj.jdbc.MysqlXAConnection=var2440, r2=var2970, javax.transaction.xa.Xid=var1932, r1=var663, $r0=var220, 300=var1679, java.lang.Throwable=var2870, $r5=var3690, com.mysql.cj.jdbc.JdbcConnection=var1199, $r6=var2996, 0=var1598}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r2 := @this: com.mysql.cj.jdbc.MysqlXAConnection;	r1 := @parameter0: javax.transaction.xa.Xid;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(300);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("XA ROLLBACK ");	staticinvoke <com.mysql.cj.jdbc.MysqlXAConnection: void appendXid(java.lang.StringBuilder,javax.transaction.xa.Xid)>($r0, r1);	$r5 := @caughtexception;	$r6 = r2.<com.mysql.cj.jdbc.MysqlXAConnection: com.mysql.cj.jdbc.JdbcConnection underlyingConnection>;	interfaceinvoke $r6.<com.mysql.cj.jdbc.JdbcConnection: void setInGlobalTx(boolean)>(0);	throw $r5
;block_num 2