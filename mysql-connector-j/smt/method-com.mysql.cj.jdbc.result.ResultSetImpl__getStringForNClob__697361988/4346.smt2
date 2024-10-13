(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2328 0)
(declare-sort var838 0)
(declare-sort var2608 0)
(declare-sort var3945 0)
(declare-sort var3889 0)
(declare-sort var2734 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getExceptionInterceptor/1402654980 (var2328) var3945)
(declare-fun var2734_createSQLException/-1268047242 (String String var3945) var3889)
(declare-const null-var2328 var2328)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var2608 var2608)
(declare-const var624 var2328) ; Statement: r0 := @this: com.mysql.cj.jdbc.result.ResultSetImpl 
(assert (not (= var624 null-var2328)))
(declare-const var1384 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1384 null-Int)))
(define-const var913 String null-String) ; Statement: r9 = null 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1515 var2608) ; Statement: $r2 := @caughtexception 
(assert (not (= var1515 null-var2608)))
(define-const var2314 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2314)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2314!1 String)
(assert (= var2314!1 ""))
(assert true)
(define-const var1038 String (append/672562846 var2314!1 "Unsupported character encoding ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported character encoding ") 
(declare-const var2314!2 String)
(assert (= var2314!2 (str.++ var2314!1 "Unsupported character encoding ")))
(assert true)
(define-const var2454 String (append/672562846 var1038 "UTF-8")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UTF-8") 
(declare-const var1038!1 String)
(assert (= var1038!1 (str.++ var1038 "UTF-8")))
(assert true)
(define-const var2966 String (toString/-2075883882 var2454)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var746 var3945 (getExceptionInterceptor/1402654980 var624)) ; Statement: $r6 = virtualinvoke r0.<com.mysql.cj.jdbc.result.ResultSetImpl: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var82 var3889 (var2734_createSQLException/-1268047242 var2966 "S1009" var746)) ; Statement: $r8 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r7, "S1009", $r6) 
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getExceptionInterceptor/1402654980=([com.mysql.cj.jdbc.result.ResultSetImpl], com.mysql.cj.exceptions.ExceptionInterceptor), var2734_createSQLException/-1268047242=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var2328=com.mysql.cj.jdbc.result.ResultSetImpl, var624=r0, var1384=i0, var838=null_type, var913=r9, var2608=java.io.UnsupportedEncodingException, var1515=$r2, var2314=$r3, var1038=$r4, var2454=$r5, var2966=$r7, var3945=com.mysql.cj.exceptions.ExceptionInterceptor, var746=$r6, var3889=java.sql.SQLException, var2734=com.mysql.cj.jdbc.exceptions.SQLError, var82=$r8}
; {com.mysql.cj.jdbc.result.ResultSetImpl=var2328, r0=var624, i0=var1384, null_type=var838, r9=var913, java.io.UnsupportedEncodingException=var2608, $r2=var1515, $r3=var2314, $r4=var1038, $r5=var2454, $r7=var2966, com.mysql.cj.exceptions.ExceptionInterceptor=var3945, $r6=var746, java.sql.SQLException=var3889, com.mysql.cj.jdbc.exceptions.SQLError=var2734, $r8=var82}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.jdbc.result.ResultSetImpl;	i0 := @parameter0: int;	r9 = null;	$r2 := @caughtexception;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported character encoding ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UTF-8");	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r0.<com.mysql.cj.jdbc.result.ResultSetImpl: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r8 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r7, "S1009", $r6);	throw $r8
;block_num 2