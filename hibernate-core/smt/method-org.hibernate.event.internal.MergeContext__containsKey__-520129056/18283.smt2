(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2254 0)
(declare-sort var2264 0)
(declare-sort var917 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mergeToManagedEntityXref/-442556786 (var2254) var917)
(declare-fun var917_containsKey/1715618542 (var917 var2264) Bool)
(declare-const null-var2254 var2254)
(declare-const null-var2264 var2264)
(declare-const var418 var2254) ; Statement: r1 := @this: org.hibernate.event.internal.MergeContext 
(assert (not (= var418 null-var2254)))
(declare-const var1062 var2264) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1062 null-var2264)))
 ; Statement: if r0 != null goto $r2 = r1.<org.hibernate.event.internal.MergeContext: java.util.Map mergeToManagedEntityXref> 
(assert (not (= var1062 null-var2264))) ; Cond: r0 != null 
(define-const var441 var917 (mergeToManagedEntityXref/-442556786 var418)) ; Statement: $r2 = r1.<org.hibernate.event.internal.MergeContext: java.util.Map mergeToManagedEntityXref> 
(define-const var2060 Bool (var917_containsKey/1715618542 var441 var1062)) ; Statement: $z0 = interfaceinvoke $r2.<java.util.Map: boolean containsKey(java.lang.Object)>(r0) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {mergeToManagedEntityXref/-442556786=([org.hibernate.event.internal.MergeContext], java.util.Map), var917_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean)}
; {var2254=org.hibernate.event.internal.MergeContext, var418=r1, var2264=java.lang.Object, var1062=r0, var917=java.util.Map, var441=$r2, var2060=$z0}
; {org.hibernate.event.internal.MergeContext=var2254, r1=var418, java.lang.Object=var2264, r0=var1062, java.util.Map=var917, $r2=var441, $z0=var2060}
;seq 
;cnt {}
;stmts r1 := @this: org.hibernate.event.internal.MergeContext;	r0 := @parameter0: java.lang.Object;	if r0 != null goto $r2 = r1.<org.hibernate.event.internal.MergeContext: java.util.Map mergeToManagedEntityXref>;	$r2 = r1.<org.hibernate.event.internal.MergeContext: java.util.Map mergeToManagedEntityXref>;	$z0 = interfaceinvoke $r2.<java.util.Map: boolean containsKey(java.lang.Object)>(r0);	return $z0
;block_num 2