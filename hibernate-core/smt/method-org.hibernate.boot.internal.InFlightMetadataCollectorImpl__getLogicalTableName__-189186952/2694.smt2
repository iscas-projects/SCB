(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2429 0)
(declare-sort var3310 0)
(declare-sort var3060 0)
(declare-sort var3997 0)
(declare-sort var1652 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun physicalToLogicalTableNameMap/1317447214 (var2429) var3060)
(declare-fun getNameIdentifier/1639380429 (var3310) var3997)
(declare-fun var3060_get/1088891777 (var3060 var1652) var1652)
(declare-fun cast-from-var3997-to-var1652 (var3997) var1652)
(declare-fun cast-from-var1652-to-var3997 (var1652) var3997)
(declare-fun render/-241411902 (var3997) String)
(declare-const null-var2429 var2429)
(declare-const null-var3310 var3310)
(declare-const null-var3997 var3997)
(declare-const var3363 var2429) ; Statement: r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl 
(assert (not (= var3363 null-var2429)))
(declare-const var578 var3310) ; Statement: r1 := @parameter0: org.hibernate.mapping.Table 
(assert (not (= var578 null-var3310)))
(define-const var2080 var3060 (physicalToLogicalTableNameMap/1317447214 var3363)) ; Statement: $r2 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map physicalToLogicalTableNameMap> 
(assert true)
(define-const var3428 var3997 (getNameIdentifier/1639380429 var578)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.mapping.Table: org.hibernate.boot.model.naming.Identifier getNameIdentifier()>() 
(define-const var370 var1652 (var3060_get/1088891777 var2080 (cast-from-var3997-to-var1652 var3428))) ; Statement: $r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3) 
(define-const var2250 var3997 (cast-from-var1652-to-var3997 var370)) ; Statement: r5 = (org.hibernate.boot.model.naming.Identifier) $r4 
 ; Statement: if r5 != null goto $r6 = virtualinvoke r5.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>() 
(assert (not (= var2250 null-var3997))) ; Cond: r5 != null 
(assert true)
(define-const var1570 String (render/-241411902 var2250)) ; Statement: $r6 = virtualinvoke r5.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {physicalToLogicalTableNameMap/1317447214=([org.hibernate.boot.internal.InFlightMetadataCollectorImpl], java.util.Map), getNameIdentifier/1639380429=([org.hibernate.mapping.Table], org.hibernate.boot.model.naming.Identifier), var3060_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var3997-to-var1652=([org.hibernate.boot.model.naming.Identifier], java.lang.Object), cast-from-var1652-to-var3997=([java.lang.Object], org.hibernate.boot.model.naming.Identifier), render/-241411902=([org.hibernate.boot.model.naming.Identifier], java.lang.String)}
; {var2429=org.hibernate.boot.internal.InFlightMetadataCollectorImpl, var3363=r0, var3310=org.hibernate.mapping.Table, var578=r1, var3060=java.util.Map, var2080=$r2, var3997=org.hibernate.boot.model.naming.Identifier, var3428=$r3, var1652=java.lang.Object, var370=$r4, var2250=r5, var1570=$r6}
; {org.hibernate.boot.internal.InFlightMetadataCollectorImpl=var2429, r0=var3363, org.hibernate.mapping.Table=var3310, r1=var578, java.util.Map=var3060, $r2=var2080, org.hibernate.boot.model.naming.Identifier=var3997, $r3=var3428, java.lang.Object=var1652, $r4=var370, r5=var2250, $r6=var1570}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl;	r1 := @parameter0: org.hibernate.mapping.Table;	$r2 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map physicalToLogicalTableNameMap>;	$r3 = virtualinvoke r1.<org.hibernate.mapping.Table: org.hibernate.boot.model.naming.Identifier getNameIdentifier()>();	$r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3);	r5 = (org.hibernate.boot.model.naming.Identifier) $r4;	if r5 != null goto $r6 = virtualinvoke r5.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>();	$r6 = virtualinvoke r5.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>();	return $r6
;block_num 2