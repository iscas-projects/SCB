(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1613 0)
(declare-sort var2508 0)
(declare-sort var717 0)
(declare-sort var2141 0)
(declare-sort var1865 0)
(declare-sort var1435 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun defaultImplClassByMode/854309807 (var1613) var2141)
(declare-fun var2141_get/1088891777 (var2141 var1865) var1865)
(declare-fun cast-from-var2508-to-var1865 (var2508) var1865)
(declare-fun cast-from-var1865-to-ClassObject (var1865) ClassObject)
(declare-fun constructTuplizer/-1919900040 (var1613 ClassObject var717) var1435)
(declare-const null-var1613 var1613)
(declare-const null-var2508 var2508)
(declare-const null-var717 var717)
(declare-const null-ClassObject ClassObject)
(declare-const var2313 var1613) ; Statement: r0 := @this: org.hibernate.tuple.component.ComponentTuplizerFactory 
(assert (not (= var2313 null-var1613)))
(declare-const var2463 var2508) ; Statement: r1 := @parameter0: org.hibernate.EntityMode 
(assert (not (= var2463 null-var2508)))
(declare-const var1536 var717) ; Statement: r5 := @parameter1: org.hibernate.mapping.Component 
(assert (not (= var1536 null-var717)))
(define-const var1387 var2141 (defaultImplClassByMode/854309807 var2313)) ; Statement: $r2 = r0.<org.hibernate.tuple.component.ComponentTuplizerFactory: java.util.Map defaultImplClassByMode> 
(define-const var1772 var1865 (var2141_get/1088891777 var1387 (cast-from-var2508-to-var1865 var2463))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var1982 ClassObject (cast-from-var1865-to-ClassObject var1772)) ; Statement: r4 = (java.lang.Class) $r3 
 ; Statement: if r4 != null goto $r6 = virtualinvoke r0.<org.hibernate.tuple.component.ComponentTuplizerFactory: org.hibernate.tuple.component.ComponentTuplizer constructTuplizer(java.lang.Class,org.hibernate.mapping.Component)>(r4, r5) 
(assert (not (= var1982 null-ClassObject))) ; Cond: r4 != null 
(assert true)
(define-const var1899 var1435 (constructTuplizer/-1919900040 var2313 var1982 var1536)) ; Statement: $r6 = virtualinvoke r0.<org.hibernate.tuple.component.ComponentTuplizerFactory: org.hibernate.tuple.component.ComponentTuplizer constructTuplizer(java.lang.Class,org.hibernate.mapping.Component)>(r4, r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {defaultImplClassByMode/854309807=([org.hibernate.tuple.component.ComponentTuplizerFactory], java.util.Map), var2141_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var2508-to-var1865=([org.hibernate.EntityMode], java.lang.Object), cast-from-var1865-to-ClassObject=([java.lang.Object], java.lang.Class), constructTuplizer/-1919900040=([org.hibernate.tuple.component.ComponentTuplizerFactory, java.lang.Class, org.hibernate.mapping.Component], org.hibernate.tuple.component.ComponentTuplizer)}
; {var1613=org.hibernate.tuple.component.ComponentTuplizerFactory, var2313=r0, var2508=org.hibernate.EntityMode, var2463=r1, var717=org.hibernate.mapping.Component, var1536=r5, var2141=java.util.Map, var1387=$r2, var1865=java.lang.Object, var1772=$r3, var1982=r4, var1435=org.hibernate.tuple.component.ComponentTuplizer, var1899=$r6}
; {org.hibernate.tuple.component.ComponentTuplizerFactory=var1613, r0=var2313, org.hibernate.EntityMode=var2508, r1=var2463, org.hibernate.mapping.Component=var717, r5=var1536, java.util.Map=var2141, $r2=var1387, java.lang.Object=var1865, $r3=var1772, r4=var1982, org.hibernate.tuple.component.ComponentTuplizer=var1435, $r6=var1899}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.tuple.component.ComponentTuplizerFactory;	r1 := @parameter0: org.hibernate.EntityMode;	r5 := @parameter1: org.hibernate.mapping.Component;	$r2 = r0.<org.hibernate.tuple.component.ComponentTuplizerFactory: java.util.Map defaultImplClassByMode>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.lang.Class) $r3;	if r4 != null goto $r6 = virtualinvoke r0.<org.hibernate.tuple.component.ComponentTuplizerFactory: org.hibernate.tuple.component.ComponentTuplizer constructTuplizer(java.lang.Class,org.hibernate.mapping.Component)>(r4, r5);	$r6 = virtualinvoke r0.<org.hibernate.tuple.component.ComponentTuplizerFactory: org.hibernate.tuple.component.ComponentTuplizer constructTuplizer(java.lang.Class,org.hibernate.mapping.Component)>(r4, r5);	return $r6
;block_num 2