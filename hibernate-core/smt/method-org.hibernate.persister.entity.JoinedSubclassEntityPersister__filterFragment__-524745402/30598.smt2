(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var272 0)
(declare-sort var221 0)
(declare-sort var3531 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasWhere/249013010 (var3531) Bool)
(declare-fun cast-from-var272-to-var3531 (var272) var3531)
(declare-const null-var272 var272)
(declare-const null-String String)
(declare-const var1137 var272) ; Statement: r0 := @this: org.hibernate.persister.entity.JoinedSubclassEntityPersister 
(assert (not (= var1137 null-var272)))
(declare-const var2532 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2532 null-String)))
(assert true)
(define-const var170 Bool (hasWhere/249013010 (cast-from-var272-to-var3531 var1137))) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: boolean hasWhere()>() 
 ; Statement: if $z0 == 0 goto $r7 = "" 
(assert (= (ite var170 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2940 String "") ; Statement: $r7 = "" 
(assert true) ; Non Conditional
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {hasWhere/249013010=([org.hibernate.persister.entity.AbstractEntityPersister], boolean), cast-from-var272-to-var3531=([org.hibernate.persister.entity.JoinedSubclassEntityPersister], org.hibernate.persister.entity.AbstractEntityPersister)}
; {var272=org.hibernate.persister.entity.JoinedSubclassEntityPersister, var1137=r0, var2532=r2, var221=null_type, var3531=org.hibernate.persister.entity.AbstractEntityPersister, var170=$z0, var2940=$r7}
; {org.hibernate.persister.entity.JoinedSubclassEntityPersister=var272, r0=var1137, r2=var2532, null_type=var221, org.hibernate.persister.entity.AbstractEntityPersister=var3531, $z0=var170, $r7=var2940}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.persister.entity.JoinedSubclassEntityPersister;	r2 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: boolean hasWhere()>();	if $z0 == 0 goto $r7 = "";	$r7 = "";	return $r7
;block_num 3