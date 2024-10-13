(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var117 0)
(declare-sort var2067 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2067-to-var117 (var2067) var117)
(declare-fun entityName/369343576 (var117) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var117 var117)
(declare-const null-var2067 var2067)
(declare-const var671 var117) ; Statement: r2 := @this: org.hibernate.action.internal.EntityAction 
(assert (not (= var671 null-var117)))
(declare-const var1846 var2067) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1846 null-var2067)))
(define-const var3888 var117 (cast-from-var2067-to-var117 var1846)) ; Statement: r1 = (org.hibernate.action.internal.EntityAction) r0 
(define-const var276 String (entityName/369343576 var671)) ; Statement: $r4 = r2.<org.hibernate.action.internal.EntityAction: java.lang.String entityName> 
(define-const var760 String (entityName/369343576 var3888)) ; Statement: $r3 = r1.<org.hibernate.action.internal.EntityAction: java.lang.String entityName> 
(assert true)
(define-const var3635 Int (compareTo/1411385946 var276 var760)) ; Statement: i0 = virtualinvoke $r4.<java.lang.String: int compareTo(java.lang.String)>($r3) 
(assert (let ((this<other (str.< var276 var760)) (this<=other (str.<= var276 var760)) (compareRes (compareTo/1411385946 var276 var760))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: if i0 == 0 goto $r5 = r2.<org.hibernate.action.internal.EntityAction: org.hibernate.persister.entity.EntityPersister persister> 
(assert (not (= var3635 0))) ; Negate: Cond: i0 == 0  
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2067-to-var117=([java.lang.Object], org.hibernate.action.internal.EntityAction), entityName/369343576=([org.hibernate.action.internal.EntityAction], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var117=org.hibernate.action.internal.EntityAction, var671=r2, var2067=java.lang.Object, var1846=r0, var3888=r1, var276=$r4, var760=$r3, var3635=i0}
; {org.hibernate.action.internal.EntityAction=var117, r2=var671, java.lang.Object=var2067, r0=var1846, r1=var3888, $r4=var276, $r3=var760, i0=var3635}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r2 := @this: org.hibernate.action.internal.EntityAction;	r0 := @parameter0: java.lang.Object;	r1 = (org.hibernate.action.internal.EntityAction) r0;	$r4 = r2.<org.hibernate.action.internal.EntityAction: java.lang.String entityName>;	$r3 = r1.<org.hibernate.action.internal.EntityAction: java.lang.String entityName>;	i0 = virtualinvoke $r4.<java.lang.String: int compareTo(java.lang.String)>($r3);	if i0 == 0 goto $r5 = r2.<org.hibernate.action.internal.EntityAction: org.hibernate.persister.entity.EntityPersister persister>;	return i0
;block_num 2