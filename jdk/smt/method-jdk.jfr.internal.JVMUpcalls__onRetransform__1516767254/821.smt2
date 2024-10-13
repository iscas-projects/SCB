(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2396 0)
(declare-sort var1727 0)
(declare-sort var3383 0)
(declare-sort var1262 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1262_log/979489950 (var1727 var3383 String) void)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-var2396 var2396)
(declare-const var1727-JFR_SYSTEM var1727)
(declare-const var3383-WARN var3383)
(declare-const var3852 Int) ; Statement: l1 := @parameter0: long 
(assert (not (= var3852 null-Int)))
(declare-const var1141 Bool) ; Statement: z2 := @parameter1: boolean 
(assert (not (= var1141 null-Bool)))
(declare-const var3592 ClassObject) ; Statement: r0 := @parameter2: java.lang.Class 
(assert (not (= var3592 null-ClassObject)))
(declare-const var2753 (Array Int Int)) ; Statement: r2 := @parameter3: byte[] 
(assert (not (= var2753 null-__Array__Int__Int__)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3628 var2396) ; Statement: $r25 := @caughtexception 
(assert (not (= var3628 null-var2396)))
(define-const var2281 var1727 var1727-JFR_SYSTEM) ; Statement: $r27 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SYSTEM> 
(define-const var2885 var3383 var3383-WARN) ; Statement: $r28 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel WARN> 
(define-const var1578 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1578)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1578!1 String)
(assert (= var1578!1 ""))
(assert true)
(define-const var2775 String (append/672562846 var1578!1 "Unexpected error when adding instrumentation to event class ")) ; Statement: $r30 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected error when adding instrumentation to event class ") 
(declare-const var1578!2 String)
(assert (= var1578!2 (str.++ var1578!1 "Unexpected error when adding instrumentation to event class ")))
(assert true)
(define-const var3967 String (getName/-1958580599 var3592)) ; Statement: $r29 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3866 String (append/672562846 var2775 var3967)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var2775!1 String)
(assert (= var2775!1 (str.++ var2775 var3967)))
(assert true)
(define-const var119 String (toString/-2075883882 var3866)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1262_log/979489950 var2281 var2885 var119)) ; Statement: staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r27, $r28, $r32) 

(declare-const var2281!1 var1727)
(declare-const var2885!1 var3383)
(declare-const var119!1 String)
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1262_log/979489950=([jdk.jfr.internal.LogTag, jdk.jfr.internal.LogLevel, java.lang.String], void)}
; {var3852=l1, var1141=z2, var3592=r0, var2753=r2, var2396=java.lang.Throwable, var3628=$r25, var1727=jdk.jfr.internal.LogTag, var2281=$r27, var3383=jdk.jfr.internal.LogLevel, var2885=$r28, var1578=$r26, var2775=$r30, var3967=$r29, var3866=$r31, var119=$r32, var1262=jdk.jfr.internal.Logger}
; {l1=var3852, z2=var1141, r0=var3592, r2=var2753, java.lang.Throwable=var2396, $r25=var3628, jdk.jfr.internal.LogTag=var1727, $r27=var2281, jdk.jfr.internal.LogLevel=var3383, $r28=var2885, $r26=var1578, $r30=var2775, $r29=var3967, $r31=var3866, $r32=var119, jdk.jfr.internal.Logger=var1262}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts l1 := @parameter0: long;	z2 := @parameter1: boolean;	r0 := @parameter2: java.lang.Class;	r2 := @parameter3: byte[];	$r25 := @caughtexception;	$r27 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SYSTEM>;	$r28 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel WARN>;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected error when adding instrumentation to event class ");	$r29 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r27, $r28, $r32);	return r2
;block_num 2