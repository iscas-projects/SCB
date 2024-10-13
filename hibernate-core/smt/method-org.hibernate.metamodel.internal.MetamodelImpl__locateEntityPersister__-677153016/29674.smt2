(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1654 0)
(declare-sort var1985 0)
(declare-sort var2628 0)
(declare-sort var1836 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entityPersisterMap/-1379989693 (var1654) var1985)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var1985_get/1088891777 (var1985 var2628) var2628)
(declare-fun cast-from-String-to-var2628 (String) var2628)
(declare-fun cast-from-var2628-to-var1836 (var2628) var1836)
(declare-const null-var1654 var1654)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1836 var1836)
(declare-const var543 var1654) ; Statement: r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl 
(assert (not (= var543 null-var1654)))
(declare-const var1155 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var1155 null-ClassObject)))
(define-const var1330 var1985 (entityPersisterMap/-1379989693 var543)) ; Statement: $r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map entityPersisterMap> 
(assert true)
(define-const var2611 String (getName/-1958580599 var1155)) ; Statement: $r3 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(define-const var1482 var2628 (var1985_get/1088891777 var1330 (cast-from-String-to-var2628 var2611))) ; Statement: $r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3) 
(define-const var2665 var1836 (cast-from-var2628-to-var1836 var1482)) ; Statement: r16 = (org.hibernate.persister.entity.EntityPersister) $r4 
 ; Statement: if r16 != null goto (branch) 
(assert (not (= var2665 null-var1836))) ; Cond: r16 != null 
 ; Statement: if r16 != null goto return r16 
(assert (not (= var2665 null-var1836))) ; Cond: r16 != null 
 ; Statement: return r16 
(check-sat)
(get-model)
(get-unsat-core)
; {entityPersisterMap/-1379989693=([org.hibernate.metamodel.internal.MetamodelImpl], java.util.Map), getName/-1958580599=([java.lang.Class], java.lang.String), var1985_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2628=([java.lang.String], java.lang.Object), cast-from-var2628-to-var1836=([java.lang.Object], org.hibernate.persister.entity.EntityPersister)}
; {var1654=org.hibernate.metamodel.internal.MetamodelImpl, var543=r0, var1155=r1, var1985=java.util.Map, var1330=$r2, var2611=$r3, var2628=java.lang.Object, var1482=$r4, var1836=org.hibernate.persister.entity.EntityPersister, var2665=r16}
; {org.hibernate.metamodel.internal.MetamodelImpl=var1654, r0=var543, r1=var1155, java.util.Map=var1985, $r2=var1330, $r3=var2611, java.lang.Object=var2628, $r4=var1482, org.hibernate.persister.entity.EntityPersister=var1836, r16=var2665}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl;	r1 := @parameter0: java.lang.Class;	$r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map entityPersisterMap>;	$r3 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3);	r16 = (org.hibernate.persister.entity.EntityPersister) $r4;	if r16 != null goto (branch);	if r16 != null goto return r16;	return r16
;block_num 3