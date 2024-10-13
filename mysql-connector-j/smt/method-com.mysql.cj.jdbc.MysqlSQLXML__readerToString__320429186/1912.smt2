(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2322 0)
(declare-sort var556 0)
(declare-sort var2 0)
(declare-sort var2826 0)
(declare-sort var2069 0)
(declare-sort var298 0)
(declare-sort var232 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun getMessage/849299655 (var2826) String)
(declare-fun cast-from-var2-to-var2826 (var2) var2826)
(declare-fun exceptionInterceptor/-994324154 (var2322) var2069)
(declare-fun var232_createSQLException/-1540886474 (String String var2826 var2069) var298)
(declare-const null-var2322 var2322)
(declare-const null-var556 var556)
(declare-const null-var2 var2)
(declare-const var1693 var2322) ; Statement: r5 := @this: com.mysql.cj.jdbc.MysqlSQLXML 
(assert (not (= var1693 null-var2322)))
(declare-const var1479 var556) ; Statement: r2 := @parameter0: java.io.Reader 
(assert (not (= var1479 null-var556)))
(define-const var2920 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2920)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2920!1 String)
(assert (= var2920!1 ""))
(define-const var214 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (char)[512] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var775 var2) ; Statement: $r4 := @caughtexception 
(assert (not (= var775 null-var2)))
(assert true)
(define-const var1018 String (getMessage/849299655 (cast-from-var2-to-var2826 var775))) ; Statement: $r7 = virtualinvoke $r4.<java.io.IOException: java.lang.String getMessage()>() 
(define-const var998 var2069 (exceptionInterceptor/-994324154 var1693)) ; Statement: $r6 = r5.<com.mysql.cj.jdbc.MysqlSQLXML: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor> 
(define-const var20 var298 (var232_createSQLException/-1540886474 var1018 "S1009" (cast-from-var2-to-var2826 var775) var998)) ; Statement: r8 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,java.lang.Throwable,com.mysql.cj.exceptions.ExceptionInterceptor)>($r7, "S1009", $r4, $r6) 
 ; Statement: throw r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), arr-Int-init=([], char[]), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2-to-var2826=([java.io.IOException], java.lang.Throwable), exceptionInterceptor/-994324154=([com.mysql.cj.jdbc.MysqlSQLXML], com.mysql.cj.exceptions.ExceptionInterceptor), var232_createSQLException/-1540886474=([java.lang.String, java.lang.String, java.lang.Throwable, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var2322=com.mysql.cj.jdbc.MysqlSQLXML, var1693=r5, var556=java.io.Reader, var1479=r2, var2920=$r9, var214=r1, var2=java.io.IOException, var775=$r4, var2826=java.lang.Throwable, var1018=$r7, var2069=com.mysql.cj.exceptions.ExceptionInterceptor, var998=$r6, var298=java.sql.SQLException, var232=com.mysql.cj.jdbc.exceptions.SQLError, var20=r8}
; {com.mysql.cj.jdbc.MysqlSQLXML=var2322, r5=var1693, java.io.Reader=var556, r2=var1479, $r9=var2920, r1=var214, java.io.IOException=var2, $r4=var775, java.lang.Throwable=var2826, $r7=var1018, com.mysql.cj.exceptions.ExceptionInterceptor=var2069, $r6=var998, java.sql.SQLException=var298, com.mysql.cj.jdbc.exceptions.SQLError=var232, r8=var20}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r5 := @this: com.mysql.cj.jdbc.MysqlSQLXML;	r2 := @parameter0: java.io.Reader;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	r1 = newarray (char)[512];	$r4 := @caughtexception;	$r7 = virtualinvoke $r4.<java.io.IOException: java.lang.String getMessage()>();	$r6 = r5.<com.mysql.cj.jdbc.MysqlSQLXML: com.mysql.cj.exceptions.ExceptionInterceptor exceptionInterceptor>;	r8 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,java.lang.Throwable,com.mysql.cj.exceptions.ExceptionInterceptor)>($r7, "S1009", $r4, $r6);	throw r8
;block_num 2