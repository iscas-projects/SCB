(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var325 0)
(declare-sort var3366 0)
(declare-sort var3068 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var325_isDiagnosticsEnabled/-1107982053 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun logDiagnostic/1870399160 (var325 String) void)
(declare-const null-var325 var325)
(declare-const null-String String)
(declare-const null-var3068 var3068)
(declare-const var3911 var325) ; Statement: r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var3911 null-var325)))
(declare-const var309 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var309 null-String)))
(declare-const var3007 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3007 null-String)))
(define-const var1129 Bool var325_isDiagnosticsEnabled/-1107982053) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= (ite var1129 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2130 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2130)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2130!1 String)
(assert (= var2130!1 ""))
(assert true)
(define-const var3489 String (append/672562846 var2130!1 "Checking for \u0027")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Checking for \'") 
(declare-const var2130!2 String)
(assert (= var2130!2 (str.++ var2130!1 "Checking for \u0027")))
(assert true)
(define-const var3516 String (append/672562846 var3489 var309)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3489!1 String)
(assert (= var3489!1 (str.++ var3489 var309)))
(assert true)
(define-const var123 String (append/672562846 var3516 "\u0027.")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.") 
(declare-const var3516!1 String)
(assert (= var3516!1 (str.++ var3516 "\u0027.")))
(assert true)
(define-const var1633 String (toString/-2075883882 var123)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (logDiagnostic/1870399160 var3911 var1633)) ; Statement: virtualinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>($r19) 

(declare-const var3911!1 var325)
(declare-const var1633!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3790 var3068) ; Statement: $r21 := @caughtexception 
(assert (not (= var3790 null-var3068)))
(define-const var1315 Bool var325_isDiagnosticsEnabled/-1107982053) ; Statement: $z3 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z3 == 0 goto return 0 
(assert (not (= (ite var1315 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var2913 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2913)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2913!1 String)
(assert (= var2913!1 ""))
(assert true)
(define-const var3908 String (append/672562846 var2913!1 "Logging system \u0027")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Logging system \'") 
(declare-const var2913!2 String)
(assert (= var2913!2 (str.++ var2913!1 "Logging system \u0027")))
(assert true)
(define-const var1162 String (append/672562846 var3908 var309)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3908!1 String)
(assert (= var3908!1 (str.++ var3908 var309)))
(assert true)
(define-const var2935 String (append/672562846 var1162 "\u0027 is available but not useable.")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is available but not useable.") 
(declare-const var1162!1 String)
(assert (= var1162!1 (str.++ var1162 "\u0027 is available but not useable.")))
(assert true)
(define-const var655 String (toString/-2075883882 var2935)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (logDiagnostic/1870399160 var3911!1 var655)) ; Statement: virtualinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>($r26) 

(declare-const var3911!2 var325)
(declare-const var655!1 String)
(assert true) ; Non Conditional
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {var325_isDiagnosticsEnabled/-1107982053=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), logDiagnostic/1870399160=([org.apache.commons.logging.impl.LogFactoryImpl, java.lang.String], void)}
; {var325=org.apache.commons.logging.impl.LogFactoryImpl, var3911=r0, var309=r5, var3366=null_type, var3007=r1, var1129=$z0, var2130=$r15, var3489=$r16, var3516=$r17, var123=$r18, var1633=$r19, var3068=org.apache.commons.logging.LogConfigurationException, var3790=$r21, var1315=$z3, var2913=$r22, var3908=$r23, var1162=$r24, var2935=$r25, var655=$r26}
; {org.apache.commons.logging.impl.LogFactoryImpl=var325, r0=var3911, r5=var309, null_type=var3366, r1=var3007, $z0=var1129, $r15=var2130, $r16=var3489, $r17=var3516, $r18=var123, $r19=var1633, org.apache.commons.logging.LogConfigurationException=var3068, $r21=var3790, $z3=var1315, $r22=var2913, $r23=var3908, $r24=var1162, $r25=var2935, $r26=var655}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r5 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Checking for \'");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>($r19);	$r21 := @caughtexception;	$z3 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z3 == 0 goto return 0;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Logging system \'");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is available but not useable.");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>($r26);	return 0
;block_num 5