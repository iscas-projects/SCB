(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var622 0)
(declare-sort var1982 0)
(declare-sort var81 0)
(declare-sort var3116 0)
(declare-sort var2753 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jpaEntityTypeMap/-1379989693 (var622) var1982)
(declare-fun var1982_get/1088891777 (var1982 var81) var81)
(declare-fun cast-from-ClassObject-to-var81 (ClassObject) var81)
(declare-fun cast-from-var81-to-var3116 (var81) var3116)
(declare-fun cast-from-var3116-to-var2753 (var3116) var2753)
(declare-const null-var622 var622)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3116 var3116)
(declare-const var1915 var622) ; Statement: r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl 
(assert (not (= var1915 null-var622)))
(declare-const var1526 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var1526 null-ClassObject)))
(define-const var1878 var1982 (jpaEntityTypeMap/-1379989693 var1915)) ; Statement: $r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map jpaEntityTypeMap> 
(define-const var2979 var81 (var1982_get/1088891777 var1878 (cast-from-ClassObject-to-var81 var1526))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var3740 var3116 (cast-from-var81-to-var3116 var2979)) ; Statement: r14 = (javax.persistence.metamodel.ManagedType) $r3 
 ; Statement: if r14 != null goto (branch) 
(assert (not (= var3740 null-var3116))) ; Cond: r14 != null 
 ; Statement: if r14 != null goto (branch) 
(assert (not (= var3740 null-var3116))) ; Cond: r14 != null 
 ; Statement: if r14 != null goto $r4 = (org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor) r14 
(assert (not (= var3740 null-var3116))) ; Cond: r14 != null 
(define-const var3585 var2753 (cast-from-var3116-to-var2753 var3740)) ; Statement: $r4 = (org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor) r14 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {jpaEntityTypeMap/-1379989693=([org.hibernate.metamodel.internal.MetamodelImpl], java.util.Map), var1982_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var81=([java.lang.Class], java.lang.Object), cast-from-var81-to-var3116=([java.lang.Object], javax.persistence.metamodel.ManagedType), cast-from-var3116-to-var2753=([javax.persistence.metamodel.ManagedType], org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor)}
; {var622=org.hibernate.metamodel.internal.MetamodelImpl, var1915=r0, var1526=r1, var1982=java.util.Map, var1878=$r2, var81=java.lang.Object, var2979=$r3, var3116=javax.persistence.metamodel.ManagedType, var3740=r14, var2753=org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor, var3585=$r4}
; {org.hibernate.metamodel.internal.MetamodelImpl=var622, r0=var1915, r1=var1526, java.util.Map=var1982, $r2=var1878, java.lang.Object=var81, $r3=var2979, javax.persistence.metamodel.ManagedType=var3116, r14=var3740, org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor=var2753, $r4=var3585}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.metamodel.internal.MetamodelImpl;	r1 := @parameter0: java.lang.Class;	$r2 = r0.<org.hibernate.metamodel.internal.MetamodelImpl: java.util.Map jpaEntityTypeMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r14 = (javax.persistence.metamodel.ManagedType) $r3;	if r14 != null goto (branch);	if r14 != null goto (branch);	if r14 != null goto $r4 = (org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor) r14;	$r4 = (org.hibernate.metamodel.model.domain.spi.ManagedTypeDescriptor) r14;	return $r4
;block_num 4