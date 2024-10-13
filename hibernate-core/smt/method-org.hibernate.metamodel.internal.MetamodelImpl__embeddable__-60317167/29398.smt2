(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2208 0)
(declare-sort var3074 0)
(declare-sort var411 0)
(declare-sort var806 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jpaEmbeddableTypeMap/-1379989693 (var2208) var3074)
(declare-fun var3074_get/1088891777 (var3074 var411) var411)
(declare-fun cast-from-ClassObject-to-var411 (ClassObject) var411)
(declare-fun cast-from-var411-to-var806 (var411) var806)
(declare-const null-var2208 var2208)
(declare-const null-ClassObject ClassObject)
(declare-const null-var806 var806)
(declare-const var528 var2208) ; Statement: r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl 
(assert (not (= var528 null-var2208)))
(declare-const var562 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var562 null-ClassObject)))
(define-const var1180 var3074 (jpaEmbeddableTypeMap/-1379989693 var528)) ; Statement: $r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map jpaEmbeddableTypeMap> 
(define-const var196 var411 (var3074_get/1088891777 var1180 (cast-from-ClassObject-to-var411 var562))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var1664 var806 (cast-from-var411-to-var806 var196)) ; Statement: r4 = (org.hibernate.metamodel.model.domain.spi.EmbeddedTypeDescriptor) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (= var1664 null-var806))) ; Cond: r4 != null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {jpaEmbeddableTypeMap/-1379989693=([org.hibernate.metamodel.internal.MetamodelImpl], java.util.Map), var3074_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var411=([java.lang.Class], java.lang.Object), cast-from-var411-to-var806=([java.lang.Object], org.hibernate.metamodel.model.domain.spi.EmbeddedTypeDescriptor)}
; {var2208=org.hibernate.metamodel.internal.MetamodelImpl, var528=r0, var562=r1, var3074=java.util.Map, var1180=$r2, var411=java.lang.Object, var196=$r3, var806=org.hibernate.metamodel.model.domain.spi.EmbeddedTypeDescriptor, var1664=r4}
; {org.hibernate.metamodel.internal.MetamodelImpl=var2208, r0=var528, r1=var562, java.util.Map=var3074, $r2=var1180, java.lang.Object=var411, $r3=var196, org.hibernate.metamodel.model.domain.spi.EmbeddedTypeDescriptor=var806, r4=var1664}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl;	r1 := @parameter0: java.lang.Class;	$r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map jpaEmbeddableTypeMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.metamodel.model.domain.spi.EmbeddedTypeDescriptor) $r3;	if r4 != null goto return r4;	return r4
;block_num 2