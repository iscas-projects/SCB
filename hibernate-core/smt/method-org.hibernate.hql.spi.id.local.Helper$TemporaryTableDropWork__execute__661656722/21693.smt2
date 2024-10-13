(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var704 0)
(declare-sort var2541 0)
(declare-sort var3452 0)
(declare-sort var941 0)
(declare-sort var791 0)
(declare-sort var2086 0)
(declare-sort var247 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var791_access$300/-1028734574 () var941)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2086) String)
(declare-fun cast-from-var3452-to-var2086 (var3452) var2086)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var941_warn/86450157 (var941 var247) void)
(declare-fun cast-from-String-to-var247 (String) var247)
(declare-const null-var704 var704)
(declare-const null-var2541 var2541)
(declare-const null-var3452 var3452)
(declare-const var1950 var704) ; Statement: r1 := @this: org.hibernate.hql.spi.id.local.Helper$TemporaryTableDropWork 
(assert (not (= var1950 null-var704)))
(declare-const var478 var2541) ; Statement: r0 := @parameter0: java.sql.Connection 
(assert (not (= var478 null-var2541)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1745 var3452) ; Statement: $r12 := @caughtexception 
(assert (not (= var1745 null-var3452)))
(define-const var2506 var941 var791_access$300/-1028734574) ; Statement: $r19 = staticinvoke <org.hibernate.hql.spi.id.local.Helper: org.hibernate.internal.CoreMessageLogger access$300()>() 
(define-const var738 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var738)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var738!1 String)
(assert (= var738!1 ""))
(assert true)
(define-const var2488 String (append/672562846 var738!1 "unable to drop temporary id table after use [")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unable to drop temporary id table after use [") 
(declare-const var738!2 String)
(assert (= var738!2 (str.++ var738!1 "unable to drop temporary id table after use [")))
(assert true)
(define-const var53 String (getMessage/849299655 (cast-from-var3452-to-var2086 var1745))) ; Statement: $r14 = virtualinvoke $r12.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var3927 String (append/672562846 var2488 var53)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var2488!1 String)
(assert (= var2488!1 (str.++ var2488 var53)))
(assert true)
(define-const var2470 String (append/672562846 var3927 "]")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3927!1 String)
(assert (= var3927!1 (str.++ var3927 "]")))
(assert true)
(define-const var2211 String (toString/-2075883882 var2470)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var941_warn/86450157 var2506 (cast-from-String-to-var247 var2211))) ; Statement: interfaceinvoke $r19.<org.hibernate.internal.CoreMessageLogger: void warn(java.lang.Object)>($r18) 

(declare-const var2506!1 var941)
(declare-const var2211!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var791_access$300/-1028734574=([], org.hibernate.internal.CoreMessageLogger), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3452-to-var2086=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var941_warn/86450157=([org.hibernate.internal.CoreMessageLogger, java.lang.Object], void), cast-from-String-to-var247=([java.lang.String], java.lang.Object)}
; {var704=org.hibernate.hql.spi.id.local.Helper$TemporaryTableDropWork, var1950=r1, var2541=java.sql.Connection, var478=r0, var3452=java.lang.Exception, var1745=$r12, var941=org.hibernate.internal.CoreMessageLogger, var791=org.hibernate.hql.spi.id.local.Helper, var2506=$r19, var738=$r13, var2488=$r15, var2086=java.lang.Throwable, var53=$r14, var3927=$r16, var2470=$r17, var2211=$r18, var247=java.lang.Object}
; {org.hibernate.hql.spi.id.local.Helper$TemporaryTableDropWork=var704, r1=var1950, java.sql.Connection=var2541, r0=var478, java.lang.Exception=var3452, $r12=var1745, org.hibernate.internal.CoreMessageLogger=var941, org.hibernate.hql.spi.id.local.Helper=var791, $r19=var2506, $r13=var738, $r15=var2488, java.lang.Throwable=var2086, $r14=var53, $r16=var3927, $r17=var2470, $r18=var2211, java.lang.Object=var247}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.spi.id.local.Helper$TemporaryTableDropWork;	r0 := @parameter0: java.sql.Connection;	$r12 := @caughtexception;	$r19 = staticinvoke <org.hibernate.hql.spi.id.local.Helper: org.hibernate.internal.CoreMessageLogger access$300()>();	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unable to drop temporary id table after use [");	$r14 = virtualinvoke $r12.<java.lang.Exception: java.lang.String getMessage()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r19.<org.hibernate.internal.CoreMessageLogger: void warn(java.lang.Object)>($r18);	return
;block_num 3