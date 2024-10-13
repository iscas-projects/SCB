(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1077 0)
(declare-sort var2664 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun indexColumnNames/835828228 (var1077) (Array Int String))
(declare-fun indexFormulaTemplates/835828228 (var1077) (Array Int String))
(declare-fun var1077_qualify/1028875144 (String (Array Int String) (Array Int String)) (Array Int String))
(declare-const null-var1077 var1077)
(declare-const null-String String)
(declare-const var469 var1077) ; Statement: r2 := @this: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var469 null-var1077)))
(declare-const var3522 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3522 null-String)))
(declare-const var611 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var611 null-String)))
(define-const var3628 String "index") ; Statement: $r1 = "index" 
(assert true)
(define-const var291 Bool (= var3628 var611)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r4 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.persister.entity.PropertyMapping elementPropertyMapping> 
(assert (not (= (ite var291 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var400 (Array Int String) (indexColumnNames/835828228 var469)) ; Statement: $r7 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String[] indexColumnNames> 
(define-const var1057 (Array Int String) (indexFormulaTemplates/835828228 var469)) ; Statement: $r6 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String[] indexFormulaTemplates> 
(define-const var1802 (Array Int String) (var1077_qualify/1028875144 var3522 var400 var1057)) ; Statement: $r8 = staticinvoke <org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String[] qualify(java.lang.String,java.lang.String[],java.lang.String[])>(r3, $r7, $r6) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {indexColumnNames/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], java.lang.String[]), indexFormulaTemplates/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], java.lang.String[]), var1077_qualify/1028875144=([java.lang.String, java.lang.String[], java.lang.String[]], java.lang.String[])}
; {var1077=org.hibernate.persister.collection.AbstractCollectionPersister, var469=r2, var3522=r3, var2664=null_type, var611=r0, var3628=$r1, var291=$z0, var400=$r7, var1057=$r6, var1802=$r8}
; {org.hibernate.persister.collection.AbstractCollectionPersister=var1077, r2=var469, r3=var3522, null_type=var2664, r0=var611, $r1=var3628, $z0=var291, $r7=var400, $r6=var1057, $r8=var1802}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.hibernate.persister.collection.AbstractCollectionPersister;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$r1 = "index";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r4 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.persister.entity.PropertyMapping elementPropertyMapping>;	$r7 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String[] indexColumnNames>;	$r6 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String[] indexFormulaTemplates>;	$r8 = staticinvoke <org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String[] qualify(java.lang.String,java.lang.String[],java.lang.String[])>(r3, $r7, $r6);	return $r8
;block_num 2