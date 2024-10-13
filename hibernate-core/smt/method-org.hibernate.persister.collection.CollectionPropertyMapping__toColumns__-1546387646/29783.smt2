(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2962 0)
(declare-sort var2364 0)
(declare-sort var1121 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun memberPersister/171371646 (var2962) var1121)
(declare-fun var1121_getElementColumnNames/-1258664598 (var1121 String) (Array Int String))
(declare-const null-var2962 var2962)
(declare-const null-String String)
(declare-const var2248 var2962) ; Statement: r6 := @this: org.hibernate.persister.collection.CollectionPropertyMapping 
(assert (not (= var2248 null-var2962)))
(declare-const var840 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var840 null-String)))
(declare-const var3577 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3577 null-String)))
(assert true)
(define-const var145 Bool (= var3577 "elements")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("elements") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("indices") 
(assert (not (= (ite var145 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var609 var1121 (memberPersister/171371646 var2248)) ; Statement: $r62 = r6.<org.hibernate.persister.collection.CollectionPropertyMapping: org.hibernate.persister.collection.QueryableCollection memberPersister> 
(define-const var2932 (Array Int String) (var1121_getElementColumnNames/-1258664598 var609 var840)) ; Statement: $r63 = interfaceinvoke $r62.<org.hibernate.persister.collection.QueryableCollection: java.lang.String[] getElementColumnNames(java.lang.String)>(r7) 
 ; Statement: return $r63 
(check-sat)
(get-model)
(get-unsat-core)
; {memberPersister/171371646=([org.hibernate.persister.collection.CollectionPropertyMapping], org.hibernate.persister.collection.QueryableCollection), var1121_getElementColumnNames/-1258664598=([org.hibernate.persister.collection.QueryableCollection, java.lang.String], java.lang.String[])}
; {var2962=org.hibernate.persister.collection.CollectionPropertyMapping, var2248=r6, var840=r7, var2364=null_type, var3577=r0, var145=$z0, var1121=org.hibernate.persister.collection.QueryableCollection, var609=$r62, var2932=$r63}
; {org.hibernate.persister.collection.CollectionPropertyMapping=var2962, r6=var2248, r7=var840, null_type=var2364, r0=var3577, $z0=var145, org.hibernate.persister.collection.QueryableCollection=var1121, $r62=var609, $r63=var2932}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r6 := @this: org.hibernate.persister.collection.CollectionPropertyMapping;	r7 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("elements");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("indices");	$r62 = r6.<org.hibernate.persister.collection.CollectionPropertyMapping: org.hibernate.persister.collection.QueryableCollection memberPersister>;	$r63 = interfaceinvoke $r62.<org.hibernate.persister.collection.QueryableCollection: java.lang.String[] getElementColumnNames(java.lang.String)>(r7);	return $r63
;block_num 2