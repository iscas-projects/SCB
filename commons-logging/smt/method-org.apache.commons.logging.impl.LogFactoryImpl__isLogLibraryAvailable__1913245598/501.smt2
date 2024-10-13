(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2080 0)
(declare-sort var2182 0)
(declare-sort var2878 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2080_isDiagnosticsEnabled/-1107982053 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun logDiagnostic/1870399160 (var2080 String) void)
(declare-const null-var2080 var2080)
(declare-const null-String String)
(declare-const null-var2878 var2878)
(declare-const var2560 var2080) ; Statement: r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var2560 null-var2080)))
(declare-const var3962 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3962 null-String)))
(declare-const var3876 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3876 null-String)))
(define-const var3895 Bool var2080_isDiagnosticsEnabled/-1107982053) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= (ite var3895 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var2280 var2878) ; Statement: $r21 := @caughtexception 
(assert (not (= var2280 null-var2878)))
(define-const var1805 Bool var2080_isDiagnosticsEnabled/-1107982053) ; Statement: $z3 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z3 == 0 goto return 0 
(assert (not (= (ite var1805 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var1207 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1207)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1207!1 String)
(assert (= var1207!1 ""))
(assert true)
(define-const var2024 String (append/672562846 var1207!1 "Logging system \u0027")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Logging system \'") 
(declare-const var1207!2 String)
(assert (= var1207!2 (str.++ var1207!1 "Logging system \u0027")))
(assert true)
(define-const var2828 String (append/672562846 var2024 var3962)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2024!1 String)
(assert (= var2024!1 (str.++ var2024 var3962)))
(assert true)
(define-const var3423 String (append/672562846 var2828 "\u0027 is available but not useable.")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is available but not useable.") 
(declare-const var2828!1 String)
(assert (= var2828!1 (str.++ var2828 "\u0027 is available but not useable.")))
(assert true)
(define-const var2378 String (toString/-2075883882 var3423)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (logDiagnostic/1870399160 var2560 var2378)) ; Statement: virtualinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>($r26) 

(declare-const var2560!1 var2080)
(declare-const var2378!1 String)
(assert true) ; Non Conditional
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2080_isDiagnosticsEnabled/-1107982053=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), logDiagnostic/1870399160=([org.apache.commons.logging.impl.LogFactoryImpl, java.lang.String], void)}
; {var2080=org.apache.commons.logging.impl.LogFactoryImpl, var2560=r0, var3962=r5, var2182=null_type, var3876=r1, var3895=$z0, var2878=org.apache.commons.logging.LogConfigurationException, var2280=$r21, var1805=$z3, var1207=$r22, var2024=$r23, var2828=$r24, var3423=$r25, var2378=$r26}
; {org.apache.commons.logging.impl.LogFactoryImpl=var2080, r0=var2560, r5=var3962, null_type=var2182, r1=var3876, $z0=var3895, org.apache.commons.logging.LogConfigurationException=var2878, $r21=var2280, $z3=var1805, $r22=var1207, $r23=var2024, $r24=var2828, $r25=var3423, $r26=var2378}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r5 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r21 := @caughtexception;	$z3 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z3 == 0 goto return 0;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Logging system \'");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is available but not useable.");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>($r26);	return 0
;block_num 4