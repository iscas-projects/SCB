(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3761 0)
(declare-sort var1624 0)
(declare-sort var1947 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3761_isDiagnosticsEnabled/-1107982053 () Bool)
(declare-fun initConfiguration/1097963384 (var3761) void)
(declare-fun findUserSpecifiedLogClassName/-487640286 (var3761) String)
(declare-fun createLogFromClass/1434645975 (var3761 String String Bool) var1947)
(declare-const null-var3761 var3761)
(declare-const null-String String)
(declare-const null-var1947 var1947)
(declare-const var3827 var3761) ; Statement: r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var3827 null-var3761)))
(declare-const var1386 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1386 null-String)))
(define-const var3480 Bool var3761_isDiagnosticsEnabled/-1107982053) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void initConfiguration()>() 
(assert (= (ite var3480 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (initConfiguration/1097963384 var3827)) ; Statement: specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void initConfiguration()>() 

(declare-const var3827!1 var3761)
(define-const var3803 var1947 null-var1947) ; Statement: r15 = null 
(assert true)
(define-const var932 String (findUserSpecifiedLogClassName/-487640286 var3827!1)) ; Statement: $r14 = specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String findUserSpecifiedLogClassName()>() 
 ; Statement: if $r14 == null goto $z1 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
(assert (not (= var932 null-String))) ; Negate: Cond: $r14 == null  
(define-const var1035 Bool var3761_isDiagnosticsEnabled/-1107982053) ; Statement: $z2 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z2 == 0 goto $r13 = specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: org.apache.commons.logging.Log createLogFromClass(java.lang.String,java.lang.String,boolean)>($r14, r3, 1) 
(assert (= (ite var1035 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var389 var1947 (createLogFromClass/1434645975 var3827!1 var932 var1386 (ite (= 1 1) true false))) ; Statement: $r13 = specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: org.apache.commons.logging.Log createLogFromClass(java.lang.String,java.lang.String,boolean)>($r14, r3, 1) 
 ; Statement: if $r13 != null goto return $r13 
(assert (not (= var389 null-var1947))) ; Cond: $r13 != null 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var3761_isDiagnosticsEnabled/-1107982053=([], boolean), initConfiguration/1097963384=([org.apache.commons.logging.impl.LogFactoryImpl], void), findUserSpecifiedLogClassName/-487640286=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.String), createLogFromClass/1434645975=([org.apache.commons.logging.impl.LogFactoryImpl, java.lang.String, java.lang.String, boolean], org.apache.commons.logging.Log)}
; {var3761=org.apache.commons.logging.impl.LogFactoryImpl, var3827=r0, var1386=r3, var1624=null_type, var3480=$z0, var1947=org.apache.commons.logging.Log, var3803=r15, var932=$r14, var1035=$z2, var389=$r13}
; {org.apache.commons.logging.impl.LogFactoryImpl=var3761, r0=var3827, r3=var1386, null_type=var1624, $z0=var3480, org.apache.commons.logging.Log=var1947, r15=var3803, $r14=var932, $z2=var1035, $r13=var389}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r3 := @parameter0: java.lang.String;	$z0 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void initConfiguration()>();	specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void initConfiguration()>();	r15 = null;	$r14 = specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.String findUserSpecifiedLogClassName()>();	if $r14 == null goto $z1 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	$z2 = staticinvoke <org.apache.commons.logging.impl.LogFactoryImpl: boolean isDiagnosticsEnabled()>();	if $z2 == 0 goto $r13 = specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: org.apache.commons.logging.Log createLogFromClass(java.lang.String,java.lang.String,boolean)>($r14, r3, 1);	$r13 = specialinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: org.apache.commons.logging.Log createLogFromClass(java.lang.String,java.lang.String,boolean)>($r14, r3, 1);	if $r13 != null goto return $r13;	return $r13
;block_num 5