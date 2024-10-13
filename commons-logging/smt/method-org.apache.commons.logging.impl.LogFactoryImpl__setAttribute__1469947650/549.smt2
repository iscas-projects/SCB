(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3074 0)
(declare-sort var2078 0)
(declare-sort var2426 0)
(declare-sort var365 0)
(declare-sort var2887 0)
(declare-sort var288 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun logConstructor/1199358121 (var3074) var365)
(declare-fun attributes/1199358121 (var3074) var2887)
(declare-fun put/1981026245 (var2887 var2426 var2426) var2426)
(declare-fun cast-from-String-to-var2426 (String) var2426)
(declare-fun toString/-522406933 (var2426) String)
(declare-fun var288_parseBoolean/746105335 (String) Bool)
(declare-fun useTCCL/1199358121 (var3074) Bool)
(declare-const null-var3074 var3074)
(declare-const null-String String)
(declare-const null-var2426 var2426)
(declare-const null-var365 var365)
(declare-const var896 var3074) ; Statement: r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var896 null-var3074)))
(declare-const var2595 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2595 null-String)))
(declare-const var3023 var2426) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var3023 null-var2426)))
(define-const var855 var365 (logConstructor/1199358121 var896)) ; Statement: $r1 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.reflect.Constructor logConstructor> 
 ; Statement: if $r1 == null goto (branch) 
(assert (= var855 null-var365)) ; Cond: $r1 == null 
 ; Statement: if r2 != null goto $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes> 
(assert (not (= var3023 null-var2426))) ; Cond: r2 != null 
(define-const var2989 var2887 (attributes/1199358121 var896)) ; Statement: $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes> 
(assert true)
;(assert (put/1981026245 var2989 (cast-from-String-to-var2426 var2595) var3023)) ; Statement: virtualinvoke $r4.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r3, r2) 

(declare-const var2989!1 var2887)
(declare-const var2595!1 String)
(declare-const var3023!1 var2426)
(assert true) ; Non Conditional
(assert true)
(define-const var3336 Bool (= var2595!1 "use_tccl")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl") 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var3336 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: if r2 == null goto $z2 = 0 
(assert (not (= var3023!1 null-var2426))) ; Negate: Cond: r2 == null  
(assert true)
(define-const var777 String (toString/-522406933 var3023!1)) ; Statement: $r5 = virtualinvoke r2.<java.lang.Object: java.lang.String toString()>() 
(define-const var1097 Bool (var288_parseBoolean/746105335 var777)) ; Statement: $z1 = staticinvoke <java.lang.Boolean: boolean parseBoolean(java.lang.String)>($r5) 
 ; Statement: if $z1 == 0 goto $z2 = 0 
(assert (not (= (ite var1097 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var251 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean useTCCL> = $z2] 
(assert true) ; Non Conditional
(declare-const var896!1 var3074)
(assert (not (= var896!1 null-var3074)))
(assert (= (useTCCL/1199358121 var896!1) var251)) ; Statement: r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean useTCCL> = $z2 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {logConstructor/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.reflect.Constructor), attributes/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.util.Hashtable), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var2426=([java.lang.String], java.lang.Object), toString/-522406933=([java.lang.Object], java.lang.String), var288_parseBoolean/746105335=([java.lang.String], boolean), useTCCL/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], boolean)}
; {var3074=org.apache.commons.logging.impl.LogFactoryImpl, var896=r0, var2595=r3, var2078=null_type, var2426=java.lang.Object, var3023=r2, var365=java.lang.reflect.Constructor, var855=$r1, var2887=java.util.Hashtable, var2989=$r4, var3336=$z0, var777=$r5, var288=java.lang.Boolean, var1097=$z1, var251=$z2}
; {org.apache.commons.logging.impl.LogFactoryImpl=var3074, r0=var896, r3=var2595, null_type=var2078, java.lang.Object=var2426, r2=var3023, java.lang.reflect.Constructor=var365, $r1=var855, java.util.Hashtable=var2887, $r4=var2989, $z0=var3336, $r5=var777, java.lang.Boolean=var288, $z1=var1097, $z2=var251}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r3 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object;	$r1 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.reflect.Constructor logConstructor>;	if $r1 == null goto (branch);	if r2 != null goto $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes>;	$r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes>;	virtualinvoke $r4.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r3, r2);	$z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl");	if $z0 == 0 goto return;	if r2 == null goto $z2 = 0;	$r5 = virtualinvoke r2.<java.lang.Object: java.lang.String toString()>();	$z1 = staticinvoke <java.lang.Boolean: boolean parseBoolean(java.lang.String)>($r5);	if $z1 == 0 goto $z2 = 0;	$z2 = 1;	goto [?= r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean useTCCL> = $z2];	r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean useTCCL> = $z2;	return
;block_num 9