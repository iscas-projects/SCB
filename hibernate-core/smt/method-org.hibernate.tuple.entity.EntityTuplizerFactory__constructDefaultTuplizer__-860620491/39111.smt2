(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2710 0)
(declare-sort var3708 0)
(declare-sort var2025 0)
(declare-sort var2396 0)
(declare-sort var751 0)
(declare-sort var538 0)
(declare-sort var3850 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun defaultImplClassByMode/-1641524947 (var2710) var751)
(declare-fun var751_get/1088891777 (var751 var538) var538)
(declare-fun cast-from-var3708-to-var538 (var3708) var538)
(declare-fun cast-from-var538-to-ClassObject (var538) ClassObject)
(declare-fun constructTuplizer/202770198 (var2710 ClassObject var2025 var2396) var3850)
(declare-const null-var2710 var2710)
(declare-const null-var3708 var3708)
(declare-const null-var2025 var2025)
(declare-const null-var2396 var2396)
(declare-const null-ClassObject ClassObject)
(declare-const var2787 var2710) ; Statement: r0 := @this: org.hibernate.tuple.entity.EntityTuplizerFactory 
(assert (not (= var2787 null-var2710)))
(declare-const var2990 var3708) ; Statement: r1 := @parameter0: org.hibernate.EntityMode 
(assert (not (= var2990 null-var3708)))
(declare-const var2930 var2025) ; Statement: r5 := @parameter1: org.hibernate.tuple.entity.EntityMetamodel 
(assert (not (= var2930 null-var2025)))
(declare-const var3286 var2396) ; Statement: r6 := @parameter2: org.hibernate.mapping.PersistentClass 
(assert (not (= var3286 null-var2396)))
(define-const var3845 var751 (defaultImplClassByMode/-1641524947 var2787)) ; Statement: $r2 = r0.<org.hibernate.tuple.entity.EntityTuplizerFactory: java.util.Map defaultImplClassByMode> 
(define-const var1122 var538 (var751_get/1088891777 var3845 (cast-from-var3708-to-var538 var2990))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2308 ClassObject (cast-from-var538-to-ClassObject var1122)) ; Statement: r4 = (java.lang.Class) $r3 
 ; Statement: if r4 != null goto $r7 = virtualinvoke r0.<org.hibernate.tuple.entity.EntityTuplizerFactory: org.hibernate.tuple.entity.EntityTuplizer constructTuplizer(java.lang.Class,org.hibernate.tuple.entity.EntityMetamodel,org.hibernate.mapping.PersistentClass)>(r4, r5, r6) 
(assert (not (= var2308 null-ClassObject))) ; Cond: r4 != null 
(assert true)
(define-const var284 var3850 (constructTuplizer/202770198 var2787 var2308 var2930 var3286)) ; Statement: $r7 = virtualinvoke r0.<org.hibernate.tuple.entity.EntityTuplizerFactory: org.hibernate.tuple.entity.EntityTuplizer constructTuplizer(java.lang.Class,org.hibernate.tuple.entity.EntityMetamodel,org.hibernate.mapping.PersistentClass)>(r4, r5, r6) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {defaultImplClassByMode/-1641524947=([org.hibernate.tuple.entity.EntityTuplizerFactory], java.util.Map), var751_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var3708-to-var538=([org.hibernate.EntityMode], java.lang.Object), cast-from-var538-to-ClassObject=([java.lang.Object], java.lang.Class), constructTuplizer/202770198=([org.hibernate.tuple.entity.EntityTuplizerFactory, java.lang.Class, org.hibernate.tuple.entity.EntityMetamodel, org.hibernate.mapping.PersistentClass], org.hibernate.tuple.entity.EntityTuplizer)}
; {var2710=org.hibernate.tuple.entity.EntityTuplizerFactory, var2787=r0, var3708=org.hibernate.EntityMode, var2990=r1, var2025=org.hibernate.tuple.entity.EntityMetamodel, var2930=r5, var2396=org.hibernate.mapping.PersistentClass, var3286=r6, var751=java.util.Map, var3845=$r2, var538=java.lang.Object, var1122=$r3, var2308=r4, var3850=org.hibernate.tuple.entity.EntityTuplizer, var284=$r7}
; {org.hibernate.tuple.entity.EntityTuplizerFactory=var2710, r0=var2787, org.hibernate.EntityMode=var3708, r1=var2990, org.hibernate.tuple.entity.EntityMetamodel=var2025, r5=var2930, org.hibernate.mapping.PersistentClass=var2396, r6=var3286, java.util.Map=var751, $r2=var3845, java.lang.Object=var538, $r3=var1122, r4=var2308, org.hibernate.tuple.entity.EntityTuplizer=var3850, $r7=var284}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.tuple.entity.EntityTuplizerFactory;	r1 := @parameter0: org.hibernate.EntityMode;	r5 := @parameter1: org.hibernate.tuple.entity.EntityMetamodel;	r6 := @parameter2: org.hibernate.mapping.PersistentClass;	$r2 = r0.<org.hibernate.tuple.entity.EntityTuplizerFactory: java.util.Map defaultImplClassByMode>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.lang.Class) $r3;	if r4 != null goto $r7 = virtualinvoke r0.<org.hibernate.tuple.entity.EntityTuplizerFactory: org.hibernate.tuple.entity.EntityTuplizer constructTuplizer(java.lang.Class,org.hibernate.tuple.entity.EntityMetamodel,org.hibernate.mapping.PersistentClass)>(r4, r5, r6);	$r7 = virtualinvoke r0.<org.hibernate.tuple.entity.EntityTuplizerFactory: org.hibernate.tuple.entity.EntityTuplizer constructTuplizer(java.lang.Class,org.hibernate.tuple.entity.EntityMetamodel,org.hibernate.mapping.PersistentClass)>(r4, r5, r6);	return $r7
;block_num 2