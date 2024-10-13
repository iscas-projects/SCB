(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var51 0)
(declare-sort var3525 0)
(declare-sort var784 0)
(declare-sort var2153 0)
(declare-sort var1358 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun factory/1413847375 (var51) var3525)
(declare-fun var2153-init () var2153)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var2153 String var1358) void)
(declare-fun cast-from-var784-to-var1358 (var784) var1358)
(declare-fun cast-from-var2153-to-var1358 (var2153) var1358)
(declare-const null-var51 var51)
(declare-const null-Int Int)
(declare-const null-var784 var784)
(declare-const var2427 var51) ; Statement: r0 := @this: org.hibernate.loader.custom.JdbcResultMetadata 
(assert (not (= var2427 null-var51)))
(declare-const var969 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var969 null-Int)))
(define-const var918 var3525 (factory/1413847375 var2427)) ; Statement: $r1 = r0.<org.hibernate.loader.custom.JdbcResultMetadata: org.hibernate.engine.spi.SessionFactoryImplementor factory> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1315 var784) ; Statement: $r6 := @caughtexception 
(assert (not (= var1315 null-var784)))
(define-const var543 var2153 var2153-init) ; Statement: $r14 = new org.hibernate.HibernateException 
(define-const var582 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var582)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var582!1 String)
(assert (= var582!1 ""))
(assert true)
(define-const var2501 String (append/672562846 var582!1 "Could not resolve column name [")) ; Statement: $r9 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not resolve column name [") 
(declare-const var582!2 String)
(assert (= var582!2 (str.++ var582!1 "Could not resolve column name [")))
(assert true)
(define-const var209 String (append/-1001720160 var2501 var969)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2501!1 String)
(assert (str.prefixof var2501 var2501!1))
(assert true)
(define-const var2785 String (append/672562846 var209 "]")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var209!1 String)
(assert (= var209!1 (str.++ var209 "]")))
(assert true)
(define-const var3106 String (toString/-2075883882 var2785)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var543 var3106 (cast-from-var784-to-var1358 var1315))) ; Statement: specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r6) 

(declare-const var543!1 var2153)
(declare-const var3106!1 String)
(declare-const var1315!1 var784)
(define-const var1802 var1358 (cast-from-var2153-to-var1358 var543!1)) ; Statement: $r15 = (java.lang.Throwable) $r14 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {factory/1413847375=([org.hibernate.loader.custom.JdbcResultMetadata], org.hibernate.engine.spi.SessionFactoryImplementor), var2153-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var784-to-var1358=([java.sql.SQLException], java.lang.Throwable), cast-from-var2153-to-var1358=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var51=org.hibernate.loader.custom.JdbcResultMetadata, var2427=r0, var969=i0, var3525=org.hibernate.engine.spi.SessionFactoryImplementor, var918=$r1, var784=java.sql.SQLException, var1315=$r6, var2153=org.hibernate.HibernateException, var543=$r14, var582=$r13, var2501=$r9, var209=$r10, var2785=$r11, var3106=$r12, var1358=java.lang.Throwable, var1802=$r15}
; {org.hibernate.loader.custom.JdbcResultMetadata=var51, r0=var2427, i0=var969, org.hibernate.engine.spi.SessionFactoryImplementor=var3525, $r1=var918, java.sql.SQLException=var784, $r6=var1315, org.hibernate.HibernateException=var2153, $r14=var543, $r13=var582, $r9=var2501, $r10=var209, $r11=var2785, $r12=var3106, java.lang.Throwable=var1358, $r15=var1802}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.custom.JdbcResultMetadata;	i0 := @parameter0: int;	$r1 = r0.<org.hibernate.loader.custom.JdbcResultMetadata: org.hibernate.engine.spi.SessionFactoryImplementor factory>;	$r6 := @caughtexception;	$r14 = new org.hibernate.HibernateException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not resolve column name [");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r6);	$r15 = (java.lang.Throwable) $r14;	throw $r15
;block_num 2