(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3107 0)
(declare-sort var643 0)
(declare-sort var1586 0)
(declare-sort var1783 0)
(declare-sort var491 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3107_isDiagnosticsEnabled/-1107982053 () Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1783) ClassObject)
(declare-fun cast-from-var1586-to-var1783 (var1586) var1783)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getLocalizedMessage/361048096 (var1586) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun logDiagnostic/1870399160 (var3107 String) void)
(declare-fun allowFlawedDiscovery/1199358121 (var3107) Bool)
(declare-fun var491-init () var491)
(declare-fun <init>/-1922439421 (var491 var1586) void)
(declare-const null-var3107 var3107)
(declare-const null-String String)
(declare-const null-var1586 var1586)
(declare-const var946 var3107) ; Statement: r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var946 null-var3107)))
(declare-const var2647 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2647 null-String)))
(declare-const var932 var1586) ; Statement: r2 := @parameter1: java.lang.Throwable 
(assert (not (= var932 null-var1586)))
(define-const var3975 Bool var3107_isDiagnosticsEnabled/-1107982053) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto $z3 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery> 
(assert (not (= (ite var3975 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1747 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1747)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1747!1 String)
(assert (= var1747!1 ""))
(assert true)
(define-const var195 String (append/672562846 var1747!1 "Could not instantiate Log \u0027")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate Log \'") 
(declare-const var1747!2 String)
(assert (= var1747!2 (str.++ var1747!1 "Could not instantiate Log \u0027")))
(assert true)
(define-const var898 String (append/672562846 var195 var2647)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var195!1 String)
(assert (= var195!1 (str.++ var195 var2647)))
(assert true)
(define-const var2613 String (append/672562846 var898 "\u0027 -- ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' -- ") 
(declare-const var898!1 String)
(assert (= var898!1 (str.++ var898 "\u0027 -- ")))
(assert true)
(define-const var574 ClassObject (getClass/1258963082 (cast-from-var1586-to-var1783 var932))) ; Statement: $r7 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var870 String (getName/-1958580599 var574)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3886 String (append/672562846 var2613 var870)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2613!1 String)
(assert (= var2613!1 (str.++ var2613 var870)))
(assert true)
(define-const var2630 String (append/672562846 var3886 ": ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var3886!1 String)
(assert (= var3886!1 (str.++ var3886 ": ")))
(assert true)
(define-const var3815 String (getLocalizedMessage/361048096 var932)) ; Statement: $r11 = virtualinvoke r2.<java.lang.Throwable: java.lang.String getLocalizedMessage()>() 
(assert true)
(define-const var1470 String (append/672562846 var2630 var3815)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2630!1 String)
(assert (= var2630!1 (str.++ var2630 var3815)))
(assert true)
(define-const var1972 String (toString/-2075883882 var1470)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (logDiagnostic/1870399160 var946 var1972)) ; Statement: virtualinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>($r14) 

(declare-const var946!1 var3107)
(declare-const var1972!1 String)
(define-const var1466 Bool false) ; Statement: $z1 = r2 instanceof java.lang.reflect.InvocationTargetException 
 ; Statement: if $z1 == 0 goto $z3 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery> 
(assert (= (ite var1466 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3987 Bool (allowFlawedDiscovery/1199358121 var946!1)) ; Statement: $z3 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery> 
 ; Statement: if $z3 != 0 goto return 
(assert (not (not (= (ite var3987 1 0) 0)))) ; Negate: Cond: $z3 != 0  
(define-const var3831 var491 var491-init) ; Statement: $r1 = new org.apache.commons.logging.LogConfigurationException 
(assert true)
;(assert (<init>/-1922439421 var3831 var932)) ; Statement: specialinvoke $r1.<org.apache.commons.logging.LogConfigurationException: void <init>(java.lang.Throwable)>(r2) 

(declare-const var3831!1 var491)
(declare-const var932!1 var1586)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3107_isDiagnosticsEnabled/-1107982053=([], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1586-to-var1783=([java.lang.Throwable], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), getLocalizedMessage/361048096=([java.lang.Throwable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), logDiagnostic/1870399160=([org.apache.commons.logging.impl.LogFactoryImpl, java.lang.String], void), allowFlawedDiscovery/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], boolean), var491-init=([], org.apache.commons.logging.LogConfigurationException), <init>/-1922439421=([org.apache.commons.logging.LogConfigurationException, java.lang.Throwable], void)}
; {var3107=org.apache.commons.logging.impl.LogFactoryImpl, var946=r0, var2647=r4, var643=null_type, var1586=java.lang.Throwable, var932=r2, var3975=$z0, var1747=$r3, var195=$r5, var898=$r6, var2613=$r9, var1783=java.lang.Object, var574=$r7, var870=$r8, var3886=$r10, var2630=$r12, var3815=$r11, var1470=$r13, var1972=$r14, var1466=$z1, var3987=$z3, var491=org.apache.commons.logging.LogConfigurationException, var3831=$r1}
; {org.apache.commons.logging.impl.LogFactoryImpl=var3107, r0=var946, r4=var2647, null_type=var643, java.lang.Throwable=var1586, r2=var932, $z0=var3975, $r3=var1747, $r5=var195, $r6=var898, $r9=var2613, java.lang.Object=var1783, $r7=var574, $r8=var870, $r10=var3886, $r12=var2630, $r11=var3815, $r13=var1470, $r14=var1972, $z1=var1466, $z3=var3987, org.apache.commons.logging.LogConfigurationException=var491, $r1=var3831}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r4 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Throwable;	$z0 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto $z3 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate Log \'");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' -- ");	$r7 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r11 = virtualinvoke r2.<java.lang.Throwable: java.lang.String getLocalizedMessage()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>($r14);	$z1 = r2 instanceof java.lang.reflect.InvocationTargetException;	if $z1 == 0 goto $z3 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery>;	$z3 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery>;	if $z3 != 0 goto return;	$r1 = new org.apache.commons.logging.LogConfigurationException;	specialinvoke $r1.<org.apache.commons.logging.LogConfigurationException: void <init>(java.lang.Throwable)>(r2);	throw $r1
;block_num 4