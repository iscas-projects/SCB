(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1937 0)
(declare-sort var692 0)
(declare-sort var3656 0)
(declare-sort var3043 0)
(declare-sort var1543 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun logConstructor/1199358121 (var1937) var3043)
(declare-fun logDiagnostic/1870399160 (var1937 String) void)
(declare-fun attributes/1199358121 (var1937) var1543)
(declare-fun put/1981026245 (var1543 var3656 var3656) var3656)
(declare-fun cast-from-String-to-var3656 (String) var3656)
(declare-fun useTCCL/1199358121 (var1937) Bool)
(declare-const null-var1937 var1937)
(declare-const null-String String)
(declare-const null-var3656 var3656)
(declare-const null-var3043 var3043)
(declare-const var893 var1937) ; Statement: r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var893 null-var1937)))
(declare-const var1079 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1079 null-String)))
(declare-const var879 var3656) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var879 null-var3656)))
(define-const var3746 var3043 (logConstructor/1199358121 var893)) ; Statement: $r1 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.reflect.Constructor logConstructor> 
 ; Statement: if $r1 == null goto (branch) 
(assert (not (= var3746 null-var3043))) ; Negate: Cond: $r1 == null  
(assert true)
;(assert (logDiagnostic/1870399160 var893 "setAttribute: call too late; configuration already performed.")) ; Statement: virtualinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>("setAttribute: call too late; configuration already performed.") 

(declare-const var893!1 var1937)
(declare-const var317 String)
(assert true) ; Non Conditional
 ; Statement: if r2 != null goto $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes> 
(assert (not (= var879 null-var3656))) ; Cond: r2 != null 
(define-const var544 var1543 (attributes/1199358121 var893!1)) ; Statement: $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes> 
(assert true)
;(assert (put/1981026245 var544 (cast-from-String-to-var3656 var1079) var879)) ; Statement: virtualinvoke $r4.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r3, r2) 

(declare-const var544!1 var1543)
(declare-const var1079!1 String)
(declare-const var879!1 var3656)
(assert true) ; Non Conditional
(assert true)
(define-const var2924 Bool (= var1079!1 "use_tccl")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl") 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var2924 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: if r2 == null goto $z2 = 0 
(assert (= var879!1 null-var3656)) ; Cond: r2 == null 
(define-const var1468 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(declare-const var893!2 var1937)
(assert (not (= var893!2 null-var1937)))
(assert (= (useTCCL/1199358121 var893!2) var1468)) ; Statement: r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean useTCCL> = $z2 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {logConstructor/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.reflect.Constructor), logDiagnostic/1870399160=([org.apache.commons.logging.impl.LogFactoryImpl, java.lang.String], void), attributes/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.util.Hashtable), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var3656=([java.lang.String], java.lang.Object), useTCCL/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], boolean)}
; {var1937=org.apache.commons.logging.impl.LogFactoryImpl, var893=r0, var1079=r3, var692=null_type, var3656=java.lang.Object, var879=r2, var3043=java.lang.reflect.Constructor, var3746=$r1, var317="setAttribute: call too late; configuration already performed.", var1543=java.util.Hashtable, var544=$r4, var2924=$z0, var1468=$z2}
; {org.apache.commons.logging.impl.LogFactoryImpl=var1937, r0=var893, r3=var1079, null_type=var692, java.lang.Object=var3656, r2=var879, java.lang.reflect.Constructor=var3043, $r1=var3746, "setAttribute: call too late; configuration already performed."=var317, java.util.Hashtable=var1543, $r4=var544, $z0=var2924, $z2=var1468}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r3 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object;	$r1 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.reflect.Constructor logConstructor>;	if $r1 == null goto (branch);	virtualinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>("setAttribute: call too late; configuration already performed.");	if r2 != null goto $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes>;	$r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes>;	virtualinvoke $r4.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r3, r2);	$z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl");	if $z0 == 0 goto return;	if r2 == null goto $z2 = 0;	$z2 = 0;	r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean useTCCL> = $z2;	return
;block_num 9