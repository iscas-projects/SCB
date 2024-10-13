(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var625 0)
(declare-sort var2643 0)
(declare-sort var1546 0)
(declare-sort var1246 0)
(declare-sort var3023 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jpaEntityTypeMap/-1379989693 (var625) var2643)
(declare-fun var2643_get/1088891777 (var2643 var1546) var1546)
(declare-fun cast-from-ClassObject-to-var1546 (ClassObject) var1546)
(declare-fun cast-from-var1546-to-var1246 (var1546) var1246)
(declare-fun cast-from-var1246-to-var3023 (var1246) var3023)
(declare-const null-var625 var625)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1246 var1246)
(declare-const var670 var625) ; Statement: r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl 
(assert (not (= var670 null-var625)))
(declare-const var552 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var552 null-ClassObject)))
(define-const var3108 var2643 (jpaEntityTypeMap/-1379989693 var670)) ; Statement: $r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map jpaEntityTypeMap> 
(define-const var803 var1546 (var2643_get/1088891777 var3108 (cast-from-ClassObject-to-var1546 var552))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2000 var1246 (cast-from-var1546-to-var1246 var803)) ; Statement: r4 = (javax.persistence.metamodel.EntityType) $r3 
 ; Statement: if r4 != null goto $r5 = (org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor) r4 
(assert (not (= var2000 null-var1246))) ; Cond: r4 != null 
(define-const var3065 var3023 (cast-from-var1246-to-var3023 var2000)) ; Statement: $r5 = (org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor) r4 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {jpaEntityTypeMap/-1379989693=([org.hibernate.metamodel.internal.MetamodelImpl], java.util.Map), var2643_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var1546=([java.lang.Class], java.lang.Object), cast-from-var1546-to-var1246=([java.lang.Object], javax.persistence.metamodel.EntityType), cast-from-var1246-to-var3023=([javax.persistence.metamodel.EntityType], org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor)}
; {var625=org.hibernate.metamodel.internal.MetamodelImpl, var670=r0, var552=r1, var2643=java.util.Map, var3108=$r2, var1546=java.lang.Object, var803=$r3, var1246=javax.persistence.metamodel.EntityType, var2000=r4, var3023=org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor, var3065=$r5}
; {org.hibernate.metamodel.internal.MetamodelImpl=var625, r0=var670, r1=var552, java.util.Map=var2643, $r2=var3108, java.lang.Object=var1546, $r3=var803, javax.persistence.metamodel.EntityType=var1246, r4=var2000, org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor=var3023, $r5=var3065}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl;	r1 := @parameter0: java.lang.Class;	$r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map jpaEntityTypeMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (javax.persistence.metamodel.EntityType) $r3;	if r4 != null goto $r5 = (org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor) r4;	$r5 = (org.hibernate.metamodel.model.domain.spi.EntityTypeDescriptor) r4;	return $r5
;block_num 2