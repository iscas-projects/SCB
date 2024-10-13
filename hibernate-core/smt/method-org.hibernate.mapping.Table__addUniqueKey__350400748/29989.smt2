(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2159 0)
(declare-sort var1793 0)
(declare-sort var1823 0)
(declare-sort var3914 0)
(declare-sort var436 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun uniqueKeys/310692072 (var2159) var1823)
(declare-fun getName/-2142322286 (var3914) String)
(declare-fun cast-from-var1793-to-var3914 (var1793) var3914)
(declare-fun var1823_get/1088891777 (var1823 var436) var436)
(declare-fun cast-from-String-to-var436 (String) var436)
(declare-fun cast-from-var436-to-var1793 (var436) var1793)
(declare-fun var1823_put/1464166817 (var1823 var436 var436) var436)
(declare-fun cast-from-var1793-to-var436 (var1793) var436)
(declare-const null-var2159 var2159)
(declare-const null-var1793 var1793)
(declare-const var184 var2159) ; Statement: r0 := @this: org.hibernate.mapping.Table 
(assert (not (= var184 null-var2159)))
(declare-const var2628 var1793) ; Statement: r1 := @parameter0: org.hibernate.mapping.UniqueKey 
(assert (not (= var2628 null-var1793)))
(define-const var234 var1823 (uniqueKeys/310692072 var184)) ; Statement: $r2 = r0.<org.hibernate.mapping.Table: java.util.Map uniqueKeys> 
(assert true)
(define-const var427 String (getName/-2142322286 (cast-from-var1793-to-var3914 var2628))) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.mapping.UniqueKey: java.lang.String getName()>() 
(define-const var3693 var436 (var1823_get/1088891777 var234 (cast-from-String-to-var436 var427))) ; Statement: $r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3) 
(define-const var1393 var1793 (cast-from-var436-to-var1793 var3693)) ; Statement: r5 = (org.hibernate.mapping.UniqueKey) $r4 
 ; Statement: if r5 == null goto $r6 = r0.<org.hibernate.mapping.Table: java.util.Map uniqueKeys> 
(assert (= var1393 null-var1793)) ; Cond: r5 == null 
(define-const var1712 var1823 (uniqueKeys/310692072 var184)) ; Statement: $r6 = r0.<org.hibernate.mapping.Table: java.util.Map uniqueKeys> 
(assert true)
(define-const var1444 String (getName/-2142322286 (cast-from-var1793-to-var3914 var2628))) ; Statement: $r7 = virtualinvoke r1.<org.hibernate.mapping.UniqueKey: java.lang.String getName()>() 
;(assert (var1823_put/1464166817 var1712 (cast-from-String-to-var436 var1444) (cast-from-var1793-to-var436 var2628))) ; Statement: interfaceinvoke $r6.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r7, r1) 

(declare-const var1712!1 var1823)
(declare-const var1444!1 String)
(declare-const var2628!1 var1793)
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {uniqueKeys/310692072=([org.hibernate.mapping.Table], java.util.Map), getName/-2142322286=([org.hibernate.mapping.Constraint], java.lang.String), cast-from-var1793-to-var3914=([org.hibernate.mapping.UniqueKey], org.hibernate.mapping.Constraint), var1823_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var436=([java.lang.String], java.lang.Object), cast-from-var436-to-var1793=([java.lang.Object], org.hibernate.mapping.UniqueKey), var1823_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var1793-to-var436=([org.hibernate.mapping.UniqueKey], java.lang.Object)}
; {var2159=org.hibernate.mapping.Table, var184=r0, var1793=org.hibernate.mapping.UniqueKey, var2628=r1, var1823=java.util.Map, var234=$r2, var3914=org.hibernate.mapping.Constraint, var427=$r3, var436=java.lang.Object, var3693=$r4, var1393=r5, var1712=$r6, var1444=$r7}
; {org.hibernate.mapping.Table=var2159, r0=var184, org.hibernate.mapping.UniqueKey=var1793, r1=var2628, java.util.Map=var1823, $r2=var234, org.hibernate.mapping.Constraint=var3914, $r3=var427, java.lang.Object=var436, $r4=var3693, r5=var1393, $r6=var1712, $r7=var1444}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.mapping.Table;	r1 := @parameter0: org.hibernate.mapping.UniqueKey;	$r2 = r0.<org.hibernate.mapping.Table: java.util.Map uniqueKeys>;	$r3 = virtualinvoke r1.<org.hibernate.mapping.UniqueKey: java.lang.String getName()>();	$r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3);	r5 = (org.hibernate.mapping.UniqueKey) $r4;	if r5 == null goto $r6 = r0.<org.hibernate.mapping.Table: java.util.Map uniqueKeys>;	$r6 = r0.<org.hibernate.mapping.Table: java.util.Map uniqueKeys>;	$r7 = virtualinvoke r1.<org.hibernate.mapping.UniqueKey: java.lang.String getName()>();	interfaceinvoke $r6.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r7, r1);	return r1
;block_num 2