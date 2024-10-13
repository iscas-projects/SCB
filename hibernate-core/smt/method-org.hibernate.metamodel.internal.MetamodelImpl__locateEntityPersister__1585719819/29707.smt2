(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1084 0)
(declare-sort var2141 0)
(declare-sort var3533 0)
(declare-sort var3840 0)
(declare-sort var2431 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entityPersisterMap/-1379989693 (var1084) var3533)
(declare-fun var3533_get/1088891777 (var3533 var3840) var3840)
(declare-fun cast-from-String-to-var3840 (String) var3840)
(declare-fun cast-from-var3840-to-var2431 (var3840) var2431)
(declare-const null-var1084 var1084)
(declare-const null-String String)
(declare-const null-var2431 var2431)
(declare-const var1051 var1084) ; Statement: r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl 
(assert (not (= var1051 null-var1084)))
(declare-const var581 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var581 null-String)))
(define-const var384 var3533 (entityPersisterMap/-1379989693 var1051)) ; Statement: $r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map entityPersisterMap> 
(define-const var3510 var3840 (var3533_get/1088891777 var384 (cast-from-String-to-var3840 var581))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2715 var2431 (cast-from-var3840-to-var2431 var3510)) ; Statement: r4 = (org.hibernate.persister.entity.EntityPersister) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (= var2715 null-var2431))) ; Cond: r4 != null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {entityPersisterMap/-1379989693=([org.hibernate.metamodel.internal.MetamodelImpl], java.util.Map), var3533_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3840=([java.lang.String], java.lang.Object), cast-from-var3840-to-var2431=([java.lang.Object], org.hibernate.persister.entity.EntityPersister)}
; {var1084=org.hibernate.metamodel.internal.MetamodelImpl, var1051=r0, var581=r1, var2141=null_type, var3533=java.util.Map, var384=$r2, var3840=java.lang.Object, var3510=$r3, var2431=org.hibernate.persister.entity.EntityPersister, var2715=r4}
; {org.hibernate.metamodel.internal.MetamodelImpl=var1084, r0=var1051, r1=var581, null_type=var2141, java.util.Map=var3533, $r2=var384, java.lang.Object=var3840, $r3=var3510, org.hibernate.persister.entity.EntityPersister=var2431, r4=var2715}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map entityPersisterMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.persister.entity.EntityPersister) $r3;	if r4 != null goto return r4;	return r4
;block_num 2