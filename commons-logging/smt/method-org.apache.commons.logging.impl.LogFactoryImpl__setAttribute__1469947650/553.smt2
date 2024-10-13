(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2826 0)
(declare-sort var1863 0)
(declare-sort var994 0)
(declare-sort var951 0)
(declare-sort var324 0)
(declare-sort var869 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun logConstructor/1199358121 (var2826) var951)
(declare-fun attributes/1199358121 (var2826) var324)
(declare-fun put/1981026245 (var324 var994 var994) var994)
(declare-fun cast-from-String-to-var994 (String) var994)
(declare-fun toString/-522406933 (var994) String)
(declare-fun var869_parseBoolean/746105335 (String) Bool)
(declare-fun useTCCL/1199358121 (var2826) Bool)
(declare-const null-var2826 var2826)
(declare-const null-String String)
(declare-const null-var994 var994)
(declare-const null-var951 var951)
(declare-const var518 var2826) ; Statement: r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var518 null-var2826)))
(declare-const var1385 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1385 null-String)))
(declare-const var1470 var994) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var1470 null-var994)))
(define-const var1262 var951 (logConstructor/1199358121 var518)) ; Statement: $r1 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.reflect.Constructor logConstructor> 
 ; Statement: if $r1 == null goto (branch) 
(assert (= var1262 null-var951)) ; Cond: $r1 == null 
 ; Statement: if r2 != null goto $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes> 
(assert (not (= var1470 null-var994))) ; Cond: r2 != null 
(define-const var3289 var324 (attributes/1199358121 var518)) ; Statement: $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes> 
(assert true)
;(assert (put/1981026245 var3289 (cast-from-String-to-var994 var1385) var1470)) ; Statement: virtualinvoke $r4.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r3, r2) 

(declare-const var3289!1 var324)
(declare-const var1385!1 String)
(declare-const var1470!1 var994)
(assert true) ; Non Conditional
(assert true)
(define-const var941 Bool (= var1385!1 "use_tccl")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl") 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var941 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: if r2 == null goto $z2 = 0 
(assert (not (= var1470!1 null-var994))) ; Negate: Cond: r2 == null  
(assert true)
(define-const var2542 String (toString/-522406933 var1470!1)) ; Statement: $r5 = virtualinvoke r2.<java.lang.Object: java.lang.String toString()>() 
(define-const var3108 Bool (var869_parseBoolean/746105335 var2542)) ; Statement: $z1 = staticinvoke <java.lang.Boolean: boolean parseBoolean(java.lang.String)>($r5) 
 ; Statement: if $z1 == 0 goto $z2 = 0 
(assert (= (ite var3108 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1809 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(declare-const var518!1 var2826)
(assert (not (= var518!1 null-var2826)))
(assert (= (useTCCL/1199358121 var518!1) var1809)) ; Statement: r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean useTCCL> = $z2 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {logConstructor/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.reflect.Constructor), attributes/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.util.Hashtable), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var994=([java.lang.String], java.lang.Object), toString/-522406933=([java.lang.Object], java.lang.String), var869_parseBoolean/746105335=([java.lang.String], boolean), useTCCL/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], boolean)}
; {var2826=org.apache.commons.logging.impl.LogFactoryImpl, var518=r0, var1385=r3, var1863=null_type, var994=java.lang.Object, var1470=r2, var951=java.lang.reflect.Constructor, var1262=$r1, var324=java.util.Hashtable, var3289=$r4, var941=$z0, var2542=$r5, var869=java.lang.Boolean, var3108=$z1, var1809=$z2}
; {org.apache.commons.logging.impl.LogFactoryImpl=var2826, r0=var518, r3=var1385, null_type=var1863, java.lang.Object=var994, r2=var1470, java.lang.reflect.Constructor=var951, $r1=var1262, java.util.Hashtable=var324, $r4=var3289, $z0=var941, $r5=var2542, java.lang.Boolean=var869, $z1=var3108, $z2=var1809}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r3 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object;	$r1 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.reflect.Constructor logConstructor>;	if $r1 == null goto (branch);	if r2 != null goto $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes>;	$r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes>;	virtualinvoke $r4.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r3, r2);	$z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl");	if $z0 == 0 goto return;	if r2 == null goto $z2 = 0;	$r5 = virtualinvoke r2.<java.lang.Object: java.lang.String toString()>();	$z1 = staticinvoke <java.lang.Boolean: boolean parseBoolean(java.lang.String)>($r5);	if $z1 == 0 goto $z2 = 0;	$z2 = 0;	r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean useTCCL> = $z2;	return
;block_num 9