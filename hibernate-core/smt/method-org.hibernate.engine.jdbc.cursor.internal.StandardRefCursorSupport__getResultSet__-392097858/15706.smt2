(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var758 0)
(declare-sort var2257 0)
(declare-sort var972 0)
(declare-sort var1606 0)
(declare-sort var3403 0)
(declare-sort var2332 0)
(declare-sort var2665 0)
(declare-sort var155 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jdbcServices/-1684383863 (var758) var1606)
(declare-fun var1606_getExtractedMetaDataSupport/-1588987849 (var1606) var3403)
(declare-fun var3403_supportsRefCursors/-172003149 (var3403) Bool)
(declare-fun var2665-init () var2665)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var2665 String var155) void)
(declare-fun cast-from-var2332-to-var155 (var2332) var155)
(declare-fun cast-from-var2665-to-var155 (var2665) var155)
(declare-const null-var758 var758)
(declare-const null-var2257 var2257)
(declare-const null-String String)
(declare-const null-var2332 var2332)
(declare-const var1853 var758) ; Statement: r0 := @this: org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport 
(assert (not (= var1853 null-var758)))
(declare-const var2449 var2257) ; Statement: r4 := @parameter0: java.sql.CallableStatement 
(assert (not (= var2449 null-var2257)))
(declare-const var1720 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var1720 null-String)))
(define-const var3515 var1606 (jdbcServices/-1684383863 var1853)) ; Statement: $r1 = r0.<org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport: org.hibernate.engine.jdbc.spi.JdbcServices jdbcServices> 
(define-const var2492 var3403 (var1606_getExtractedMetaDataSupport/-1588987849 var3515)) ; Statement: $r2 = interfaceinvoke $r1.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData getExtractedMetaDataSupport()>() 
(define-const var3760 Bool (var3403_supportsRefCursors/-172003149 var2492)) ; Statement: $z0 = interfaceinvoke $r2.<org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData: boolean supportsRefCursors()>() 
 ; Statement: if $z0 == 0 goto $r3 = r0.<org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport: org.hibernate.engine.jdbc.spi.JdbcServices jdbcServices> 
(assert (not (= (ite var3760 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var3418 var2332) ; Statement: $r19 := @caughtexception 
(assert (not (= var3418 null-var2332)))
(define-const var2304 var2665 var2665-init) ; Statement: $r27 = new org.hibernate.HibernateException 
(define-const var1729 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1729)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1729!1 String)
(assert (= var1729!1 ""))
(assert true)
(define-const var996 String (append/672562846 var1729!1 "Unexpected error extracting REF_CURSOR parameter [")) ; Statement: $r22 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected error extracting REF_CURSOR parameter [") 
(declare-const var1729!2 String)
(assert (= var1729!2 (str.++ var1729!1 "Unexpected error extracting REF_CURSOR parameter [")))
(assert true)
(define-const var3134 String (append/672562846 var996 var1720)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var996!1 String)
(assert (= var996!1 (str.++ var996 var1720)))
(assert true)
(define-const var1946 String (append/672562846 var3134 "]")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3134!1 String)
(assert (= var3134!1 (str.++ var3134 "]")))
(assert true)
(define-const var239 String (toString/-2075883882 var1946)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var2304 var239 (cast-from-var2332-to-var155 var3418))) ; Statement: specialinvoke $r27.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r25, $r19) 

(declare-const var2304!1 var2665)
(declare-const var239!1 String)
(declare-const var3418!1 var2332)
(define-const var1837 var155 (cast-from-var2665-to-var155 var2304!1)) ; Statement: $r29 = (java.lang.Throwable) $r27 
 ; Statement: throw $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {jdbcServices/-1684383863=([org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport], org.hibernate.engine.jdbc.spi.JdbcServices), var1606_getExtractedMetaDataSupport/-1588987849=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData), var3403_supportsRefCursors/-172003149=([org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData], boolean), var2665-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var2332-to-var155=([java.lang.Exception], java.lang.Throwable), cast-from-var2665-to-var155=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var758=org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport, var1853=r0, var2257=java.sql.CallableStatement, var2449=r4, var1720=r5, var972=null_type, var1606=org.hibernate.engine.jdbc.spi.JdbcServices, var3515=$r1, var3403=org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData, var2492=$r2, var3760=$z0, var2332=java.lang.Exception, var3418=$r19, var2665=org.hibernate.HibernateException, var2304=$r27, var1729=$r26, var996=$r22, var3134=$r23, var1946=$r24, var239=$r25, var155=java.lang.Throwable, var1837=$r29}
; {org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport=var758, r0=var1853, java.sql.CallableStatement=var2257, r4=var2449, r5=var1720, null_type=var972, org.hibernate.engine.jdbc.spi.JdbcServices=var1606, $r1=var3515, org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData=var3403, $r2=var2492, $z0=var3760, java.lang.Exception=var2332, $r19=var3418, org.hibernate.HibernateException=var2665, $r27=var2304, $r26=var1729, $r22=var996, $r23=var3134, $r24=var1946, $r25=var239, java.lang.Throwable=var155, $r29=var1837}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport;	r4 := @parameter0: java.sql.CallableStatement;	r5 := @parameter1: java.lang.String;	$r1 = r0.<org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport: org.hibernate.engine.jdbc.spi.JdbcServices jdbcServices>;	$r2 = interfaceinvoke $r1.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData getExtractedMetaDataSupport()>();	$z0 = interfaceinvoke $r2.<org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData: boolean supportsRefCursors()>();	if $z0 == 0 goto $r3 = r0.<org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport: org.hibernate.engine.jdbc.spi.JdbcServices jdbcServices>;	$r19 := @caughtexception;	$r27 = new org.hibernate.HibernateException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected error extracting REF_CURSOR parameter [");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r25, $r19);	$r29 = (java.lang.Throwable) $r27;	throw $r29
;block_num 2