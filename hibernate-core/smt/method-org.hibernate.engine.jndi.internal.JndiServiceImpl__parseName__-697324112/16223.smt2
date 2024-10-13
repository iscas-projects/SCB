(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var423 0)
(declare-sort var1227 0)
(declare-sort var1520 0)
(declare-sort var29 0)
(declare-sort var3192 0)
(declare-sort var1970 0)
(declare-sort var288 0)
(declare-sort var2527 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var29-init () var29)
(declare-fun var288-init () var288)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-227409803 (var288 String var2527) void)
(declare-fun cast-from-var1970-to-var2527 (var1970) var2527)
(declare-fun cast-from-var288-to-var2527 (var288) var2527)
(declare-const null-var423 var423)
(declare-const null-String String)
(declare-const null-var1520 var1520)
(declare-const null-var3192 var3192)
(declare-const null-var1970 var1970)
(declare-const var2146 var423) ; Statement: r27 := @this: org.hibernate.engine.jndi.internal.JndiServiceImpl 
(assert (not (= var2146 null-var423)))
(declare-const var3583 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3583 null-String)))
(declare-const var3941 var1520) ; Statement: r3 := @parameter1: javax.naming.Context 
(assert (not (= var3941 null-var1520)))
(define-const var12 var29 var29-init) ; Statement: $r28 = new java.net.URI 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2261 var3192) ; Statement: $r26 := @caughtexception 
(assert (not (= var2261 null-var3192)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1278 var1970) ; Statement: $r12 := @caughtexception 
(assert (not (= var1278 null-var1970)))
(define-const var762 var288 var288-init) ; Statement: $r34 = new org.hibernate.engine.jndi.JndiException 
(define-const var499 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var499)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var499!1 String)
(assert (= var499!1 ""))
(assert true)
(define-const var966 String (append/672562846 var499!1 "Error parsing JNDI name [")) ; Statement: $r15 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error parsing JNDI name [") 
(declare-const var499!2 String)
(assert (= var499!2 (str.++ var499!1 "Error parsing JNDI name [")))
(assert true)
(define-const var2508 String (append/672562846 var966 var3583)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var966!1 String)
(assert (= var966!1 (str.++ var966 var3583)))
(assert true)
(define-const var3568 String (append/672562846 var2508 "]")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2508!1 String)
(assert (= var2508!1 (str.++ var2508 "]")))
(assert true)
(define-const var3757 String (toString/-2075883882 var3568)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-227409803 var762 var3757 (cast-from-var1970-to-var2527 var1278))) ; Statement: specialinvoke $r34.<org.hibernate.engine.jndi.JndiException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r12) 

(declare-const var762!1 var288)
(declare-const var3757!1 String)
(declare-const var1278!1 var1970)
(define-const var2616 var2527 (cast-from-var288-to-var2527 var762!1)) ; Statement: $r37 = (java.lang.Throwable) $r34 
 ; Statement: throw $r37 
(check-sat)
(get-model)
(get-unsat-core)
; {var29-init=([], java.net.URI), var288-init=([], org.hibernate.engine.jndi.JndiException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-227409803=([org.hibernate.engine.jndi.JndiException, java.lang.String, java.lang.Throwable], void), cast-from-var1970-to-var2527=([javax.naming.NamingException], java.lang.Throwable), cast-from-var288-to-var2527=([org.hibernate.engine.jndi.JndiException], java.lang.Throwable)}
; {var423=org.hibernate.engine.jndi.internal.JndiServiceImpl, var2146=r27, var3583=r1, var1227=null_type, var1520=javax.naming.Context, var3941=r3, var29=java.net.URI, var12=$r28, var3192=java.net.URISyntaxException, var2261=$r26, var1970=javax.naming.NamingException, var1278=$r12, var288=org.hibernate.engine.jndi.JndiException, var762=$r34, var499=$r33, var966=$r15, var2508=$r16, var3568=$r17, var3757=$r18, var2527=java.lang.Throwable, var2616=$r37}
; {org.hibernate.engine.jndi.internal.JndiServiceImpl=var423, r27=var2146, r1=var3583, null_type=var1227, javax.naming.Context=var1520, r3=var3941, java.net.URI=var29, $r28=var12, java.net.URISyntaxException=var3192, $r26=var2261, javax.naming.NamingException=var1970, $r12=var1278, org.hibernate.engine.jndi.JndiException=var288, $r34=var762, $r33=var499, $r15=var966, $r16=var2508, $r17=var3568, $r18=var3757, java.lang.Throwable=var2527, $r37=var2616}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r27 := @this: org.hibernate.engine.jndi.internal.JndiServiceImpl;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: javax.naming.Context;	$r28 = new java.net.URI;	$r26 := @caughtexception;	$r12 := @caughtexception;	$r34 = new org.hibernate.engine.jndi.JndiException;	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error parsing JNDI name [");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r34.<org.hibernate.engine.jndi.JndiException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r12);	$r37 = (java.lang.Throwable) $r34;	throw $r37
;block_num 3