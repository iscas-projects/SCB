(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2062 0)
(declare-sort var1041 0)
(declare-sort var2886 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun managedToMergeEntityXref/-442556786 (var2062) var2886)
(declare-fun var2886_containsKey/1715618542 (var2886 var1041) Bool)
(declare-const null-var2062 var2062)
(declare-const null-var1041 var1041)
(declare-const var2367 var2062) ; Statement: r1 := @this: org.hibernate.event.internal.MergeContext 
(assert (not (= var2367 null-var2062)))
(declare-const var472 var1041) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var472 null-var1041)))
 ; Statement: if r0 != null goto $r2 = r1.<org.hibernate.event.internal.MergeContext: java.util.Map managedToMergeEntityXref> 
(assert (not (= var472 null-var1041))) ; Cond: r0 != null 
(define-const var3022 var2886 (managedToMergeEntityXref/-442556786 var2367)) ; Statement: $r2 = r1.<org.hibernate.event.internal.MergeContext: java.util.Map managedToMergeEntityXref> 
(define-const var1500 Bool (var2886_containsKey/1715618542 var3022 var472)) ; Statement: $z0 = interfaceinvoke $r2.<java.util.Map: boolean containsKey(java.lang.Object)>(r0) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {managedToMergeEntityXref/-442556786=([org.hibernate.event.internal.MergeContext], java.util.Map), var2886_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean)}
; {var2062=org.hibernate.event.internal.MergeContext, var2367=r1, var1041=java.lang.Object, var472=r0, var2886=java.util.Map, var3022=$r2, var1500=$z0}
; {org.hibernate.event.internal.MergeContext=var2062, r1=var2367, java.lang.Object=var1041, r0=var472, java.util.Map=var2886, $r2=var3022, $z0=var1500}
;seq 
;cnt {}
;stmts r1 := @this: org.hibernate.event.internal.MergeContext;	r0 := @parameter0: java.lang.Object;	if r0 != null goto $r2 = r1.<org.hibernate.event.internal.MergeContext: java.util.Map managedToMergeEntityXref>;	$r2 = r1.<org.hibernate.event.internal.MergeContext: java.util.Map managedToMergeEntityXref>;	$z0 = interfaceinvoke $r2.<java.util.Map: boolean containsKey(java.lang.Object)>(r0);	return $z0
;block_num 2