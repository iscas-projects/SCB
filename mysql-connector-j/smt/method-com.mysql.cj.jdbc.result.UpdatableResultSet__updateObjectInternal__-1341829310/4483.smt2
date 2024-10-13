(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var893 0)
(declare-sort var2330 0)
(declare-sort var2101 0)
(declare-sort var3201 0)
(declare-sort var2527 0)
(declare-sort var80 0)
(declare-sort var1434 0)
(declare-sort var901 0)
(declare-sort var2454 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3201_getString/-1547297038 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun intValue/-1815674922 (Int) Int)
(declare-fun var2527_valueOf/869966586 (Int) var2527)
(declare-fun append/-1031950772 (String var2330) String)
(declare-fun cast-from-var2527-to-var2330 (var2527) var2330)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getExceptionInterceptor/1402654980 (var1434) var80)
(declare-fun cast-from-var893-to-var1434 (var893) var1434)
(declare-fun var2454_createSQLFeatureNotSupportedException/-586423077 (String String var80) var901)
(declare-const null-var893 var893)
(declare-const null-Int Int)
(declare-const null-var2330 var2330)
(declare-const null-var2101 var2101)
(declare-const var2475 var893) ; Statement: r1 := @this: com.mysql.cj.jdbc.result.UpdatableResultSet 
(assert (not (= var2475 null-var893)))
(declare-const var3971 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var3971 null-Int)))
(declare-const var2396 var2330) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var2396 null-var2330)))
(declare-const var333 Int) ; Statement: r0 := @parameter2: java.lang.Integer 
(assert (not (= var333 null-Int)))
(declare-const var2574 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var2574 null-Int)))
 ; Statement: if r0 != null goto $i0 = virtualinvoke r0.<java.lang.Integer: int intValue()>() 
(assert (not (not (= var333 null-Int)))) ; Negate: Cond: r0 != null  
(declare-const var3021 var2101) ; Statement: $r3 := @caughtexception 
(assert (not (= var3021 null-var2101)))
(define-const var2894 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2894)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2894!1 String)
(assert (= var2894!1 ""))
(define-const var1650 String (var3201_getString/-1547297038 "Statement.UnsupportedSQLType")) ; Statement: $r5 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("Statement.UnsupportedSQLType") 
(assert true)
(define-const var3962 String (append/672562846 var2894!1 var1650)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2894!2 String)
(assert (= var2894!2 (str.++ var2894!1 var1650)))
(assert true)
(define-const var398 Int (intValue/-1815674922 var333)) ; Statement: $i3 = virtualinvoke r0.<java.lang.Integer: int intValue()>() 
(define-const var1326 var2527 (var2527_valueOf/869966586 var398)) ; Statement: $r6 = staticinvoke <java.sql.JDBCType: java.sql.JDBCType valueOf(int)>($i3) 
(assert true)
(define-const var1651 String (append/-1031950772 var3962 (cast-from-var2527-to-var2330 var1326))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var3962!1 String)
(assert (str.prefixof var3962 var3962!1))
(assert true)
(define-const var3093 String (toString/-2075883882 var1651)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var351 var80 (getExceptionInterceptor/1402654980 (cast-from-var893-to-var1434 var2475))) ; Statement: $r9 = virtualinvoke r1.<com.mysql.cj.jdbc.result.UpdatableResultSet: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var2963 var901 (var2454_createSQLFeatureNotSupportedException/-586423077 var3093 "S1C00" var351)) ; Statement: $r11 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLFeatureNotSupportedException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r10, "S1C00", $r9) 
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3201_getString/-1547297038=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), intValue/-1815674922=([java.lang.Integer], int), var2527_valueOf/869966586=([int], java.sql.JDBCType), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2527-to-var2330=([java.sql.JDBCType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getExceptionInterceptor/1402654980=([com.mysql.cj.jdbc.result.ResultSetImpl], com.mysql.cj.exceptions.ExceptionInterceptor), cast-from-var893-to-var1434=([com.mysql.cj.jdbc.result.UpdatableResultSet], com.mysql.cj.jdbc.result.ResultSetImpl), var2454_createSQLFeatureNotSupportedException/-586423077=([java.lang.String, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], java.sql.SQLException)}
; {var893=com.mysql.cj.jdbc.result.UpdatableResultSet, var2475=r1, var3971=i1, var2330=java.lang.Object, var2396=r2, var333=r0, var2574=i2, var2101=com.mysql.cj.exceptions.FeatureNotAvailableException, var3021=$r3, var2894=$r4, var3201=com.mysql.cj.Messages, var1650=$r5, var3962=$r7, var398=$i3, var2527=java.sql.JDBCType, var1326=$r6, var1651=$r8, var3093=$r10, var80=com.mysql.cj.exceptions.ExceptionInterceptor, var1434=com.mysql.cj.jdbc.result.ResultSetImpl, var351=$r9, var901=java.sql.SQLException, var2454=com.mysql.cj.jdbc.exceptions.SQLError, var2963=$r11}
; {com.mysql.cj.jdbc.result.UpdatableResultSet=var893, r1=var2475, i1=var3971, java.lang.Object=var2330, r2=var2396, r0=var333, i2=var2574, com.mysql.cj.exceptions.FeatureNotAvailableException=var2101, $r3=var3021, $r4=var2894, com.mysql.cj.Messages=var3201, $r5=var1650, $r7=var3962, $i3=var398, java.sql.JDBCType=var2527, $r6=var1326, $r8=var1651, $r10=var3093, com.mysql.cj.exceptions.ExceptionInterceptor=var80, com.mysql.cj.jdbc.result.ResultSetImpl=var1434, $r9=var351, java.sql.SQLException=var901, com.mysql.cj.jdbc.exceptions.SQLError=var2454, $r11=var2963}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.result.UpdatableResultSet;	i1 := @parameter0: int;	r2 := @parameter1: java.lang.Object;	r0 := @parameter2: java.lang.Integer;	i2 := @parameter3: int;	if r0 != null goto $i0 = virtualinvoke r0.<java.lang.Integer: int intValue()>();	$r3 := @caughtexception;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("Statement.UnsupportedSQLType");	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$i3 = virtualinvoke r0.<java.lang.Integer: int intValue()>();	$r6 = staticinvoke <java.sql.JDBCType: java.sql.JDBCType valueOf(int)>($i3);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke r1.<com.mysql.cj.jdbc.result.UpdatableResultSet: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r11 = staticinvoke <com.mysql.cj.jdbc.exceptions.SQLError: java.sql.SQLException createSQLFeatureNotSupportedException(java.lang.String,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r10, "S1C00", $r9);	throw $r11
;block_num 2