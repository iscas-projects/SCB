(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var150 0)
(declare-sort var3372 0)
(declare-sort var1911 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun elementPropertyMapping/835828228 (var150) var1911)
(declare-fun var1911_toColumns/701355653 (var1911 String String) (Array Int String))
(declare-const null-var150 var150)
(declare-const null-String String)
(declare-const var946 var150) ; Statement: r2 := @this: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var946 null-var150)))
(declare-const var1937 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1937 null-String)))
(declare-const var3342 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3342 null-String)))
(define-const var3233 String "index") ; Statement: $r1 = "index" 
(assert true)
(define-const var463 Bool (= var3233 var3342)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r4 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.persister.entity.PropertyMapping elementPropertyMapping> 
(assert (= (ite var463 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3777 var1911 (elementPropertyMapping/835828228 var946)) ; Statement: $r4 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.persister.entity.PropertyMapping elementPropertyMapping> 
(define-const var3424 (Array Int String) (var1911_toColumns/701355653 var3777 var1937 var3342)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.persister.entity.PropertyMapping: java.lang.String[] toColumns(java.lang.String,java.lang.String)>(r3, r0) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {elementPropertyMapping/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.persister.entity.PropertyMapping), var1911_toColumns/701355653=([org.hibernate.persister.entity.PropertyMapping, java.lang.String, java.lang.String], java.lang.String[])}
; {var150=org.hibernate.persister.collection.AbstractCollectionPersister, var946=r2, var1937=r3, var3372=null_type, var3342=r0, var3233=$r1, var463=$z0, var1911=org.hibernate.persister.entity.PropertyMapping, var3777=$r4, var3424=$r5}
; {org.hibernate.persister.collection.AbstractCollectionPersister=var150, r2=var946, r3=var1937, null_type=var3372, r0=var3342, $r1=var3233, $z0=var463, org.hibernate.persister.entity.PropertyMapping=var1911, $r4=var3777, $r5=var3424}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.hibernate.persister.collection.AbstractCollectionPersister;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$r1 = "index";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r4 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.persister.entity.PropertyMapping elementPropertyMapping>;	$r4 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.persister.entity.PropertyMapping elementPropertyMapping>;	$r5 = interfaceinvoke $r4.<org.hibernate.persister.entity.PropertyMapping: java.lang.String[] toColumns(java.lang.String,java.lang.String)>(r3, r0);	return $r5
;block_num 2