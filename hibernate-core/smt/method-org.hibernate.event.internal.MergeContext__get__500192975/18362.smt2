(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3947 0)
(declare-sort var2285 0)
(declare-sort var3960 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mergeToManagedEntityXref/-442556786 (var3947) var3960)
(declare-fun var3960_get/1088891777 (var3960 var2285) var2285)
(declare-const null-var3947 var3947)
(declare-const null-var2285 var2285)
(declare-const var2294 var3947) ; Statement: r1 := @this: org.hibernate.event.internal.MergeContext 
(assert (not (= var2294 null-var3947)))
(declare-const var2786 var2285) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2786 null-var2285)))
 ; Statement: if r0 != null goto $r2 = r1.<org.hibernate.event.internal.MergeContext: java.util.Map mergeToManagedEntityXref> 
(assert (not (= var2786 null-var2285))) ; Cond: r0 != null 
(define-const var681 var3960 (mergeToManagedEntityXref/-442556786 var2294)) ; Statement: $r2 = r1.<org.hibernate.event.internal.MergeContext: java.util.Map mergeToManagedEntityXref> 
(define-const var2891 var2285 (var3960_get/1088891777 var681 var2786)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {mergeToManagedEntityXref/-442556786=([org.hibernate.event.internal.MergeContext], java.util.Map), var3960_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object)}
; {var3947=org.hibernate.event.internal.MergeContext, var2294=r1, var2285=java.lang.Object, var2786=r0, var3960=java.util.Map, var681=$r2, var2891=$r3}
; {org.hibernate.event.internal.MergeContext=var3947, r1=var2294, java.lang.Object=var2285, r0=var2786, java.util.Map=var3960, $r2=var681, $r3=var2891}
;seq 
;cnt {}
;stmts r1 := @this: org.hibernate.event.internal.MergeContext;	r0 := @parameter0: java.lang.Object;	if r0 != null goto $r2 = r1.<org.hibernate.event.internal.MergeContext: java.util.Map mergeToManagedEntityXref>;	$r2 = r1.<org.hibernate.event.internal.MergeContext: java.util.Map mergeToManagedEntityXref>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0);	return $r3
;block_num 2