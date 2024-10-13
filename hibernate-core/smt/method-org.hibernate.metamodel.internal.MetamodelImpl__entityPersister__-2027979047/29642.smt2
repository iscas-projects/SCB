(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1762 0)
(declare-sort var387 0)
(declare-sort var2583 0)
(declare-sort var1768 0)
(declare-sort var2900 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entityPersisterMap/-1379989693 (var1762) var2583)
(declare-fun var2583_get/1088891777 (var2583 var1768) var1768)
(declare-fun cast-from-String-to-var1768 (String) var1768)
(declare-fun cast-from-var1768-to-var2900 (var1768) var2900)
(declare-const null-var1762 var1762)
(declare-const null-String String)
(declare-const null-var2900 var2900)
(declare-const var2594 var1762) ; Statement: r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl 
(assert (not (= var2594 null-var1762)))
(declare-const var2401 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2401 null-String)))
(define-const var631 var2583 (entityPersisterMap/-1379989693 var2594)) ; Statement: $r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map entityPersisterMap> 
(define-const var2599 var1768 (var2583_get/1088891777 var631 (cast-from-String-to-var1768 var2401))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var3908 var2900 (cast-from-var1768-to-var2900 var2599)) ; Statement: r4 = (org.hibernate.persister.entity.EntityPersister) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (= var3908 null-var2900))) ; Cond: r4 != null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {entityPersisterMap/-1379989693=([org.hibernate.metamodel.internal.MetamodelImpl], java.util.Map), var2583_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1768=([java.lang.String], java.lang.Object), cast-from-var1768-to-var2900=([java.lang.Object], org.hibernate.persister.entity.EntityPersister)}
; {var1762=org.hibernate.metamodel.internal.MetamodelImpl, var2594=r0, var2401=r1, var387=null_type, var2583=java.util.Map, var631=$r2, var1768=java.lang.Object, var2599=$r3, var2900=org.hibernate.persister.entity.EntityPersister, var3908=r4}
; {org.hibernate.metamodel.internal.MetamodelImpl=var1762, r0=var2594, r1=var2401, null_type=var387, java.util.Map=var2583, $r2=var631, java.lang.Object=var1768, $r3=var2599, org.hibernate.persister.entity.EntityPersister=var2900, r4=var3908}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map entityPersisterMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.persister.entity.EntityPersister) $r3;	if r4 != null goto return r4;	return r4
;block_num 2