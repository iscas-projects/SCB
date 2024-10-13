(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2930 0)
(declare-sort var1452 0)
(declare-sort var3397 0)
(declare-sort var31 0)
(declare-sort var240 0)
(declare-sort var2370 0)
(declare-sort var1707 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var240_access$300/-1028734574 () var31)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2370) String)
(declare-fun cast-from-var3397-to-var2370 (var3397) var2370)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var31_debug/-547240102 (var31 var1707) void)
(declare-fun cast-from-String-to-var1707 (String) var1707)
(declare-const null-var2930 var2930)
(declare-const null-var1452 var1452)
(declare-const null-var3397 var3397)
(declare-const var2486 var2930) ; Statement: r1 := @this: org.hibernate.hql.spi.id.local.Helper$TemporaryTableCreationWork 
(assert (not (= var2486 null-var2930)))
(declare-const var2171 var1452) ; Statement: r0 := @parameter0: java.sql.Connection 
(assert (not (= var2171 null-var1452)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var312 var3397) ; Statement: $r12 := @caughtexception 
(assert (not (= var312 null-var3397)))
(define-const var2347 var31 var240_access$300/-1028734574) ; Statement: $r19 = staticinvoke <org.hibernate.hql.spi.id.local.Helper: org.hibernate.internal.CoreMessageLogger access$300()>() 
(define-const var2213 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2213)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2213!1 String)
(assert (= var2213!1 ""))
(assert true)
(define-const var1694 String (append/672562846 var2213!1 "unable to create temporary id table [")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unable to create temporary id table [") 
(declare-const var2213!2 String)
(assert (= var2213!2 (str.++ var2213!1 "unable to create temporary id table [")))
(assert true)
(define-const var3196 String (getMessage/849299655 (cast-from-var3397-to-var2370 var312))) ; Statement: $r14 = virtualinvoke $r12.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var1417 String (append/672562846 var1694 var3196)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var1694!1 String)
(assert (= var1694!1 (str.++ var1694 var3196)))
(assert true)
(define-const var2387 String (append/672562846 var1417 "]")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1417!1 String)
(assert (= var1417!1 (str.++ var1417 "]")))
(assert true)
(define-const var787 String (toString/-2075883882 var2387)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var31_debug/-547240102 var2347 (cast-from-String-to-var1707 var787))) ; Statement: interfaceinvoke $r19.<org.hibernate.internal.CoreMessageLogger: void debug(java.lang.Object)>($r18) 

(declare-const var2347!1 var31)
(declare-const var787!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var240_access$300/-1028734574=([], org.hibernate.internal.CoreMessageLogger), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3397-to-var2370=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var31_debug/-547240102=([org.hibernate.internal.CoreMessageLogger, java.lang.Object], void), cast-from-String-to-var1707=([java.lang.String], java.lang.Object)}
; {var2930=org.hibernate.hql.spi.id.local.Helper$TemporaryTableCreationWork, var2486=r1, var1452=java.sql.Connection, var2171=r0, var3397=java.lang.Exception, var312=$r12, var31=org.hibernate.internal.CoreMessageLogger, var240=org.hibernate.hql.spi.id.local.Helper, var2347=$r19, var2213=$r13, var1694=$r15, var2370=java.lang.Throwable, var3196=$r14, var1417=$r16, var2387=$r17, var787=$r18, var1707=java.lang.Object}
; {org.hibernate.hql.spi.id.local.Helper$TemporaryTableCreationWork=var2930, r1=var2486, java.sql.Connection=var1452, r0=var2171, java.lang.Exception=var3397, $r12=var312, org.hibernate.internal.CoreMessageLogger=var31, org.hibernate.hql.spi.id.local.Helper=var240, $r19=var2347, $r13=var2213, $r15=var1694, java.lang.Throwable=var2370, $r14=var3196, $r16=var1417, $r17=var2387, $r18=var787, java.lang.Object=var1707}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.spi.id.local.Helper$TemporaryTableCreationWork;	r0 := @parameter0: java.sql.Connection;	$r12 := @caughtexception;	$r19 = staticinvoke <org.hibernate.hql.spi.id.local.Helper: org.hibernate.internal.CoreMessageLogger access$300()>();	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unable to create temporary id table [");	$r14 = virtualinvoke $r12.<java.lang.Exception: java.lang.String getMessage()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r19.<org.hibernate.internal.CoreMessageLogger: void debug(java.lang.Object)>($r18);	return
;block_num 3