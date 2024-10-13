(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1503 0)
(declare-sort var1255 0)
(declare-sort var722 0)
(declare-sort var1318 0)
(declare-sort var177 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun logConstructor/1199358121 (var1503) var1318)
(declare-fun logDiagnostic/1870399160 (var1503 String) void)
(declare-fun attributes/1199358121 (var1503) var177)
(declare-fun remove/-1412572535 (var177 var722) var722)
(declare-fun cast-from-String-to-var722 (String) var722)
(declare-const null-var1503 var1503)
(declare-const null-String String)
(declare-const null-var722 var722)
(declare-const null-var1318 var1318)
(declare-const var3639 var1503) ; Statement: r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var3639 null-var1503)))
(declare-const var1836 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1836 null-String)))
(declare-const var313 var722) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var313 null-var722)))
(define-const var946 var1318 (logConstructor/1199358121 var3639)) ; Statement: $r1 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.reflect.Constructor logConstructor> 
 ; Statement: if $r1 == null goto (branch) 
(assert (not (= var946 null-var1318))) ; Negate: Cond: $r1 == null  
(assert true)
;(assert (logDiagnostic/1870399160 var3639 "setAttribute: call too late; configuration already performed.")) ; Statement: virtualinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>("setAttribute: call too late; configuration already performed.") 

(declare-const var3639!1 var1503)
(declare-const var2875 String)
(assert true) ; Non Conditional
 ; Statement: if r2 != null goto $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes> 
(assert (not (not (= var313 null-var722)))) ; Negate: Cond: r2 != null  
(define-const var297 var177 (attributes/1199358121 var3639!1)) ; Statement: $r6 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes> 
(assert true)
;(assert (remove/-1412572535 var297 (cast-from-String-to-var722 var1836))) ; Statement: virtualinvoke $r6.<java.util.Hashtable: java.lang.Object remove(java.lang.Object)>(r3) 

(declare-const var297!1 var177)
(declare-const var1836!1 String)
 ; Statement: goto [?= $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl")] 
(assert true) ; Non Conditional
(assert true)
(define-const var2652 Bool (= var1836!1 "use_tccl")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl") 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var2652 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {logConstructor/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.reflect.Constructor), logDiagnostic/1870399160=([org.apache.commons.logging.impl.LogFactoryImpl, java.lang.String], void), attributes/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.util.Hashtable), remove/-1412572535=([java.util.Hashtable, java.lang.Object], java.lang.Object), cast-from-String-to-var722=([java.lang.String], java.lang.Object)}
; {var1503=org.apache.commons.logging.impl.LogFactoryImpl, var3639=r0, var1836=r3, var1255=null_type, var722=java.lang.Object, var313=r2, var1318=java.lang.reflect.Constructor, var946=$r1, var2875="setAttribute: call too late; configuration already performed.", var177=java.util.Hashtable, var297=$r6, var2652=$z0}
; {org.apache.commons.logging.impl.LogFactoryImpl=var1503, r0=var3639, r3=var1836, null_type=var1255, java.lang.Object=var722, r2=var313, java.lang.reflect.Constructor=var1318, $r1=var946, "setAttribute: call too late; configuration already performed."=var2875, java.util.Hashtable=var177, $r6=var297, $z0=var2652}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r3 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object;	$r1 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.reflect.Constructor logConstructor>;	if $r1 == null goto (branch);	virtualinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>("setAttribute: call too late; configuration already performed.");	if r2 != null goto $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes>;	$r6 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes>;	virtualinvoke $r6.<java.util.Hashtable: java.lang.Object remove(java.lang.Object)>(r3);	goto [?= $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl")];	$z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl");	if $z0 == 0 goto return;	return
;block_num 6