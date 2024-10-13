(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var101 0)
(declare-sort var2895 0)
(declare-sort var2365 0)
(declare-sort var1860 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun persister/-336658276 (var101) var2365)
(declare-fun cast-from-var2365-to-var1860 (var2365) var1860)
(declare-fun var1860_getElementColumnNames/-1258664598 (var1860 String) (Array Int String))
(declare-const null-var101 var101)
(declare-const null-String String)
(declare-const var762 var101) ; Statement: r0 := @this: org.hibernate.loader.plan.build.internal.spaces.CollectionQuerySpaceImpl 
(assert (not (= var762 null-var101)))
(declare-const var686 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var686 null-String)))
(declare-const var1773 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1773 null-String)))
(define-const var2556 var2365 (persister/-336658276 var762)) ; Statement: $r1 = r0.<org.hibernate.loader.plan.build.internal.spaces.CollectionQuerySpaceImpl: org.hibernate.persister.collection.CollectionPersister persister> 
(define-const var2667 var1860 (cast-from-var2365-to-var1860 var2556)) ; Statement: r2 = (org.hibernate.persister.collection.QueryableCollection) $r1 
(assert true)
(define-const var2549 Bool (= var1773 "elements")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("elements") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("indices") 
(assert (not (= (ite var2549 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3533 (Array Int String) (var1860_getElementColumnNames/-1258664598 var2667 var686)) ; Statement: $r9 = interfaceinvoke r2.<org.hibernate.persister.collection.QueryableCollection: java.lang.String[] getElementColumnNames(java.lang.String)>(r7) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {persister/-336658276=([org.hibernate.loader.plan.build.internal.spaces.CollectionQuerySpaceImpl], org.hibernate.persister.collection.CollectionPersister), cast-from-var2365-to-var1860=([org.hibernate.persister.collection.CollectionPersister], org.hibernate.persister.collection.QueryableCollection), var1860_getElementColumnNames/-1258664598=([org.hibernate.persister.collection.QueryableCollection, java.lang.String], java.lang.String[])}
; {var101=org.hibernate.loader.plan.build.internal.spaces.CollectionQuerySpaceImpl, var762=r0, var686=r7, var2895=null_type, var1773=r3, var2365=org.hibernate.persister.collection.CollectionPersister, var2556=$r1, var1860=org.hibernate.persister.collection.QueryableCollection, var2667=r2, var2549=$z0, var3533=$r9}
; {org.hibernate.loader.plan.build.internal.spaces.CollectionQuerySpaceImpl=var101, r0=var762, r7=var686, null_type=var2895, r3=var1773, org.hibernate.persister.collection.CollectionPersister=var2365, $r1=var2556, org.hibernate.persister.collection.QueryableCollection=var1860, r2=var2667, $z0=var2549, $r9=var3533}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.loader.plan.build.internal.spaces.CollectionQuerySpaceImpl;	r7 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r1 = r0.<org.hibernate.loader.plan.build.internal.spaces.CollectionQuerySpaceImpl: org.hibernate.persister.collection.CollectionPersister persister>;	r2 = (org.hibernate.persister.collection.QueryableCollection) $r1;	$z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("elements");	if $z0 == 0 goto $z1 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("indices");	$r9 = interfaceinvoke r2.<org.hibernate.persister.collection.QueryableCollection: java.lang.String[] getElementColumnNames(java.lang.String)>(r7);	return $r9
;block_num 2