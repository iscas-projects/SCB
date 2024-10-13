(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var999 0)
(declare-sort var1466 0)
(declare-sort var236 0)
(declare-sort var152 0)
(declare-sort var3233 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun logConstructor/1199358121 (var999) var152)
(declare-fun attributes/1199358121 (var999) var3233)
(declare-fun put/1981026245 (var3233 var236 var236) var236)
(declare-fun cast-from-String-to-var236 (String) var236)
(declare-fun useTCCL/1199358121 (var999) Bool)
(declare-const null-var999 var999)
(declare-const null-String String)
(declare-const null-var236 var236)
(declare-const null-var152 var152)
(declare-const var116 var999) ; Statement: r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var116 null-var999)))
(declare-const var1877 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1877 null-String)))
(declare-const var2850 var236) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var2850 null-var236)))
(define-const var1904 var152 (logConstructor/1199358121 var116)) ; Statement: $r1 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.reflect.Constructor logConstructor> 
 ; Statement: if $r1 == null goto (branch) 
(assert (= var1904 null-var152)) ; Cond: $r1 == null 
 ; Statement: if r2 != null goto $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes> 
(assert (not (= var2850 null-var236))) ; Cond: r2 != null 
(define-const var2977 var3233 (attributes/1199358121 var116)) ; Statement: $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes> 
(assert true)
;(assert (put/1981026245 var2977 (cast-from-String-to-var236 var1877) var2850)) ; Statement: virtualinvoke $r4.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r3, r2) 

(declare-const var2977!1 var3233)
(declare-const var1877!1 String)
(declare-const var2850!1 var236)
(assert true) ; Non Conditional
(assert true)
(define-const var1555 Bool (= var1877!1 "use_tccl")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl") 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var1555 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: if r2 == null goto $z2 = 0 
(assert (= var2850!1 null-var236)) ; Cond: r2 == null 
(define-const var65 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(declare-const var116!1 var999)
(assert (not (= var116!1 null-var999)))
(assert (= (useTCCL/1199358121 var116!1) var65)) ; Statement: r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean useTCCL> = $z2 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {logConstructor/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.reflect.Constructor), attributes/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.util.Hashtable), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var236=([java.lang.String], java.lang.Object), useTCCL/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], boolean)}
; {var999=org.apache.commons.logging.impl.LogFactoryImpl, var116=r0, var1877=r3, var1466=null_type, var236=java.lang.Object, var2850=r2, var152=java.lang.reflect.Constructor, var1904=$r1, var3233=java.util.Hashtable, var2977=$r4, var1555=$z0, var65=$z2}
; {org.apache.commons.logging.impl.LogFactoryImpl=var999, r0=var116, r3=var1877, null_type=var1466, java.lang.Object=var236, r2=var2850, java.lang.reflect.Constructor=var152, $r1=var1904, java.util.Hashtable=var3233, $r4=var2977, $z0=var1555, $z2=var65}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r3 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object;	$r1 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.reflect.Constructor logConstructor>;	if $r1 == null goto (branch);	if r2 != null goto $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes>;	$r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes>;	virtualinvoke $r4.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r3, r2);	$z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl");	if $z0 == 0 goto return;	if r2 == null goto $z2 = 0;	$z2 = 0;	r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean useTCCL> = $z2;	return
;block_num 8