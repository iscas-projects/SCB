(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2917 0)
(declare-sort var3552 0)
(declare-sort var607 0)
(declare-sort var905 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2917_isDiagnosticsEnabled/-1107982053 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun logDiagnostic/1870399160 (var2917 String) void)
(declare-fun getClass/1258963082 (var607) ClassObject)
(declare-fun cast-from-var2917-to-var607 (var2917) var607)
(declare-const null-var2917 var2917)
(declare-const null-String String)
(declare-const null-var905 var905)
(declare-const var1929 var2917) ; Statement: r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var1929 null-var2917)))
(declare-const var1982 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1982 null-String)))
(declare-const var439 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var439 null-String)))
(define-const var2190 Bool var2917_isDiagnosticsEnabled/-1107982053) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= (ite var2190 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1281 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1281)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1281!1 String)
(assert (= var1281!1 ""))
(assert true)
(define-const var388 String (append/672562846 var1281!1 "Checking for \u0027")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Checking for \'") 
(declare-const var1281!2 String)
(assert (= var1281!2 (str.++ var1281!1 "Checking for \u0027")))
(assert true)
(define-const var1629 String (append/672562846 var388 var1982)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var388!1 String)
(assert (= var388!1 (str.++ var388 var1982)))
(assert true)
(define-const var3470 String (append/672562846 var1629 "\u0027.")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.") 
(declare-const var1629!1 String)
(assert (= var1629!1 (str.++ var1629 "\u0027.")))
(assert true)
(define-const var2059 String (toString/-2075883882 var3470)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (logDiagnostic/1870399160 var1929 var2059)) ; Statement: virtualinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>($r19) 

(declare-const var1929!1 var2917)
(declare-const var2059!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var3254 ClassObject (getClass/1258963082 (cast-from-var2917-to-var607 var1929!1))) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1627 var905) ; Statement: $r21 := @caughtexception 
(assert (not (= var1627 null-var905)))
(define-const var1610 Bool var2917_isDiagnosticsEnabled/-1107982053) ; Statement: $z3 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z3 == 0 goto return 0 
(assert (= (ite var1610 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2917_isDiagnosticsEnabled/-1107982053=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), logDiagnostic/1870399160=([org.apache.commons.logging.impl.LogFactoryImpl, java.lang.String], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2917-to-var607=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.Object)}
; {var2917=org.apache.commons.logging.impl.LogFactoryImpl, var1929=r0, var1982=r5, var3552=null_type, var439=r1, var2190=$z0, var1281=$r15, var388=$r16, var1629=$r17, var3470=$r18, var2059=$r19, var607=java.lang.Object, var3254=$r2, var905=org.apache.commons.logging.LogConfigurationException, var1627=$r21, var1610=$z3}
; {org.apache.commons.logging.impl.LogFactoryImpl=var2917, r0=var1929, r5=var1982, null_type=var3552, r1=var439, $z0=var2190, $r15=var1281, $r16=var388, $r17=var1629, $r18=var3470, $r19=var2059, java.lang.Object=var607, $r2=var3254, org.apache.commons.logging.LogConfigurationException=var905, $r21=var1627, $z3=var1610}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r5 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Checking for \'");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>($r19);	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r21 := @caughtexception;	$z3 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z3 == 0 goto return 0;	return 0
;block_num 5