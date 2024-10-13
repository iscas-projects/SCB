(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1370 0)
(declare-sort var3168 0)
(declare-sort var3680 0)
(declare-sort var2356 0)
(declare-sort var42 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun memberPersister/171371646 (var1370) var3680)
(declare-fun var42_getElementType/2079972765 (var42) var2356)
(declare-fun cast-from-var3680-to-var42 (var3680) var42)
(declare-const null-var1370 var1370)
(declare-const null-String String)
(declare-const var1750 var1370) ; Statement: r6 := @this: org.hibernate.persister.collection.CollectionPropertyMapping 
(assert (not (= var1750 null-var1370)))
(declare-const var3430 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3430 null-String)))
(assert true)
(define-const var185 Bool (= var3430 "elements")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("elements") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("indices") 
(assert (not (= (ite var185 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3052 var3680 (memberPersister/171371646 var1750)) ; Statement: $r20 = r6.<org.hibernate.persister.collection.CollectionPropertyMapping: org.hibernate.persister.collection.QueryableCollection memberPersister> 
(define-const var2103 var2356 (var42_getElementType/2079972765 (cast-from-var3680-to-var42 var3052))) ; Statement: $r21 = interfaceinvoke $r20.<org.hibernate.persister.collection.QueryableCollection: org.hibernate.type.Type getElementType()>() 
 ; Statement: return $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {memberPersister/171371646=([org.hibernate.persister.collection.CollectionPropertyMapping], org.hibernate.persister.collection.QueryableCollection), var42_getElementType/2079972765=([org.hibernate.persister.collection.CollectionPersister], org.hibernate.type.Type), cast-from-var3680-to-var42=([org.hibernate.persister.collection.QueryableCollection], org.hibernate.persister.collection.CollectionPersister)}
; {var1370=org.hibernate.persister.collection.CollectionPropertyMapping, var1750=r6, var3430=r0, var3168=null_type, var185=$z0, var3680=org.hibernate.persister.collection.QueryableCollection, var3052=$r20, var2356=org.hibernate.type.Type, var42=org.hibernate.persister.collection.CollectionPersister, var2103=$r21}
; {org.hibernate.persister.collection.CollectionPropertyMapping=var1370, r6=var1750, r0=var3430, null_type=var3168, $z0=var185, org.hibernate.persister.collection.QueryableCollection=var3680, $r20=var3052, org.hibernate.type.Type=var2356, org.hibernate.persister.collection.CollectionPersister=var42, $r21=var2103}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r6 := @this: org.hibernate.persister.collection.CollectionPropertyMapping;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("elements");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("indices");	$r20 = r6.<org.hibernate.persister.collection.CollectionPropertyMapping: org.hibernate.persister.collection.QueryableCollection memberPersister>;	$r21 = interfaceinvoke $r20.<org.hibernate.persister.collection.QueryableCollection: org.hibernate.type.Type getElementType()>();	return $r21
;block_num 2