(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2064 0)
(declare-sort var3793 0)
(declare-sort var2334 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasWhere/249013010 (var2334) Bool)
(declare-fun cast-from-var2064-to-var2334 (var2064) var2334)
(declare-const null-var2064 var2064)
(declare-const null-String String)
(declare-const var2000 var2064) ; Statement: r0 := @this: org.hibernate.persister.entity.UnionSubclassEntityPersister 
(assert (not (= var2000 null-var2064)))
(declare-const var3229 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3229 null-String)))
(assert true)
(define-const var777 Bool (hasWhere/249013010 (cast-from-var2064-to-var2334 var2000))) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.persister.entity.UnionSubclassEntityPersister: boolean hasWhere()>() 
 ; Statement: if $z0 == 0 goto $r6 = "" 
(assert (= (ite var777 1 0) 0)) ; Cond: $z0 == 0 
(define-const var484 String "") ; Statement: $r6 = "" 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {hasWhere/249013010=([org.hibernate.persister.entity.AbstractEntityPersister], boolean), cast-from-var2064-to-var2334=([org.hibernate.persister.entity.UnionSubclassEntityPersister], org.hibernate.persister.entity.AbstractEntityPersister)}
; {var2064=org.hibernate.persister.entity.UnionSubclassEntityPersister, var2000=r0, var3229=r2, var3793=null_type, var2334=org.hibernate.persister.entity.AbstractEntityPersister, var777=$z0, var484=$r6}
; {org.hibernate.persister.entity.UnionSubclassEntityPersister=var2064, r0=var2000, r2=var3229, null_type=var3793, org.hibernate.persister.entity.AbstractEntityPersister=var2334, $z0=var777, $r6=var484}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.persister.entity.UnionSubclassEntityPersister;	r2 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<org.hibernate.persister.entity.UnionSubclassEntityPersister: boolean hasWhere()>();	if $z0 == 0 goto $r6 = "";	$r6 = "";	return $r6
;block_num 3