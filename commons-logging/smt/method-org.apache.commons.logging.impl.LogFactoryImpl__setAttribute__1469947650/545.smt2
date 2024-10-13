(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var375 0)
(declare-sort var1160 0)
(declare-sort var2229 0)
(declare-sort var3137 0)
(declare-sort var1516 0)
(declare-sort var787 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun logConstructor/1199358121 (var375) var3137)
(declare-fun attributes/1199358121 (var375) var1516)
(declare-fun remove/-1412572535 (var1516 var2229) var2229)
(declare-fun cast-from-String-to-var2229 (String) var2229)
(declare-fun toString/-522406933 (var2229) String)
(declare-fun var787_parseBoolean/746105335 (String) Bool)
(declare-fun useTCCL/1199358121 (var375) Bool)
(declare-const null-var375 var375)
(declare-const null-String String)
(declare-const null-var2229 var2229)
(declare-const null-var3137 var3137)
(declare-const var2722 var375) ; Statement: r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var2722 null-var375)))
(declare-const var1630 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1630 null-String)))
(declare-const var517 var2229) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var517 null-var2229)))
(define-const var1154 var3137 (logConstructor/1199358121 var2722)) ; Statement: $r1 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.reflect.Constructor logConstructor> 
 ; Statement: if $r1 == null goto (branch) 
(assert (= var1154 null-var3137)) ; Cond: $r1 == null 
 ; Statement: if r2 != null goto $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes> 
(assert (not (not (= var517 null-var2229)))) ; Negate: Cond: r2 != null  
(define-const var3876 var1516 (attributes/1199358121 var2722)) ; Statement: $r6 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes> 
(assert true)
;(assert (remove/-1412572535 var3876 (cast-from-String-to-var2229 var1630))) ; Statement: virtualinvoke $r6.<java.util.Hashtable: java.lang.Object remove(java.lang.Object)>(r3) 

(declare-const var3876!1 var1516)
(declare-const var1630!1 String)
 ; Statement: goto [?= $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl")] 
(assert true) ; Non Conditional
(assert true)
(define-const var119 Bool (= var1630!1 "use_tccl")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl") 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var119 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: if r2 == null goto $z2 = 0 
(assert (not (= var517 null-var2229))) ; Negate: Cond: r2 == null  
(assert true)
(define-const var861 String (toString/-522406933 var517)) ; Statement: $r5 = virtualinvoke r2.<java.lang.Object: java.lang.String toString()>() 
(define-const var2076 Bool (var787_parseBoolean/746105335 var861)) ; Statement: $z1 = staticinvoke <java.lang.Boolean: boolean parseBoolean(java.lang.String)>($r5) 
 ; Statement: if $z1 == 0 goto $z2 = 0 
(assert (= (ite var2076 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1024 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(declare-const var2722!1 var375)
(assert (not (= var2722!1 null-var375)))
(assert (= (useTCCL/1199358121 var2722!1) var1024)) ; Statement: r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean useTCCL> = $z2 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {logConstructor/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.reflect.Constructor), attributes/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.util.Hashtable), remove/-1412572535=([java.util.Hashtable, java.lang.Object], java.lang.Object), cast-from-String-to-var2229=([java.lang.String], java.lang.Object), toString/-522406933=([java.lang.Object], java.lang.String), var787_parseBoolean/746105335=([java.lang.String], boolean), useTCCL/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], boolean)}
; {var375=org.apache.commons.logging.impl.LogFactoryImpl, var2722=r0, var1630=r3, var1160=null_type, var2229=java.lang.Object, var517=r2, var3137=java.lang.reflect.Constructor, var1154=$r1, var1516=java.util.Hashtable, var3876=$r6, var119=$z0, var861=$r5, var787=java.lang.Boolean, var2076=$z1, var1024=$z2}
; {org.apache.commons.logging.impl.LogFactoryImpl=var375, r0=var2722, r3=var1630, null_type=var1160, java.lang.Object=var2229, r2=var517, java.lang.reflect.Constructor=var3137, $r1=var1154, java.util.Hashtable=var1516, $r6=var3876, $z0=var119, $r5=var861, java.lang.Boolean=var787, $z1=var2076, $z2=var1024}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r3 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object;	$r1 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.reflect.Constructor logConstructor>;	if $r1 == null goto (branch);	if r2 != null goto $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes>;	$r6 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes>;	virtualinvoke $r6.<java.util.Hashtable: java.lang.Object remove(java.lang.Object)>(r3);	goto [?= $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl")];	$z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl");	if $z0 == 0 goto return;	if r2 == null goto $z2 = 0;	$r5 = virtualinvoke r2.<java.lang.Object: java.lang.String toString()>();	$z1 = staticinvoke <java.lang.Boolean: boolean parseBoolean(java.lang.String)>($r5);	if $z1 == 0 goto $z2 = 0;	$z2 = 0;	r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean useTCCL> = $z2;	return
;block_num 9