(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3686 0)
(declare-sort var206 0)
(declare-sort var2819 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3686_appendXid/-1053669842 (String var206) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun dispatchCommand/376442794 (var3686 String) var2819)
(declare-const null-var3686 var3686)
(declare-const null-var206 var206)
(declare-const var3314 var3686) ; Statement: r2 := @this: com.mysql.cj.jdbc.MysqlXAConnection 
(assert (not (= var3314 null-var3686)))
(declare-const var3115 var206) ; Statement: r1 := @parameter0: javax.transaction.xa.Xid 
(assert (not (= var3115 null-var206)))
(define-const var699 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var699 300)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(300) 

(declare-const var699!1 String)
(declare-const var474 Int)
(assert true)
;(assert (append/672562846 var699!1 "XA PREPARE ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("XA PREPARE ") 
(declare-const var699!2 String)
(assert (= var699!2 (str.++ var699!1 "XA PREPARE ")))
;(assert (var3686_appendXid/-1053669842 var699!2 var3115)) ; Statement: staticinvoke <com.mysql.cj.jdbc.MysqlXAConnection: void appendXid(java.lang.StringBuilder,javax.transaction.xa.Xid)>($r0, r1) 

(declare-const var699!3 String)
(declare-const var3115!1 var206)
(assert true)
(define-const var2370 String (toString/-2075883882 var699!3)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (dispatchCommand/376442794 var3314 var2370)) ; Statement: specialinvoke r2.<com.mysql.cj.jdbc.MysqlXAConnection: java.sql.ResultSet dispatchCommand(java.lang.String)>($r3) 

(declare-const var3314!1 var3686)
(declare-const var2370!1 String)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3686_appendXid/-1053669842=([java.lang.StringBuilder, javax.transaction.xa.Xid], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), dispatchCommand/376442794=([com.mysql.cj.jdbc.MysqlXAConnection, java.lang.String], java.sql.ResultSet)}
; {var3686=com.mysql.cj.jdbc.MysqlXAConnection, var3314=r2, var206=javax.transaction.xa.Xid, var3115=r1, var699=$r0, var474=300, var2370=$r3, var2819=java.sql.ResultSet}
; {com.mysql.cj.jdbc.MysqlXAConnection=var3686, r2=var3314, javax.transaction.xa.Xid=var206, r1=var3115, $r0=var699, 300=var474, $r3=var2370, java.sql.ResultSet=var2819}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.mysql.cj.jdbc.MysqlXAConnection;	r1 := @parameter0: javax.transaction.xa.Xid;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(300);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("XA PREPARE ");	staticinvoke <com.mysql.cj.jdbc.MysqlXAConnection: void appendXid(java.lang.StringBuilder,javax.transaction.xa.Xid)>($r0, r1);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r2.<com.mysql.cj.jdbc.MysqlXAConnection: java.sql.ResultSet dispatchCommand(java.lang.String)>($r3);	return 0
;block_num 1