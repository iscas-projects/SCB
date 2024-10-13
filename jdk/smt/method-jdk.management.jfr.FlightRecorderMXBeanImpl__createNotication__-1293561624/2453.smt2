(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3069 0)
(declare-sort var3034 0)
(declare-sort var3849 0)
(declare-sort var387 0)
(declare-sort var3372 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var387-init () var387)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var3372) String)
(declare-fun cast-from-var3849-to-var3372 (var3849) var3372)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var387 String var3372) void)
(declare-const null-var3069 var3069)
(declare-const null-var3034 var3034)
(declare-const null-var3849 var3849)
(declare-const var1113 var3069) ; Statement: r1 := @this: jdk.management.jfr.FlightRecorderMXBeanImpl 
(assert (not (= var1113 null-var3069)))
(declare-const var730 var3034) ; Statement: r0 := @parameter0: jdk.jfr.Recording 
(assert (not (= var730 null-var3034)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1302 var3849) ; Statement: $r23 := @caughtexception 
(assert (not (= var1302 null-var3849)))
(define-const var3483 var387 var387-init) ; Statement: $r24 = new java.lang.RuntimeException 
(define-const var3682 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3682)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3682!1 String)
(assert (= var3682!1 ""))
(assert true)
(define-const var511 String (append/672562846 var3682!1 "Could not create notifcation for FlightRecorderMXBean. ")) ; Statement: $r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create notifcation for FlightRecorderMXBean. ") 
(declare-const var3682!2 String)
(assert (= var3682!2 (str.++ var3682!1 "Could not create notifcation for FlightRecorderMXBean. ")))
(assert true)
(define-const var1075 String (getMessage/849299655 (cast-from-var3849-to-var3372 var1302))) ; Statement: $r26 = virtualinvoke $r23.<javax.management.JMException: java.lang.String getMessage()>() 
(assert true)
(define-const var2983 String (append/672562846 var511 var1075)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var511!1 String)
(assert (= var511!1 (str.++ var511 var1075)))
(assert true)
(define-const var2338 String (toString/-2075883882 var2983)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var3483 var2338 (cast-from-var3849-to-var3372 var1302))) ; Statement: specialinvoke $r24.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r29, $r23) 

(declare-const var3483!1 var387)
(declare-const var2338!1 String)
(declare-const var1302!1 var3849)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {var387-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3849-to-var3372=([javax.management.JMException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void)}
; {var3069=jdk.management.jfr.FlightRecorderMXBeanImpl, var1113=r1, var3034=jdk.jfr.Recording, var730=r0, var3849=javax.management.JMException, var1302=$r23, var387=java.lang.RuntimeException, var3483=$r24, var3682=$r25, var511=$r27, var3372=java.lang.Throwable, var1075=$r26, var2983=$r28, var2338=$r29}
; {jdk.management.jfr.FlightRecorderMXBeanImpl=var3069, r1=var1113, jdk.jfr.Recording=var3034, r0=var730, javax.management.JMException=var3849, $r23=var1302, java.lang.RuntimeException=var387, $r24=var3483, $r25=var3682, $r27=var511, java.lang.Throwable=var3372, $r26=var1075, $r28=var2983, $r29=var2338}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.management.jfr.FlightRecorderMXBeanImpl;	r0 := @parameter0: jdk.jfr.Recording;	$r23 := @caughtexception;	$r24 = new java.lang.RuntimeException;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create notifcation for FlightRecorderMXBean. ");	$r26 = virtualinvoke $r23.<javax.management.JMException: java.lang.String getMessage()>();	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r24.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r29, $r23);	throw $r24
;block_num 2