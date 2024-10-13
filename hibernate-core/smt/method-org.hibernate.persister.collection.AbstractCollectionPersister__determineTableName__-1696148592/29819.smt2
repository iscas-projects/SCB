(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3897 0)
(declare-sort var3811 0)
(declare-sort var1718 0)
(declare-sort var3593 0)
(declare-sort var303 0)
(declare-sort var2217 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSubselect/871989422 (var3811) String)
(declare-fun factory/835828228 (var3897) var3593)
(declare-fun var3593_getSqlStringGenerationContext/-1149341985 (var3593) var303)
(declare-fun getQualifiedTableName/-853736433 (var3811) var2217)
(declare-fun var303_format/1204537082 (var303 var2217) String)
(declare-const null-var3897 var3897)
(declare-const null-var3811 var3811)
(declare-const null-String String)
(declare-const var2572 var3897) ; Statement: r2 := @this: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var2572 null-var3897)))
(declare-const var672 var3811) ; Statement: r0 := @parameter0: org.hibernate.mapping.Table 
(assert (not (= var672 null-var3811)))
(assert true)
(define-const var2171 String (getSubselect/871989422 var672)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.mapping.Table: java.lang.String getSubselect()>() 
 ; Statement: if $r1 == null goto $r3 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.engine.spi.SessionFactoryImplementor factory> 
(assert (= var2171 null-String)) ; Cond: $r1 == null 
(define-const var3108 var3593 (factory/835828228 var2572)) ; Statement: $r3 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.engine.spi.SessionFactoryImplementor factory> 
(define-const var3267 var303 (var3593_getSqlStringGenerationContext/-1149341985 var3108)) ; Statement: $r5 = interfaceinvoke $r3.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.boot.model.relational.SqlStringGenerationContext getSqlStringGenerationContext()>() 
(assert true)
(define-const var16 var2217 (getQualifiedTableName/-853736433 var672)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.mapping.Table: org.hibernate.boot.model.relational.QualifiedTableName getQualifiedTableName()>() 
(define-const var1517 String (var303_format/1204537082 var3267 var16)) ; Statement: $r6 = interfaceinvoke $r5.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String format(org.hibernate.boot.model.relational.QualifiedTableName)>($r4) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getSubselect/871989422=([org.hibernate.mapping.Table], java.lang.String), factory/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.engine.spi.SessionFactoryImplementor), var3593_getSqlStringGenerationContext/-1149341985=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.boot.model.relational.SqlStringGenerationContext), getQualifiedTableName/-853736433=([org.hibernate.mapping.Table], org.hibernate.boot.model.relational.QualifiedTableName), var303_format/1204537082=([org.hibernate.boot.model.relational.SqlStringGenerationContext, org.hibernate.boot.model.relational.QualifiedTableName], java.lang.String)}
; {var3897=org.hibernate.persister.collection.AbstractCollectionPersister, var2572=r2, var3811=org.hibernate.mapping.Table, var672=r0, var2171=$r1, var1718=null_type, var3593=org.hibernate.engine.spi.SessionFactoryImplementor, var3108=$r3, var303=org.hibernate.boot.model.relational.SqlStringGenerationContext, var3267=$r5, var2217=org.hibernate.boot.model.relational.QualifiedTableName, var16=$r4, var1517=$r6}
; {org.hibernate.persister.collection.AbstractCollectionPersister=var3897, r2=var2572, org.hibernate.mapping.Table=var3811, r0=var672, $r1=var2171, null_type=var1718, org.hibernate.engine.spi.SessionFactoryImplementor=var3593, $r3=var3108, org.hibernate.boot.model.relational.SqlStringGenerationContext=var303, $r5=var3267, org.hibernate.boot.model.relational.QualifiedTableName=var2217, $r4=var16, $r6=var1517}
;seq 
;cnt {}
;stmts r2 := @this: org.hibernate.persister.collection.AbstractCollectionPersister;	r0 := @parameter0: org.hibernate.mapping.Table;	$r1 = virtualinvoke r0.<org.hibernate.mapping.Table: java.lang.String getSubselect()>();	if $r1 == null goto $r3 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.engine.spi.SessionFactoryImplementor factory>;	$r3 = r2.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.engine.spi.SessionFactoryImplementor factory>;	$r5 = interfaceinvoke $r3.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.boot.model.relational.SqlStringGenerationContext getSqlStringGenerationContext()>();	$r4 = virtualinvoke r0.<org.hibernate.mapping.Table: org.hibernate.boot.model.relational.QualifiedTableName getQualifiedTableName()>();	$r6 = interfaceinvoke $r5.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String format(org.hibernate.boot.model.relational.QualifiedTableName)>($r4);	return $r6
;block_num 2