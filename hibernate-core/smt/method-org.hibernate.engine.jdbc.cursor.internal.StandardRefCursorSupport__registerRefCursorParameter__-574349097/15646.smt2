(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3561 0)
(declare-sort var3955 0)
(declare-sort var635 0)
(declare-sort var3045 0)
(declare-sort var867 0)
(declare-sort var3435 0)
(declare-sort var2776 0)
(declare-sort var3090 0)
(declare-sort var1270 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jdbcServices/-1684383863 (var3561) var3045)
(declare-fun var3045_getExtractedMetaDataSupport/-1588987849 (var3045) var867)
(declare-fun var867_supportsRefCursors/-172003149 (var867) Bool)
(declare-fun var3045_getSqlExceptionHelper/1800321680 (var3045) var2776)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun convert/-1513422912 (var2776 var3435 String) var3090)
(declare-fun cast-from-var3090-to-var1270 (var3090) var1270)
(declare-const null-var3561 var3561)
(declare-const null-var3955 var3955)
(declare-const null-String String)
(declare-const null-var3435 var3435)
(declare-const var3130 var3561) ; Statement: r0 := @this: org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport 
(assert (not (= var3130 null-var3561)))
(declare-const var786 var3955) ; Statement: r4 := @parameter0: java.sql.CallableStatement 
(assert (not (= var786 null-var3955)))
(declare-const var706 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var706 null-String)))
(define-const var951 var3045 (jdbcServices/-1684383863 var3130)) ; Statement: $r1 = r0.<org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport: org.hibernate.engine.jdbc.spi.JdbcServices jdbcServices> 
(define-const var1594 var867 (var3045_getExtractedMetaDataSupport/-1588987849 var951)) ; Statement: $r2 = interfaceinvoke $r1.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData getExtractedMetaDataSupport()>() 
(define-const var382 Bool (var867_supportsRefCursors/-172003149 var1594)) ; Statement: $z0 = interfaceinvoke $r2.<org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData: boolean supportsRefCursors()>() 
 ; Statement: if $z0 == 0 goto $r3 = r0.<org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport: org.hibernate.engine.jdbc.spi.JdbcServices jdbcServices> 
(assert (not (= (ite var382 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var803 var3435) ; Statement: $r16 := @caughtexception 
(assert (not (= var803 null-var3435)))
(define-const var412 var3045 (jdbcServices/-1684383863 var3130)) ; Statement: $r17 = r0.<org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport: org.hibernate.engine.jdbc.spi.JdbcServices jdbcServices> 
(define-const var630 var2776 (var3045_getSqlExceptionHelper/1800321680 var412)) ; Statement: $r23 = interfaceinvoke $r17.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>() 
(define-const var3520 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3520)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3520!1 String)
(assert (= var3520!1 ""))
(assert true)
(define-const var223 String (append/672562846 var3520!1 "Error registering REF_CURSOR parameter [")) ; Statement: $r19 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error registering REF_CURSOR parameter [") 
(declare-const var3520!2 String)
(assert (= var3520!2 (str.++ var3520!1 "Error registering REF_CURSOR parameter [")))
(assert true)
(define-const var920 String (append/672562846 var223 var706)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var223!1 String)
(assert (= var223!1 (str.++ var223 var706)))
(assert true)
(define-const var84 String (append/672562846 var920 "]")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var920!1 String)
(assert (= var920!1 (str.++ var920 "]")))
(assert true)
(define-const var1634 String (toString/-2075883882 var84)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2951 var3090 (convert/-1513422912 var630 var803 var1634)) ; Statement: $r24 = virtualinvoke $r23.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String)>($r16, $r22) 
(define-const var2491 var1270 (cast-from-var3090-to-var1270 var2951)) ; Statement: $r27 = (java.lang.Throwable) $r24 
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {jdbcServices/-1684383863=([org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport], org.hibernate.engine.jdbc.spi.JdbcServices), var3045_getExtractedMetaDataSupport/-1588987849=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData), var867_supportsRefCursors/-172003149=([org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData], boolean), var3045_getSqlExceptionHelper/1800321680=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.engine.jdbc.spi.SqlExceptionHelper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), convert/-1513422912=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String], org.hibernate.JDBCException), cast-from-var3090-to-var1270=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var3561=org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport, var3130=r0, var3955=java.sql.CallableStatement, var786=r4, var706=r5, var635=null_type, var3045=org.hibernate.engine.jdbc.spi.JdbcServices, var951=$r1, var867=org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData, var1594=$r2, var382=$z0, var3435=java.sql.SQLException, var803=$r16, var412=$r17, var2776=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var630=$r23, var3520=$r25, var223=$r19, var920=$r20, var84=$r21, var1634=$r22, var3090=org.hibernate.JDBCException, var2951=$r24, var1270=java.lang.Throwable, var2491=$r27}
; {org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport=var3561, r0=var3130, java.sql.CallableStatement=var3955, r4=var786, r5=var706, null_type=var635, org.hibernate.engine.jdbc.spi.JdbcServices=var3045, $r1=var951, org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData=var867, $r2=var1594, $z0=var382, java.sql.SQLException=var3435, $r16=var803, $r17=var412, org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var2776, $r23=var630, $r25=var3520, $r19=var223, $r20=var920, $r21=var84, $r22=var1634, org.hibernate.JDBCException=var3090, $r24=var2951, java.lang.Throwable=var1270, $r27=var2491}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport;	r4 := @parameter0: java.sql.CallableStatement;	r5 := @parameter1: java.lang.String;	$r1 = r0.<org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport: org.hibernate.engine.jdbc.spi.JdbcServices jdbcServices>;	$r2 = interfaceinvoke $r1.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData getExtractedMetaDataSupport()>();	$z0 = interfaceinvoke $r2.<org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData: boolean supportsRefCursors()>();	if $z0 == 0 goto $r3 = r0.<org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport: org.hibernate.engine.jdbc.spi.JdbcServices jdbcServices>;	$r16 := @caughtexception;	$r17 = r0.<org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport: org.hibernate.engine.jdbc.spi.JdbcServices jdbcServices>;	$r23 = interfaceinvoke $r17.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>();	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error registering REF_CURSOR parameter [");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	$r24 = virtualinvoke $r23.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String)>($r16, $r22);	$r27 = (java.lang.Throwable) $r24;	throw $r27
;block_num 2