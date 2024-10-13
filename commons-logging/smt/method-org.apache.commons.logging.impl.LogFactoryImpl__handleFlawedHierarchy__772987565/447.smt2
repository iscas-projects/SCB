(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2609 0)
(declare-sort var3434 0)
(declare-sort var3507 0)
(declare-sort var1068 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3507!class ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getInterfaces/-1280103563 (ClassObject) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun allowFlawedDiscovery/1199358121 (var2609) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2609_isDiagnosticsEnabled/-1107982053 () Bool)
(declare-fun var1068-init () var1068)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1163573448 (var1068 String) void)
(declare-const null-var2609 var2609)
(declare-const null-var3434 var3434)
(declare-const null-ClassObject ClassObject)
(declare-const var1718 var2609) ; Statement: r4 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var1718 null-var2609)))
(declare-const var3688 var3434) ; Statement: r27 := @parameter0: java.lang.ClassLoader 
(assert (not (= var3688 null-var3434)))
(declare-const var3302 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var3302 null-ClassObject)))
(define-const var269 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
(define-const var3501 ClassObject var3507!class) ; Statement: $r0 = class "Lorg/apache/commons/logging/Log;" 
(assert true)
(define-const var2474 String (getName/-1958580599 var3501)) ; Statement: r1 = virtualinvoke $r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1435 (Array Int ClassObject) (getInterfaces/-1280103563 var3302)) ; Statement: r3 = virtualinvoke r2.<java.lang.Class: java.lang.Class[] getInterfaces()>() 
(define-const var386 Int (getLength-Arr-ClassObject-1 var1435)) ; Statement: i0 = lengthof r3 
(define-const var998 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto (branch) 
(assert (>= var998 var386)) ; Cond: i1 >= i0 
 ; Statement: if z7 == 0 goto $z0 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery> 
(assert (= (ite var269 1 0) 0)) ; Cond: z7 == 0 
(define-const var2650 Bool (allowFlawedDiscovery/1199358121 var1718)) ; Statement: $z0 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery> 
 ; Statement: if $z0 != 0 goto $z1 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
(assert (not (not (= (ite var2650 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3731 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3731)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3731!1 String)
(assert (= var3731!1 ""))
(assert true)
;(assert (append/672562846 var3731!1 "Terminating logging for this context. ")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Terminating logging for this context. ") 
(declare-const var3731!2 String)
(assert (= var3731!2 (str.++ var3731!1 "Terminating logging for this context. ")))
(assert true)
;(assert (append/672562846 var3731!2 "Log class \u0027")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Log class \'") 
(declare-const var3731!3 String)
(assert (= var3731!3 (str.++ var3731!2 "Log class \u0027")))
(assert true)
(define-const var2414 String (getName/-1958580599 var3302)) ; Statement: $r9 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var3731!3 var2414)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3731!4 String)
(assert (= var3731!4 (str.++ var3731!3 var2414)))
(assert true)
;(assert (append/672562846 var3731!4 "\u0027 does not implement the Log interface.")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' does not implement the Log interface.") 
(declare-const var3731!5 String)
(assert (= var3731!5 (str.++ var3731!4 "\u0027 does not implement the Log interface.")))
(define-const var2643 Bool var2609_isDiagnosticsEnabled/-1107982053) ; Statement: $z2 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z2 == 0 goto $r10 = new org.apache.commons.logging.LogConfigurationException 
(assert (= (ite var2643 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1103 var1068 var1068-init) ; Statement: $r10 = new org.apache.commons.logging.LogConfigurationException 
(assert true)
(define-const var3143 String (toString/-2075883882 var3731!5)) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1163573448 var1103 var3143)) ; Statement: specialinvoke $r10.<org.apache.commons.logging.LogConfigurationException: void <init>(java.lang.String)>($r11) 

(declare-const var1103!1 var1068)
(declare-const var3143!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String), getInterfaces/-1280103563=([java.lang.Class], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), allowFlawedDiscovery/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2609_isDiagnosticsEnabled/-1107982053=([], boolean), var1068-init=([], org.apache.commons.logging.LogConfigurationException), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1163573448=([org.apache.commons.logging.LogConfigurationException, java.lang.String], void)}
; {var2609=org.apache.commons.logging.impl.LogFactoryImpl, var1718=r4, var3434=java.lang.ClassLoader, var3688=r27, var3302=r2, var269=z7, var3507=org.apache.commons.logging.Log, var3501=$r0, var2474=r1, var1435=r3, var386=i0, var998=i1, var2650=$z0, var3731=$r8, var2414=$r9, var2643=$z2, var1068=org.apache.commons.logging.LogConfigurationException, var1103=$r10, var3143=$r11}
; {org.apache.commons.logging.impl.LogFactoryImpl=var2609, r4=var1718, java.lang.ClassLoader=var3434, r27=var3688, r2=var3302, z7=var269, org.apache.commons.logging.Log=var3507, $r0=var3501, r1=var2474, r3=var1435, i0=var386, i1=var998, $z0=var2650, $r8=var3731, $r9=var2414, $z2=var2643, org.apache.commons.logging.LogConfigurationException=var1068, $r10=var1103, $r11=var3143}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r27 := @parameter0: java.lang.ClassLoader;	r2 := @parameter1: java.lang.Class;	z7 = 0;	$r0 = class "Lorg/apache/commons/logging/Log;";	r1 = virtualinvoke $r0.<java.lang.Class: java.lang.String getName()>();	r3 = virtualinvoke r2.<java.lang.Class: java.lang.Class[] getInterfaces()>();	i0 = lengthof r3;	i1 = 0;	if i1 >= i0 goto (branch);	if z7 == 0 goto $z0 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery>;	$z0 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery>;	if $z0 != 0 goto $z1 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Terminating logging for this context. ");	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Log class \'");	$r9 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' does not implement the Log interface.");	$z2 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z2 == 0 goto $r10 = new org.apache.commons.logging.LogConfigurationException;	$r10 = new org.apache.commons.logging.LogConfigurationException;	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<org.apache.commons.logging.LogConfigurationException: void <init>(java.lang.String)>($r11);	throw $r10
;block_num 6