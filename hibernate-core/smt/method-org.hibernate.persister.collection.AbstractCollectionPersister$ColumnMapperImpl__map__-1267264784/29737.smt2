(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2418 0)
(declare-sort var2067 0)
(declare-sort var2283 0)
(declare-sort var1941 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/1886720695 (var2418) var2283)
(declare-fun elementColumnNames/835828228 (var2283) (Array Int String))
(declare-fun elementFormulaTemplates/835828228 (var2283) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun arr-var1941-init () (Array Int var1941))
(declare-const null-var2418 var2418)
(declare-const null-String String)
(declare-const var2153 var2418) ; Statement: r2 := @this: org.hibernate.persister.collection.AbstractCollectionPersister$ColumnMapperImpl 
(assert (not (= var2153 null-var2418)))
(declare-const var68 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var68 null-String)))
(define-const var1256 String "$element$") ; Statement: $r1 = "$element$" 
(assert true)
(define-const var952 Bool (= var1256 var68)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister$ColumnMapperImpl: org.hibernate.persister.collection.AbstractCollectionPersister this$0> 
(assert (not (= (ite var952 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1102 var2283 (this$0/1886720695 var2153)) ; Statement: $r11 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister$ColumnMapperImpl: org.hibernate.persister.collection.AbstractCollectionPersister this$0> 
(define-const var2324 (Array Int String) (elementColumnNames/835828228 var1102)) ; Statement: r14 = $r11.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String[] elementColumnNames> 
(define-const var2048 var2283 (this$0/1886720695 var2153)) ; Statement: $r12 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister$ColumnMapperImpl: org.hibernate.persister.collection.AbstractCollectionPersister this$0> 
(define-const var1731 (Array Int String) (elementFormulaTemplates/835828228 var2048)) ; Statement: r15 = $r12.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String[] elementFormulaTemplates> 
 ; Statement: goto [?= $i1 = lengthof r14] 
(assert true) ; Non Conditional
(define-const var1383 Int (getLength-Arr-String-1 var2324)) ; Statement: $i1 = lengthof r14 
(define-const var1828 (Array Int var1941) arr-var1941-init) ; Statement: $r13 = newarray (org.hibernate.sql.ordering.antlr.SqlValueReference)[$i1] 
(define-const var2141 Int 0) ; Statement: i3 = 0 
(define-const var2472 (Array Int String) var2324) ; Statement: r6 = r14 
(define-const var2882 Int (getLength-Arr-String-1 var2324)) ; Statement: $i2 = lengthof r14 
(define-const var3295 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= $i2 goto return $r13 
(assert (>= var3295 var2882)) ; Cond: i4 >= $i2 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/1886720695=([org.hibernate.persister.collection.AbstractCollectionPersister$ColumnMapperImpl], org.hibernate.persister.collection.AbstractCollectionPersister), elementColumnNames/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], java.lang.String[]), elementFormulaTemplates/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), arr-var1941-init=([], org.hibernate.sql.ordering.antlr.SqlValueReference[])}
; {var2418=org.hibernate.persister.collection.AbstractCollectionPersister$ColumnMapperImpl, var2153=r2, var68=r0, var2067=null_type, var1256=$r1, var952=$z0, var2283=org.hibernate.persister.collection.AbstractCollectionPersister, var1102=$r11, var2324=r14, var2048=$r12, var1731=r15, var1383=$i1, var1941=org.hibernate.sql.ordering.antlr.SqlValueReference, var1828=$r13, var2141=i3, var2472=r6, var2882=$i2, var3295=i4}
; {org.hibernate.persister.collection.AbstractCollectionPersister$ColumnMapperImpl=var2418, r2=var2153, r0=var68, null_type=var2067, $r1=var1256, $z0=var952, org.hibernate.persister.collection.AbstractCollectionPersister=var2283, $r11=var1102, r14=var2324, $r12=var2048, r15=var1731, $i1=var1383, org.hibernate.sql.ordering.antlr.SqlValueReference=var1941, $r13=var1828, i3=var2141, r6=var2472, $i2=var2882, i4=var3295}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.hibernate.persister.collection.AbstractCollectionPersister$ColumnMapperImpl;	r0 := @parameter0: java.lang.String;	$r1 = "$element$";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r3 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister$ColumnMapperImpl: org.hibernate.persister.collection.AbstractCollectionPersister this$0>;	$r11 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister$ColumnMapperImpl: org.hibernate.persister.collection.AbstractCollectionPersister this$0>;	r14 = $r11.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String[] elementColumnNames>;	$r12 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister$ColumnMapperImpl: org.hibernate.persister.collection.AbstractCollectionPersister this$0>;	r15 = $r12.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String[] elementFormulaTemplates>;	goto [?= $i1 = lengthof r14];	$i1 = lengthof r14;	$r13 = newarray (org.hibernate.sql.ordering.antlr.SqlValueReference)[$i1];	i3 = 0;	r6 = r14;	$i2 = lengthof r14;	i4 = 0;	if i4 >= $i2 goto return $r13;	return $r13
;block_num 5