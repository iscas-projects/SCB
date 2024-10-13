(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var314 0)
(declare-sort var665 0)
(declare-sort var2375 0)
(declare-sort var1560 0)
(declare-sort var3105 0)
(declare-sort var1870 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var3105) String)
(declare-fun cast-from-var665-to-var3105 (var665) var3105)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun debug/-1936492793 (var2375 var1870) void)
(declare-fun cast-from-String-to-var1870 (String) var1870)
(declare-const null-var314 var314)
(declare-const null-var665 var665)
(declare-const var1560-log var2375)
(declare-const var3128 var314) ; Statement: r0 := @parameter0: java.sql.DatabaseMetaData 
(assert (not (= var3128 null-var314)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1047 var665) ; Statement: $r3 := @caughtexception 
(assert (not (= var1047 null-var665)))
(define-const var1208 var2375 var1560-log) ; Statement: $r5 = <org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport: org.jboss.logging.Logger log> 
(define-const var1323 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1323)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1323!1 String)
(assert (= var1323!1 ""))
(assert true)
(define-const var3408 String (append/672562846 var1323!1 "Unexpected error trying to gauge level of JDBC REF_CURSOR support : ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected error trying to gauge level of JDBC REF_CURSOR support : ") 
(declare-const var1323!2 String)
(assert (= var1323!2 (str.++ var1323!1 "Unexpected error trying to gauge level of JDBC REF_CURSOR support : ")))
(assert true)
(define-const var2186 String (getMessage/849299655 (cast-from-var665-to-var3105 var1047))) ; Statement: $r6 = virtualinvoke $r3.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var654 String (append/672562846 var3408 var2186)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3408!1 String)
(assert (= var3408!1 (str.++ var3408 var2186)))
(assert true)
(define-const var2837 String (toString/-2075883882 var654)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (debug/-1936492793 var1208 (cast-from-String-to-var1870 var2837))) ; Statement: virtualinvoke $r5.<org.jboss.logging.Logger: void debug(java.lang.Object)>($r9) 

(declare-const var1208!1 var2375)
(declare-const var2837!1 String)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var665-to-var3105=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), debug/-1936492793=([org.jboss.logging.Logger, java.lang.Object], void), cast-from-String-to-var1870=([java.lang.String], java.lang.Object)}
; {var314=java.sql.DatabaseMetaData, var3128=r0, var665=java.lang.Exception, var1047=$r3, var2375=org.jboss.logging.Logger, var1560=org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport, var1208=$r5, var1323=$r4, var3408=$r7, var3105=java.lang.Throwable, var2186=$r6, var654=$r8, var2837=$r9, var1870=java.lang.Object}
; {java.sql.DatabaseMetaData=var314, r0=var3128, java.lang.Exception=var665, $r3=var1047, org.jboss.logging.Logger=var2375, org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport=var1560, $r5=var1208, $r4=var1323, $r7=var3408, java.lang.Throwable=var3105, $r6=var2186, $r8=var654, $r9=var2837, java.lang.Object=var1870}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.sql.DatabaseMetaData;	$r3 := @caughtexception;	$r5 = <org.hibernate.engine.jdbc.cursor.internal.StandardRefCursorSupport: org.jboss.logging.Logger log>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected error trying to gauge level of JDBC REF_CURSOR support : ");	$r6 = virtualinvoke $r3.<java.lang.Exception: java.lang.String getMessage()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r5.<org.jboss.logging.Logger: void debug(java.lang.Object)>($r9);	return 0
;block_num 2