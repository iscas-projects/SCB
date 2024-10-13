(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1786 0)
(declare-sort var2883 0)
(declare-sort var1281 0)
(declare-sort var3970 0)
(declare-sort var548 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/1886720695 (var1786) var1281)
(declare-fun var1281_access$100/-956881769 (var1281) var3970)
(declare-fun var3970_toColumns/-1345341354 (var3970 String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var1281_access$200/-1015772126 (var1281 String Int) (Array Int String))
(declare-fun arr-var548-init () (Array Int var548))
(declare-const null-var1786 var1786)
(declare-const null-String String)
(declare-const var513 var1786) ; Statement: r2 := @this: org.hibernate.persister.collection.AbstractCollectionPersister$ColumnMapperImpl 
(assert (not (= var513 null-var1786)))
(declare-const var3416 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3416 null-String)))
(define-const var464 String "$element$") ; Statement: $r1 = "$element$" 
(assert true)
(define-const var3007 Bool (= var464 var3416)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister$ColumnMapperImpl: org.hibernate.persister.collection.AbstractCollectionPersister this$0> 
(assert (= (ite var3007 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3289 var1281 (this$0/1886720695 var513)) ; Statement: $r3 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister$ColumnMapperImpl: org.hibernate.persister.collection.AbstractCollectionPersister this$0> 
(define-const var1984 var3970 (var1281_access$100/-956881769 var3289)) ; Statement: $r4 = staticinvoke <org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.persister.entity.PropertyMapping access$100(org.hibernate.persister.collection.AbstractCollectionPersister)>($r3) 
(define-const var3198 (Array Int String) (var3970_toColumns/-1345341354 var1984 var3416)) ; Statement: r14 = interfaceinvoke $r4.<org.hibernate.persister.entity.PropertyMapping: java.lang.String[] toColumns(java.lang.String)>(r0) 
(define-const var1661 var1281 (this$0/1886720695 var513)) ; Statement: $r5 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister$ColumnMapperImpl: org.hibernate.persister.collection.AbstractCollectionPersister this$0> 
(define-const var603 Int (getLength-Arr-String-1 var3198)) ; Statement: $i0 = lengthof r14 
(define-const var2276 (Array Int String) (var1281_access$200/-1015772126 var1661 var3416 var603)) ; Statement: r15 = staticinvoke <org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String[] access$200(org.hibernate.persister.collection.AbstractCollectionPersister,java.lang.String,int)>($r5, r0, $i0) 
(assert true) ; Non Conditional
(define-const var583 Int (getLength-Arr-String-1 var3198)) ; Statement: $i1 = lengthof r14 
(define-const var3218 (Array Int var548) arr-var548-init) ; Statement: $r13 = newarray (org.hibernate.sql.ordering.antlr.SqlValueReference)[$i1] 
(define-const var1455 Int 0) ; Statement: i3 = 0 
(define-const var574 (Array Int String) var3198) ; Statement: r6 = r14 
(define-const var2040 Int (getLength-Arr-String-1 var3198)) ; Statement: $i2 = lengthof r14 
(define-const var404 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= $i2 goto return $r13 
(assert (>= var404 var2040)) ; Cond: i4 >= $i2 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/1886720695=([org.hibernate.persister.collection.AbstractCollectionPersister$ColumnMapperImpl], org.hibernate.persister.collection.AbstractCollectionPersister), var1281_access$100/-956881769=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.persister.entity.PropertyMapping), var3970_toColumns/-1345341354=([org.hibernate.persister.entity.PropertyMapping, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var1281_access$200/-1015772126=([org.hibernate.persister.collection.AbstractCollectionPersister, java.lang.String, int], java.lang.String[]), arr-var548-init=([], org.hibernate.sql.ordering.antlr.SqlValueReference[])}
; {var1786=org.hibernate.persister.collection.AbstractCollectionPersister$ColumnMapperImpl, var513=r2, var3416=r0, var2883=null_type, var464=$r1, var3007=$z0, var1281=org.hibernate.persister.collection.AbstractCollectionPersister, var3289=$r3, var3970=org.hibernate.persister.entity.PropertyMapping, var1984=$r4, var3198=r14, var1661=$r5, var603=$i0, var2276=r15, var583=$i1, var548=org.hibernate.sql.ordering.antlr.SqlValueReference, var3218=$r13, var1455=i3, var574=r6, var2040=$i2, var404=i4}
; {org.hibernate.persister.collection.AbstractCollectionPersister$ColumnMapperImpl=var1786, r2=var513, r0=var3416, null_type=var2883, $r1=var464, $z0=var3007, org.hibernate.persister.collection.AbstractCollectionPersister=var1281, $r3=var3289, org.hibernate.persister.entity.PropertyMapping=var3970, $r4=var1984, r14=var3198, $r5=var1661, $i0=var603, r15=var2276, $i1=var583, org.hibernate.sql.ordering.antlr.SqlValueReference=var548, $r13=var3218, i3=var1455, r6=var574, $i2=var2040, i4=var404}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.hibernate.persister.collection.AbstractCollectionPersister$ColumnMapperImpl;	r0 := @parameter0: java.lang.String;	$r1 = "$element$";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r3 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister$ColumnMapperImpl: org.hibernate.persister.collection.AbstractCollectionPersister this$0>;	$r3 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister$ColumnMapperImpl: org.hibernate.persister.collection.AbstractCollectionPersister this$0>;	$r4 = staticinvoke <org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.persister.entity.PropertyMapping access$100(org.hibernate.persister.collection.AbstractCollectionPersister)>($r3);	r14 = interfaceinvoke $r4.<org.hibernate.persister.entity.PropertyMapping: java.lang.String[] toColumns(java.lang.String)>(r0);	$r5 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister$ColumnMapperImpl: org.hibernate.persister.collection.AbstractCollectionPersister this$0>;	$i0 = lengthof r14;	r15 = staticinvoke <org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String[] access$200(org.hibernate.persister.collection.AbstractCollectionPersister,java.lang.String,int)>($r5, r0, $i0);	$i1 = lengthof r14;	$r13 = newarray (org.hibernate.sql.ordering.antlr.SqlValueReference)[$i1];	i3 = 0;	r6 = r14;	$i2 = lengthof r14;	i4 = 0;	if i4 >= $i2 goto return $r13;	return $r13
;block_num 5