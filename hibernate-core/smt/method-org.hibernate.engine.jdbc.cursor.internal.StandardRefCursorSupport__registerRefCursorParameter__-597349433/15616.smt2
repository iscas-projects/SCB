(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1148 0)
(declare-sort var2855 0)
(declare-sort var231 0)
(declare-sort var1038 0)
(declare-sort var2144 0)
(declare-sort var323 0)
(declare-sort var823 0)
(declare-sort var2200 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jdbcServices/-1684383863 (var1148) var231)
(declare-fun var231_getExtractedMetaDataSupport/-1588987849 (var231) var1038)
(declare-fun var1038_supportsRefCursors/-172003149 (var1038) Bool)
(declare-fun var231_getSqlExceptionHelper/1800321680 (var231) var323)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun convert/-1513422912 (var323 var2144 String) var823)
(declare-fun cast-from-var823-to-var2200 (var823) var2200)
(declare-const null-var1148 var1148)
(declare-const null-var2855 var2855)
(declare-const null-Int Int)
(declare-const null-var2144 var2144)
(declare-const var2301 var1148) ; Statement: r0 := @this: org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport 
(assert (not (= var2301 null-var1148)))
(declare-const var2733 var2855) ; Statement: r4 := @parameter0: java.sql.CallableStatement 
(assert (not (= var2733 null-var2855)))
(declare-const var1236 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1236 null-Int)))
(define-const var2984 var231 (jdbcServices/-1684383863 var2301)) ; Statement: $r1 = r0.<org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport: org.hibernate.engine.jdbc.spi.JdbcServices jdbcServices> 
(define-const var3111 var1038 (var231_getExtractedMetaDataSupport/-1588987849 var2984)) ; Statement: $r2 = interfaceinvoke $r1.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData getExtractedMetaDataSupport()>() 
(define-const var1276 Bool (var1038_supportsRefCursors/-172003149 var3111)) ; Statement: $z0 = interfaceinvoke $r2.<org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData: boolean supportsRefCursors()>() 
 ; Statement: if $z0 == 0 goto $r3 = r0.<org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport: org.hibernate.engine.jdbc.spi.JdbcServices jdbcServices> 
(assert (not (= (ite var1276 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var3582 var2144) ; Statement: $r15 := @caughtexception 
(assert (not (= var3582 null-var2144)))
(define-const var460 var231 (jdbcServices/-1684383863 var2301)) ; Statement: $r16 = r0.<org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport: org.hibernate.engine.jdbc.spi.JdbcServices jdbcServices> 
(define-const var2324 var323 (var231_getSqlExceptionHelper/1800321680 var460)) ; Statement: $r22 = interfaceinvoke $r16.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>() 
(define-const var2606 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2606)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2606!1 String)
(assert (= var2606!1 ""))
(assert true)
(define-const var2831 String (append/672562846 var2606!1 "Error registering REF_CURSOR parameter [")) ; Statement: $r18 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error registering REF_CURSOR parameter [") 
(declare-const var2606!2 String)
(assert (= var2606!2 (str.++ var2606!1 "Error registering REF_CURSOR parameter [")))
(assert true)
(define-const var3189 String (append/-1001720160 var2831 var1236)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2831!1 String)
(assert (str.prefixof var2831 var2831!1))
(assert true)
(define-const var2736 String (append/672562846 var3189 "]")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3189!1 String)
(assert (= var3189!1 (str.++ var3189 "]")))
(assert true)
(define-const var2131 String (toString/-2075883882 var2736)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var784 var823 (convert/-1513422912 var2324 var3582 var2131)) ; Statement: $r23 = virtualinvoke $r22.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String)>($r15, $r21) 
(define-const var3006 var2200 (cast-from-var823-to-var2200 var784)) ; Statement: $r26 = (java.lang.Throwable) $r23 
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {jdbcServices/-1684383863=([org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport], org.hibernate.engine.jdbc.spi.JdbcServices), var231_getExtractedMetaDataSupport/-1588987849=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData), var1038_supportsRefCursors/-172003149=([org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData], boolean), var231_getSqlExceptionHelper/1800321680=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.engine.jdbc.spi.SqlExceptionHelper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), convert/-1513422912=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String], org.hibernate.JDBCException), cast-from-var823-to-var2200=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var1148=org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport, var2301=r0, var2855=java.sql.CallableStatement, var2733=r4, var1236=i0, var231=org.hibernate.engine.jdbc.spi.JdbcServices, var2984=$r1, var1038=org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData, var3111=$r2, var1276=$z0, var2144=java.sql.SQLException, var3582=$r15, var460=$r16, var323=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var2324=$r22, var2606=$r24, var2831=$r18, var3189=$r19, var2736=$r20, var2131=$r21, var823=org.hibernate.JDBCException, var784=$r23, var2200=java.lang.Throwable, var3006=$r26}
; {org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport=var1148, r0=var2301, java.sql.CallableStatement=var2855, r4=var2733, i0=var1236, org.hibernate.engine.jdbc.spi.JdbcServices=var231, $r1=var2984, org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData=var1038, $r2=var3111, $z0=var1276, java.sql.SQLException=var2144, $r15=var3582, $r16=var460, org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var323, $r22=var2324, $r24=var2606, $r18=var2831, $r19=var3189, $r20=var2736, $r21=var2131, org.hibernate.JDBCException=var823, $r23=var784, java.lang.Throwable=var2200, $r26=var3006}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport;	r4 := @parameter0: java.sql.CallableStatement;	i0 := @parameter1: int;	$r1 = r0.<org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport: org.hibernate.engine.jdbc.spi.JdbcServices jdbcServices>;	$r2 = interfaceinvoke $r1.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData getExtractedMetaDataSupport()>();	$z0 = interfaceinvoke $r2.<org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData: boolean supportsRefCursors()>();	if $z0 == 0 goto $r3 = r0.<org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport: org.hibernate.engine.jdbc.spi.JdbcServices jdbcServices>;	$r15 := @caughtexception;	$r16 = r0.<org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport: org.hibernate.engine.jdbc.spi.JdbcServices jdbcServices>;	$r22 = interfaceinvoke $r16.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>();	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error registering REF_CURSOR parameter [");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$r23 = virtualinvoke $r22.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String)>($r15, $r21);	$r26 = (java.lang.Throwable) $r23;	throw $r26
;block_num 2