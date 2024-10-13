(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var464 0)
(declare-sort var809 0)
(declare-sort var1054 0)
(declare-sort var2692 0)
(declare-sort var3628 0)
(declare-sort var1877 0)
(declare-sort var2031 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jdbcServices/-1684383863 (var464) var1054)
(declare-fun var1054_getExtractedMetaDataSupport/-1588987849 (var1054) var2692)
(declare-fun var2692_supportsRefCursors/-172003149 (var2692) Bool)
(declare-fun var1877-init () var1877)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var1877 String var2031) void)
(declare-fun cast-from-var3628-to-var2031 (var3628) var2031)
(declare-fun cast-from-var1877-to-var2031 (var1877) var2031)
(declare-const null-var464 var464)
(declare-const null-var809 var809)
(declare-const null-Int Int)
(declare-const null-var3628 var3628)
(declare-const var3928 var464) ; Statement: r0 := @this: org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport 
(assert (not (= var3928 null-var464)))
(declare-const var2352 var809) ; Statement: r4 := @parameter0: java.sql.CallableStatement 
(assert (not (= var2352 null-var809)))
(declare-const var0 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var0 null-Int)))
(define-const var3228 var1054 (jdbcServices/-1684383863 var3928)) ; Statement: $r1 = r0.<org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport: org.hibernate.engine.jdbc.spi.JdbcServices jdbcServices> 
(define-const var3893 var2692 (var1054_getExtractedMetaDataSupport/-1588987849 var3228)) ; Statement: $r2 = interfaceinvoke $r1.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData getExtractedMetaDataSupport()>() 
(define-const var133 Bool (var2692_supportsRefCursors/-172003149 var3893)) ; Statement: $z0 = interfaceinvoke $r2.<org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData: boolean supportsRefCursors()>() 
 ; Statement: if $z0 == 0 goto $r3 = r0.<org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport: org.hibernate.engine.jdbc.spi.JdbcServices jdbcServices> 
(assert (not (= (ite var133 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var1640 var3628) ; Statement: $r18 := @caughtexception 
(assert (not (= var1640 null-var3628)))
(define-const var308 var1877 var1877-init) ; Statement: $r26 = new org.hibernate.HibernateException 
(define-const var3430 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3430)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3430!1 String)
(assert (= var3430!1 ""))
(assert true)
(define-const var3402 String (append/672562846 var3430!1 "Unexpected error extracting REF_CURSOR parameter [")) ; Statement: $r21 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected error extracting REF_CURSOR parameter [") 
(declare-const var3430!2 String)
(assert (= var3430!2 (str.++ var3430!1 "Unexpected error extracting REF_CURSOR parameter [")))
(assert true)
(define-const var2595 String (append/-1001720160 var3402 var0)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3402!1 String)
(assert (str.prefixof var3402 var3402!1))
(assert true)
(define-const var294 String (append/672562846 var2595 "]")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2595!1 String)
(assert (= var2595!1 (str.++ var2595 "]")))
(assert true)
(define-const var2109 String (toString/-2075883882 var294)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var308 var2109 (cast-from-var3628-to-var2031 var1640))) ; Statement: specialinvoke $r26.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r24, $r18) 

(declare-const var308!1 var1877)
(declare-const var2109!1 String)
(declare-const var1640!1 var3628)
(define-const var2740 var2031 (cast-from-var1877-to-var2031 var308!1)) ; Statement: $r28 = (java.lang.Throwable) $r26 
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {jdbcServices/-1684383863=([org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport], org.hibernate.engine.jdbc.spi.JdbcServices), var1054_getExtractedMetaDataSupport/-1588987849=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData), var2692_supportsRefCursors/-172003149=([org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData], boolean), var1877-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var3628-to-var2031=([java.lang.Exception], java.lang.Throwable), cast-from-var1877-to-var2031=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var464=org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport, var3928=r0, var809=java.sql.CallableStatement, var2352=r4, var0=i0, var1054=org.hibernate.engine.jdbc.spi.JdbcServices, var3228=$r1, var2692=org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData, var3893=$r2, var133=$z0, var3628=java.lang.Exception, var1640=$r18, var1877=org.hibernate.HibernateException, var308=$r26, var3430=$r25, var3402=$r21, var2595=$r22, var294=$r23, var2109=$r24, var2031=java.lang.Throwable, var2740=$r28}
; {org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport=var464, r0=var3928, java.sql.CallableStatement=var809, r4=var2352, i0=var0, org.hibernate.engine.jdbc.spi.JdbcServices=var1054, $r1=var3228, org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData=var2692, $r2=var3893, $z0=var133, java.lang.Exception=var3628, $r18=var1640, org.hibernate.HibernateException=var1877, $r26=var308, $r25=var3430, $r21=var3402, $r22=var2595, $r23=var294, $r24=var2109, java.lang.Throwable=var2031, $r28=var2740}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport;	r4 := @parameter0: java.sql.CallableStatement;	i0 := @parameter1: int;	$r1 = r0.<org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport: org.hibernate.engine.jdbc.spi.JdbcServices jdbcServices>;	$r2 = interfaceinvoke $r1.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData getExtractedMetaDataSupport()>();	$z0 = interfaceinvoke $r2.<org.hibernate.engine.jdbc.env.spi.ExtractedDatabaseMetaData: boolean supportsRefCursors()>();	if $z0 == 0 goto $r3 = r0.<org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport: org.hibernate.engine.jdbc.spi.JdbcServices jdbcServices>;	$r18 := @caughtexception;	$r26 = new org.hibernate.HibernateException;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected error extracting REF_CURSOR parameter [");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r26.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r24, $r18);	$r28 = (java.lang.Throwable) $r26;	throw $r28
;block_num 2