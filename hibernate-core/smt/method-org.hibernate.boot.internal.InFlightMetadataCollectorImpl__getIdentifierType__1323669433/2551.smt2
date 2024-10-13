(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2106 0)
(declare-sort var18 0)
(declare-sort var3560 0)
(declare-sort var2978 0)
(declare-sort var2152 0)
(declare-sort var1839 0)
(declare-sort var1689 0)
(declare-sort var479 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entityBindingMap/1317447214 (var2106) var3560)
(declare-fun var3560_get/1088891777 (var3560 var2978) var2978)
(declare-fun cast-from-String-to-var2978 (String) var2978)
(declare-fun cast-from-var2978-to-var2152 (var2978) var2152)
(declare-fun getIdentifier/1682162049 (var2152) var1839)
(declare-fun var479_getType/951709402 (var479) var1689)
(declare-fun cast-from-var1839-to-var479 (var1839) var479)
(declare-const null-var2106 var2106)
(declare-const null-String String)
(declare-const null-var2152 var2152)
(declare-const var1408 var2106) ; Statement: r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl 
(assert (not (= var1408 null-var2106)))
(declare-const var813 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var813 null-String)))
(define-const var3727 var3560 (entityBindingMap/1317447214 var1408)) ; Statement: $r2 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map entityBindingMap> 
(define-const var1991 var2978 (var3560_get/1088891777 var3727 (cast-from-String-to-var2978 var813))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var3850 var2152 (cast-from-var2978-to-var2152 var1991)) ; Statement: r4 = (org.hibernate.mapping.PersistentClass) $r3 
 ; Statement: if r4 != null goto $r5 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.KeyValue getIdentifier()>() 
(assert (not (= var3850 null-var2152))) ; Cond: r4 != null 
(assert true)
(define-const var2603 var1839 (getIdentifier/1682162049 var3850)) ; Statement: $r5 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.KeyValue getIdentifier()>() 
(define-const var1037 var1689 (var479_getType/951709402 (cast-from-var1839-to-var479 var2603))) ; Statement: $r6 = interfaceinvoke $r5.<org.hibernate.mapping.KeyValue: org.hibernate.type.Type getType()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {entityBindingMap/1317447214=([org.hibernate.boot.internal.InFlightMetadataCollectorImpl], java.util.Map), var3560_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2978=([java.lang.String], java.lang.Object), cast-from-var2978-to-var2152=([java.lang.Object], org.hibernate.mapping.PersistentClass), getIdentifier/1682162049=([org.hibernate.mapping.PersistentClass], org.hibernate.mapping.KeyValue), var479_getType/951709402=([org.hibernate.mapping.Value], org.hibernate.type.Type), cast-from-var1839-to-var479=([org.hibernate.mapping.KeyValue], org.hibernate.mapping.Value)}
; {var2106=org.hibernate.boot.internal.InFlightMetadataCollectorImpl, var1408=r0, var813=r1, var18=null_type, var3560=java.util.Map, var3727=$r2, var2978=java.lang.Object, var1991=$r3, var2152=org.hibernate.mapping.PersistentClass, var3850=r4, var1839=org.hibernate.mapping.KeyValue, var2603=$r5, var1689=org.hibernate.type.Type, var479=org.hibernate.mapping.Value, var1037=$r6}
; {org.hibernate.boot.internal.InFlightMetadataCollectorImpl=var2106, r0=var1408, r1=var813, null_type=var18, java.util.Map=var3560, $r2=var3727, java.lang.Object=var2978, $r3=var1991, org.hibernate.mapping.PersistentClass=var2152, r4=var3850, org.hibernate.mapping.KeyValue=var1839, $r5=var2603, org.hibernate.type.Type=var1689, org.hibernate.mapping.Value=var479, $r6=var1037}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map entityBindingMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.mapping.PersistentClass) $r3;	if r4 != null goto $r5 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.KeyValue getIdentifier()>();	$r5 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.KeyValue getIdentifier()>();	$r6 = interfaceinvoke $r5.<org.hibernate.mapping.KeyValue: org.hibernate.type.Type getType()>();	return $r6
;block_num 2