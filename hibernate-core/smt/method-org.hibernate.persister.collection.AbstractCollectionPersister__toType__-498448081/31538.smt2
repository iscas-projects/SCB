(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1521 0)
(declare-sort var3960 0)
(declare-sort var3978 0)
(declare-sort var2155 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun elementPropertyMapping/835828228 (var1521) var3978)
(declare-fun var3978_toType/-7252846 (var3978 String) var2155)
(declare-const null-var1521 var1521)
(declare-const null-String String)
(declare-const var594 var1521) ; Statement: r2 := @this: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var594 null-var1521)))
(declare-const var2057 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2057 null-String)))
(define-const var1499 String "index") ; Statement: $r1 = "index" 
(assert true)
(define-const var2904 Bool (= var1499 var2057)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.persister.entity.PropertyMapping elementPropertyMapping> 
(assert (= (ite var2904 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3720 var3978 (elementPropertyMapping/835828228 var594)) ; Statement: $r3 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.persister.entity.PropertyMapping elementPropertyMapping> 
(define-const var3542 var2155 (var3978_toType/-7252846 var3720 var2057)) ; Statement: $r4 = interfaceinvoke $r3.<org.hibernate.persister.entity.PropertyMapping: org.hibernate.type.Type toType(java.lang.String)>(r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {elementPropertyMapping/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.persister.entity.PropertyMapping), var3978_toType/-7252846=([org.hibernate.persister.entity.PropertyMapping, java.lang.String], org.hibernate.type.Type)}
; {var1521=org.hibernate.persister.collection.AbstractCollectionPersister, var594=r2, var2057=r0, var3960=null_type, var1499=$r1, var2904=$z0, var3978=org.hibernate.persister.entity.PropertyMapping, var3720=$r3, var2155=org.hibernate.type.Type, var3542=$r4}
; {org.hibernate.persister.collection.AbstractCollectionPersister=var1521, r2=var594, r0=var2057, null_type=var3960, $r1=var1499, $z0=var2904, org.hibernate.persister.entity.PropertyMapping=var3978, $r3=var3720, org.hibernate.type.Type=var2155, $r4=var3542}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.hibernate.persister.collection.AbstractCollectionPersister;	r0 := @parameter0: java.lang.String;	$r1 = "index";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r3 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.persister.entity.PropertyMapping elementPropertyMapping>;	$r3 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.persister.entity.PropertyMapping elementPropertyMapping>;	$r4 = interfaceinvoke $r3.<org.hibernate.persister.entity.PropertyMapping: org.hibernate.type.Type toType(java.lang.String)>(r0);	return $r4
;block_num 2