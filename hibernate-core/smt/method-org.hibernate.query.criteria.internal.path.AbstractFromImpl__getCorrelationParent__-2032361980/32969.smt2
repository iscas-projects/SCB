(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3665 0)
(declare-sort var706 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun correlationParent/-124924633 (var3665) var706)
(declare-const null-var3665 var3665)
(declare-const null-var706 var706)
(declare-const var3080 var3665) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.path.AbstractFromImpl 
(assert (not (= var3080 null-var3665)))
(define-const var1832 var706 (correlationParent/-124924633 var3080)) ; Statement: $r1 = r0.<org.hibernate.query.criteria.internal.path.AbstractFromImpl: org.hibernate.query.criteria.internal.FromImplementor correlationParent> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.query.criteria.internal.path.AbstractFromImpl: org.hibernate.query.criteria.internal.FromImplementor correlationParent> 
(assert (not (= var1832 null-var706))) ; Cond: $r1 != null 
(define-const var3329 var706 (correlationParent/-124924633 var3080)) ; Statement: $r2 = r0.<org.hibernate.query.criteria.internal.path.AbstractFromImpl: org.hibernate.query.criteria.internal.FromImplementor correlationParent> 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {correlationParent/-124924633=([org.hibernate.query.criteria.internal.path.AbstractFromImpl], org.hibernate.query.criteria.internal.FromImplementor)}
; {var3665=org.hibernate.query.criteria.internal.path.AbstractFromImpl, var3080=r0, var706=org.hibernate.query.criteria.internal.FromImplementor, var1832=$r1, var3329=$r2}
; {org.hibernate.query.criteria.internal.path.AbstractFromImpl=var3665, r0=var3080, org.hibernate.query.criteria.internal.FromImplementor=var706, $r1=var1832, $r2=var3329}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.query.criteria.internal.path.AbstractFromImpl;	$r1 = r0.<org.hibernate.query.criteria.internal.path.AbstractFromImpl: org.hibernate.query.criteria.internal.FromImplementor correlationParent>;	if $r1 != null goto $r2 = r0.<org.hibernate.query.criteria.internal.path.AbstractFromImpl: org.hibernate.query.criteria.internal.FromImplementor correlationParent>;	$r2 = r0.<org.hibernate.query.criteria.internal.path.AbstractFromImpl: org.hibernate.query.criteria.internal.FromImplementor correlationParent>;	return $r2
;block_num 2