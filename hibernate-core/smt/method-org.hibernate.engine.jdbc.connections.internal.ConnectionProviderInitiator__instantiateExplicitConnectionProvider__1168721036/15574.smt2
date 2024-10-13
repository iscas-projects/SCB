(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2842 0)
(declare-sort var2414 0)
(declare-sort var1353 0)
(declare-sort var206 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1353-init () var1353)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var1353 String var206) void)
(declare-fun cast-from-var2414-to-var206 (var2414) var206)
(declare-fun cast-from-var1353-to-var206 (var1353) var206)
(declare-const null-var2842 var2842)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2414 var2414)
(declare-const var3901 var2842) ; Statement: r11 := @this: org.hibernate.engine.jdbc.connections.internal.ConnectionProviderInitiator 
(assert (not (= var3901 null-var2842)))
(declare-const var2536 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2536 null-ClassObject)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var320 var2414) ; Statement: $r3 := @caughtexception 
(assert (not (= var320 null-var2414)))
(define-const var360 var1353 var1353-init) ; Statement: $r13 = new org.hibernate.HibernateException 
(define-const var1200 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1200)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1200!1 String)
(assert (= var1200!1 ""))
(assert true)
(define-const var2027 String (append/672562846 var1200!1 "Could not instantiate connection provider [")) ; Statement: $r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate connection provider [") 
(declare-const var1200!2 String)
(assert (= var1200!2 (str.++ var1200!1 "Could not instantiate connection provider [")))
(assert true)
(define-const var3016 String (getName/-1958580599 var2536)) ; Statement: $r6 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3523 String (append/672562846 var2027 var3016)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2027!1 String)
(assert (= var2027!1 (str.++ var2027 var3016)))
(assert true)
(define-const var2230 String (append/672562846 var3523 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3523!1 String)
(assert (= var3523!1 (str.++ var3523 "]")))
(assert true)
(define-const var774 String (toString/-2075883882 var2230)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var360 var774 (cast-from-var2414-to-var206 var320))) ; Statement: specialinvoke $r13.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3) 

(declare-const var360!1 var1353)
(declare-const var774!1 String)
(declare-const var320!1 var2414)
(define-const var885 var206 (cast-from-var1353-to-var206 var360!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var1353-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var2414-to-var206=([java.lang.Exception], java.lang.Throwable), cast-from-var1353-to-var206=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2842=org.hibernate.engine.jdbc.connections.internal.ConnectionProviderInitiator, var3901=r11, var2536=r0, var2414=java.lang.Exception, var320=$r3, var1353=org.hibernate.HibernateException, var360=$r13, var1200=$r12, var2027=$r7, var3016=$r6, var3523=$r8, var2230=$r9, var774=$r10, var206=java.lang.Throwable, var885=$r14}
; {org.hibernate.engine.jdbc.connections.internal.ConnectionProviderInitiator=var2842, r11=var3901, r0=var2536, java.lang.Exception=var2414, $r3=var320, org.hibernate.HibernateException=var1353, $r13=var360, $r12=var1200, $r7=var2027, $r6=var3016, $r8=var3523, $r9=var2230, $r10=var774, java.lang.Throwable=var206, $r14=var885}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.hibernate.engine.jdbc.connections.internal.ConnectionProviderInitiator;	r0 := @parameter0: java.lang.Class;	$r3 := @caughtexception;	$r13 = new org.hibernate.HibernateException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate connection provider [");	$r6 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 2