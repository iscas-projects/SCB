(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var54 0)
(declare-sort var184 0)
(declare-sort var1760 0)
(declare-sort var3369 0)
(declare-sort var322 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun logConstructor/1199358121 (var54) var3369)
(declare-fun logDiagnostic/1870399160 (var54 String) void)
(declare-fun attributes/1199358121 (var54) var322)
(declare-fun put/1981026245 (var322 var1760 var1760) var1760)
(declare-fun cast-from-String-to-var1760 (String) var1760)
(declare-const null-var54 var54)
(declare-const null-String String)
(declare-const null-var1760 var1760)
(declare-const null-var3369 var3369)
(declare-const var346 var54) ; Statement: r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var346 null-var54)))
(declare-const var393 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var393 null-String)))
(declare-const var2431 var1760) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var2431 null-var1760)))
(define-const var704 var3369 (logConstructor/1199358121 var346)) ; Statement: $r1 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.reflect.Constructor logConstructor> 
 ; Statement: if $r1 == null goto (branch) 
(assert (not (= var704 null-var3369))) ; Negate: Cond: $r1 == null  
(assert true)
;(assert (logDiagnostic/1870399160 var346 "setAttribute: call too late; configuration already performed.")) ; Statement: virtualinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>("setAttribute: call too late; configuration already performed.") 

(declare-const var346!1 var54)
(declare-const var375 String)
(assert true) ; Non Conditional
 ; Statement: if r2 != null goto $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes> 
(assert (not (= var2431 null-var1760))) ; Cond: r2 != null 
(define-const var520 var322 (attributes/1199358121 var346!1)) ; Statement: $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes> 
(assert true)
;(assert (put/1981026245 var520 (cast-from-String-to-var1760 var393) var2431)) ; Statement: virtualinvoke $r4.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r3, r2) 

(declare-const var520!1 var322)
(declare-const var393!1 String)
(declare-const var2431!1 var1760)
(assert true) ; Non Conditional
(assert true)
(define-const var799 Bool (= var393!1 "use_tccl")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl") 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var799 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {logConstructor/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.reflect.Constructor), logDiagnostic/1870399160=([org.apache.commons.logging.impl.LogFactoryImpl, java.lang.String], void), attributes/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.util.Hashtable), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var1760=([java.lang.String], java.lang.Object)}
; {var54=org.apache.commons.logging.impl.LogFactoryImpl, var346=r0, var393=r3, var184=null_type, var1760=java.lang.Object, var2431=r2, var3369=java.lang.reflect.Constructor, var704=$r1, var375="setAttribute: call too late; configuration already performed.", var322=java.util.Hashtable, var520=$r4, var799=$z0}
; {org.apache.commons.logging.impl.LogFactoryImpl=var54, r0=var346, r3=var393, null_type=var184, java.lang.Object=var1760, r2=var2431, java.lang.reflect.Constructor=var3369, $r1=var704, "setAttribute: call too late; configuration already performed."=var375, java.util.Hashtable=var322, $r4=var520, $z0=var799}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r3 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object;	$r1 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.reflect.Constructor logConstructor>;	if $r1 == null goto (branch);	virtualinvoke r0.<org.apache.commons.logging.impl.LogFactoryImpl: void logDiagnostic(java.lang.String)>("setAttribute: call too late; configuration already performed.");	if r2 != null goto $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes>;	$r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes>;	virtualinvoke $r4.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r3, r2);	$z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl");	if $z0 == 0 goto return;	return
;block_num 6