(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var682 0)
(declare-sort var539 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isOpen/117154873 (var539) Bool)
(declare-fun cast-from-var682-to-var539 (var682) var539)
(declare-const null-var682 var682)
(declare-const var1585 var682) ; Statement: r0 := @this: org.hibernate.resource.jdbc.internal.AbstractLogicalConnectionImplementor 
(assert (not (= var1585 null-var682)))
(assert true)
(define-const var2326 Bool (isOpen/117154873 (cast-from-var682-to-var539 var1585))) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.resource.jdbc.internal.AbstractLogicalConnectionImplementor: boolean isOpen()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var2326 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isOpen/117154873=([org.hibernate.resource.jdbc.LogicalConnection], boolean), cast-from-var682-to-var539=([org.hibernate.resource.jdbc.internal.AbstractLogicalConnectionImplementor], org.hibernate.resource.jdbc.LogicalConnection)}
; {var682=org.hibernate.resource.jdbc.internal.AbstractLogicalConnectionImplementor, var1585=r0, var539=org.hibernate.resource.jdbc.LogicalConnection, var2326=$z0}
; {org.hibernate.resource.jdbc.internal.AbstractLogicalConnectionImplementor=var682, r0=var1585, org.hibernate.resource.jdbc.LogicalConnection=var539, $z0=var2326}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.resource.jdbc.internal.AbstractLogicalConnectionImplementor;	$z0 = virtualinvoke r0.<org.hibernate.resource.jdbc.internal.AbstractLogicalConnectionImplementor: boolean isOpen()>();	if $z0 != 0 goto return;	return
;block_num 2