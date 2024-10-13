(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2982 0)
(declare-sort var1209 0)
(declare-sort var3726 0)
(declare-sort var1647 0)
(declare-sort var1850 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun logConstructor/1199358121 (var2982) var1647)
(declare-fun attributes/1199358121 (var2982) var1850)
(declare-fun remove/-1412572535 (var1850 var3726) var3726)
(declare-fun cast-from-String-to-var3726 (String) var3726)
(declare-const null-var2982 var2982)
(declare-const null-String String)
(declare-const null-var3726 var3726)
(declare-const null-var1647 var1647)
(declare-const var2895 var2982) ; Statement: r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var2895 null-var2982)))
(declare-const var3724 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3724 null-String)))
(declare-const var3748 var3726) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var3748 null-var3726)))
(define-const var3501 var1647 (logConstructor/1199358121 var2895)) ; Statement: $r1 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.reflect.Constructor logConstructor> 
 ; Statement: if $r1 == null goto (branch) 
(assert (= var3501 null-var1647)) ; Cond: $r1 == null 
 ; Statement: if r2 != null goto $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes> 
(assert (not (not (= var3748 null-var3726)))) ; Negate: Cond: r2 != null  
(define-const var2399 var1850 (attributes/1199358121 var2895)) ; Statement: $r6 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes> 
(assert true)
;(assert (remove/-1412572535 var2399 (cast-from-String-to-var3726 var3724))) ; Statement: virtualinvoke $r6.<java.util.Hashtable: java.lang.Object remove(java.lang.Object)>(r3) 

(declare-const var2399!1 var1850)
(declare-const var3724!1 String)
 ; Statement: goto [?= $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl")] 
(assert true) ; Non Conditional
(assert true)
(define-const var1618 Bool (= var3724!1 "use_tccl")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl") 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var1618 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {logConstructor/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.reflect.Constructor), attributes/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.util.Hashtable), remove/-1412572535=([java.util.Hashtable, java.lang.Object], java.lang.Object), cast-from-String-to-var3726=([java.lang.String], java.lang.Object)}
; {var2982=org.apache.commons.logging.impl.LogFactoryImpl, var2895=r0, var3724=r3, var1209=null_type, var3726=java.lang.Object, var3748=r2, var1647=java.lang.reflect.Constructor, var3501=$r1, var1850=java.util.Hashtable, var2399=$r6, var1618=$z0}
; {org.apache.commons.logging.impl.LogFactoryImpl=var2982, r0=var2895, r3=var3724, null_type=var1209, java.lang.Object=var3726, r2=var3748, java.lang.reflect.Constructor=var1647, $r1=var3501, java.util.Hashtable=var1850, $r6=var2399, $z0=var1618}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r3 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object;	$r1 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.reflect.Constructor logConstructor>;	if $r1 == null goto (branch);	if r2 != null goto $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes>;	$r6 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes>;	virtualinvoke $r6.<java.util.Hashtable: java.lang.Object remove(java.lang.Object)>(r3);	goto [?= $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl")];	$z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl");	if $z0 == 0 goto return;	return
;block_num 5