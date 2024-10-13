(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1947 0)
(declare-sort var1795 0)
(declare-sort var2960 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun elementPropertyMapping/835828228 (var1947) var2960)
(declare-fun var2960_toColumns/-1345341354 (var2960 String) (Array Int String))
(declare-const null-var1947 var1947)
(declare-const null-String String)
(declare-const var1087 var1947) ; Statement: r2 := @this: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var1087 null-var1947)))
(declare-const var2929 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2929 null-String)))
(define-const var1613 String "index") ; Statement: $r1 = "index" 
(assert true)
(define-const var356 Bool (= var1613 var2929)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.persister.entity.PropertyMapping elementPropertyMapping> 
(assert (= (ite var356 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2148 var2960 (elementPropertyMapping/835828228 var1087)) ; Statement: $r3 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.persister.entity.PropertyMapping elementPropertyMapping> 
(define-const var797 (Array Int String) (var2960_toColumns/-1345341354 var2148 var2929)) ; Statement: $r4 = interfaceinvoke $r3.<org.hibernate.persister.entity.PropertyMapping: java.lang.String[] toColumns(java.lang.String)>(r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {elementPropertyMapping/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.persister.entity.PropertyMapping), var2960_toColumns/-1345341354=([org.hibernate.persister.entity.PropertyMapping, java.lang.String], java.lang.String[])}
; {var1947=org.hibernate.persister.collection.AbstractCollectionPersister, var1087=r2, var2929=r0, var1795=null_type, var1613=$r1, var356=$z0, var2960=org.hibernate.persister.entity.PropertyMapping, var2148=$r3, var797=$r4}
; {org.hibernate.persister.collection.AbstractCollectionPersister=var1947, r2=var1087, r0=var2929, null_type=var1795, $r1=var1613, $z0=var356, org.hibernate.persister.entity.PropertyMapping=var2960, $r3=var2148, $r4=var797}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.hibernate.persister.collection.AbstractCollectionPersister;	r0 := @parameter0: java.lang.String;	$r1 = "index";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r3 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.persister.entity.PropertyMapping elementPropertyMapping>;	$r3 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.persister.entity.PropertyMapping elementPropertyMapping>;	$r4 = interfaceinvoke $r3.<org.hibernate.persister.entity.PropertyMapping: java.lang.String[] toColumns(java.lang.String)>(r0);	return $r4
;block_num 2