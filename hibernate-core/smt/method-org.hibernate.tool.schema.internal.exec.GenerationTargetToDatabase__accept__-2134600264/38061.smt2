(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3143 0)
(declare-sort var12 0)
(declare-sort var1915 0)
(declare-sort var2832 0)
(declare-sort var461 0)
(declare-sort var56 0)
(declare-sort var2863 0)
(declare-sort var3746 0)
(declare-sort var2809 0)
(declare-sort var1707 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ddlTransactionIsolator/-1760090904 (var3143) var1915)
(declare-fun var1915_getJdbcContext/904144165 (var1915) var2832)
(declare-fun var2832_getSqlStatementLogger/1054595681 (var2832) var461)
(declare-fun logStatement/1340090255 (var461 String var2863) void)
(declare-fun cast-from-var56-to-var2863 (var56) var2863)
(declare-fun var2809-init () var2809)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-529677710 (var2809 String var1707) void)
(declare-fun cast-from-var3746-to-var1707 (var3746) var1707)
(declare-fun cast-from-var2809-to-var1707 (var2809) var1707)
(declare-const null-var3143 var3143)
(declare-const null-String String)
(declare-const var56-INSTANCE var56)
(declare-const null-var3746 var3746)
(declare-const var125 var3143) ; Statement: r0 := @this: org.hibernate.tool.schema.internal.exec.GenerationTargetToDatabase 
(assert (not (= var125 null-var3143)))
(declare-const var1054 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1054 null-String)))
(define-const var3232 var1915 (ddlTransactionIsolator/-1760090904 var125)) ; Statement: $r1 = r0.<org.hibernate.tool.schema.internal.exec.GenerationTargetToDatabase: org.hibernate.resource.transaction.spi.DdlTransactionIsolator ddlTransactionIsolator> 
(define-const var3889 var2832 (var1915_getJdbcContext/904144165 var3232)) ; Statement: $r2 = interfaceinvoke $r1.<org.hibernate.resource.transaction.spi.DdlTransactionIsolator: org.hibernate.tool.schema.internal.exec.JdbcContext getJdbcContext()>() 
(define-const var413 var461 (var2832_getSqlStatementLogger/1054595681 var3889)) ; Statement: $r5 = interfaceinvoke $r2.<org.hibernate.tool.schema.internal.exec.JdbcContext: org.hibernate.engine.jdbc.spi.SqlStatementLogger getSqlStatementLogger()>() 
(define-const var3576 var56 var56-INSTANCE) ; Statement: $r4 = <org.hibernate.engine.jdbc.internal.DDLFormatterImpl: org.hibernate.engine.jdbc.internal.DDLFormatterImpl INSTANCE> 
(assert true)
;(assert (logStatement/1340090255 var413 var1054 (cast-from-var56-to-var2863 var3576))) ; Statement: virtualinvoke $r5.<org.hibernate.engine.jdbc.spi.SqlStatementLogger: void logStatement(java.lang.String,org.hibernate.engine.jdbc.internal.Formatter)>(r3, $r4) 

(declare-const var413!1 var461)
(declare-const var1054!1 String)
(declare-const var3576!1 var56)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2513 var3746) ; Statement: $r9 := @caughtexception 
(assert (not (= var2513 null-var3746)))
(define-const var1260 var2809 var2809-init) ; Statement: $r21 = new org.hibernate.tool.schema.spi.CommandAcceptanceException 
(define-const var844 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var844)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var844!1 String)
(assert (= var844!1 ""))
(assert true)
(define-const var2519 String (append/672562846 var844!1 "Error executing DDL \u0022")) ; Statement: $r12 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error executing DDL \"") 
(declare-const var844!2 String)
(assert (= var844!2 (str.++ var844!1 "Error executing DDL \u0022")))
(assert true)
(define-const var463 String (append/672562846 var2519 var1054!1)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2519!1 String)
(assert (= var2519!1 (str.++ var2519 var1054!1)))
(assert true)
(define-const var3620 String (append/672562846 var463 "\u0022 via JDBC Statement")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" via JDBC Statement") 
(declare-const var463!1 String)
(assert (= var463!1 (str.++ var463 "\u0022 via JDBC Statement")))
(assert true)
(define-const var563 String (toString/-2075883882 var3620)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-529677710 var1260 var563 (cast-from-var3746-to-var1707 var2513))) ; Statement: specialinvoke $r21.<org.hibernate.tool.schema.spi.CommandAcceptanceException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r9) 

