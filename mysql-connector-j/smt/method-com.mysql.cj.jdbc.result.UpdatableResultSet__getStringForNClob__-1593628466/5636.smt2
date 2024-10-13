(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2111 0)
(declare-sort var3220 0)
(declare-sort var393 0)
(declare-sort var2934 0)
(declare-sort var3694 0)
(declare-sort var1903 0)
(declare-sort var1486 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getExceptionInterceptor/1402654980 (var3694) var2934)
(declare-fun cast-from-var2111-to-var3694 (var2111) var3694)
(declare-fun var1486_createSQLException/-1268047242 (String String var2934) var1903)
(declare-const null-var2111 var2111)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var393 var393)
(declare-const var2474 var2111) ; Statement: r0 := @this: com.mysql.cj.jdbc.result.UpdatableResultSet 
(assert (not (= var2474 null-var2111)))
(declare-const var2102 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2102 null-Int)))
(define-const var509 String null-String) ; Statement: r9 = null 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1638 var393) ; Statement: $r2 := @caughtexception 
(assert (not (= var1638 null-var393)))
(define-const var2231 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2231)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2231!1 String)
(assert (= var2231!1 ""))
(assert true)
(define-const var1346 String (append/672562846 var2231!1 "Unsupported character encoding ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported character encoding ") 
(declare-const var2231!2 String)
(assert (= var2231!2 (str.++ var2231!1 "Unsupported character encoding ")))
(assert true)
(define-const var2728 String (append/672562846 var1346 "UTF-8")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UTF-8") 
(declare-const var1346!1 String)
(assert (= var1346!1 (str.++ var1346 "UTF-8")))
(assert true)
(define-const var3559 String (toString/-2075883882 var2728)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3932 var2934 (getExceptionInterceptor/1402654980 (cast-from-var2111-to-var3694 var2474))) ; Statement: $r6 = virtualinvoke r0.<com.mysql.cj.jdbc.result.UpdatableResultSet: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var2718 var1903 (var1486_createSQLException/-1268047242 var3559 "S1009" var3932)) ; Statement: $r8 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r7, "S1009", $r6) 
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getExceptionInterceptor/1402654980=([com.mysql.cj.jdbc.result.ResultSetImpl], com.mysql.cj.exceptions.ExceptionInterceptor), cast-from-var2111-to-var3694=([com.mysql.cj.jdbc.result.UpdatableResultSet], com.mysql.cj.jdbc.result.ResultSetImpl), var1486_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var2111=com.mysql.cj.jdbc.result.UpdatableResultSet, var2474=r0, var2102=i0, var3220=null_type, var509=r9, var393=java.io.UnsupportedEncodingException, var1638=$r2, var2231=$r3, var1346=$r4, var2728=$r5, var3559=$r7, var2934=com.mysql.cj.exceptions.ExceptionInterceptor, var3694=com.mysql.cj.jdbc.result.ResultSetImpl, var3932=$r6, var1903=java.sql.SQLException, var1486=com.mysql.cj.jdbc.exceptions.SQLError, var2718=$r8}
; {com.mysql.cj.jdbc.result.UpdatableResultSet=var2111, r0=var2474, i0=var2102, null_type=var3220, r9=var509, java.io.UnsupportedEncodingException=var393, $r2=var1638, $r3=var2231, $r4=var1346, $r5=var2728, $r7=var3559, com.mysql.cj.exceptions.ExceptionInterceptor=var2934, com.mysql.cj.jdbc.result.ResultSetImpl=var3694, $r6=var3932, java.sql.SQLException=var1903, com.mysql.cj.jdbc.exceptions.SQLError=var1486, $r8=var2718}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.jdbc.result.UpdatableResultSet;	i0 := @parameter0: int;	r9 = null;	$r2 := @caughtexception;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported character encoding ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UTF-8");	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r0.<com.mysql.cj.jdbc.result.UpdatableResultSet: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r8 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r7, "S1009", $r6);	throw $r8
;block_num 2