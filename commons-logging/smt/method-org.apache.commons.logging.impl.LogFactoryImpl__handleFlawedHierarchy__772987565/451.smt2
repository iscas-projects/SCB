(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1125 0)
(declare-sort var2970 0)
(declare-sort var3463 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3463!class ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getInterfaces/-1280103563 (ClassObject) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun allowFlawedDiscovery/1199358121 (var1125) Bool)
(declare-fun var1125_isDiagnosticsEnabled/-1107982053 () Bool)
(declare-const null-var1125 var1125)
(declare-const null-var2970 var2970)
(declare-const null-ClassObject ClassObject)
(declare-const var2737 var1125) ; Statement: r4 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var2737 null-var1125)))
(declare-const var1756 var2970) ; Statement: r27 := @parameter0: java.lang.ClassLoader 
(assert (not (= var1756 null-var2970)))
(declare-const var1082 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var1082 null-ClassObject)))
(define-const var3470 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
(define-const var1549 ClassObject var3463!class) ; Statement: $r0 = class "Lorg/apache/commons/logging/Log;" 
(assert true)
(define-const var3663 String (getName/-1958580599 var1549)) ; Statement: r1 = virtualinvoke $r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3534 (Array Int ClassObject) (getInterfaces/-1280103563 var1082)) ; Statement: r3 = virtualinvoke r2.<java.lang.Class: java.lang.Class[] getInterfaces()>() 
(define-const var2803 Int (getLength-Arr-ClassObject-1 var3534)) ; Statement: i0 = lengthof r3 
(define-const var1351 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto (branch) 
(assert (>= var1351 var2803)) ; Cond: i1 >= i0 
 ; Statement: if z7 == 0 goto $z0 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery> 
(assert (= (ite var3470 1 0) 0)) ; Cond: z7 == 0 
(define-const var3965 Bool (allowFlawedDiscovery/1199358121 var2737)) ; Statement: $z0 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery> 
 ; Statement: if $z0 != 0 goto $z1 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
(assert (not (= (ite var3965 1 0) 0))) ; Cond: $z0 != 0 
(define-const var456 Bool var1125_isDiagnosticsEnabled/-1107982053) ; Statement: $z1 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var456 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String), getInterfaces/-1280103563=([java.lang.Class], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), allowFlawedDiscovery/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], boolean), var1125_isDiagnosticsEnabled/-1107982053=([], boolean)}
; {var1125=org.apache.commons.logging.impl.LogFactoryImpl, var2737=r4, var2970=java.lang.ClassLoader, var1756=r27, var1082=r2, var3470=z7, var3463=org.apache.commons.logging.Log, var1549=$r0, var3663=r1, var3534=r3, var2803=i0, var1351=i1, var3965=$z0, var456=$z1}
; {org.apache.commons.logging.impl.LogFactoryImpl=var1125, r4=var2737, java.lang.ClassLoader=var2970, r27=var1756, r2=var1082, z7=var3470, org.apache.commons.logging.Log=var3463, $r0=var1549, r1=var3663, r3=var3534, i0=var2803, i1=var1351, $z0=var3965, $z1=var456}
;seq 
;cnt {}
;stmts r4 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r27 := @parameter0: java.lang.ClassLoader;	r2 := @parameter1: java.lang.Class;	z7 = 0;	$r0 = class "Lorg/apache/commons/logging/Log;";	r1 = virtualinvoke $r0.<java.lang.Class: java.lang.String getName()>();	r3 = virtualinvoke r2.<java.lang.Class: java.lang.Class[] getInterfaces()>();	i0 = lengthof r3;	i1 = 0;	if i1 >= i0 goto (branch);	if z7 == 0 goto $z0 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery>;	$z0 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery>;	if $z0 != 0 goto $z1 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	$z1 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z1 == 0 goto return;	return
;block_num 6