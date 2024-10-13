(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1742 0)
(declare-sort var3878 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasWhere/2002269106 (var1742) Bool)
(declare-const null-var1742 var1742)
(declare-const null-String String)
(declare-const var692 var1742) ; Statement: r0 := @this: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var692 null-var1742)))
(declare-const var1245 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1245 null-String)))
(assert true)
(define-const var1280 Bool (hasWhere/2002269106 var692)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: boolean hasWhere()>() 
 ; Statement: if $z0 == 0 goto $r6 = "" 
(assert (= (ite var1280 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2751 String "") ; Statement: $r6 = "" 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {hasWhere/2002269106=([org.hibernate.persister.collection.AbstractCollectionPersister], boolean)}
; {var1742=org.hibernate.persister.collection.AbstractCollectionPersister, var692=r0, var1245=r2, var3878=null_type, var1280=$z0, var2751=$r6}
; {org.hibernate.persister.collection.AbstractCollectionPersister=var1742, r0=var692, r2=var1245, null_type=var3878, $z0=var1280, $r6=var2751}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.persister.collection.AbstractCollectionPersister;	r2 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: boolean hasWhere()>();	if $z0 == 0 goto $r6 = "";	$r6 = "";	return $r6
;block_num 3