(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2392 0)
(declare-sort var390 0)
(declare-sort var1223 0)
(declare-sort var3716 0)
(declare-sort var3262 0)
(declare-sort var82 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSQLState/-1621497016 (var2392) String)
(declare-fun getErrorCode/-627040970 (var2392) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getMessage/849299655 (var3716) String)
(declare-fun cast-from-var2392-to-var3716 (var2392) var3716)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3262_createSQLException/1374125651 (String String Int var1223) var2392)
(declare-fun getStackTrace/1942967699 (var3716) (Array Int var82))
(declare-fun setStackTrace/558595491 (var3716 (Array Int var82)) void)
(declare-const null-var2392 var2392)
(declare-const null-String String)
(declare-const null-var1223 var1223)
(declare-const var2532 var2392) ; Statement: r0 := @parameter0: java.sql.SQLException 
(assert (not (= var2532 null-var2392)))
(declare-const var1587 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var1587 null-String)))
(declare-const var956 var1223) ; Statement: r7 := @parameter2: com.mysql.cj.exceptions.ExceptionInterceptor 
(assert (not (= var956 null-var1223)))
(assert true)
(define-const var3972 String (getSQLState/-1621497016 var2532)) ; Statement: r1 = virtualinvoke r0.<java.sql.SQLException: java.lang.String getSQLState()>() 
(assert true)
(define-const var895 Int (getErrorCode/-627040970 var2532)) ; Statement: i0 = virtualinvoke r0.<java.sql.SQLException: int getErrorCode()>() 
(define-const var3771 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3771)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3771!1 String)
(assert (= var3771!1 ""))
(assert true)
(define-const var1077 String (getMessage/849299655 (cast-from-var2392-to-var3716 var2532))) ; Statement: $r3 = virtualinvoke r0.<java.sql.SQLException: java.lang.String getMessage()>() 
(assert true)
(define-const var2879 String (append/672562846 var3771!1 var1077)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3771!2 String)
(assert (= var3771!2 (str.++ var3771!1 var1077)))
(assert true)
(define-const var3192 String (append/672562846 var2879 var1587)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2879!1 String)
(assert (= var2879!1 (str.++ var2879 var1587)))
(assert true)
(define-const var1628 String (toString/-2075883882 var3192)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var189 var2392 (var3262_createSQLException/1374125651 var1628 var3972 var895 var956)) ; Statement: r9 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,int,com.mysql.cj.exceptions.ExceptionInterceptor)>($r8, r1, i0, r7) 
(assert true)
(define-const var3078 (Array Int var82) (getStackTrace/1942967699 (cast-from-var2392-to-var3716 var2532))) ; Statement: $r10 = virtualinvoke r0.<java.sql.SQLException: java.lang.StackTraceElement[] getStackTrace()>() 
(assert true)
;(assert (setStackTrace/558595491 (cast-from-var2392-to-var3716 var189) var3078)) ; Statement: virtualinvoke r9.<java.sql.SQLException: void setStackTrace(java.lang.StackTraceElement[])>($r10) 

(declare-const var189!1 var2392)
(declare-const var3078!1 (Array Int var82))
 ; Statement: return r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getSQLState/-1621497016=([java.sql.SQLException], java.lang.String), getErrorCode/-627040970=([java.sql.SQLException], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2392-to-var3716=([java.sql.SQLException], java.lang.Throwable), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3262_createSQLException/1374125651=([java.lang.String, java.lang.String, int, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException), getStackTrace/1942967699=([java.lang.Throwable], java.lang.StackTraceElement[]), setStackTrace/558595491=([java.lang.Throwable, java.lang.StackTraceElement[]], void)}
; {var2392=java.sql.SQLException, var2532=r0, var1587=r4, var390=null_type, var1223=com.mysql.cj.exceptions.ExceptionInterceptor, var956=r7, var3972=r1, var895=i0, var3771=$r2, var3716=java.lang.Throwable, var1077=$r3, var2879=$r5, var3192=$r6, var1628=$r8, var3262=com.mysql.cj.jdbc.exceptions.SQLError, var189=r9, var82=java.lang.StackTraceElement, var3078=$r10}
; {java.sql.SQLException=var2392, r0=var2532, r4=var1587, null_type=var390, com.mysql.cj.exceptions.ExceptionInterceptor=var1223, r7=var956, r1=var3972, i0=var895, $r2=var3771, java.lang.Throwable=var3716, $r3=var1077, $r5=var2879, $r6=var3192, $r8=var1628, com.mysql.cj.jdbc.exceptions.SQLError=var3262, r9=var189, java.lang.StackTraceElement=var82, $r10=var3078}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.sql.SQLException;	r4 := @parameter1: java.lang.String;	r7 := @parameter2: com.mysql.cj.exceptions.ExceptionInterceptor;	r1 = virtualinvoke r0.<java.sql.SQLException: java.lang.String getSQLState()>();	i0 = virtualinvoke r0.<java.sql.SQLException: int getErrorCode()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r0.<java.sql.SQLException: java.lang.String getMessage()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	r9 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLException(java.lang.String,java.lang.String,int,com.mysql.cj.exceptions.ExceptionInterceptor)>($r8, r1, i0, r7);	$r10 = virtualinvoke r0.<java.sql.SQLException: java.lang.StackTraceElement[] getStackTrace()>();	virtualinvoke r9.<java.sql.SQLException: void setStackTrace(java.lang.StackTraceElement[])>($r10);	return r9
;block_num 1