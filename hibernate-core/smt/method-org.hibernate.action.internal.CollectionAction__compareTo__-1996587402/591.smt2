(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1701 0)
(declare-sort var919 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var919-to-var1701 (var919) var1701)
(declare-fun collectionRole/-1521350829 (var1701) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var1701 var1701)
(declare-const null-var919 var919)
(declare-const var1868 var1701) ; Statement: r2 := @this: org.hibernate.action.internal.CollectionAction 
(assert (not (= var1868 null-var1701)))
(declare-const var2346 var919) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2346 null-var919)))
(define-const var1115 var1701 (cast-from-var919-to-var1701 var2346)) ; Statement: r1 = (org.hibernate.action.internal.CollectionAction) r0 
(define-const var1341 String (collectionRole/-1521350829 var1868)) ; Statement: $r4 = r2.<org.hibernate.action.internal.CollectionAction: java.lang.String collectionRole> 
(define-const var3851 String (collectionRole/-1521350829 var1115)) ; Statement: $r3 = r1.<org.hibernate.action.internal.CollectionAction: java.lang.String collectionRole> 
(assert true)
(define-const var2198 Int (compareTo/1411385946 var1341 var3851)) ; Statement: i0 = virtualinvoke $r4.<java.lang.String: int compareTo(java.lang.String)>($r3) 
(assert (let ((this<other (str.< var1341 var3851)) (this<=other (str.<= var1341 var3851)) (compareRes (compareTo/1411385946 var1341 var3851))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: if i0 == 0 goto $r5 = r2.<org.hibernate.action.internal.CollectionAction: org.hibernate.persister.collection.CollectionPersister persister> 
(assert (not (= var2198 0))) ; Negate: Cond: i0 == 0  
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var919-to-var1701=([java.lang.Object], org.hibernate.action.internal.CollectionAction), collectionRole/-1521350829=([org.hibernate.action.internal.CollectionAction], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var1701=org.hibernate.action.internal.CollectionAction, var1868=r2, var919=java.lang.Object, var2346=r0, var1115=r1, var1341=$r4, var3851=$r3, var2198=i0}
; {org.hibernate.action.internal.CollectionAction=var1701, r2=var1868, java.lang.Object=var919, r0=var2346, r1=var1115, $r4=var1341, $r3=var3851, i0=var2198}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r2 := @this: org.hibernate.action.internal.CollectionAction;	r0 := @parameter0: java.lang.Object;	r1 = (org.hibernate.action.internal.CollectionAction) r0;	$r4 = r2.<org.hibernate.action.internal.CollectionAction: java.lang.String collectionRole>;	$r3 = r1.<org.hibernate.action.internal.CollectionAction: java.lang.String collectionRole>;	i0 = virtualinvoke $r4.<java.lang.String: int compareTo(java.lang.String)>($r3);	if i0 == 0 goto $r5 = r2.<org.hibernate.action.internal.CollectionAction: org.hibernate.persister.collection.CollectionPersister persister>;	return i0
;block_num 2