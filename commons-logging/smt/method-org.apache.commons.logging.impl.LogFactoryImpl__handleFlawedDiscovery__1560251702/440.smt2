(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1211 0)
(declare-sort var2110 0)
(declare-sort var1280 0)
(declare-sort var367 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1211_isDiagnosticsEnabled/-1107982053 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var367) ClassObject)
(declare-fun cast-from-var1280-to-var367 (var1280) var367)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getLocalizedMessage/361048096 (var1280) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun logDiagnostic/1870399160 (var1211 String) void)
(declare-fun allowFlawedDiscovery/1199358121 (var1211) Bool)
(declare-const null-var1211 var1211)
(declare-const null-String String)
(declare-const null-var1280 var1280)
(declare-const var3359 var1211) ; Statement: r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var3359 null-var1211)))
(declare-const var3069 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3069 null-String)))
(declare-const var830 var1280) ; Statement: r2 := @parameter1: java.lang.Throwable 
(assert (not (= var830 null-var1280)))
(define-const var918 Bool var1211_isDiagnosticsEnabled/-1107982053) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto $z3 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery> 
(assert (not (= (ite var918 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var29 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var29)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var29!1 String)
(assert (= var29!1 ""))
(assert true)
(define-const var171 String (append/672562846 var29!1 "Could not instantiate Log \u0027")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate Log \'") 
(declare-const var29!2 String)
(assert (= var29!2 (str.++ var29!1 "Could not instantiate Log \u0027")))
(assert true)
(define-const var1362 String (append/672562846 var171 var3069)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var171!1 String)
(assert (= var171!1 (str.++ var171 var3069)))
(assert true)
(define-const var1288 String (append/672562846 var1362 "\u0027 -- ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' -- ") 
(declare-const var1362!1 String)
(assert (= var1362!1 (str.++ var1362 "\u0027 -- ")))
(assert true)
(define-const var1987 ClassObject (getClass/1258963082 (cast-from-var1280-to-var367 var830))) ; Statement: $r7 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2775 String (getName/-1958580599 var1987)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3513 String (append/672562846 var1288 var2775)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1288!1 String)
(assert (= var1288!1 (str.++ var1288 var2775)))
(assert true)
(define-const var2179 String (append/672562846 var3513 ": ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var3513!1 String)
(assert (= var3513!1 (str.++ var3513 ": ")))
(assert true)
(define-const var3435 String (getLocalizedMessage/361048096 var830)) ; Statement: $r11 = virtualinvoke r2.<java.lang.Throwable: java.lang.String getLocalizedMessage()>() 
(assert true)
(define-const var1125 String (append/672562846 var2179 var3435)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2179!1 String)
(assert (= var2179!1 (str.++ var2179 var3435)))
(assert true)
(define-const var580 String (toString/-2075883882 var1125)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (logDiagnostic/1870399160 var3359 var580)) ; Statement: virtualinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>($r14) 

(declare-const var3359!1 var1211)
(declare-const var580!1 String)
(define-const var3220 Bool false) ; Statement: $z1 = r2 instanceof java.lang.reflect.InvocationTargetException 
 ; Statement: if $z1 == 0 goto $z3 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery> 
(assert (= (ite var3220 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3135 Bool (allowFlawedDiscovery/1199358121 var3359!1)) ; Statement: $z3 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery> 
 ; Statement: if $z3 != 0 goto return 
(assert (not (= (ite var3135 1 0) 0))) ; Cond: $z3 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1211_isDiagnosticsEnabled/-1107982053=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1280-to-var367=([java.lang.Throwable], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), getLocalizedMessage/361048096=([java.lang.Throwable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), logDiagnostic/1870399160=([org.apache.commons.logging.impl.LogFactoryImpl, java.lang.String], void), allowFlawedDiscovery/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], boolean)}
; {var1211=org.apache.commons.logging.impl.LogFactoryImpl, var3359=r0, var3069=r4, var2110=null_type, var1280=java.lang.Throwable, var830=r2, var918=$z0, var29=$r3, var171=$r5, var1362=$r6, var1288=$r9, var367=java.lang.Object, var1987=$r7, var2775=$r8, var3513=$r10, var2179=$r12, var3435=$r11, var1125=$r13, var580=$r14, var3220=$z1, var3135=$z3}
; {org.apache.commons.logging.impl.LogFactoryImpl=var1211, r0=var3359, r4=var3069, null_type=var2110, java.lang.Throwable=var1280, r2=var830, $z0=var918, $r3=var29, $r5=var171, $r6=var1362, $r9=var1288, java.lang.Object=var367, $r7=var1987, $r8=var2775, $r10=var3513, $r12=var2179, $r11=var3435, $r13=var1125, $r14=var580, $z1=var3220, $z3=var3135}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r4 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Throwable;	$z0 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto $z3 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate Log \'");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' -- ");	$r7 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r11 = virtualinvoke r2.<java.lang.Throwable: java.lang.String getLocalizedMessage()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>($r14);	$z1 = r2 instanceof java.lang.reflect.InvocationTargetException;	if $z1 == 0 goto $z3 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery>;	$z3 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery>;	if $z3 != 0 goto return;	return
;block_num 4