(declare-const var1260!1 var2809)
(declare-const var563!1 String)
(declare-const var2513!1 var3746)
(define-const var2219 var1707 (cast-from-var2809-to-var1707 var1260!1)) ; Statement: $r22 = (java.lang.Throwable) $r21 
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {ddlTransactionIsolator/-1760090904=([org.hibernate.tool.schema.internal.exec.GenerationTargetToDatabase], org.hibernate.resource.transaction.spi.DdlTransactionIsolator), var1915_getJdbcContext/904144165=([org.hibernate.resource.transaction.spi.DdlTransactionIsolator], org.hibernate.tool.schema.internal.exec.JdbcContext), var2832_getSqlStatementLogger/1054595681=([org.hibernate.tool.schema.internal.exec.JdbcContext], org.hibernate.engine.jdbc.spi.SqlStatementLogger), logStatement/1340090255=([org.hibernate.engine.jdbc.spi.SqlStatementLogger, java.lang.String, org.hibernate.engine.jdbc.internal.Formatter], void), cast-from-var56-to-var2863=([org.hibernate.engine.jdbc.internal.DDLFormatterImpl], org.hibernate.engine.jdbc.internal.Formatter), var2809-init=([], org.hibernate.tool.schema.spi.CommandAcceptanceException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-529677710=([org.hibernate.tool.schema.spi.CommandAcceptanceException, java.lang.String, java.lang.Throwable], void), cast-from-var3746-to-var1707=([java.sql.SQLException], java.lang.Throwable), cast-from-var2809-to-var1707=([org.hibernate.tool.schema.spi.CommandAcceptanceException], java.lang.Throwable)}
; {var3143=org.hibernate.tool.schema.internal.exec.GenerationTargetToDatabase, var125=r0, var1054=r3, var12=null_type, var1915=org.hibernate.resource.transaction.spi.DdlTransactionIsolator, var3232=$r1, var2832=org.hibernate.tool.schema.internal.exec.JdbcContext, var3889=$r2, var461=org.hibernate.engine.jdbc.spi.SqlStatementLogger, var413=$r5, var56=org.hibernate.engine.jdbc.internal.DDLFormatterImpl, var3576=$r4, var2863=org.hibernate.engine.jdbc.internal.Formatter, var3746=java.sql.SQLException, var2513=$r9, var2809=org.hibernate.tool.schema.spi.CommandAcceptanceException, var1260=$r21, var844=$r20, var2519=$r12, var463=$r13, var3620=$r14, var563=$r15, var1707=java.lang.Throwable, var2219=$r22}
; {org.hibernate.tool.schema.internal.exec.GenerationTargetToDatabase=var3143, r0=var125, r3=var1054, null_type=var12, org.hibernate.resource.transaction.spi.DdlTransactionIsolator=var1915, $r1=var3232, org.hibernate.tool.schema.internal.exec.JdbcContext=var2832, $r2=var3889, org.hibernate.engine.jdbc.spi.SqlStatementLogger=var461, $r5=var413, org.hibernate.engine.jdbc.internal.DDLFormatterImpl=var56, $r4=var3576, org.hibernate.engine.jdbc.internal.Formatter=var2863, java.sql.SQLException=var3746, $r9=var2513, org.hibernate.tool.schema.spi.CommandAcceptanceException=var2809, $r21=var1260, $r20=var844, $r12=var2519, $r13=var463, $r14=var3620, $r15=var563, java.lang.Throwable=var1707, $r22=var2219}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.tool.schema.internal.exec.GenerationTargetToDatabase;	r3 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.tool.schema.internal.exec.GenerationTargetToDatabase: org.hibernate.resource.transaction.spi.DdlTransactionIsolator ddlTransactionIsolator>;	$r2 = interfaceinvoke $r1.<org.hibernate.resource.transaction.spi.DdlTransactionIsolator: org.hibernate.tool.schema.internal.exec.JdbcContext getJdbcContext()>();	$r5 = interfaceinvoke $r2.<org.hibernate.tool.schema.internal.exec.JdbcContext: org.hibernate.engine.jdbc.spi.SqlStatementLogger getSqlStatementLogger()>();	$r4 = <org.hibernate.engine.jdbc.internal.DDLFormatterImpl: org.hibernate.engine.jdbc.internal.DDLFormatterImpl INSTANCE>;	virtualinvoke $r5.<org.hibernate.engine.jdbc.spi.SqlStatementLogger: void logStatement(java.lang.String,org.hibernate.engine.jdbc.internal.Formatter)>(r3, $r4);	$r9 := @caughtexception;	$r21 = new org.hibernate.tool.schema.spi.CommandAcceptanceException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error executing DDL \"");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" via JDBC Statement");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<org.hibernate.tool.schema.spi.CommandAcceptanceException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r9);	$r22 = (java.lang.Throwable) $r21;	throw $r22
;block_num 2