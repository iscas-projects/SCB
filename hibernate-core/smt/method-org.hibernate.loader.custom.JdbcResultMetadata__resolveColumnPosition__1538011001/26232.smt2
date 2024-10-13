(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2001 0)
(declare-sort var1873 0)
(declare-sort var435 0)
(declare-sort var1151 0)
(declare-sort var2908 0)
(declare-sort var2795 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun resultSet/1413847375 (var2001) var435)
(declare-fun var2908-init () var2908)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var2908 String var2795) void)
(declare-fun cast-from-var1151-to-var2795 (var1151) var2795)
(declare-fun cast-from-var2908-to-var2795 (var2908) var2795)
(declare-const null-var2001 var2001)
(declare-const null-String String)
(declare-const null-var1151 var1151)
(declare-const var3580 var2001) ; Statement: r0 := @this: org.hibernate.loader.custom.JdbcResultMetadata 
(assert (not (= var3580 null-var2001)))
(declare-const var3939 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3939 null-String)))
(define-const var2303 var435 (resultSet/1413847375 var3580)) ; Statement: $r2 = r0.<org.hibernate.loader.custom.JdbcResultMetadata: java.sql.ResultSet resultSet> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1855 var1151) ; Statement: $r3 := @caughtexception 
(assert (not (= var1855 null-var1151)))
(define-const var2502 var2908 var2908-init) ; Statement: $r11 = new org.hibernate.HibernateException 
(define-const var249 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var249)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var249!1 String)
(assert (= var249!1 ""))
(assert true)
(define-const var449 String (append/672562846 var249!1 "Could not resolve column name in result set [")) ; Statement: $r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not resolve column name in result set [") 
(declare-const var249!2 String)
(assert (= var249!2 (str.++ var249!1 "Could not resolve column name in result set [")))
(assert true)
(define-const var3210 String (append/672562846 var449 var3939)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var449!1 String)
(assert (= var449!1 (str.++ var449 var3939)))
(assert true)
(define-const var2067 String (append/672562846 var3210 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3210!1 String)
(assert (= var3210!1 (str.++ var3210 "]")))
(assert true)
(define-const var1946 String (toString/-2075883882 var2067)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var2502 var1946 (cast-from-var1151-to-var2795 var1855))) ; Statement: specialinvoke $r11.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r3) 

(declare-const var2502!1 var2908)
(declare-const var1946!1 String)
(declare-const var1855!1 var1151)
(define-const var1201 var2795 (cast-from-var2908-to-var2795 var2502!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {resultSet/1413847375=([org.hibernate.loader.custom.JdbcResultMetadata], java.sql.ResultSet), var2908-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var1151-to-var2795=([java.sql.SQLException], java.lang.Throwable), cast-from-var2908-to-var2795=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2001=org.hibernate.loader.custom.JdbcResultMetadata, var3580=r0, var3939=r1, var1873=null_type, var435=java.sql.ResultSet, var2303=$r2, var1151=java.sql.SQLException, var1855=$r3, var2908=org.hibernate.HibernateException, var2502=$r11, var249=$r10, var449=$r6, var3210=$r7, var2067=$r8, var1946=$r9, var2795=java.lang.Throwable, var1201=$r12}
; {org.hibernate.loader.custom.JdbcResultMetadata=var2001, r0=var3580, r1=var3939, null_type=var1873, java.sql.ResultSet=var435, $r2=var2303, java.sql.SQLException=var1151, $r3=var1855, org.hibernate.HibernateException=var2908, $r11=var2502, $r10=var249, $r6=var449, $r7=var3210, $r8=var2067, $r9=var1946, java.lang.Throwable=var2795, $r12=var1201}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.custom.JdbcResultMetadata;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.loader.custom.JdbcResultMetadata: java.sql.ResultSet resultSet>;	$r3 := @caughtexception;	$r11 = new org.hibernate.HibernateException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not resolve column name in result set [");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r3);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 2