(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1312 0)
(declare-sort var3026 0)
(declare-sort var3395 0)
(declare-sort var3203 0)
(declare-sort var2464 0)
(declare-sort var1250 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSubselect/871989422 (var3026) String)
(declare-fun factory/824079012 (var1312) var3203)
(declare-fun var3203_getSqlStringGenerationContext/-1149341985 (var3203) var2464)
(declare-fun getQualifiedTableName/-853736433 (var3026) var1250)
(declare-fun var2464_format/1204537082 (var2464 var1250) String)
(declare-const null-var1312 var1312)
(declare-const null-var3026 var3026)
(declare-const null-String String)
(declare-const var3772 var1312) ; Statement: r2 := @this: org.hibernate.persister.entity.AbstractEntityPersister 
(assert (not (= var3772 null-var1312)))
(declare-const var1710 var3026) ; Statement: r0 := @parameter0: org.hibernate.mapping.Table 
(assert (not (= var1710 null-var3026)))
(assert true)
(define-const var909 String (getSubselect/871989422 var1710)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.mapping.Table: java.lang.String getSubselect()>() 
 ; Statement: if $r1 == null goto $r3 = r2.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor factory> 
(assert (= var909 null-String)) ; Cond: $r1 == null 
(define-const var2679 var3203 (factory/824079012 var3772)) ; Statement: $r3 = r2.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor factory> 
(define-const var2296 var2464 (var3203_getSqlStringGenerationContext/-1149341985 var2679)) ; Statement: $r5 = interfaceinvoke $r3.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.boot.model.relational.SqlStringGenerationContext getSqlStringGenerationContext()>() 
(assert true)
(define-const var3784 var1250 (getQualifiedTableName/-853736433 var1710)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.mapping.Table: org.hibernate.boot.model.relational.QualifiedTableName getQualifiedTableName()>() 
(define-const var231 String (var2464_format/1204537082 var2296 var3784)) ; Statement: $r6 = interfaceinvoke $r5.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String format(org.hibernate.boot.model.relational.QualifiedTableName)>($r4) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getSubselect/871989422=([org.hibernate.mapping.Table], java.lang.String), factory/824079012=([org.hibernate.persister.entity.AbstractEntityPersister], org.hibernate.engine.spi.SessionFactoryImplementor), var3203_getSqlStringGenerationContext/-1149341985=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.boot.model.relational.SqlStringGenerationContext), getQualifiedTableName/-853736433=([org.hibernate.mapping.Table], org.hibernate.boot.model.relational.QualifiedTableName), var2464_format/1204537082=([org.hibernate.boot.model.relational.SqlStringGenerationContext, org.hibernate.boot.model.relational.QualifiedTableName], java.lang.String)}
; {var1312=org.hibernate.persister.entity.AbstractEntityPersister, var3772=r2, var3026=org.hibernate.mapping.Table, var1710=r0, var909=$r1, var3395=null_type, var3203=org.hibernate.engine.spi.SessionFactoryImplementor, var2679=$r3, var2464=org.hibernate.boot.model.relational.SqlStringGenerationContext, var2296=$r5, var1250=org.hibernate.boot.model.relational.QualifiedTableName, var3784=$r4, var231=$r6}
; {org.hibernate.persister.entity.AbstractEntityPersister=var1312, r2=var3772, org.hibernate.mapping.Table=var3026, r0=var1710, $r1=var909, null_type=var3395, org.hibernate.engine.spi.SessionFactoryImplementor=var3203, $r3=var2679, org.hibernate.boot.model.relational.SqlStringGenerationContext=var2464, $r5=var2296, org.hibernate.boot.model.relational.QualifiedTableName=var1250, $r4=var3784, $r6=var231}
;seq 
;cnt {}
;stmts r2 := @this: org.hibernate.persister.entity.AbstractEntityPersister;	r0 := @parameter0: org.hibernate.mapping.Table;	$r1 = virtualinvoke r0.<org.hibernate.mapping.Table: java.lang.String getSubselect()>();	if $r1 == null goto $r3 = r2.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor factory>;	$r3 = r2.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor factory>;	$r5 = interfaceinvoke $r3.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.boot.model.relational.SqlStringGenerationContext getSqlStringGenerationContext()>();	$r4 = virtualinvoke r0.<org.hibernate.mapping.Table: org.hibernate.boot.model.relational.QualifiedTableName getQualifiedTableName()>();	$r6 = interfaceinvoke $r5.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String format(org.hibernate.boot.model.relational.QualifiedTableName)>($r4);	return $r6
;block_num 2