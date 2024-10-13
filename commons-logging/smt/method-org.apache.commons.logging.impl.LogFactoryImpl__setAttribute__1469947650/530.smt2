(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2059 0)
(declare-sort var1007 0)
(declare-sort var140 0)
(declare-sort var1950 0)
(declare-sort var3823 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun logConstructor/1199358121 (var2059) var1950)
(declare-fun attributes/1199358121 (var2059) var3823)
(declare-fun put/1981026245 (var3823 var140 var140) var140)
(declare-fun cast-from-String-to-var140 (String) var140)
(declare-const null-var2059 var2059)
(declare-const null-String String)
(declare-const null-var140 var140)
(declare-const null-var1950 var1950)
(declare-const var2869 var2059) ; Statement: r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var2869 null-var2059)))
(declare-const var2119 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2119 null-String)))
(declare-const var2629 var140) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var2629 null-var140)))
(define-const var2951 var1950 (logConstructor/1199358121 var2869)) ; Statement: $r1 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.reflect.Constructor logConstructor> 
 ; Statement: if $r1 == null goto (branch) 
(assert (= var2951 null-var1950)) ; Cond: $r1 == null 
 ; Statement: if r2 != null goto $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes> 
(assert (not (= var2629 null-var140))) ; Cond: r2 != null 
(define-const var3687 var3823 (attributes/1199358121 var2869)) ; Statement: $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes> 
(assert true)
;(assert (put/1981026245 var3687 (cast-from-String-to-var140 var2119) var2629)) ; Statement: virtualinvoke $r4.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r3, r2) 

(declare-const var3687!1 var3823)
(declare-const var2119!1 String)
(declare-const var2629!1 var140)
(assert true) ; Non Conditional
(assert true)
(define-const var2575 Bool (= var2119!1 "use_tccl")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl") 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var2575 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {logConstructor/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.reflect.Constructor), attributes/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.util.Hashtable), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var140=([java.lang.String], java.lang.Object)}
; {var2059=org.apache.commons.logging.impl.LogFactoryImpl, var2869=r0, var2119=r3, var1007=null_type, var140=java.lang.Object, var2629=r2, var1950=java.lang.reflect.Constructor, var2951=$r1, var3823=java.util.Hashtable, var3687=$r4, var2575=$z0}
; {org.apache.commons.logging.impl.LogFactoryImpl=var2059, r0=var2869, r3=var2119, null_type=var1007, java.lang.Object=var140, r2=var2629, java.lang.reflect.Constructor=var1950, $r1=var2951, java.util.Hashtable=var3823, $r4=var3687, $z0=var2575}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r3 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object;	$r1 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.reflect.Constructor logConstructor>;	if $r1 == null goto (branch);	if r2 != null goto $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes>;	$r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes>;	virtualinvoke $r4.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>(r3, r2);	$z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl");	if $z0 == 0 goto return;	return
;block_num 5