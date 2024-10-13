(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var969 0)
(declare-sort var280 0)
(declare-sort var1500 0)
(declare-sort var924 0)
(declare-sort var221 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun logConstructor/1199358121 (var969) var924)
(declare-fun attributes/1199358121 (var969) var221)
(declare-fun remove/-1412572535 (var221 var1500) var1500)
(declare-fun cast-from-String-to-var1500 (String) var1500)
(declare-fun useTCCL/1199358121 (var969) Bool)
(declare-const null-var969 var969)
(declare-const null-String String)
(declare-const null-var1500 var1500)
(declare-const null-var924 var924)
(declare-const var2501 var969) ; Statement: r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var2501 null-var969)))
(declare-const var3859 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3859 null-String)))
(declare-const var376 var1500) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var376 null-var1500)))
(define-const var2522 var924 (logConstructor/1199358121 var2501)) ; Statement: $r1 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.reflect.Constructor logConstructor> 
 ; Statement: if $r1 == null goto (branch) 
(assert (= var2522 null-var924)) ; Cond: $r1 == null 
 ; Statement: if r2 != null goto $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes> 
(assert (not (not (= var376 null-var1500)))) ; Negate: Cond: r2 != null  
(define-const var1287 var221 (attributes/1199358121 var2501)) ; Statement: $r6 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes> 
(assert true)
;(assert (remove/-1412572535 var1287 (cast-from-String-to-var1500 var3859))) ; Statement: virtualinvoke $r6.<java.util.Hashtable: java.lang.Object remove(java.lang.Object)>(r3) 

(declare-const var1287!1 var221)
(declare-const var3859!1 String)
 ; Statement: goto [?= $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl")] 
(assert true) ; Non Conditional
(assert true)
(define-const var790 Bool (= var3859!1 "use_tccl")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl") 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var790 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: if r2 == null goto $z2 = 0 
(assert (= var376 null-var1500)) ; Cond: r2 == null 
(define-const var2867 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(declare-const var2501!1 var969)
(assert (not (= var2501!1 null-var969)))
(assert (= (useTCCL/1199358121 var2501!1) var2867)) ; Statement: r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean useTCCL> = $z2 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {logConstructor/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.reflect.Constructor), attributes/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.util.Hashtable), remove/-1412572535=([java.util.Hashtable, java.lang.Object], java.lang.Object), cast-from-String-to-var1500=([java.lang.String], java.lang.Object), useTCCL/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], boolean)}
; {var969=org.apache.commons.logging.impl.LogFactoryImpl, var2501=r0, var3859=r3, var280=null_type, var1500=java.lang.Object, var376=r2, var924=java.lang.reflect.Constructor, var2522=$r1, var221=java.util.Hashtable, var1287=$r6, var790=$z0, var2867=$z2}
; {org.apache.commons.logging.impl.LogFactoryImpl=var969, r0=var2501, r3=var3859, null_type=var280, java.lang.Object=var1500, r2=var376, java.lang.reflect.Constructor=var924, $r1=var2522, java.util.Hashtable=var221, $r6=var1287, $z0=var790, $z2=var2867}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r3 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object;	$r1 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.reflect.Constructor logConstructor>;	if $r1 == null goto (branch);	if r2 != null goto $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes>;	$r6 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes>;	virtualinvoke $r6.<java.util.Hashtable: java.lang.Object remove(java.lang.Object)>(r3);	goto [?= $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl")];	$z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl");	if $z0 == 0 goto return;	if r2 == null goto $z2 = 0;	$z2 = 0;	r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean useTCCL> = $z2;	return
;block_num 8