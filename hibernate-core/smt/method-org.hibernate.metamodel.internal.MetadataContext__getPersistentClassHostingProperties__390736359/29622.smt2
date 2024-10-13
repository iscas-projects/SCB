(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var268 0)
(declare-sort var3039 0)
(declare-sort var199 0)
(declare-sort var566 0)
(declare-sort var1409 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mappedSuperClassTypeToPersistentClass/248942207 (var268) var199)
(declare-fun var199_get/1088891777 (var199 var566) var566)
(declare-fun cast-from-var3039-to-var566 (var3039) var566)
(declare-fun cast-from-var566-to-var1409 (var566) var1409)
(declare-const null-var268 var268)
(declare-const null-var3039 var3039)
(declare-const null-var1409 var1409)
(declare-const var6 var268) ; Statement: r0 := @this: org.hibernate.metamodel.internal.MetadataContext 
(assert (not (= var6 null-var268)))
(declare-const var1646 var3039) ; Statement: r1 := @parameter0: org.hibernate.metamodel.model.domain.internal.MappedSuperclassTypeImpl 
(assert (not (= var1646 null-var3039)))
(define-const var3696 var199 (mappedSuperClassTypeToPersistentClass/248942207 var6)) ; Statement: $r2 = r0.<org.hibernate.metamodel.internal.MetadataContext: java.util.Map mappedSuperClassTypeToPersistentClass> 
(define-const var2159 var566 (var199_get/1088891777 var3696 (cast-from-var3039-to-var566 var1646))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var81 var1409 (cast-from-var566-to-var1409 var2159)) ; Statement: r4 = (org.hibernate.mapping.PersistentClass) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (= var81 null-var1409))) ; Cond: r4 != null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {mappedSuperClassTypeToPersistentClass/248942207=([org.hibernate.metamodel.internal.MetadataContext], java.util.Map), var199_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var3039-to-var566=([org.hibernate.metamodel.model.domain.internal.MappedSuperclassTypeImpl], java.lang.Object), cast-from-var566-to-var1409=([java.lang.Object], org.hibernate.mapping.PersistentClass)}
; {var268=org.hibernate.metamodel.internal.MetadataContext, var6=r0, var3039=org.hibernate.metamodel.model.domain.internal.MappedSuperclassTypeImpl, var1646=r1, var199=java.util.Map, var3696=$r2, var566=java.lang.Object, var2159=$r3, var1409=org.hibernate.mapping.PersistentClass, var81=r4}
; {org.hibernate.metamodel.internal.MetadataContext=var268, r0=var6, org.hibernate.metamodel.model.domain.internal.MappedSuperclassTypeImpl=var3039, r1=var1646, java.util.Map=var199, $r2=var3696, java.lang.Object=var566, $r3=var2159, org.hibernate.mapping.PersistentClass=var1409, r4=var81}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.metamodel.internal.MetadataContext;	r1 := @parameter0: org.hibernate.metamodel.model.domain.internal.MappedSuperclassTypeImpl;	$r2 = r0.<org.hibernate.metamodel.internal.MetadataContext: java.util.Map mappedSuperClassTypeToPersistentClass>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.mapping.PersistentClass) $r3;	if r4 != null goto return r4;	return r4
;block_num 2