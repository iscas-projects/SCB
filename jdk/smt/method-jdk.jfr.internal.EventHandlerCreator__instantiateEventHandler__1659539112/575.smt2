(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1542 0)
(declare-sort var13 0)
(declare-sort var3498 0)
(declare-sort var2743 0)
(declare-sort var3611 0)
(declare-sort var2335 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2743-init () var2743)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/614227758 (var1542) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1247810213 (var2743 String) void)
(declare-fun initCause/2003336360 (var3611 var3611) var3611)
(declare-fun cast-from-var2743-to-var3611 (var2743) var3611)
(declare-fun cast-from-var3498-to-var3611 (var3498) var3611)
(declare-fun cast-from-var3611-to-var2335 (var3611) var2335)
(declare-const null-ClassObject ClassObject)
(declare-const null-Bool Bool)
(declare-const null-var1542 var1542)
(declare-const null-var13 var13)
(declare-const null-var3498 var3498)
(declare-const var3706 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3706 null-ClassObject)))
(declare-const var1199 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1199 null-Bool)))
(declare-const var3660 var1542) ; Statement: r6 := @parameter2: jdk.jfr.EventType 
(assert (not (= var3660 null-var1542)))
(declare-const var3989 var13) ; Statement: r3 := @parameter3: jdk.jfr.internal.EventControl 
(assert (not (= var3989 null-var13)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1224 var3498) ; Statement: $r25 := @caughtexception 
(assert (not (= var1224 null-var3498)))
(define-const var2407 var2743 var2743-init) ; Statement: $r26 = new java.lang.InternalError 
(define-const var3991 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3991)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3991!1 String)
(assert (= var3991!1 ""))
(assert true)
(define-const var1104 String (append/672562846 var3991!1 "Could not get handler constructor for ")) ; Statement: $r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not get handler constructor for ") 
(declare-const var3991!2 String)
(assert (= var3991!2 (str.++ var3991!1 "Could not get handler constructor for ")))
(assert true)
(define-const var3607 String (getName/614227758 var3660)) ; Statement: $r28 = virtualinvoke r6.<jdk.jfr.EventType: java.lang.String getName()>() 
(assert true)
(define-const var3368 String (append/672562846 var1104 var3607)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var1104!1 String)
(assert (= var1104!1 (str.++ var1104 var3607)))
(assert true)
(define-const var3161 String (toString/-2075883882 var3368)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1247810213 var2407 var3161)) ; Statement: specialinvoke $r26.<java.lang.InternalError: void <init>(java.lang.String)>($r31) 

(declare-const var2407!1 var2743)
(declare-const var3161!1 String)
(assert true)
(define-const var235 var3611 (initCause/2003336360 (cast-from-var2743-to-var3611 var2407!1) (cast-from-var3498-to-var3611 var1224))) ; Statement: $r32 = virtualinvoke $r26.<java.lang.InternalError: java.lang.Throwable initCause(java.lang.Throwable)>($r25) 
(define-const var1367 var2335 (cast-from-var3611-to-var2335 var235)) ; Statement: $r33 = (java.lang.Error) $r32 
 ; Statement: throw $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {var2743-init=([], java.lang.InternalError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/614227758=([jdk.jfr.EventType], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1247810213=([java.lang.InternalError, java.lang.String], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var2743-to-var3611=([java.lang.InternalError], java.lang.Throwable), cast-from-var3498-to-var3611=([java.lang.Exception], java.lang.Throwable), cast-from-var3611-to-var2335=([java.lang.Throwable], java.lang.Error)}
; {var3706=r0, var1199=z0, var1542=jdk.jfr.EventType, var3660=r6, var13=jdk.jfr.internal.EventControl, var3989=r3, var3498=java.lang.Exception, var1224=$r25, var2743=java.lang.InternalError, var2407=$r26, var3991=$r27, var1104=$r29, var3607=$r28, var3368=$r30, var3161=$r31, var3611=java.lang.Throwable, var235=$r32, var2335=java.lang.Error, var1367=$r33}
; {r0=var3706, z0=var1199, jdk.jfr.EventType=var1542, r6=var3660, jdk.jfr.internal.EventControl=var13, r3=var3989, java.lang.Exception=var3498, $r25=var1224, java.lang.InternalError=var2743, $r26=var2407, $r27=var3991, $r29=var1104, $r28=var3607, $r30=var3368, $r31=var3161, java.lang.Throwable=var3611, $r32=var235, java.lang.Error=var2335, $r33=var1367}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	z0 := @parameter1: boolean;	r6 := @parameter2: jdk.jfr.EventType;	r3 := @parameter3: jdk.jfr.internal.EventControl;	$r25 := @caughtexception;	$r26 = new java.lang.InternalError;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not get handler constructor for ");	$r28 = virtualinvoke r6.<jdk.jfr.EventType: java.lang.String getName()>();	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r26.<java.lang.InternalError: void <init>(java.lang.String)>($r31);	$r32 = virtualinvoke $r26.<java.lang.InternalError: java.lang.Throwable initCause(java.lang.Throwable)>($r25);	$r33 = (java.lang.Error) $r32;	throw $r33
;block_num 2