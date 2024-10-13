(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3551 0)
(declare-sort var2896 0)
(declare-sort var2993 0)
(declare-sort var1958 0)
(declare-sort var1457 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isInitialized/1657498889 (var3551) Bool)
(declare-fun var1958-init () var1958)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun resultClass/1657498889 (var3551) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var1958 String) void)
(declare-fun cast-from-var1958-to-var1457 (var1958) var1457)
(declare-const null-var3551 var3551)
(declare-const null-__Array__Int__var2896__ (Array Int var2896))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var2993 var2993)
(declare-const var919 var3551) ; Statement: r0 := @this: org.hibernate.transform.AliasToBeanResultTransformer 
(assert (not (= var919 null-var3551)))
(declare-const var3444 (Array Int var2896)) ; Statement: r6 := @parameter0: java.lang.Object[] 
(assert (not (= var3444 null-__Array__Int__var2896__)))
(declare-const var799 (Array Int String)) ; Statement: r1 := @parameter1: java.lang.String[] 
(assert (not (= var799 null-__Array__Int__String__)))
(define-const var1839 Bool (isInitialized/1657498889 var919)) ; Statement: $z0 = r0.<org.hibernate.transform.AliasToBeanResultTransformer: boolean isInitialized> 
 ; Statement: if $z0 != 0 goto specialinvoke r0.<org.hibernate.transform.AliasToBeanResultTransformer: void check(java.lang.String[])>(r1) 
(assert (not (not (= (ite var1839 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(declare-const var2409 var2993) ; Statement: $r10 := @caughtexception 
(assert (not (= var2409 null-var2993)))
(define-const var2748 var1958 var1958-init) ; Statement: $r29 = new org.hibernate.HibernateException 
(define-const var116 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var116)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var116!1 String)
(assert (= var116!1 ""))
(assert true)
(define-const var2395 String (append/672562846 var116!1 "Could not instantiate resultclass: ")) ; Statement: $r15 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate resultclass: ") 
(declare-const var116!2 String)
(assert (= var116!2 (str.++ var116!1 "Could not instantiate resultclass: ")))
(define-const var2726 ClassObject (resultClass/1657498889 var919)) ; Statement: $r13 = r0.<org.hibernate.transform.AliasToBeanResultTransformer: java.lang.Class resultClass> 
(assert true)
(define-const var3511 String (getName/-1958580599 var2726)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3102 String (append/672562846 var2395 var3511)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var2395!1 String)
(assert (= var2395!1 (str.++ var2395 var3511)))
(assert true)
(define-const var1634 String (toString/-2075883882 var3102)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var2748 var1634)) ; Statement: specialinvoke $r29.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r17) 

(declare-const var2748!1 var1958)
(declare-const var1634!1 String)
(define-const var2413 var1457 (cast-from-var1958-to-var1457 var2748!1)) ; Statement: $r31 = (java.lang.Throwable) $r29 
 ; Statement: throw $r31 
(check-sat)
(get-model)
(get-unsat-core)
; {isInitialized/1657498889=([org.hibernate.transform.AliasToBeanResultTransformer], boolean), var1958-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), resultClass/1657498889=([org.hibernate.transform.AliasToBeanResultTransformer], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var1958-to-var1457=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var3551=org.hibernate.transform.AliasToBeanResultTransformer, var919=r0, var2896=java.lang.Object, var3444=r6, var799=r1, var1839=$z0, var2993=java.lang.IllegalAccessException, var2409=$r10, var1958=org.hibernate.HibernateException, var2748=$r29, var116=$r28, var2395=$r15, var2726=$r13, var3511=$r14, var3102=$r16, var1634=$r17, var1457=java.lang.Throwable, var2413=$r31}
; {org.hibernate.transform.AliasToBeanResultTransformer=var3551, r0=var919, java.lang.Object=var2896, r6=var3444, r1=var799, $z0=var1839, java.lang.IllegalAccessException=var2993, $r10=var2409, org.hibernate.HibernateException=var1958, $r29=var2748, $r28=var116, $r15=var2395, $r13=var2726, $r14=var3511, $r16=var3102, $r17=var1634, java.lang.Throwable=var1457, $r31=var2413}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.transform.AliasToBeanResultTransformer;	r6 := @parameter0: java.lang.Object[];	r1 := @parameter1: java.lang.String[];	$z0 = r0.<org.hibernate.transform.AliasToBeanResultTransformer: boolean isInitialized>;	if $z0 != 0 goto specialinvoke r0.<org.hibernate.transform.AliasToBeanResultTransformer: void check(java.lang.String[])>(r1);	$r10 := @caughtexception;	$r29 = new org.hibernate.HibernateException;	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate resultclass: ");	$r13 = r0.<org.hibernate.transform.AliasToBeanResultTransformer: java.lang.Class resultClass>;	$r14 = virtualinvoke $r13.<java.lang.Class: java.lang.String getName()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r29.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r17);	$r31 = (java.lang.Throwable) $r29;	throw $r31
;block_num 2