(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1891 0)
(declare-sort var3430 0)
(declare-sort var73 0)
(declare-sort var3545 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1891_isDiagnosticsEnabled/-1107982053 () Bool)
(declare-fun getClass/1258963082 (var73) ClassObject)
(declare-fun cast-from-var1891-to-var73 (var1891) var73)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun logDiagnostic/1870399160 (var1891 String) void)
(declare-const null-var1891 var1891)
(declare-const null-String String)
(declare-const null-var3545 var3545)
(declare-const var3075 var1891) ; Statement: r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var3075 null-var1891)))
(declare-const var2698 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var2698 null-String)))
(declare-const var3310 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3310 null-String)))
(define-const var2407 Bool var1891_isDiagnosticsEnabled/-1107982053) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (= (ite var2407 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3736 ClassObject (getClass/1258963082 (cast-from-var1891-to-var73 var3075))) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3363 var3545) ; Statement: $r21 := @caughtexception 
(assert (not (= var3363 null-var3545)))
(define-const var3211 Bool var1891_isDiagnosticsEnabled/-1107982053) ; Statement: $z3 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z3 == 0 goto return 0 
(assert (not (= (ite var3211 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var1447 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1447)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1447!1 String)
(assert (= var1447!1 ""))
(assert true)
(define-const var2665 String (append/672562846 var1447!1 "Logging system \u0027")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Logging system \'") 
(declare-const var1447!2 String)
(assert (= var1447!2 (str.++ var1447!1 "Logging system \u0027")))
(assert true)
(define-const var285 String (append/672562846 var2665 var2698)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2665!1 String)
(assert (= var2665!1 (str.++ var2665 var2698)))
(assert true)
(define-const var458 String (append/672562846 var285 "\u0027 is available but not useable.")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is available but not useable.") 
(declare-const var285!1 String)
(assert (= var285!1 (str.++ var285 "\u0027 is available but not useable.")))
(assert true)
(define-const var1094 String (toString/-2075883882 var458)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (logDiagnostic/1870399160 var3075 var1094)) ; Statement: virtualinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>($r26) 

(declare-const var3075!1 var1891)
(declare-const var1094!1 String)
(assert true) ; Non Conditional
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1891_isDiagnosticsEnabled/-1107982053=([], boolean), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1891-to-var73=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), logDiagnostic/1870399160=([org.apache.commons.logging.impl.LogFactoryImpl, java.lang.String], void)}
; {var1891=org.apache.commons.logging.impl.LogFactoryImpl, var3075=r0, var2698=r5, var3430=null_type, var3310=r1, var2407=$z0, var73=java.lang.Object, var3736=$r2, var3545=org.apache.commons.logging.LogConfigurationException, var3363=$r21, var3211=$z3, var1447=$r22, var2665=$r23, var285=$r24, var458=$r25, var1094=$r26}
; {org.apache.commons.logging.impl.LogFactoryImpl=var1891, r0=var3075, r5=var2698, null_type=var3430, r1=var3310, $z0=var2407, java.lang.Object=var73, $r2=var3736, org.apache.commons.logging.LogConfigurationException=var3545, $r21=var3363, $z3=var3211, $r22=var1447, $r23=var2665, $r24=var285, $r25=var458, $r26=var1094}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r5 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r21 := @caughtexception;	$z3 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z3 == 0 goto return 0;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Logging system \'");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is available but not useable.");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>($r26);	return 0
;block_num 5