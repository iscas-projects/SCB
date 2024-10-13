(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2522 0)
(declare-sort var3200 0)
(declare-sort var1734 0)
(declare-sort var3549 0)
(declare-sort var1630 0)
(declare-sort var741 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun logConstructor/1199358121 (var2522) var3549)
(declare-fun attributes/1199358121 (var2522) var1630)
(declare-fun remove/-1412572535 (var1630 var1734) var1734)
(declare-fun cast-from-String-to-var1734 (String) var1734)
(declare-fun toString/-522406933 (var1734) String)
(declare-fun var741_parseBoolean/746105335 (String) Bool)
(declare-fun useTCCL/1199358121 (var2522) Bool)
(declare-const null-var2522 var2522)
(declare-const null-String String)
(declare-const null-var1734 var1734)
(declare-const null-var3549 var3549)
(declare-const var2670 var2522) ; Statement: r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var2670 null-var2522)))
(declare-const var66 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var66 null-String)))
(declare-const var2081 var1734) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var2081 null-var1734)))
(define-const var1163 var3549 (logConstructor/1199358121 var2670)) ; Statement: $r1 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.reflect.Constructor logConstructor> 
 ; Statement: if $r1 == null goto (branch) 
(assert (= var1163 null-var3549)) ; Cond: $r1 == null 
 ; Statement: if r2 != null goto $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes> 
(assert (not (not (= var2081 null-var1734)))) ; Negate: Cond: r2 != null  
(define-const var3712 var1630 (attributes/1199358121 var2670)) ; Statement: $r6 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes> 
(assert true)
;(assert (remove/-1412572535 var3712 (cast-from-String-to-var1734 var66))) ; Statement: virtualinvoke $r6.<java.util.Hashtable: java.lang.Object remove(java.lang.Object)>(r3) 

(declare-const var3712!1 var1630)
(declare-const var66!1 String)
 ; Statement: goto [?= $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl")] 
(assert true) ; Non Conditional
(assert true)
(define-const var2105 Bool (= var66!1 "use_tccl")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl") 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var2105 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: if r2 == null goto $z2 = 0 
(assert (not (= var2081 null-var1734))) ; Negate: Cond: r2 == null  
(assert true)
(define-const var1299 String (toString/-522406933 var2081)) ; Statement: $r5 = virtualinvoke r2.<java.lang.Object: java.lang.String toString()>() 
(define-const var2106 Bool (var741_parseBoolean/746105335 var1299)) ; Statement: $z1 = staticinvoke <java.lang.Boolean: boolean parseBoolean(java.lang.String)>($r5) 
 ; Statement: if $z1 == 0 goto $z2 = 0 
(assert (not (= (ite var2106 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1004 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean useTCCL> = $z2] 
(assert true) ; Non Conditional
(declare-const var2670!1 var2522)
(assert (not (= var2670!1 null-var2522)))
(assert (= (useTCCL/1199358121 var2670!1) var1004)) ; Statement: r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean useTCCL> = $z2 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {logConstructor/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.lang.reflect.Constructor), attributes/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], java.util.Hashtable), remove/-1412572535=([java.util.Hashtable, java.lang.Object], java.lang.Object), cast-from-String-to-var1734=([java.lang.String], java.lang.Object), toString/-522406933=([java.lang.Object], java.lang.String), var741_parseBoolean/746105335=([java.lang.String], boolean), useTCCL/1199358121=([org.apache.commons.logging.impl.LogFactoryImpl], boolean)}
; {var2522=org.apache.commons.logging.impl.LogFactoryImpl, var2670=r0, var66=r3, var3200=null_type, var1734=java.lang.Object, var2081=r2, var3549=java.lang.reflect.Constructor, var1163=$r1, var1630=java.util.Hashtable, var3712=$r6, var2105=$z0, var1299=$r5, var741=java.lang.Boolean, var2106=$z1, var1004=$z2}
; {org.apache.commons.logging.impl.LogFactoryImpl=var2522, r0=var2670, r3=var66, null_type=var3200, java.lang.Object=var1734, r2=var2081, java.lang.reflect.Constructor=var3549, $r1=var1163, java.util.Hashtable=var1630, $r6=var3712, $z0=var2105, $r5=var1299, java.lang.Boolean=var741, $z1=var2106, $z2=var1004}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r3 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object;	$r1 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.lang.reflect.Constructor logConstructor>;	if $r1 == null goto (branch);	if r2 != null goto $r4 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes>;	$r6 = r0.<org.apache.commons.logging.impl.LogFactoryImpl: java.util.Hashtable attributes>;	virtualinvoke $r6.<java.util.Hashtable: java.lang.Object remove(java.lang.Object)>(r3);	goto [?= $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl")];	$z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("use_tccl");	if $z0 == 0 goto return;	if r2 == null goto $z2 = 0;	$r5 = virtualinvoke r2.<java.lang.Object: java.lang.String toString()>();	$z1 = staticinvoke <java.lang.Boolean: boolean parseBoolean(java.lang.String)>($r5);	if $z1 == 0 goto $z2 = 0;	$z2 = 1;	goto [?= r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean useTCCL> = $z2];	r0.<org.apache.commons.logging.impl.LogFactoryImpl: boolean useTCCL> = $z2;	return
;block_num 9