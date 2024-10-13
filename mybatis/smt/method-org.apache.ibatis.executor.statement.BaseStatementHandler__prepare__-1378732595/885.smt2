(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1971 0)
(declare-sort var1837 0)
(declare-sort var1105 0)
(declare-sort var2386 0)
(declare-sort var986 0)
(declare-sort var1803 0)
(declare-sort var3324 0)
(declare-sort var3911 0)
(declare-sort var2564 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1105_instance/1351931870 () var1105)
(declare-fun boundSql/-629963804 (var1971) var2386)
(declare-fun getSql/464797630 (var2386) String)
(declare-fun sql/1853967614 (var1105 String) var1105)
(declare-fun closeStatement/458218187 (var1971 var986) void)
(declare-fun var3324-init () var3324)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3911) String)
(declare-fun cast-from-var1803-to-var3911 (var1803) var3911)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1707365385 (var3324 String var2564) void)
(declare-fun cast-from-var1803-to-var2564 (var1803) var2564)
(declare-const null-var1971 var1971)
(declare-const null-var1837 var1837)
(declare-const null-Int Int)
(declare-const null-var986 var986)
(declare-const null-var1803 var1803)
(declare-const var874 var1971) ; Statement: r0 := @this: org.apache.ibatis.executor.statement.BaseStatementHandler 
(assert (not (= var874 null-var1971)))
(declare-const var3215 var1837) ; Statement: r4 := @parameter0: java.sql.Connection 
(assert (not (= var3215 null-var1837)))
(declare-const var2195 Int) ; Statement: r5 := @parameter1: java.lang.Integer 
(assert (not (= var2195 null-Int)))
(define-const var1060 var1105 var1105_instance/1351931870) ; Statement: $r3 = staticinvoke <org.apache.ibatis.executor.ErrorContext: org.apache.ibatis.executor.ErrorContext instance()>() 
(define-const var1405 var2386 (boundSql/-629963804 var874)) ; Statement: $r1 = r0.<org.apache.ibatis.executor.statement.BaseStatementHandler: org.apache.ibatis.mapping.BoundSql boundSql> 
(assert true)
(define-const var2870 String (getSql/464797630 var1405)) ; Statement: $r2 = virtualinvoke $r1.<org.apache.ibatis.mapping.BoundSql: java.lang.String getSql()>() 
(assert true)
;(assert (sql/1853967614 var1060 var2870)) ; Statement: virtualinvoke $r3.<org.apache.ibatis.executor.ErrorContext: org.apache.ibatis.executor.ErrorContext sql(java.lang.String)>($r2) 

(declare-const var1060!1 var1105)
(declare-const var2870!1 String)
(define-const var1755 var986 null-var986) ; Statement: r13 = null 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var659 var1803) ; Statement: $r6 := @caughtexception 
(assert (not (= var659 null-var1803)))
(assert true)
;(assert (closeStatement/458218187 var874 var1755)) ; Statement: virtualinvoke r0.<org.apache.ibatis.executor.statement.BaseStatementHandler: void closeStatement(java.sql.Statement)>(r13) 

(declare-const var874!1 var1971)
(declare-const var1755!1 var986)
(define-const var1968 var3324 var3324-init) ; Statement: $r7 = new org.apache.ibatis.executor.ExecutorException 
(define-const var438 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var438)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var438!1 String)
(assert (= var438!1 ""))
(assert true)
(define-const var1331 String (append/672562846 var438!1 "Error preparing statement.  Cause: ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error preparing statement.  Cause: ") 
(declare-const var438!2 String)
(assert (= var438!2 (str.++ var438!1 "Error preparing statement.  Cause: ")))
(assert true)
(define-const var317 String (append/-1031950772 var1331 (cast-from-var1803-to-var3911 var659))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var1331!1 String)
(assert (str.prefixof var1331 var1331!1))
(assert true)
(define-const var3747 String (toString/-2075883882 var317)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1707365385 var1968 var3747 (cast-from-var1803-to-var2564 var659))) ; Statement: specialinvoke $r7.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r6) 

(declare-const var1968!1 var3324)
(declare-const var3747!1 String)
(declare-const var659!1 var1803)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var1105_instance/1351931870=([], org.apache.ibatis.executor.ErrorContext), boundSql/-629963804=([org.apache.ibatis.executor.statement.BaseStatementHandler], org.apache.ibatis.mapping.BoundSql), getSql/464797630=([org.apache.ibatis.mapping.BoundSql], java.lang.String), sql/1853967614=([org.apache.ibatis.executor.ErrorContext, java.lang.String], org.apache.ibatis.executor.ErrorContext), closeStatement/458218187=([org.apache.ibatis.executor.statement.BaseStatementHandler, java.sql.Statement], void), var3324-init=([], org.apache.ibatis.executor.ExecutorException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1803-to-var3911=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1707365385=([org.apache.ibatis.executor.ExecutorException, java.lang.String, java.lang.Throwable], void), cast-from-var1803-to-var2564=([java.lang.Exception], java.lang.Throwable)}
; {var1971=org.apache.ibatis.executor.statement.BaseStatementHandler, var874=r0, var1837=java.sql.Connection, var3215=r4, var2195=r5, var1105=org.apache.ibatis.executor.ErrorContext, var1060=$r3, var2386=org.apache.ibatis.mapping.BoundSql, var1405=$r1, var2870=$r2, var986=java.sql.Statement, var1755=r13, var1803=java.lang.Exception, var659=$r6, var3324=org.apache.ibatis.executor.ExecutorException, var1968=$r7, var438=$r8, var1331=$r9, var3911=java.lang.Object, var317=$r10, var3747=$r11, var2564=java.lang.Throwable}
; {org.apache.ibatis.executor.statement.BaseStatementHandler=var1971, r0=var874, java.sql.Connection=var1837, r4=var3215, r5=var2195, org.apache.ibatis.executor.ErrorContext=var1105, $r3=var1060, org.apache.ibatis.mapping.BoundSql=var2386, $r1=var1405, $r2=var2870, java.sql.Statement=var986, r13=var1755, java.lang.Exception=var1803, $r6=var659, org.apache.ibatis.executor.ExecutorException=var3324, $r7=var1968, $r8=var438, $r9=var1331, java.lang.Object=var3911, $r10=var317, $r11=var3747, java.lang.Throwable=var2564}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.executor.statement.BaseStatementHandler;	r4 := @parameter0: java.sql.Connection;	r5 := @parameter1: java.lang.Integer;	$r3 = staticinvoke <org.apache.ibatis.executor.ErrorContext: org.apache.ibatis.executor.ErrorContext instance()>();	$r1 = r0.<org.apache.ibatis.executor.statement.BaseStatementHandler: org.apache.ibatis.mapping.BoundSql boundSql>;	$r2 = virtualinvoke $r1.<org.apache.ibatis.mapping.BoundSql: java.lang.String getSql()>();	virtualinvoke $r3.<org.apache.ibatis.executor.ErrorContext: org.apache.ibatis.executor.ErrorContext sql(java.lang.String)>($r2);	r13 = null;	$r6 := @caughtexception;	virtualinvoke r0.<org.apache.ibatis.executor.statement.BaseStatementHandler: void closeStatement(java.sql.Statement)>(r13);	$r7 = new org.apache.ibatis.executor.ExecutorException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error preparing statement.  Cause: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<org.apache.ibatis.executor.ExecutorException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r6);	throw $r7
;block_num 2