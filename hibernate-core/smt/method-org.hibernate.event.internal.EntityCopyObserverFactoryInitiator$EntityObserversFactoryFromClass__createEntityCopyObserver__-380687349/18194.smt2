(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var201 0)
(declare-sort var134 0)
(declare-sort var357 0)
(declare-sort var1072 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var357-init () var357)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/-1441450140 (var201) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var357 String) void)
(declare-fun cast-from-var357-to-var1072 (var357) var1072)
(declare-const null-var201 var201)
(declare-const null-var134 var134)
(declare-const var2849 var201) ; Statement: r0 := @this: org.hibernate.event.internal.EntityCopyObserverFactoryInitiator$EntityObserversFactoryFromClass 
(assert (not (= var2849 null-var201)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1932 var134) ; Statement: $r4 := @caughtexception 
(assert (not (= var1932 null-var134)))
(define-const var1907 var357 var357-init) ; Statement: $r13 = new org.hibernate.HibernateException 
(define-const var3915 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3915)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3915!1 String)
(assert (= var3915!1 ""))
(assert true)
(define-const var905 String (append/672562846 var3915!1 "Could not instantiate class of type ")) ; Statement: $r9 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate class of type ") 
(declare-const var3915!2 String)
(assert (= var3915!2 (str.++ var3915!1 "Could not instantiate class of type ")))
(define-const var2232 ClassObject (value/-1441450140 var2849)) ; Statement: $r7 = r0.<org.hibernate.event.internal.EntityCopyObserverFactoryInitiator$EntityObserversFactoryFromClass: java.lang.Class value> 
(assert true)
(define-const var2663 String (getName/-1958580599 var2232)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2966 String (append/672562846 var905 var2663)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var905!1 String)
(assert (= var905!1 (str.++ var905 var2663)))
(assert true)
(define-const var3007 String (toString/-2075883882 var2966)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var1907 var3007)) ; Statement: specialinvoke $r13.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r11) 

(declare-const var1907!1 var357)
(declare-const var3007!1 String)
(define-const var1364 var1072 (cast-from-var357-to-var1072 var1907!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var357-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/-1441450140=([org.hibernate.event.internal.EntityCopyObserverFactoryInitiator$EntityObserversFactoryFromClass], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var357-to-var1072=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var201=org.hibernate.event.internal.EntityCopyObserverFactoryInitiator$EntityObserversFactoryFromClass, var2849=r0, var134=java.lang.Exception, var1932=$r4, var357=org.hibernate.HibernateException, var1907=$r13, var3915=$r12, var905=$r9, var2232=$r7, var2663=$r8, var2966=$r10, var3007=$r11, var1072=java.lang.Throwable, var1364=$r14}
; {org.hibernate.event.internal.EntityCopyObserverFactoryInitiator$EntityObserversFactoryFromClass=var201, r0=var2849, java.lang.Exception=var134, $r4=var1932, org.hibernate.HibernateException=var357, $r13=var1907, $r12=var3915, $r9=var905, $r7=var2232, $r8=var2663, $r10=var2966, $r11=var3007, java.lang.Throwable=var1072, $r14=var1364}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.event.internal.EntityCopyObserverFactoryInitiator$EntityObserversFactoryFromClass;	$r4 := @caughtexception;	$r13 = new org.hibernate.HibernateException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate class of type ");	$r7 = r0.<org.hibernate.event.internal.EntityCopyObserverFactoryInitiator$EntityObserversFactoryFromClass: java.lang.Class value>;	$r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r11);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 2