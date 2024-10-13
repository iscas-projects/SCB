(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var251 0)
(declare-sort var1797 0)
(declare-sort var3593 0)
(declare-sort var3624 0)
(declare-sort var2409 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun logConstructor/1199358121 (var251) var3624)
(declare-fun logDiagnostic/1870399160 (var251 String) void)
(declare-fun attributes/1199358121 (var251) var2409)
(declare-fun remove/-1412572535 (var2409 var3593) var3593)
(declare-fun cast-from-String-to-var3593 (String) var3593)
(declare-fun useTCCL/1199358121 (var251) Bool)
(declare-const null-var251 var251)
(declare-const null-String String)
(declare-const null-var3593 var3593)
(declare-const null-var3624 var3624)
(declare-const var1395 var251) ; Statement: r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var1395 null-var251)))
(declare-const var118 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var118 null-String)))
(declare-const var1722 var3593) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var1722 null-var3593)))
(define-const var2582 var3624 (logConstructor/1199358121 var1395)) ; Statement: $r1 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.reflect.Constructor logConstructor> 
 ; Statement: if $r1 == null goto (branch) 
(assert (not (= var2582 null-var3624))) ; Negate: Cond: $r1 == null  
(assert true)
;(assert (logDiagnostic/1870399160 var1395 "setAttribute: call too late; configuration already performed.")) ; Statement: virtualinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>("setAttribute: call too late; configuration already performed.") 

(declare-const var1395!1 var251)
(declare-const var2209 String)
(assert true) ; Non Conditional
 ; Statement: if r2 != null goto $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes> 
(assert (not (not (= var1722 null-var3593)))) ; Negate: Cond: r2 != null  
(define-const var3411 var2409 (attributes/1199358121 var1395!1)) ; Statement: $r6 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes> 
(assert true)
;(assert (remove/-1412572535 var3411 (cast-from-String-to-var3593 var118))) ; Statement: virtualinvoke $r6.<java.util.Hashtable: java.lang.Object remove(java.lang.Object)>(r3) 

(declare-const var3411!1 var2409)
(declare-const var118!1 String)
 ; Statement: goto [?= $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl")] 
(assert true) ; Non Conditional
(assert true)
(define-const var2067 Bool (= var118!1 "use_tccl")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl") 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var2067 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: if r2 == null goto $z2 = 0 
(assert (= var1722 null-var3593)) ; Cond: r2 == null 
(define-const var2892 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(declare-const var1395!2 var251)
(assert (not (= var1395!2 null-var251)))
(assert (= (useTCCL/1199358121 var1395!2) var2892)) ; Statement: r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean useTCCL> = $z2 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {logConstructor/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.reflect.Constructor), logDiagnostic/1870399160=([org.apache.commons.logging.impl.LogFactoryImpl, java.lang.String], void), attributes/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.util.Hashtable), remove/-1412572535=([java.util.Hashtable, java.lang.Object], java.lang.Object), cast-from-String-to-var3593=([java.lang.String], java.lang.Object), useTCCL/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], boolean)}
; {var251=org.apache.commons.logging.impl.LogFactoryImpl, var1395=r0, var118=r3, var1797=null_type, var3593=java.lang.Object, var1722=r2, var3624=java.lang.reflect.Constructor, var2582=$r1, var2209="setAttribute: call too late; configuration already performed.", var2409=java.util.Hashtable, var3411=$r6, var2067=$z0, var2892=$z2}
; {org.apache.commons.logging.impl.LogFactoryImpl=var251, r0=var1395, r3=var118, null_type=var1797, java.lang.Object=var3593, r2=var1722, java.lang.reflect.Constructor=var3624, $r1=var2582, "setAttribute: call too late; configuration already performed."=var2209, java.util.Hashtable=var2409, $r6=var3411, $z0=var2067, $z2=var2892}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r3 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object;	$r1 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.reflect.Constructor logConstructor>;	if $r1 == null goto (branch);	virtualinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>("setAttribute: call too late; configuration already performed.");	if r2 != null goto $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes>;	$r6 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes>;	virtualinvoke $r6.<java.util.Hashtable: java.lang.Object remove(java.lang.Object)>(r3);	goto [?= $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl")];	$z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl");	if $z0 == 0 goto return;	if r2 == null goto $z2 = 0;	$z2 = 0;	r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean useTCCL> = $z2;	return
;block_num 9