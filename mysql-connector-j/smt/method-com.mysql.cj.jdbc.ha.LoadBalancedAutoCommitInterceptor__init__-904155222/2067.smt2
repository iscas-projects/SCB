(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var274 0)
(declare-sort var1257 0)
(declare-sort var2757 0)
(declare-sort var1972 0)
(declare-sort var475 0)
(declare-sort var2150 0)
(declare-sort var1086 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1257-to-var475 (var1257) var475)
(declare-fun conn/529898721 (var274) var475)
(declare-fun getKeyName/-200443258 (var2150) String)
(declare-fun getProperty/-469436802 (var2757 String String) String)
(declare-const null-var274 var274)
(declare-const null-var1257 var1257)
(declare-const null-var2757 var2757)
(declare-const null-var1972 var1972)
(declare-const var2150-loadBalanceAutoCommitStatementThreshold var2150)
(declare-const null-var1086 var1086)
(declare-const var2150-loadBalanceAutoCommitStatementRegex var2150)
(declare-const var1957 var274) ; Statement: r0 := @this: com.mysql.cj.jdbc.ha.LoadBalancedAutoCommitInterceptor 
(assert (not (= var1957 null-var274)))
(declare-const var669 var1257) ; Statement: r1 := @parameter0: com.mysql.cj.MysqlConnection 
(assert (not (= var669 null-var1257)))
(declare-const var1042 var2757) ; Statement: r3 := @parameter1: java.util.Properties 
(assert (not (= var1042 null-var2757)))
(declare-const var363 var1972) ; Statement: r12 := @parameter2: com.mysql.cj.log.Log 
(assert (not (= var363 null-var1972)))
(define-const var1773 var475 (cast-from-var1257-to-var475 var669)) ; Statement: $r2 = (com.mysql.cj.jdbc.JdbcConnection) r1 
(declare-const var1957!1 var274)
(assert (not (= var1957!1 null-var274)))
(assert (= (conn/529898721 var1957!1) var1773)) ; Statement: r0.<com.mysql.cj.jdbc.ha.LoadBalancedAutoCommitInterceptor: com.mysql.cj.jdbc.JdbcConnection conn> = $r2 
(define-const var1296 var2150 var2150-loadBalanceAutoCommitStatementThreshold) ; Statement: $r4 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey loadBalanceAutoCommitStatementThreshold> 
(assert true)
(define-const var1689 String (getKeyName/-200443258 var1296)) ; Statement: $r5 = virtualinvoke $r4.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>() 
(assert true)
(define-const var1633 String (getProperty/-469436802 var1042 var1689 "0")) ; Statement: r6 = virtualinvoke r3.<java.util.Properties: java.lang.String getProperty(java.lang.String,java.lang.String)>($r5, "0") 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2823 var1086) ; Statement: $r10 := @caughtexception 
(assert (not (= var2823 null-var1086)))
(assert true) ; Non Conditional
(define-const var1279 var2150 var2150-loadBalanceAutoCommitStatementRegex) ; Statement: $r7 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey loadBalanceAutoCommitStatementRegex> 
(assert true)
(define-const var1841 String (getKeyName/-200443258 var1279)) ; Statement: $r8 = virtualinvoke $r7.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>() 
(assert true)
(define-const var3820 String (getProperty/-469436802 var1042 var1841 "")) ; Statement: $r11 = virtualinvoke r3.<java.util.Properties: java.lang.String getProperty(java.lang.String,java.lang.String)>($r8, "") 
(define-const var3026 String "") ; Statement: $r9 = "" 
(assert true)
(define-const var15 Bool (= var3026 var3820)) ; Statement: $z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>($r11) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (= (ite var15 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1257-to-var475=([com.mysql.cj.MysqlConnection], com.mysql.cj.jdbc.JdbcConnection), conn/529898721=([com.mysql.cj.jdbc.ha.LoadBalancedAutoCommitInterceptor], com.mysql.cj.jdbc.JdbcConnection), getKeyName/-200443258=([com.mysql.cj.conf.PropertyKey], java.lang.String), getProperty/-469436802=([java.util.Properties, java.lang.String, java.lang.String], java.lang.String)}
; {var274=com.mysql.cj.jdbc.ha.LoadBalancedAutoCommitInterceptor, var1957=r0, var1257=com.mysql.cj.MysqlConnection, var669=r1, var2757=java.util.Properties, var1042=r3, var1972=com.mysql.cj.log.Log, var363=r12, var475=com.mysql.cj.jdbc.JdbcConnection, var1773=$r2, var2150=com.mysql.cj.conf.PropertyKey, var1296=$r4, var1689=$r5, var1633=r6, var1086=java.lang.NumberFormatException, var2823=$r10, var1279=$r7, var1841=$r8, var3820=$r11, var3026=$r9, var15=$z0}
; {com.mysql.cj.jdbc.ha.LoadBalancedAutoCommitInterceptor=var274, r0=var1957, com.mysql.cj.MysqlConnection=var1257, r1=var669, java.util.Properties=var2757, r3=var1042, com.mysql.cj.log.Log=var1972, r12=var363, com.mysql.cj.jdbc.JdbcConnection=var475, $r2=var1773, com.mysql.cj.conf.PropertyKey=var2150, $r4=var1296, $r5=var1689, r6=var1633, java.lang.NumberFormatException=var1086, $r10=var2823, $r7=var1279, $r8=var1841, $r11=var3820, $r9=var3026, $z0=var15}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.mysql.cj.jdbc.ha.LoadBalancedAutoCommitInterceptor;	r1 := @parameter0: com.mysql.cj.MysqlConnection;	r3 := @parameter1: java.util.Properties;	r12 := @parameter2: com.mysql.cj.log.Log;	$r2 = (com.mysql.cj.jdbc.JdbcConnection) r1;	r0.<com.mysql.cj.jdbc.ha.LoadBalancedAutoCommitInterceptor: com.mysql.cj.jdbc.JdbcConnection conn> = $r2;	$r4 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey loadBalanceAutoCommitStatementThreshold>;	$r5 = virtualinvoke $r4.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>();	r6 = virtualinvoke r3.<java.util.Properties: java.lang.String getProperty(java.lang.String,java.lang.String)>($r5, "0");	$r10 := @caughtexception;	$r7 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey loadBalanceAutoCommitStatementRegex>;	$r8 = virtualinvoke $r7.<com.mysql.cj.conf.PropertyKey: java.lang.String getKeyName()>();	$r11 = virtualinvoke r3.<java.util.Properties: java.lang.String getProperty(java.lang.String,java.lang.String)>($r8, "");	$r9 = "";	$z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>($r11);	if $z0 != 0 goto return r0;	return r0
;block_num 4