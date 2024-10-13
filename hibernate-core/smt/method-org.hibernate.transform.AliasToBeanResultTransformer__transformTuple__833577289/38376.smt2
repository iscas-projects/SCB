(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1693 0)
(declare-sort var1656 0)
(declare-sort var2646 0)
(declare-sort var1446 0)
(declare-sort var3750 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isInitialized/1657498889 (var1693) Bool)
(declare-fun var1446-init () var1446)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun resultClass/1657498889 (var1693) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var1446 String) void)
(declare-fun cast-from-var1446-to-var3750 (var1446) var3750)
(declare-const null-var1693 var1693)
(declare-const null-__Array__Int__var1656__ (Array Int var1656))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var2646 var2646)
(declare-const var1325 var1693) ; Statement: r0 := @this: org.hibernate.transform.AliasToBeanResultTransformer 
(assert (not (= var1325 null-var1693)))
(declare-const var3363 (Array Int var1656)) ; Statement: r6 := @parameter0: java.lang.Object[] 
(assert (not (= var3363 null-__Array__Int__var1656__)))
(declare-const var3779 (Array Int String)) ; Statement: r1 := @parameter1: java.lang.String[] 
(assert (not (= var3779 null-__Array__Int__String__)))
(define-const var96 Bool (isInitialized/1657498889 var1325)) ; Statement: $z0 = r0.<org.hibernate.transform.AliasToBeanResultTransformer: boolean isInitialized> 
 ; Statement: if $z0 != 0 goto specialinvoke r0.<org.hibernate.transform.AliasToBeanResultTransformer: void check(java.lang.String[])>(r1) 
(assert (not (not (= (ite var96 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(declare-const var1938 var2646) ; Statement: $r18 := @caughtexception 
(assert (not (= var1938 null-var2646)))
(define-const var2854 var1446 var1446-init) ; Statement: $r27 = new org.hibernate.HibernateException 
(define-const var3268 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3268)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3268!1 String)
(assert (= var3268!1 ""))
(assert true)
(define-const var3338 String (append/672562846 var3268!1 "Could not instantiate resultclass: ")) ; Statement: $r23 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate resultclass: ") 
(declare-const var3268!2 String)
(assert (= var3268!2 (str.++ var3268!1 "Could not instantiate resultclass: ")))
(define-const var3427 ClassObject (resultClass/1657498889 var1325)) ; Statement: $r21 = r0.<org.hibernate.transform.AliasToBeanResultTransformer: java.lang.Class resultClass> 
(assert true)
(define-const var65 String (getName/-1958580599 var3427)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2232 String (append/672562846 var3338 var65)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var3338!1 String)
(assert (= var3338!1 (str.++ var3338 var65)))
(assert true)
(define-const var3260 String (toString/-2075883882 var2232)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var2854 var3260)) ; Statement: specialinvoke $r27.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r25) 

(declare-const var2854!1 var1446)
(declare-const var3260!1 String)
(define-const var2235 var3750 (cast-from-var1446-to-var3750 var2854!1)) ; Statement: $r30 = (java.lang.Throwable) $r27 
 ; Statement: throw $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {isInitialized/1657498889=([org.hibernate.transform.AliasToBeanResultTransformer], boolean), var1446-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), resultClass/1657498889=([org.hibernate.transform.AliasToBeanResultTransformer], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var1446-to-var3750=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var1693=org.hibernate.transform.AliasToBeanResultTransformer, var1325=r0, var1656=java.lang.Object, var3363=r6, var3779=r1, var96=$z0, var2646=java.lang.InstantiationException, var1938=$r18, var1446=org.hibernate.HibernateException, var2854=$r27, var3268=$r26, var3338=$r23, var3427=$r21, var65=$r22, var2232=$r24, var3260=$r25, var3750=java.lang.Throwable, var2235=$r30}
; {org.hibernate.transform.AliasToBeanResultTransformer=var1693, r0=var1325, java.lang.Object=var1656, r6=var3363, r1=var3779, $z0=var96, java.lang.InstantiationException=var2646, $r18=var1938, org.hibernate.HibernateException=var1446, $r27=var2854, $r26=var3268, $r23=var3338, $r21=var3427, $r22=var65, $r24=var2232, $r25=var3260, java.lang.Throwable=var3750, $r30=var2235}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.transform.AliasToBeanResultTransformer;	r6 := @parameter0: java.lang.Object[];	r1 := @parameter1: java.lang.String[];	$z0 = r0.<org.hibernate.transform.AliasToBeanResultTransformer: boolean isInitialized>;	if $z0 != 0 goto specialinvoke r0.<org.hibernate.transform.AliasToBeanResultTransformer: void check(java.lang.String[])>(r1);	$r18 := @caughtexception;	$r27 = new org.hibernate.HibernateException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate resultclass: ");	$r21 = r0.<org.hibernate.transform.AliasToBeanResultTransformer: java.lang.Class resultClass>;	$r22 = virtualinvoke $r21.<java.lang.Class: java.lang.String getName()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r27.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r25);	$r30 = (java.lang.Throwable) $r27;	throw $r30
;block_num 2