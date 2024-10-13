(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2440 0)
(declare-sort var3983 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2440_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2440_logDiagnostic/1268238408 (String) void)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3983 var3983)
(declare-const var1837 ClassObject) ; Statement: r10 := @parameter0: java.lang.Class 
(assert (not (= var1837 null-ClassObject)))
(define-const var3592 Bool var2440_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 != 0 goto $r0 = new java.lang.StringBuilder 
(assert (not (= (ite var3592 1 0) 0))) ; Cond: $z0 != 0 
(define-const var915 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/1968657023 var915)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var915!1 String)
(assert (= var915!1 ""))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1166 var3983) ; Statement: $r28 := @caughtexception 
(assert (not (= var1166 null-var3983)))
;(assert (var2440_logDiagnostic/1268238408 "[ENV] Security setting prevent interrogation of system classpaths.")) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>("[ENV] Security setting prevent interrogation of system classpaths.") 

(declare-const var1483 String)
(assert true) ; Non Conditional
(assert true)
(define-const var3343 String (getName/-1958580599 var1837)) ; Statement: $r29 = virtualinvoke r10.<java.lang.Class: java.lang.String getName()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2667 var3983) ; Statement: $r23 := @caughtexception 
(assert (not (= var2667 null-var3983)))
(define-const var2389 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2389)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2389!1 String)
(assert (= var2389!1 ""))
(assert true)
(define-const var1804 String (append/672562846 var2389!1 "[ENV] Security forbids determining the class loader for ")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[ENV] Security forbids determining the class loader for ") 
(declare-const var2389!2 String)
(assert (= var2389!2 (str.++ var2389!1 "[ENV] Security forbids determining the class loader for ")))
(assert true)
(define-const var3538 String (append/672562846 var1804 var3343)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var1804!1 String)
(assert (= var1804!1 (str.++ var1804 var3343)))
(assert true)
(define-const var390 String (toString/-2075883882 var3538)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2440_logDiagnostic/1268238408 var390)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r27) 

(declare-const var390!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2440_isDiagnosticsEnabled/-1004161365=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2440_logDiagnostic/1268238408=([java.lang.String], void), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1837=r10, var2440=org.apache.commons.logging.LogFactory, var3592=$z0, var915=$r0, var3983=java.lang.SecurityException, var1166=$r28, var1483="[ENV] Security setting prevent interrogation of system classpaths.", var3343=$r29, var2667=$r23, var2389=$r24, var1804=$r25, var3538=$r26, var390=$r27}
; {r10=var1837, org.apache.commons.logging.LogFactory=var2440, $z0=var3592, $r0=var915, java.lang.SecurityException=var3983, $r28=var1166, "[ENV] Security setting prevent interrogation of system classpaths."=var1483, $r29=var3343, $r23=var2667, $r24=var2389, $r25=var1804, $r26=var3538, $r27=var390}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @parameter0: java.lang.Class;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 != 0 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r28 := @caughtexception;	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>("[ENV] Security setting prevent interrogation of system classpaths.");	$r29 = virtualinvoke r10.<java.lang.Class: java.lang.String getName()>();	$r23 := @caughtexception;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[ENV] Security forbids determining the class loader for ");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>($r27);	return
;block_num 6