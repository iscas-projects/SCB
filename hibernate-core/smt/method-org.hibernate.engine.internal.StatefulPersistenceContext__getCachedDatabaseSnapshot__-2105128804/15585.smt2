(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3686 0)
(declare-sort var2308 0)
(declare-sort var1022 0)
(declare-sort var950 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entitySnapshotsByKey/298931879 (var3686) var1022)
(declare-fun get/499451311 (var1022 var950) var950)
(declare-fun cast-from-var2308-to-var950 (var2308) var950)
(declare-fun cast-from-var950-to-__Array__Int__var950__ (var950) (Array Int var950))
(declare-const null-var3686 var3686)
(declare-const null-var2308 var2308)
(declare-const null-var1022 var1022)
(declare-const var3686-NO_ROW var950)
(declare-const var95 var3686) ; Statement: r0 := @this: org.hibernate.engine.internal.StatefulPersistenceContext 
(assert (not (= var95 null-var3686)))
(declare-const var1390 var2308) ; Statement: r2 := @parameter0: org.hibernate.engine.spi.EntityKey 
(assert (not (= var1390 null-var2308)))
(define-const var3789 var1022 (entitySnapshotsByKey/298931879 var95)) ; Statement: $r1 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitySnapshotsByKey> 
 ; Statement: if $r1 != null goto $r3 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitySnapshotsByKey> 
(assert (not (= var3789 null-var1022))) ; Cond: $r1 != null 
(define-const var3320 var1022 (entitySnapshotsByKey/298931879 var95)) ; Statement: $r3 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitySnapshotsByKey> 
(assert true)
(define-const var1363 var950 (get/499451311 var3320 (cast-from-var2308-to-var950 var1390))) ; Statement: $r14 = virtualinvoke $r3.<java.util.HashMap: java.lang.Object get(java.lang.Object)>(r2) 
(assert true) ; Non Conditional
(define-const var3295 var950 var3686-NO_ROW) ; Statement: $r4 = <org.hibernate.engine.internal.StatefulPersistenceContext: java.lang.Object NO_ROW> 
 ; Statement: if $r14 != $r4 goto $r5 = (java.lang.Object[]) $r14 
(assert (not (= var1363 var3295))) ; Cond: $r14 != $r4 
(define-const var2413 (Array Int var950) (cast-from-var950-to-__Array__Int__var950__ var1363)) ; Statement: $r5 = (java.lang.Object[]) $r14 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {entitySnapshotsByKey/298931879=([org.hibernate.engine.internal.StatefulPersistenceContext], java.util.HashMap), get/499451311=([java.util.HashMap, java.lang.Object], java.lang.Object), cast-from-var2308-to-var950=([org.hibernate.engine.spi.EntityKey], java.lang.Object), cast-from-var950-to-__Array__Int__var950__=([java.lang.Object], java.lang.Object[])}
; {var3686=org.hibernate.engine.internal.StatefulPersistenceContext, var95=r0, var2308=org.hibernate.engine.spi.EntityKey, var1390=r2, var1022=java.util.HashMap, var3789=$r1, var3320=$r3, var950=java.lang.Object, var1363=$r14, var3295=$r4, var2413=$r5}
; {org.hibernate.engine.internal.StatefulPersistenceContext=var3686, r0=var95, org.hibernate.engine.spi.EntityKey=var2308, r2=var1390, java.util.HashMap=var1022, $r1=var3789, $r3=var3320, java.lang.Object=var950, $r14=var1363, $r4=var3295, $r5=var2413}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.engine.internal.StatefulPersistenceContext;	r2 := @parameter0: org.hibernate.engine.spi.EntityKey;	$r1 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitySnapshotsByKey>;	if $r1 != null goto $r3 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitySnapshotsByKey>;	$r3 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitySnapshotsByKey>;	$r14 = virtualinvoke $r3.<java.util.HashMap: java.lang.Object get(java.lang.Object)>(r2);	$r4 = <org.hibernate.engine.internal.StatefulPersistenceContext: java.lang.Object NO_ROW>;	if $r14 != $r4 goto $r5 = (java.lang.Object[]) $r14;	$r5 = (java.lang.Object[]) $r14;	return $r5
;block_num 4