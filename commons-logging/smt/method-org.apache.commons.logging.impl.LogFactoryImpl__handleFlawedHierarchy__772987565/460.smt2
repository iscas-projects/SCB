(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var656 0)
(declare-sort var2170 0)
(declare-sort var3854 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3854!class ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getInterfaces/-1280103563 (ClassObject) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun var656_isDiagnosticsEnabled/-1107982053 () Bool)
(declare-fun allowFlawedHierarchy/1199358121 (var656) Bool)
(declare-const null-var656 var656)
(declare-const null-var2170 var2170)
(declare-const null-ClassObject ClassObject)
(declare-const var1341 var656) ; Statement: r4 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var1341 null-var656)))
(declare-const var306 var2170) ; Statement: r27 := @parameter0: java.lang.ClassLoader 
(assert (not (= var306 null-var2170)))
(declare-const var3483 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var3483 null-ClassObject)))
(define-const var3559 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
(define-const var437 ClassObject var3854!class) ; Statement: $r0 = class "Lorg/apache/commons/logging/Log;" 
(assert true)
(define-const var1267 String (getName/-1958580599 var437)) ; Statement: r1 = virtualinvoke $r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3310 (Array Int ClassObject) (getInterfaces/-1280103563 var3483)) ; Statement: r3 = virtualinvoke r2.<java.lang.Class: java.lang.Class[] getInterfaces()>() 
(define-const var452 Int (getLength-Arr-ClassObject-1 var3310)) ; Statement: i0 = lengthof r3 
(define-const var253 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto (branch) 
(assert (>= var253 var452)) ; Cond: i1 >= i0 
 ; Statement: if z7 == 0 goto $z0 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery> 
(assert (not (= (ite var3559 1 0) 0))) ; Negate: Cond: z7 == 0  
(define-const var217 Bool var656_isDiagnosticsEnabled/-1107982053) ; Statement: $z3 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z3 == 0 goto $z8 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedHierarchy> 
(assert (= (ite var217 1 0) 0)) ; Cond: $z3 == 0 
(define-const var1444 Bool (allowFlawedHierarchy/1199358121 var1341)) ; Statement: $z8 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedHierarchy> 
 ; Statement: if $z8 != 0 goto $z4 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
(assert (not (= (ite var1444 1 0) 0))) ; Cond: $z8 != 0 
(define-const var3569 Bool var656_isDiagnosticsEnabled/-1107982053) ; Statement: $z4 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z4 == 0 goto return 
(assert (= (ite var3569 1 0) 0)) ; Cond: $z4 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String), getInterfaces/-1280103563=([java.lang.Class], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), var656_isDiagnosticsEnabled/-1107982053=([], boolean), allowFlawedHierarchy/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], boolean)}
; {var656=org.apache.commons.logging.impl.LogFactoryImpl, var1341=r4, var2170=java.lang.ClassLoader, var306=r27, var3483=r2, var3559=z7, var3854=org.apache.commons.logging.Log, var437=$r0, var1267=r1, var3310=r3, var452=i0, var253=i1, var217=$z3, var1444=$z8, var3569=$z4}
; {org.apache.commons.logging.impl.LogFactoryImpl=var656, r4=var1341, java.lang.ClassLoader=var2170, r27=var306, r2=var3483, z7=var3559, org.apache.commons.logging.Log=var3854, $r0=var437, r1=var1267, r3=var3310, i0=var452, i1=var253, $z3=var217, $z8=var1444, $z4=var3569}
;seq 
;cnt {}
;stmts r4 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r27 := @parameter0: java.lang.ClassLoader;	r2 := @parameter1: java.lang.Class;	z7 = 0;	$r0 = class "Lorg/apache/commons/logging/Log;";	r1 = virtualinvoke $r0.<java.lang.Class: java.lang.String getName()>();	r3 = virtualinvoke r2.<java.lang.Class: java.lang.Class[] getInterfaces()>();	i0 = lengthof r3;	i1 = 0;	if i1 >= i0 goto (branch);	if z7 == 0 goto $z0 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedDiscovery>;	$z3 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z3 == 0 goto $z8 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedHierarchy>;	$z8 = r4.<org.apache.commons.logging.impl.LogFactoryImpl: boolean allowFlawedHierarchy>;	if $z8 != 0 goto $z4 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	$z4 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z4 == 0 goto return;	return
;block_num 7