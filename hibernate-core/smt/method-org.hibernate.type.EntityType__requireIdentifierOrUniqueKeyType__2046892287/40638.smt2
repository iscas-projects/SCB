(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var632 0)
(declare-sort var1495 0)
(declare-sort var378 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIdentifierOrUniqueKeyType/-1917173520 (var632 var1495) var378)
(declare-const null-var632 var632)
(declare-const null-var1495 var1495)
(declare-const null-var378 var378)
(declare-const var2993 var632) ; Statement: r0 := @this: org.hibernate.type.EntityType 
(assert (not (= var2993 null-var632)))
(declare-const var2827 var1495) ; Statement: r1 := @parameter0: org.hibernate.engine.spi.Mapping 
(assert (not (= var2827 null-var1495)))
(assert true)
(define-const var236 var378 (getIdentifierOrUniqueKeyType/-1917173520 var2993 var2827)) ; Statement: r2 = virtualinvoke r0.<org.hibernate.type.EntityType: org.hibernate.type.Type getIdentifierOrUniqueKeyType(org.hibernate.engine.spi.Mapping)>(r1) 
 ; Statement: if r2 != null goto return r2 
(assert (not (= var236 null-var378))) ; Cond: r2 != null 
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getIdentifierOrUniqueKeyType/-1917173520=([org.hibernate.type.EntityType, org.hibernate.engine.spi.Mapping], org.hibernate.type.Type)}
; {var632=org.hibernate.type.EntityType, var2993=r0, var1495=org.hibernate.engine.spi.Mapping, var2827=r1, var378=org.hibernate.type.Type, var236=r2}
; {org.hibernate.type.EntityType=var632, r0=var2993, org.hibernate.engine.spi.Mapping=var1495, r1=var2827, org.hibernate.type.Type=var378, r2=var236}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.type.EntityType;	r1 := @parameter0: org.hibernate.engine.spi.Mapping;	r2 = virtualinvoke r0.<org.hibernate.type.EntityType: org.hibernate.type.Type getIdentifierOrUniqueKeyType(org.hibernate.engine.spi.Mapping)>(r1);	if r2 != null goto return r2;	return r2
;block_num 2