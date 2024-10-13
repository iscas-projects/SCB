(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2077 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasIdClass/-1496794222 (var2077) Bool)
(declare-const null-var2077 var2077)
(declare-const var3741 var2077) ; Statement: r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType 
(assert (not (= var3741 null-var2077)))
(assert true)
(define-const var1358 Bool (hasIdClass/-1496794222 var3741)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: boolean hasIdClass()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var1358 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {hasIdClass/-1496794222=([org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType], boolean)}
; {var2077=org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType, var3741=r0, var1358=$z0}
; {org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType=var2077, r0=var3741, $z0=var1358}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType;	$z0 = virtualinvoke r0.<org.hibernate.metamodel.model.domain.internal.AbstractIdentifiableType: boolean hasIdClass()>();	if $z0 == 0 goto return;	return
;block_num 2