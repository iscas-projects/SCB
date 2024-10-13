(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1309 0)
(declare-sort var3463 0)
(declare-sort var3401 0)
(declare-sort var567 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stackOfPersistentClassesBeingProcessed/248942207 (var1309) var3401)
(declare-fun var3401_size/-959786421 (var3401) Int)
(declare-fun var3401_remove/1853576941 (var3401 Int) var567)
(declare-fun cast-from-var567-to-var3463 (var567) var3463)
(declare-const null-var1309 var1309)
(declare-const null-var3463 var3463)
(declare-const var722 var1309) ; Statement: r0 := @this: org.hibernate.metamodel.internal.MetadataContext 
(assert (not (= var722 null-var1309)))
(declare-const var794 var3463) ; Statement: r5 := @parameter0: org.hibernate.mapping.PersistentClass 
(assert (not (= var794 null-var3463)))
(define-const var844 var3401 (stackOfPersistentClassesBeingProcessed/248942207 var722)) ; Statement: $r2 = r0.<org.hibernate.metamodel.internal.MetadataContext: java.util.List stackOfPersistentClassesBeingProcessed> 
(define-const var461 var3401 (stackOfPersistentClassesBeingProcessed/248942207 var722)) ; Statement: $r1 = r0.<org.hibernate.metamodel.internal.MetadataContext: java.util.List stackOfPersistentClassesBeingProcessed> 
(define-const var742 Int (var3401_size/-959786421 var461)) ; Statement: $i0 = interfaceinvoke $r1.<java.util.List: int size()>() 
(define-const var3362 Int (- var742 1)) ; Statement: $i1 = $i0 - 1 
(define-const var3043 var567 (var3401_remove/1853576941 var844 var3362)) ; Statement: $r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>($i1) 
(define-const var1195 var3463 (cast-from-var567-to-var3463 var3043)) ; Statement: r4 = (org.hibernate.mapping.PersistentClass) $r3 
 ; Statement: if r4 == r5 goto return 
(assert (= var1195 var794)) ; Cond: r4 == r5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {stackOfPersistentClassesBeingProcessed/248942207=([org.hibernate.metamodel.internal.MetadataContext], java.util.List), var3401_size/-959786421=([java.util.List], int), var3401_remove/1853576941=([java.util.List, int], java.lang.Object), cast-from-var567-to-var3463=([java.lang.Object], org.hibernate.mapping.PersistentClass)}
; {var1309=org.hibernate.metamodel.internal.MetadataContext, var722=r0, var3463=org.hibernate.mapping.PersistentClass, var794=r5, var3401=java.util.List, var844=$r2, var461=$r1, var742=$i0, var3362=$i1, var567=java.lang.Object, var3043=$r3, var1195=r4}
; {org.hibernate.metamodel.internal.MetadataContext=var1309, r0=var722, org.hibernate.mapping.PersistentClass=var3463, r5=var794, java.util.List=var3401, $r2=var844, $r1=var461, $i0=var742, $i1=var3362, java.lang.Object=var567, $r3=var3043, r4=var1195}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.metamodel.internal.MetadataContext;	r5 := @parameter0: org.hibernate.mapping.PersistentClass;	$r2 = r0.<org.hibernate.metamodel.internal.MetadataContext: java.util.List stackOfPersistentClassesBeingProcessed>;	$r1 = r0.<org.hibernate.metamodel.internal.MetadataContext: java.util.List stackOfPersistentClassesBeingProcessed>;	$i0 = interfaceinvoke $r1.<java.util.List: int size()>();	$i1 = $i0 - 1;	$r3 = interfaceinvoke $r2.<java.util.List: java.lang.Object remove(int)>($i1);	r4 = (org.hibernate.mapping.PersistentClass) $r3;	if r4 == r5 goto return;	return
;block_num 2