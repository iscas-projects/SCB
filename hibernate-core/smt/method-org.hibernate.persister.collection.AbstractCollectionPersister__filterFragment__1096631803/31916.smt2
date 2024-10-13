(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1327 0)
(declare-sort var187 0)
(declare-sort var2922 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasWhere/2002269106 (var1327) Bool)
(declare-const null-var1327 var1327)
(declare-const null-String String)
(declare-const null-var2922 var2922)
(declare-const var3358 var1327) ; Statement: r0 := @this: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var3358 null-var1327)))
(declare-const var3569 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3569 null-String)))
(declare-const var365 var2922) ; Statement: r6 := @parameter1: java.util.Set 
(assert (not (= var365 null-var2922)))
(assert true)
(define-const var1760 Bool (hasWhere/2002269106 var3358)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: boolean hasWhere()>() 
 ; Statement: if $z0 == 0 goto $r7 = "" 
(assert (= (ite var1760 1 0) 0)) ; Cond: $z0 == 0 
(define-const var574 String "") ; Statement: $r7 = "" 
(assert true) ; Non Conditional
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {hasWhere/2002269106=([org.hibernate.persister.collection.AbstractCollectionPersister], boolean)}
; {var1327=org.hibernate.persister.collection.AbstractCollectionPersister, var3358=r0, var3569=r2, var187=null_type, var2922=java.util.Set, var365=r6, var1760=$z0, var574=$r7}
; {org.hibernate.persister.collection.AbstractCollectionPersister=var1327, r0=var3358, r2=var3569, null_type=var187, java.util.Set=var2922, r6=var365, $z0=var1760, $r7=var574}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.persister.collection.AbstractCollectionPersister;	r2 := @parameter0: java.lang.String;	r6 := @parameter1: java.util.Set;	$z0 = virtualinvoke r0.<org.hibernate.persister.collection.AbstractCollectionPersister: boolean hasWhere()>();	if $z0 == 0 goto $r7 = "";	$r7 = "";	return $r7
;block_num 3