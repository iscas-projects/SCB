(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3657 0)
(declare-sort var2784 0)
(declare-sort var498 0)
(declare-sort var534 0)
(declare-sort var221 0)
(declare-sort var1193 0)
(declare-sort var1769 0)
(declare-sort var539 0)
(declare-sort var1772 0)
(declare-sort var3736 0)
(declare-sort var2748 0)
(declare-sort var681 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jdbcEnvironment/1774981285 (var3657) var498)
(declare-fun var498_getIdentifierHelper/-1421270953 (var498) var534)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var221_getTableName/48490405 (var221) String)
(declare-fun cast-from-var2784-to-var221 (var2784) var221)
(declare-fun var498_getDialect/-1607750029 (var498) var1193)
(declare-fun var1769_unquote/-1492467804 (String var1193) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var534_applyGlobalQuoting/-880523497 (var534 String) var539)
(declare-fun render/-241411902 (var539) String)
(declare-fun var3736_getFactory/1868753243 (var3736) var1772)
(declare-fun cast-from-var2784-to-var3736 (var2784) var3736)
(declare-fun var1772_getSqlStringGenerationContext/-1149341985 (var1772) var2748)
(declare-fun var681-init () var681)
(declare-fun catalog/1774981285 (var3657) String)
(declare-fun var539_toIdentifier/-1135726360 (String) var539)
(declare-fun schema/1774981285 (var3657) String)
(declare-fun <init>/-1697340226 (var681 var539 var539 var539) void)
(declare-fun var2748_formatWithoutDefaults/1089285304 (var2748 var681) String)
(declare-const null-var3657 var3657)
(declare-const null-var2784 var2784)
(declare-const var1517 var3657) ; Statement: r0 := @this: org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler 
(assert (not (= var1517 null-var3657)))
(declare-const var2069 var2784) ; Statement: r3 := @parameter0: org.hibernate.persister.entity.Queryable 
(assert (not (= var2069 null-var2784)))
(define-const var1046 var498 (jdbcEnvironment/1774981285 var1517)) ; Statement: $r1 = r0.<org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment jdbcEnvironment> 
(define-const var1375 var534 (var498_getIdentifierHelper/-1421270953 var1046)) ; Statement: $r11 = interfaceinvoke $r1.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>() 
(define-const var3084 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3084)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3084!1 String)
(assert (= var3084!1 ""))
(assert true)
(define-const var3378 String (append/672562846 var3084!1 "HT_")) ; Statement: $r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("HT_") 
(declare-const var3084!2 String)
(assert (= var3084!2 (str.++ var3084!1 "HT_")))
(define-const var2168 String (var221_getTableName/48490405 (cast-from-var2784-to-var221 var2069))) ; Statement: $r6 = interfaceinvoke r3.<org.hibernate.persister.entity.Queryable: java.lang.String getTableName()>() 
(define-const var3643 var498 (jdbcEnvironment/1774981285 var1517)) ; Statement: $r4 = r0.<org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment jdbcEnvironment> 
(define-const var538 var1193 (var498_getDialect/-1607750029 var3643)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.dialect.Dialect getDialect()>() 
(define-const var297 String (var1769_unquote/-1492467804 var2168 var538)) ; Statement: $r7 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unquote(java.lang.String,org.hibernate.dialect.Dialect)>($r6, $r5) 
(assert true)
(define-const var3252 String (append/672562846 var3378 var297)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3378!1 String)
(assert (= var3378!1 (str.++ var3378 var297)))
(assert true)
(define-const var3834 String (toString/-2075883882 var3252)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var651 var539 (var534_applyGlobalQuoting/-880523497 var1375 var3834)) ; Statement: $r12 = interfaceinvoke $r11.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier applyGlobalQuoting(java.lang.String)>($r10) 
(assert true)
(define-const var1584 String (render/-241411902 var651)) ; Statement: r13 = virtualinvoke $r12.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>() 
(define-const var2726 var1772 (var3736_getFactory/1868753243 (cast-from-var2784-to-var3736 var2069))) ; Statement: $r14 = interfaceinvoke r3.<org.hibernate.persister.entity.Queryable: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var2297 var2748 (var1772_getSqlStringGenerationContext/-1149341985 var2726)) ; Statement: $r21 = interfaceinvoke $r14.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.boot.model.relational.SqlStringGenerationContext getSqlStringGenerationContext()>() 
(define-const var215 var681 var681-init) ; Statement: $r15 = new org.hibernate.boot.model.relational.QualifiedTableName 
(define-const var3413 String (catalog/1774981285 var1517)) ; Statement: $r16 = r0.<org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler: java.lang.String catalog> 
(define-const var40 var539 (var539_toIdentifier/-1135726360 var3413)) ; Statement: $r20 = staticinvoke <org.hibernate.boot.model.naming.Identifier: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r16) 
(define-const var3690 String (schema/1774981285 var1517)) ; Statement: $r17 = r0.<org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler: java.lang.String schema> 
(define-const var3667 var539 (var539_toIdentifier/-1135726360 var3690)) ; Statement: $r19 = staticinvoke <org.hibernate.boot.model.naming.Identifier: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r17) 
(define-const var2514 var539 (var539_toIdentifier/-1135726360 var1584)) ; Statement: $r18 = staticinvoke <org.hibernate.boot.model.naming.Identifier: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>(r13) 
(assert true)
;(assert (<init>/-1697340226 var215 var40 var3667 var2514)) ; Statement: specialinvoke $r15.<org.hibernate.boot.model.relational.QualifiedTableName: void <init>(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r20, $r19, $r18) 

