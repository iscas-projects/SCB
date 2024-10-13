(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var640 0)
(declare-sort var1518 0)
(declare-sort var1768 0)
(declare-sort var3073 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1768!class ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getInterfaces/-1280103563 (ClassObject) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun allowFlawedDiscovery/1199358121 (var640) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var640_isDiagnosticsEnabled/-1107982053 () Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun logDiagnostic/1870399160 (var640 String) void)
(declare-fun var3073-init () var3073)
(declare-fun <init>/-1163573448 (var3073 String) void)
(declare-const null-var640 var640)
(declare-const null-var1518 var1518)
(declare-const null-ClassObject ClassObject)
(declare-const var1585 var640) ; Statement: r4 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var1585 null-var640)))
(declare-const var1317 var1518) ; Statement: r27 := @parameter0: java.lang.ClassLoader 
(assert (not (= var1317 null-var1518)))
(declare-const var416 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var416 null-ClassObject)))
(define-const var1849 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
(define-const var2005 ClassObject var1768!class) ; Statement: $r0 = class "Lorg/apache/commons/logging/Log;" 
(assert true)
(define-const var1075 String (getName/-1958580599 var2005)) ; Statement: r1 = virtualinvoke $r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1409 (Array Int ClassObject) (getInterfaces/-1280103563 var416)) ; Statement: r3 = virtualinvoke r2.<java.lang.Class: java.lang.Class[] getInterfaces()>() 
(define-const var3612 Int (getLength-Arr-ClassObject-1 var1409)) ; Statement: i0 = lengthof r3 
(define-const var2516 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto (branch) 
(assert (>= var2516 var3612)) ; Cond: i1 >= i0 
 ; Statement: if z7 == 0 goto $z0 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery> 
(assert (= (ite var1849 1 0) 0)) ; Cond: z7 == 0 
(define-const var2225 Bool (allowFlawedDiscovery/1199358121 var1585)) ; Statement: $z0 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery> 
 ; Statement: if $z0 != 0 goto $z1 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
(assert (not (not (= (ite var2225 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1832 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1832)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1832!1 String)
(assert (= var1832!1 ""))
(assert true)
;(assert (append/672562846 var1832!1 "Terminating logging for this context. ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Terminating logging for this context. ") 
(declare-const var1832!2 String)
(assert (= var1832!2 (str.++ var1832!1 "Terminating logging for this context. ")))
(assert true)
;(assert (append/672562846 var1832!2 "Log class \u0027")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Log class \'") 
(declare-const var1832!3 String)
(assert (= var1832!3 (str.++ var1832!2 "Log class \u0027")))
(assert true)
(define-const var574 String (getName/-1958580599 var416)) ; Statement: $r9 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var1832!3 var574)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1832!4 String)
(assert (= var1832!4 (str.++ var1832!3 var574)))
(assert true)
;(assert (append/672562846 var1832!4 "\u0027 does not implement the Log interface.")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' does not implement the Log interface.") 
(declare-const var1832!5 String)
(assert (= var1832!5 (str.++ var1832!4 "\u0027 does not implement the Log interface.")))
(define-const var2465 Bool var640_isDiagnosticsEnabled/-1107982053) ; Statement: $z2 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z2 == 0 goto $r10 = new org.apache.commons.logging.LogConfigurationException 
(assert (not (= (ite var2465 1 0) 0))) ; Negate: Cond: $z2 == 0  
(assert true)
(define-const var1411 String (toString/-2075883882 var1832!5)) ; Statement: $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (logDiagnostic/1870399160 var1585 var1411)) ; Statement: virtualinvoke r4.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>($r12) 

(declare-const var1585!1 var640)
(declare-const var1411!1 String)
(assert true) ; Non Conditional
(define-const var1956 var3073 var3073-init) ; Statement: $r10 = new org.apache.commons.logging.LogConfigurationException 
(assert true)
(define-const var3675 String (toString/-2075883882 var1832!5)) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1163573448 var1956 var3675)) ; Statement: specialinvoke $r10.<org.apache.commons.logging.LogConfigurationException: void <init>(java.lang.String)>($r11) 

(declare-const var1956!1 var3073)
(declare-const var3675!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String), getInterfaces/-1280103563=([java.lang.Class], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), allowFlawedDiscovery/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var640_isDiagnosticsEnabled/-1107982053=([], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), logDiagnostic/1870399160=([org.apache.commons.logging.impl.LogFactoryImpl, java.lang.String], void), var3073-init=([], org.apache.commons.logging.LogConfigurationException), <init>/-1163573448=([org.apache.commons.logging.LogConfigurationException, java.lang.String], void)}
; {var640=org.apache.commons.logging.impl.LogFactoryImpl, var1585=r4, var1518=java.lang.ClassLoader, var1317=r27, var416=r2, var1849=z7, var1768=org.apache.commons.logging.Log, var2005=$r0, var1075=r1, var1409=r3, var3612=i0, var2516=i1, var2225=$z0, var1832=$r8, var574=$r9, var2465=$z2, var1411=$r12, var3073=org.apache.commons.logging.LogConfigurationException, var1956=$r10, var3675=$r11}
; {org.apache.commons.logging.impl.LogFactoryImpl=var640, r4=var1585, java.lang.ClassLoader=var1518, r27=var1317, r2=var416, z7=var1849, org.apache.commons.logging.Log=var1768, $r0=var2005, r1=var1075, r3=var1409, i0=var3612, i1=var2516, $z0=var2225, $r8=var1832, $r9=var574, $z2=var2465, $r12=var1411, org.apache.commons.logging.LogConfigurationException=var3073, $r10=var1956, $r11=var3675}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r4 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r27 := @parameter0: java.lang.ClassLoader;	r2 := @parameter1: java.lang.Class;	z7 = 0;	$r0 = class "Lorg/apache/commons/logging/Log;";	r1 = virtualinvoke $r0.<java.lang.Class: java.lang.String getName()>();	r3 = virtualinvoke r2.<java.lang.Class: java.lang.Class[] getInterfaces()>();	i0 = lengthof r3;	i1 = 0;	if i1 >= i0 goto (branch);	if z7 == 0 goto $z0 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery>;	$z0 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery>;	if $z0 != 0 goto $z1 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Terminating logging for this context. ");	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Log class \'");	$r9 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' does not implement the Log interface.");	$z2 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z2 == 0 goto $r10 = new org.apache.commons.logging.LogConfigurationException;	$r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>($r12);	$r10 = new org.apache.commons.logging.LogConfigurationException;	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<org.apache.commons.logging.LogConfigurationException: void <init>(java.lang.String)>($r11);	throw $r10
;block_num 7