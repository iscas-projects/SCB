(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3310 0)
(declare-sort var109 0)
(declare-sort var3883 0)
(declare-sort var1459 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entitySnapshotsByKey/298931879 (var3310) var3883)
(declare-fun cast-from-var1459-to-__Array__Int__var1459__ (var1459) (Array Int var1459))
(declare-const null-var3310 var3310)
(declare-const null-var109 var109)
(declare-const null-var3883 var3883)
(declare-const null-var1459 var1459)
(declare-const var3310-NO_ROW var1459)
(declare-const var3323 var3310) ; Statement: r0 := @this: org.hibernate.engine.internal.StatefulPersistenceContext 
(assert (not (= var3323 null-var3310)))
(declare-const var147 var109) ; Statement: r2 := @parameter0: org.hibernate.engine.spi.EntityKey 
(assert (not (= var147 null-var109)))
(define-const var3179 var3883 (entitySnapshotsByKey/298931879 var3323)) ; Statement: $r1 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitySnapshotsByKey> 
 ; Statement: if $r1 != null goto $r3 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitySnapshotsByKey> 
(assert (not (not (= var3179 null-var3883)))) ; Negate: Cond: $r1 != null  
(define-const var3243 var1459 null-var1459) ; Statement: $r14 = null 
 ; Statement: goto [?= $r4 = <org.hibernate.engine.internal.StatefulPersistenceContext: java.lang.Object NO_ROW>] 
(assert true) ; Non Conditional
(define-const var2758 var1459 var3310-NO_ROW) ; Statement: $r4 = <org.hibernate.engine.internal.StatefulPersistenceContext: java.lang.Object NO_ROW> 
 ; Statement: if $r14 != $r4 goto $r5 = (java.lang.Object[]) $r14 
(assert (not (= var3243 var2758))) ; Cond: $r14 != $r4 
(define-const var3659 (Array Int var1459) (cast-from-var1459-to-__Array__Int__var1459__ var3243)) ; Statement: $r5 = (java.lang.Object[]) $r14 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {entitySnapshotsByKey/298931879=([org.hibernate.engine.internal.StatefulPersistenceContext], java.util.HashMap), cast-from-var1459-to-__Array__Int__var1459__=([java.lang.Object], java.lang.Object[])}
; {var3310=org.hibernate.engine.internal.StatefulPersistenceContext, var3323=r0, var109=org.hibernate.engine.spi.EntityKey, var147=r2, var3883=java.util.HashMap, var3179=$r1, var1459=java.lang.Object, var3243=$r14, var2758=$r4, var3659=$r5}
; {org.hibernate.engine.internal.StatefulPersistenceContext=var3310, r0=var3323, org.hibernate.engine.spi.EntityKey=var109, r2=var147, java.util.HashMap=var3883, $r1=var3179, java.lang.Object=var1459, $r14=var3243, $r4=var2758, $r5=var3659}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.engine.internal.StatefulPersistenceContext;	r2 := @parameter0: org.hibernate.engine.spi.EntityKey;	$r1 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitySnapshotsByKey>;	if $r1 != null goto $r3 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitySnapshotsByKey>;	$r14 = null;	goto [?= $r4 = <org.hibernate.engine.internal.StatefulPersistenceContext: java.lang.Object NO_ROW>];	$r4 = <org.hibernate.engine.internal.StatefulPersistenceContext: java.lang.Object NO_ROW>;	if $r14 != $r4 goto $r5 = (java.lang.Object[]) $r14;	$r5 = (java.lang.Object[]) $r14;	return $r5
;block_num 4