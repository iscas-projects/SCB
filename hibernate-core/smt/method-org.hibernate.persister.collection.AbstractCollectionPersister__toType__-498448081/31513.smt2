(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2691 0)
(declare-sort var2077 0)
(declare-sort var2992 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun indexType/835828228 (var2691) var2992)
(declare-const null-var2691 var2691)
(declare-const null-String String)
(declare-const var3841 var2691) ; Statement: r2 := @this: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var3841 null-var2691)))
(declare-const var3010 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3010 null-String)))
(define-const var3439 String "index") ; Statement: $r1 = "index" 
(assert true)
(define-const var1263 Bool (= var3439 var3010)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.persister.entity.PropertyMapping elementPropertyMapping> 
(assert (not (= (ite var1263 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3145 var2992 (indexType/835828228 var3841)) ; Statement: $r5 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.type.Type indexType> 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {indexType/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.type.Type)}
; {var2691=org.hibernate.persister.collection.AbstractCollectionPersister, var3841=r2, var3010=r0, var2077=null_type, var3439=$r1, var1263=$z0, var2992=org.hibernate.type.Type, var3145=$r5}
; {org.hibernate.persister.collection.AbstractCollectionPersister=var2691, r2=var3841, r0=var3010, null_type=var2077, $r1=var3439, $z0=var1263, org.hibernate.type.Type=var2992, $r5=var3145}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.hibernate.persister.collection.AbstractCollectionPersister;	r0 := @parameter0: java.lang.String;	$r1 = "index";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r3 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.persister.entity.PropertyMapping elementPropertyMapping>;	$r5 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.type.Type indexType>;	return $r5
;block_num 2