(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1997 0)
(declare-sort var723 0)
(declare-sort var993 0)
(declare-sort var917 0)
(declare-sort var3224 0)
(declare-sort var2117 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getServiceInitiator/-1331146401 (var723) var993)
(declare-fun var3224-init () var3224)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getServiceRole/-2089834759 (var723) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/858741025 (var3224 String var2117) void)
(declare-fun cast-from-var917-to-var2117 (var917) var2117)
(declare-fun cast-from-var3224-to-var2117 (var3224) var2117)
(declare-const null-var1997 var1997)
(declare-const null-var723 var723)
(declare-const null-var993 var993)
(declare-const null-var917 var917)
(declare-const var2137 var1997) ; Statement: r3 := @this: org.hibernate.service.internal.AbstractServiceRegistryImpl 
(assert (not (= var2137 null-var1997)))
(declare-const var120 var723) ; Statement: r0 := @parameter0: org.hibernate.service.spi.ServiceBinding 
(assert (not (= var120 null-var723)))
(assert true)
(define-const var3089 var993 (getServiceInitiator/-1331146401 var120)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.service.spi.ServiceBinding: org.hibernate.service.spi.ServiceInitiator getServiceInitiator()>() 
 ; Statement: if r1 != null goto $r2 = virtualinvoke r0.<org.hibernate.service.spi.ServiceBinding: org.hibernate.service.spi.ServiceBinding$ServiceLifecycleOwner getLifecycleOwner()>() 
(assert (not (not (= var3089 null-var993)))) ; Negate: Cond: r1 != null  
(declare-const var2861 var917) ; Statement: $r6 := @caughtexception 
(assert (not (= var2861 null-var917)))
(define-const var2745 var3224 var3224-init) ; Statement: $r18 = new org.hibernate.service.spi.ServiceException 
(define-const var1431 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1431)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1431!1 String)
(assert (= var1431!1 ""))
(assert true)
(define-const var1752 String (append/672562846 var1431!1 "Unable to create requested service [")) ; Statement: $r11 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to create requested service [") 
(declare-const var1431!2 String)
(assert (= var1431!2 (str.++ var1431!1 "Unable to create requested service [")))
(assert true)
(define-const var1416 ClassObject (getServiceRole/-2089834759 var120)) ; Statement: $r9 = virtualinvoke r0.<org.hibernate.service.spi.ServiceBinding: java.lang.Class getServiceRole()>() 
(assert true)
(define-const var2021 String (getName/-1958580599 var1416)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2975 String (append/672562846 var1752 var2021)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1752!1 String)
(assert (= var1752!1 (str.++ var1752 var2021)))
(assert true)
(define-const var2752 String (append/672562846 var2975 "]")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2975!1 String)
(assert (= var2975!1 (str.++ var2975 "]")))
(assert true)
(define-const var1731 String (toString/-2075883882 var2752)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/858741025 var2745 var1731 (cast-from-var917-to-var2117 var2861))) ; Statement: specialinvoke $r18.<org.hibernate.service.spi.ServiceException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6) 

(declare-const var2745!1 var3224)
(declare-const var1731!1 String)
(declare-const var2861!1 var917)
(define-const var2562 var2117 (cast-from-var3224-to-var2117 var2745!1)) ; Statement: $r20 = (java.lang.Throwable) $r18 
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {getServiceInitiator/-1331146401=([org.hibernate.service.spi.ServiceBinding], org.hibernate.service.spi.ServiceInitiator), var3224-init=([], org.hibernate.service.spi.ServiceException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getServiceRole/-2089834759=([org.hibernate.service.spi.ServiceBinding], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/858741025=([org.hibernate.service.spi.ServiceException, java.lang.String, java.lang.Throwable], void), cast-from-var917-to-var2117=([java.lang.Exception], java.lang.Throwable), cast-from-var3224-to-var2117=([org.hibernate.service.spi.ServiceException], java.lang.Throwable)}
; {var1997=org.hibernate.service.internal.AbstractServiceRegistryImpl, var2137=r3, var723=org.hibernate.service.spi.ServiceBinding, var120=r0, var993=org.hibernate.service.spi.ServiceInitiator, var3089=r1, var917=java.lang.Exception, var2861=$r6, var3224=org.hibernate.service.spi.ServiceException, var2745=$r18, var1431=$r17, var1752=$r11, var1416=$r9, var2021=$r10, var2975=$r12, var2752=$r13, var1731=$r14, var2117=java.lang.Throwable, var2562=$r20}
; {org.hibernate.service.internal.AbstractServiceRegistryImpl=var1997, r3=var2137, org.hibernate.service.spi.ServiceBinding=var723, r0=var120, org.hibernate.service.spi.ServiceInitiator=var993, r1=var3089, java.lang.Exception=var917, $r6=var2861, org.hibernate.service.spi.ServiceException=var3224, $r18=var2745, $r17=var1431, $r11=var1752, $r9=var1416, $r10=var2021, $r12=var2975, $r13=var2752, $r14=var1731, java.lang.Throwable=var2117, $r20=var2562}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.service.internal.AbstractServiceRegistryImpl;	r0 := @parameter0: org.hibernate.service.spi.ServiceBinding;	r1 = virtualinvoke r0.<org.hibernate.service.spi.ServiceBinding: org.hibernate.service.spi.ServiceInitiator getServiceInitiator()>();	if r1 != null goto $r2 = virtualinvoke r0.<org.hibernate.service.spi.ServiceBinding: org.hibernate.service.spi.ServiceBinding$ServiceLifecycleOwner getLifecycleOwner()>();	$r6 := @caughtexception;	$r18 = new org.hibernate.service.spi.ServiceException;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to create requested service [");	$r9 = virtualinvoke r0.<org.hibernate.service.spi.ServiceBinding: java.lang.Class getServiceRole()>();	$r10 = virtualinvoke $r9.<java.lang.Class: java.lang.String getName()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<org.hibernate.service.spi.ServiceException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6);	$r20 = (java.lang.Throwable) $r18;	throw $r20
;block_num 2