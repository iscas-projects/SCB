(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3209 0)
(declare-sort var1279 0)
(declare-sort var3879 0)
(declare-sort var3721 0)
(declare-sort var3235 0)
(declare-sort var1428 0)
(declare-sort var3559 0)
(declare-sort var2183 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3721-init () var3721)
(declare-fun var3559-init () var3559)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2019806294 (var3559 String var2183) void)
(declare-fun cast-from-var1428-to-var2183 (var1428) var2183)
(declare-fun cast-from-var3559-to-var2183 (var3559) var2183)
(declare-const null-var3209 var3209)
(declare-const null-String String)
(declare-const null-var3879 var3879)
(declare-const null-var3235 var3235)
(declare-const null-var1428 var1428)
(declare-const var3696 var3209) ; Statement: r27 := @this: org.hibernate.engine.jndi.internal.JndiServiceImpl 
(assert (not (= var3696 null-var3209)))
(declare-const var3334 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3334 null-String)))
(declare-const var2063 var3879) ; Statement: r3 := @parameter1: javax.naming.Context 
(assert (not (= var2063 null-var3879)))
(define-const var2341 var3721 var3721-init) ; Statement: $r28 = new java.net.URI 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2987 var3235) ; Statement: $r26 := @caughtexception 
(assert (not (= var2987 null-var3235)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2480 var1428) ; Statement: $r19 := @caughtexception 
(assert (not (= var2480 null-var1428)))
(define-const var985 var3559 var3559-init) ; Statement: $r32 = new org.hibernate.engine.jndi.JndiNameException 
(define-const var3737 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3737)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3737!1 String)
(assert (= var3737!1 ""))
(assert true)
(define-const var2398 String (append/672562846 var3737!1 "JNDI name [")) ; Statement: $r22 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JNDI name [") 
(declare-const var3737!2 String)
(assert (= var3737!2 (str.++ var3737!1 "JNDI name [")))
(assert true)
(define-const var31 String (append/672562846 var2398 var3334)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2398!1 String)
(assert (= var2398!1 (str.++ var2398 var3334)))
(assert true)
(define-const var194 String (append/672562846 var31 "] was not valid")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] was not valid") 
(declare-const var31!1 String)
(assert (= var31!1 (str.++ var31 "] was not valid")))
(assert true)
(define-const var1484 String (toString/-2075883882 var194)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2019806294 var985 var1484 (cast-from-var1428-to-var2183 var2480))) ; Statement: specialinvoke $r32.<org.hibernate.engine.jndi.JndiNameException: void <init>(java.lang.String,java.lang.Throwable)>($r25, $r19) 

(declare-const var985!1 var3559)
(declare-const var1484!1 String)
(declare-const var2480!1 var1428)
(define-const var3397 var2183 (cast-from-var3559-to-var2183 var985!1)) ; Statement: $r36 = (java.lang.Throwable) $r32 
 ; Statement: throw $r36 
(check-sat)
(get-model)
(get-unsat-core)
; {var3721-init=([], java.net.URI), var3559-init=([], org.hibernate.engine.jndi.JndiNameException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2019806294=([org.hibernate.engine.jndi.JndiNameException, java.lang.String, java.lang.Throwable], void), cast-from-var1428-to-var2183=([javax.naming.InvalidNameException], java.lang.Throwable), cast-from-var3559-to-var2183=([org.hibernate.engine.jndi.JndiNameException], java.lang.Throwable)}
; {var3209=org.hibernate.engine.jndi.internal.JndiServiceImpl, var3696=r27, var3334=r1, var1279=null_type, var3879=javax.naming.Context, var2063=r3, var3721=java.net.URI, var2341=$r28, var3235=java.net.URISyntaxException, var2987=$r26, var1428=javax.naming.InvalidNameException, var2480=$r19, var3559=org.hibernate.engine.jndi.JndiNameException, var985=$r32, var3737=$r31, var2398=$r22, var31=$r23, var194=$r24, var1484=$r25, var2183=java.lang.Throwable, var3397=$r36}
; {org.hibernate.engine.jndi.internal.JndiServiceImpl=var3209, r27=var3696, r1=var3334, null_type=var1279, javax.naming.Context=var3879, r3=var2063, java.net.URI=var3721, $r28=var2341, java.net.URISyntaxException=var3235, $r26=var2987, javax.naming.InvalidNameException=var1428, $r19=var2480, org.hibernate.engine.jndi.JndiNameException=var3559, $r32=var985, $r31=var3737, $r22=var2398, $r23=var31, $r24=var194, $r25=var1484, java.lang.Throwable=var2183, $r36=var3397}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r27 := @this: org.hibernate.engine.jndi.internal.JndiServiceImpl;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: javax.naming.Context;	$r28 = new java.net.URI;	$r26 := @caughtexception;	$r19 := @caughtexception;	$r32 = new org.hibernate.engine.jndi.JndiNameException;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JNDI name [");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] was not valid");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r32.<org.hibernate.engine.jndi.JndiNameException: void <init>(java.lang.String,java.lang.Throwable)>($r25, $r19);	$r36 = (java.lang.Throwable) $r32;	throw $r36
;block_num 3