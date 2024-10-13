(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3451 0)
(declare-sort var1067 0)
(declare-sort var3246 0)
(declare-sort var1688 0)
(declare-sort var1370 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun collectionPersisterMap/-1379989693 (var3451) var3246)
(declare-fun var3246_get/1088891777 (var3246 var1688) var1688)
(declare-fun cast-from-String-to-var1688 (String) var1688)
(declare-fun cast-from-var1688-to-var1370 (var1688) var1370)
(declare-const null-var3451 var3451)
(declare-const null-String String)
(declare-const null-var1370 var1370)
(declare-const var1031 var3451) ; Statement: r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl 
(assert (not (= var1031 null-var3451)))
(declare-const var2477 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2477 null-String)))
(define-const var1076 var3246 (collectionPersisterMap/-1379989693 var1031)) ; Statement: $r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map collectionPersisterMap> 
(define-const var2569 var1688 (var3246_get/1088891777 var1076 (cast-from-String-to-var1688 var2477))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var1621 var1370 (cast-from-var1688-to-var1370 var2569)) ; Statement: r4 = (org.hibernate.persister.collection.CollectionPersister) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (= var1621 null-var1370))) ; Cond: r4 != null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {collectionPersisterMap/-1379989693=([org.hibernate.metamodel.internal.MetamodelImpl], java.util.Map), var3246_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1688=([java.lang.String], java.lang.Object), cast-from-var1688-to-var1370=([java.lang.Object], org.hibernate.persister.collection.CollectionPersister)}
; {var3451=org.hibernate.metamodel.internal.MetamodelImpl, var1031=r0, var2477=r1, var1067=null_type, var3246=java.util.Map, var1076=$r2, var1688=java.lang.Object, var2569=$r3, var1370=org.hibernate.persister.collection.CollectionPersister, var1621=r4}
; {org.hibernate.metamodel.internal.MetamodelImpl=var3451, r0=var1031, r1=var2477, null_type=var1067, java.util.Map=var3246, $r2=var1076, java.lang.Object=var1688, $r3=var2569, org.hibernate.persister.collection.CollectionPersister=var1370, r4=var1621}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map collectionPersisterMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.persister.collection.CollectionPersister) $r3;	if r4 != null goto return r4;	return r4
;block_num 2