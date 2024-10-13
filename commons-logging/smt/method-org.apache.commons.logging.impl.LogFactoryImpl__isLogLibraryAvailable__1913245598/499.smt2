(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1171 0)
(declare-sort var848 0)
(declare-sort var3715 0)
(declare-sort var616 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1171_isDiagnosticsEnabled/-1107982053 () Bool)
(declare-fun getClass/1258963082 (var3715) ClassObject)
(declare-fun cast-from-var1171-to-var3715 (var1171) var3715)
(declare-const null-var1171 var1171)
(declare-const null-String String)
(declare-const null-var616 var616)
(declare-const var3719 var1171) ; Statement: r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var3719 null-var1171)))
(declare-const var3859 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3859 null-String)))
(declare-const var260 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var260 null-String)))
(define-const var344 Bool var1171_isDiagnosticsEnabled/-1107982053) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (= (ite var344 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2057 ClassObject (getClass/1258963082 (cast-from-var1171-to-var3715 var3719))) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var732 var616) ; Statement: $r21 := @caughtexception 
(assert (not (= var732 null-var616)))
(define-const var1340 Bool var1171_isDiagnosticsEnabled/-1107982053) ; Statement: $z3 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z3 == 0 goto return 0 
(assert (= (ite var1340 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1171_isDiagnosticsEnabled/-1107982053=([], boolean), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1171-to-var3715=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.Object)}
; {var1171=org.apache.commons.logging.impl.LogFactoryImpl, var3719=r0, var3859=r5, var848=null_type, var260=r1, var344=$z0, var3715=java.lang.Object, var2057=$r2, var616=org.apache.commons.logging.LogConfigurationException, var732=$r21, var1340=$z3}
; {org.apache.commons.logging.impl.LogFactoryImpl=var1171, r0=var3719, r5=var3859, null_type=var848, r1=var260, $z0=var344, java.lang.Object=var3715, $r2=var2057, org.apache.commons.logging.LogConfigurationException=var616, $r21=var732, $z3=var1340}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r5 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r21 := @caughtexception;	$z3 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z3 == 0 goto return 0;	return 0
;block_num 4