(declare-const var215!1 var681)
(declare-const var40!1 var539)
(declare-const var3667!1 var539)
(declare-const var2514!1 var539)
(define-const var3072 String (var2748_formatWithoutDefaults/1089285304 var2297 var215!1)) ; Statement: $r22 = interfaceinvoke $r21.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String formatWithoutDefaults(org.hibernate.boot.model.relational.QualifiedTableName)>($r15) 
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {jdbcEnvironment/1774981285=([org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler], org.hibernate.engine.jdbc.env.spi.JdbcEnvironment), var498_getIdentifierHelper/-1421270953=([org.hibernate.engine.jdbc.env.spi.JdbcEnvironment], org.hibernate.engine.jdbc.env.spi.IdentifierHelper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var221_getTableName/48490405=([org.hibernate.persister.entity.Joinable], java.lang.String), cast-from-var2784-to-var221=([org.hibernate.persister.entity.Queryable], org.hibernate.persister.entity.Joinable), var498_getDialect/-1607750029=([org.hibernate.engine.jdbc.env.spi.JdbcEnvironment], org.hibernate.dialect.Dialect), var1769_unquote/-1492467804=([java.lang.String, org.hibernate.dialect.Dialect], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var534_applyGlobalQuoting/-880523497=([org.hibernate.engine.jdbc.env.spi.IdentifierHelper, java.lang.String], org.hibernate.boot.model.naming.Identifier), render/-241411902=([org.hibernate.boot.model.naming.Identifier], java.lang.String), var3736_getFactory/1868753243=([org.hibernate.persister.entity.EntityPersister], org.hibernate.engine.spi.SessionFactoryImplementor), cast-from-var2784-to-var3736=([org.hibernate.persister.entity.Queryable], org.hibernate.persister.entity.EntityPersister), var1772_getSqlStringGenerationContext/-1149341985=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.boot.model.relational.SqlStringGenerationContext), var681-init=([], org.hibernate.boot.model.relational.QualifiedTableName), catalog/1774981285=([org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler], java.lang.String), var539_toIdentifier/-1135726360=([java.lang.String], org.hibernate.boot.model.naming.Identifier), schema/1774981285=([org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler], java.lang.String), <init>/-1697340226=([org.hibernate.boot.model.relational.QualifiedTableName, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier], void), var2748_formatWithoutDefaults/1089285304=([org.hibernate.boot.model.relational.SqlStringGenerationContext, org.hibernate.boot.model.relational.QualifiedTableName], java.lang.String)}
; {var3657=org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler, var1517=r0, var2784=org.hibernate.persister.entity.Queryable, var2069=r3, var498=org.hibernate.engine.jdbc.env.spi.JdbcEnvironment, var1046=$r1, var534=org.hibernate.engine.jdbc.env.spi.IdentifierHelper, var1375=$r11, var3084=$r2, var3378=$r8, var221=org.hibernate.persister.entity.Joinable, var2168=$r6, var3643=$r4, var1193=org.hibernate.dialect.Dialect, var538=$r5, var1769=org.hibernate.internal.util.StringHelper, var297=$r7, var3252=$r9, var3834=$r10, var539=org.hibernate.boot.model.naming.Identifier, var651=$r12, var1584=r13, var1772=org.hibernate.engine.spi.SessionFactoryImplementor, var3736=org.hibernate.persister.entity.EntityPersister, var2726=$r14, var2748=org.hibernate.boot.model.relational.SqlStringGenerationContext, var2297=$r21, var681=org.hibernate.boot.model.relational.QualifiedTableName, var215=$r15, var3413=$r16, var40=$r20, var3690=$r17, var3667=$r19, var2514=$r18, var3072=$r22}
; {org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler=var3657, r0=var1517, org.hibernate.persister.entity.Queryable=var2784, r3=var2069, org.hibernate.engine.jdbc.env.spi.JdbcEnvironment=var498, $r1=var1046, org.hibernate.engine.jdbc.env.spi.IdentifierHelper=var534, $r11=var1375, $r2=var3084, $r8=var3378, org.hibernate.persister.entity.Joinable=var221, $r6=var2168, $r4=var3643, org.hibernate.dialect.Dialect=var1193, $r5=var538, org.hibernate.internal.util.StringHelper=var1769, $r7=var297, $r9=var3252, $r10=var3834, org.hibernate.boot.model.naming.Identifier=var539, $r12=var651, r13=var1584, org.hibernate.engine.spi.SessionFactoryImplementor=var1772, org.hibernate.persister.entity.EntityPersister=var3736, $r14=var2726, org.hibernate.boot.model.relational.SqlStringGenerationContext=var2748, $r21=var2297, org.hibernate.boot.model.relational.QualifiedTableName=var681, $r15=var215, $r16=var3413, $r20=var40, $r17=var3690, $r19=var3667, $r18=var2514, $r22=var3072}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler;	r3 := @parameter0: org.hibernate.persister.entity.Queryable;	$r1 = r0.<org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment jdbcEnvironment>;	$r11 = interfaceinvoke $r1.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("HT_");	$r6 = interfaceinvoke r3.<org.hibernate.persister.entity.Queryable: java.lang.String getTableName()>();	$r4 = r0.<org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment jdbcEnvironment>;	$r5 = interfaceinvoke $r4.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.dialect.Dialect getDialect()>();	$r7 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unquote(java.lang.String,org.hibernate.dialect.Dialect)>($r6, $r5);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = interfaceinvoke $r11.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier applyGlobalQuoting(java.lang.String)>($r10);	r13 = virtualinvoke $r12.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>();	$r14 = interfaceinvoke r3.<org.hibernate.persister.entity.Queryable: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r21 = interfaceinvoke $r14.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.boot.model.relational.SqlStringGenerationContext getSqlStringGenerationContext()>();	$r15 = new org.hibernate.boot.model.relational.QualifiedTableName;	$r16 = r0.<org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler: java.lang.String catalog>;	$r20 = staticinvoke <org.hibernate.boot.model.naming.Identifier: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r16);	$r17 = r0.<org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler: java.lang.String schema>;	$r19 = staticinvoke <org.hibernate.boot.model.naming.Identifier: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r17);	$r18 = staticinvoke <org.hibernate.boot.model.naming.Identifier: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>(r13);	specialinvoke $r15.<org.hibernate.boot.model.relational.QualifiedTableName: void <init>(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r20, $r19, $r18);	$r22 = interfaceinvoke $r21.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String formatWithoutDefaults(org.hibernate.boot.model.relational.QualifiedTableName)>($r15);	return $r22
;block_num 1