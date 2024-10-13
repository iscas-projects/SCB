(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var104 0)
(declare-sort var4 0)
(declare-sort var2209 0)
(declare-sort var3971 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var104_isDiagnosticsEnabled/-1107982053 () Bool)
(declare-fun getClass/1258963082 (var2209) ClassObject)
(declare-fun cast-from-var104-to-var2209 (var104) var2209)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-var104 var104)
(declare-const null-String String)
(declare-const null-var3971 var3971)
(declare-const var2329 var104) ; Statement: r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var2329 null-var104)))
(declare-const var1814 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1814 null-String)))
(declare-const var2282 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2282 null-String)))
(define-const var26 Bool var104_isDiagnosticsEnabled/-1107982053) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (= (ite var26 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var245 ClassObject (getClass/1258963082 (cast-from-var104-to-var2209 var2329))) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var3177 String (getName/-1958580599 var245)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1572 var3971) ; Statement: $r21 := @caughtexception 
(assert (not (= var1572 null-var3971)))
(define-const var3814 Bool var104_isDiagnosticsEnabled/-1107982053) ; Statement: $z3 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z3 == 0 goto return 0 
(assert (= (ite var3814 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {var104_isDiagnosticsEnabled/-1107982053=([], boolean), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var104-to-var2209=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var104=org.apache.commons.logging.impl.LogFactoryImpl, var2329=r0, var1814=r5, var4=null_type, var2282=r1, var26=$z0, var2209=java.lang.Object, var245=$r2, var3177=$r3, var3971=org.apache.commons.logging.LogConfigurationException, var1572=$r21, var3814=$z3}
; {org.apache.commons.logging.impl.LogFactoryImpl=var104, r0=var2329, r5=var1814, null_type=var4, r1=var2282, $z0=var26, java.lang.Object=var2209, $r2=var245, $r3=var3177, org.apache.commons.logging.LogConfigurationException=var3971, $r21=var1572, $z3=var3814}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r5 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r21 := @caughtexception;	$z3 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z3 == 0 goto return 0;	return 0
;block_num 5