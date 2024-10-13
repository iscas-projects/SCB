(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1114 0)
(declare-sort var1466 0)
(declare-sort var2145 0)
(declare-sort var3881 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2145!class ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getInterfaces/-1280103563 (ClassObject) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun var1114_isDiagnosticsEnabled/-1107982053 () Bool)
(declare-fun allowFlawedHierarchy/1199358121 (var1114) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3881-init () var3881)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1163573448 (var3881 String) void)
(declare-const null-var1114 var1114)
(declare-const null-var1466 var1466)
(declare-const null-ClassObject ClassObject)
(declare-const var1334 var1114) ; Statement: r4 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var1334 null-var1114)))
(declare-const var2350 var1466) ; Statement: r27 := @parameter0: java.lang.ClassLoader 
(assert (not (= var2350 null-var1466)))
(declare-const var1167 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var1167 null-ClassObject)))
(define-const var166 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
(define-const var181 ClassObject var2145!class) ; Statement: $r0 = class "Lorg/apache/commons/logging/Log;" 
(assert true)
(define-const var506 String (getName/-1958580599 var181)) ; Statement: r1 = virtualinvoke $r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2789 (Array Int ClassObject) (getInterfaces/-1280103563 var1167)) ; Statement: r3 = virtualinvoke r2.<java.lang.Class: java.lang.Class[] getInterfaces()>() 
(define-const var2741 Int (getLength-Arr-ClassObject-1 var2789)) ; Statement: i0 = lengthof r3 
(define-const var1767 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto (branch) 
(assert (>= var1767 var2741)) ; Cond: i1 >= i0 
 ; Statement: if z7 == 0 goto $z0 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery> 
(assert (not (= (ite var166 1 0) 0))) ; Negate: Cond: z7 == 0  
(define-const var2949 Bool var1114_isDiagnosticsEnabled/-1107982053) ; Statement: $z3 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z3 == 0 goto $z8 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedHierarchy> 
(assert (= (ite var2949 1 0) 0)) ; Cond: $z3 == 0 
(define-const var19 Bool (allowFlawedHierarchy/1199358121 var1334)) ; Statement: $z8 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedHierarchy> 
 ; Statement: if $z8 != 0 goto $z4 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
(assert (not (not (= (ite var19 1 0) 0)))) ; Negate: Cond: $z8 != 0  
(define-const var1233 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1233)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1233!1 String)
(assert (= var1233!1 ""))
(assert true)
;(assert (append/672562846 var1233!1 "Terminating logging for this context ")) ; Statement: virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Terminating logging for this context ") 
(declare-const var1233!2 String)
(assert (= var1233!2 (str.++ var1233!1 "Terminating logging for this context ")))
(assert true)
;(assert (append/672562846 var1233!2 "due to bad log hierarchy. ")) ; Statement: virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("due to bad log hierarchy. ") 
(declare-const var1233!3 String)
(assert (= var1233!3 (str.++ var1233!2 "due to bad log hierarchy. ")))
(assert true)
;(assert (append/672562846 var1233!3 "You have more than one version of \u0027")) ; Statement: virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("You have more than one version of \'") 
(declare-const var1233!4 String)
(assert (= var1233!4 (str.++ var1233!3 "You have more than one version of \u0027")))
(define-const var2482 ClassObject var2145!class) ; Statement: $r18 = class "Lorg/apache/commons/logging/Log;" 
(assert true)
(define-const var165 String (getName/-1958580599 var2482)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Class: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var1233!4 var165)) ; Statement: virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var1233!5 String)
(assert (= var1233!5 (str.++ var1233!4 var165)))
(assert true)
;(assert (append/672562846 var1233!5 "\u0027 visible.")) ; Statement: virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' visible.") 
(declare-const var1233!6 String)
(assert (= var1233!6 (str.++ var1233!5 "\u0027 visible.")))
(define-const var524 Bool var1114_isDiagnosticsEnabled/-1107982053) ; Statement: $z5 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z5 == 0 goto $r20 = new org.apache.commons.logging.LogConfigurationException 
(assert (= (ite var524 1 0) 0)) ; Cond: $z5 == 0 
(define-const var3045 var3881 var3881-init) ; Statement: $r20 = new org.apache.commons.logging.LogConfigurationException 
(assert true)
(define-const var2804 String (toString/-2075883882 var1233!6)) ; Statement: $r21 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1163573448 var3045 var2804)) ; Statement: specialinvoke $r20.<org.apache.commons.logging.LogConfigurationException: void <init>(java.lang.String)>($r21) 

(declare-const var3045!1 var3881)
(declare-const var2804!1 String)
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String), getInterfaces/-1280103563=([java.lang.Class], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), var1114_isDiagnosticsEnabled/-1107982053=([], boolean), allowFlawedHierarchy/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3881-init=([], org.apache.commons.logging.LogConfigurationException), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1163573448=([org.apache.commons.logging.LogConfigurationException, java.lang.String], void)}
; {var1114=org.apache.commons.logging.impl.LogFactoryImpl, var1334=r4, var1466=java.lang.ClassLoader, var2350=r27, var1167=r2, var166=z7, var2145=org.apache.commons.logging.Log, var181=$r0, var506=r1, var2789=r3, var2741=i0, var1767=i1, var2949=$z3, var19=$z8, var1233=$r17, var2482=$r18, var165=$r19, var524=$z5, var3881=org.apache.commons.logging.LogConfigurationException, var3045=$r20, var2804=$r21}
; {org.apache.commons.logging.impl.LogFactoryImpl=var1114, r4=var1334, java.lang.ClassLoader=var1466, r27=var2350, r2=var1167, z7=var166, org.apache.commons.logging.Log=var2145, $r0=var181, r1=var506, r3=var2789, i0=var2741, i1=var1767, $z3=var2949, $z8=var19, $r17=var1233, $r18=var2482, $r19=var165, $z5=var524, org.apache.commons.logging.LogConfigurationException=var3881, $r20=var3045, $r21=var2804}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r27 := @parameter0: java.lang.ClassLoader;	r2 := @parameter1: java.lang.Class;	z7 = 0;	$r0 = class "Lorg/apache/commons/logging/Log;";	r1 = virtualinvoke $r0.<java.lang.Class: java.lang.String getName()>();	r3 = virtualinvoke r2.<java.lang.Class: java.lang.Class[] getInterfaces()>();	i0 = lengthof r3;	i1 = 0;	if i1 >= i0 goto (branch);	if z7 == 0 goto $z0 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery>;	$z3 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z3 == 0 goto $z8 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedHierarchy>;	$z8 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedHierarchy>;	if $z8 != 0 goto $z4 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Terminating logging for this context ");	virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("due to bad log hierarchy. ");	virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("You have more than one version of \'");	$r18 = class "Lorg/apache/commons/logging/Log;";	$r19 = virtualinvoke $r18.<java.lang.Class: java.lang.String getName()>();	virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' visible.");	$z5 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z5 == 0 goto $r20 = new org.apache.commons.logging.LogConfigurationException;	$r20 = new org.apache.commons.logging.LogConfigurationException;	$r21 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<org.apache.commons.logging.LogConfigurationException: void <init>(java.lang.String)>($r21);	throw $r20
;block_num 7