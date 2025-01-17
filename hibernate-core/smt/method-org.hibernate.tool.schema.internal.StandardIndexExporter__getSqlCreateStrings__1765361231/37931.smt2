(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var571 0)
(declare-sort var860 0)
(declare-sort var1132 0)
(declare-sort var1718 0)
(declare-sort var649 0)
(declare-sort var2112 0)
(declare-sort var1414 0)
(declare-sort var3598 0)
(declare-sort var1634 0)
(declare-sort var2701 0)
(declare-sort var1027 0)
(declare-sort var2036 0)
(declare-sort var2654 0)
(declare-sort var1780 0)
(declare-sort var726 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1132_getDatabase/193995574 (var1132) var649)
(declare-fun getJdbcEnvironment/-2057911686 (var649) var2112)
(declare-fun getTable/-2097669385 (var860) var1414)
(declare-fun getQualifiedTableName/-853736433 (var1414) var3598)
(declare-fun var1718_format/1204537082 (var1718 var3598) String)
(declare-fun dialect/235358210 (var571) var1634)
(declare-fun qualifyIndexName/1384883955 (var1634) Bool)
(declare-fun var2701-init () var2701)
(declare-fun getCatalogName/1959036760 (var2036) var1027)
(declare-fun cast-from-var3598-to-var2036 (var3598) var2036)
(declare-fun getSchemaName/569056114 (var2036) var1027)
(declare-fun var2112_getIdentifierHelper/-1421270953 (var2112) var2654)
(declare-fun getQuotedName/1896636041 (var860 var1634) String)
(declare-fun var2654_toIdentifier/169392155 (var2654 String) var1027)
(declare-fun <init>/-438001224 (var2701 var1027 var1027 var1027) void)
(declare-fun var1718_format/543602932 (var1718 var1780) String)
(declare-fun cast-from-var2701-to-var1780 (var2701) var1780)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getColumnIterator/504997087 (var860) Iterator)
(declare-fun getColumnOrderMap/-630108323 (var860) var726)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun arr-String-init () (Array Int String))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var571 var571)
(declare-const null-var860 var860)
(declare-const null-var1132 var1132)
(declare-const null-var1718 var1718)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1363 var571) ; Statement: r8 := @this: org.hibernate.tool.schema.internal.StandardIndexExporter 
(assert (not (= var1363 null-var571)))
(declare-const var1061 var860) ; Statement: r4 := @parameter0: org.hibernate.mapping.Index 
(assert (not (= var1061 null-var860)))
(declare-const var788 var1132) ; Statement: r0 := @parameter1: org.hibernate.boot.Metadata 
(assert (not (= var788 null-var1132)))
(declare-const var3913 var1718) ; Statement: r3 := @parameter2: org.hibernate.boot.model.relational.SqlStringGenerationContext 
(assert (not (= var3913 null-var1718)))
(define-const var3910 var649 (var1132_getDatabase/193995574 var788)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.boot.Metadata: org.hibernate.boot.model.relational.Database getDatabase()>() 
(assert true)
(define-const var2064 var2112 (getJdbcEnvironment/-2057911686 var3910)) ; Statement: r2 = virtualinvoke $r1.<org.hibernate.boot.model.relational.Database: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment getJdbcEnvironment()>() 
(assert true)
(define-const var272 var1414 (getTable/-2097669385 var1061)) ; Statement: $r5 = virtualinvoke r4.<org.hibernate.mapping.Index: org.hibernate.mapping.Table getTable()>() 
(assert true)
(define-const var1840 var3598 (getQualifiedTableName/-853736433 var272)) ; Statement: $r6 = virtualinvoke $r5.<org.hibernate.mapping.Table: org.hibernate.boot.model.relational.QualifiedTableName getQualifiedTableName()>() 
(define-const var850 String (var1718_format/1204537082 var3913 var1840)) ; Statement: r7 = interfaceinvoke r3.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String format(org.hibernate.boot.model.relational.QualifiedTableName)>($r6) 
(define-const var1056 var1634 (dialect/235358210 var1363)) ; Statement: $r9 = r8.<org.hibernate.tool.schema.internal.StandardIndexExporter: org.hibernate.dialect.Dialect dialect> 
(assert true)
(define-const var2230 Bool (qualifyIndexName/1384883955 var1056)) ; Statement: $z0 = virtualinvoke $r9.<org.hibernate.dialect.Dialect: boolean qualifyIndexName()>() 
 ; Statement: if $z0 == 0 goto r38 = virtualinvoke r4.<org.hibernate.mapping.Index: java.lang.String getName()>() 
(assert (not (= (ite var2230 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2705 var2701 var2701-init) ; Statement: $r24 = new org.hibernate.boot.model.relational.QualifiedNameImpl 
(assert true)
(define-const var1443 var1414 (getTable/-2097669385 var1061)) ; Statement: $r25 = virtualinvoke r4.<org.hibernate.mapping.Index: org.hibernate.mapping.Table getTable()>() 
(assert true)
(define-const var3631 var3598 (getQualifiedTableName/-853736433 var1443)) ; Statement: $r26 = virtualinvoke $r25.<org.hibernate.mapping.Table: org.hibernate.boot.model.relational.QualifiedTableName getQualifiedTableName()>() 
(assert true)
(define-const var1981 var1027 (getCatalogName/1959036760 (cast-from-var3598-to-var2036 var3631))) ; Statement: $r34 = virtualinvoke $r26.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getCatalogName()>() 
(assert true)
(define-const var2635 var1414 (getTable/-2097669385 var1061)) ; Statement: $r27 = virtualinvoke r4.<org.hibernate.mapping.Index: org.hibernate.mapping.Table getTable()>() 
(assert true)
(define-const var3953 var3598 (getQualifiedTableName/-853736433 var2635)) ; Statement: $r28 = virtualinvoke $r27.<org.hibernate.mapping.Table: org.hibernate.boot.model.relational.QualifiedTableName getQualifiedTableName()>() 
(assert true)
(define-const var2390 var1027 (getSchemaName/569056114 (cast-from-var3598-to-var2036 var3953))) ; Statement: $r33 = virtualinvoke $r28.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getSchemaName()>() 
(define-const var26 var2654 (var2112_getIdentifierHelper/-1421270953 var2064)) ; Statement: $r31 = interfaceinvoke r2.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>() 
(define-const var2613 var1634 (dialect/235358210 var1363)) ; Statement: $r29 = r8.<org.hibernate.tool.schema.internal.StandardIndexExporter: org.hibernate.dialect.Dialect dialect> 
(assert true)
(define-const var3855 String (getQuotedName/1896636041 var1061 var2613)) ; Statement: $r30 = virtualinvoke r4.<org.hibernate.mapping.Index: java.lang.String getQuotedName(org.hibernate.dialect.Dialect)>($r29) 
(define-const var2653 var1027 (var2654_toIdentifier/169392155 var26 var3855)) ; Statement: $r32 = interfaceinvoke $r31.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r30) 
(assert true)
;(assert (<init>/-438001224 var2705 var1981 var2390 var2653)) ; Statement: specialinvoke $r24.<org.hibernate.boot.model.relational.QualifiedNameImpl: void <init>(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r34, $r33, $r32) 

(declare-const var2705!1 var2701)
(declare-const var1981!1 var1027)
(declare-const var2390!1 var1027)
(declare-const var2653!1 var1027)
(define-const var3589 String (var1718_format/543602932 var3913 (cast-from-var2701-to-var1780 var2705!1))) ; Statement: r38 = interfaceinvoke r3.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String format(org.hibernate.boot.model.relational.QualifiedName)>($r24) 
 ; Statement: goto [?= $r10 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var2150 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2150)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2150!1 String)
(assert (= var2150!1 ""))
(assert true)
(define-const var692 String (append/672562846 var2150!1 "create index ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create index ") 
(declare-const var2150!2 String)
(assert (= var2150!2 (str.++ var2150!1 "create index ")))
(assert true)
(define-const var3013 String (append/672562846 var692 var3589)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r38) 
(declare-const var692!1 String)
(assert (= var692!1 (str.++ var692 var3589)))
(assert true)
(define-const var3449 String (append/672562846 var3013 " on ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on ") 
(declare-const var3013!1 String)
(assert (= var3013!1 (str.++ var3013 " on ")))
(assert true)
(define-const var3835 String (append/672562846 var3449 var850)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var3449!1 String)
(assert (= var3449!1 (str.++ var3449 var850)))
(assert true)
(define-const var2769 String (append/672562846 var3835 " (")) ; Statement: $r35 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var3835!1 String)
(assert (= var3835!1 (str.++ var3835 " (")))
(define-const var3867 Bool (ite (= 1 1) true false)) ; Statement: z2 = 1 
(assert true)
(define-const var698 Iterator (getColumnIterator/504997087 var1061)) ; Statement: $r36 = virtualinvoke r4.<org.hibernate.mapping.Index: java.util.Iterator getColumnIterator()>() 
(assert true)
(define-const var3680 var726 (getColumnOrderMap/-630108323 var1061)) ; Statement: $r37 = virtualinvoke r4.<org.hibernate.mapping.Index: java.util.Map getColumnOrderMap()>() 
(assert true) ; Non Conditional
(define-const var1497 Bool (Iterator_hasNext/-1669924200 var698)) ; Statement: $z3 = interfaceinvoke $r36.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z3 == 0 goto virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(assert (= (ite var1497 1 0) 0)) ; Cond: $z3 == 0 
(assert true)
;(assert (append/672562846 var2769 ")")) ; Statement: virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2769!1 String)
(assert (= var2769!1 (str.++ var2769 ")")))
(define-const var2233 (Array Int String) arr-String-init) ; Statement: $r15 = newarray (java.lang.String)[1] 
(assert true)
(define-const var2556 String (toString/-2075883882 var2769!1)) ; Statement: $r16 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2233!1 (Array Int String))
(assert (not (= var2233!1 null-__Array__Int__String__)))
(assert (= (select var2233!1 0) var2556)) ; Statement: $r15[0] = $r16 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var1132_getDatabase/193995574=([org.hibernate.boot.Metadata], org.hibernate.boot.model.relational.Database), getJdbcEnvironment/-2057911686=([org.hibernate.boot.model.relational.Database], org.hibernate.engine.jdbc.env.spi.JdbcEnvironment), getTable/-2097669385=([org.hibernate.mapping.Index], org.hibernate.mapping.Table), getQualifiedTableName/-853736433=([org.hibernate.mapping.Table], org.hibernate.boot.model.relational.QualifiedTableName), var1718_format/1204537082=([org.hibernate.boot.model.relational.SqlStringGenerationContext, org.hibernate.boot.model.relational.QualifiedTableName], java.lang.String), dialect/235358210=([org.hibernate.tool.schema.internal.StandardIndexExporter], org.hibernate.dialect.Dialect), qualifyIndexName/1384883955=([org.hibernate.dialect.Dialect], boolean), var2701-init=([], org.hibernate.boot.model.relational.QualifiedNameImpl), getCatalogName/1959036760=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), cast-from-var3598-to-var2036=([org.hibernate.boot.model.relational.QualifiedTableName], org.hibernate.boot.model.relational.QualifiedNameParser$NameParts), getSchemaName/569056114=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), var2112_getIdentifierHelper/-1421270953=([org.hibernate.engine.jdbc.env.spi.JdbcEnvironment], org.hibernate.engine.jdbc.env.spi.IdentifierHelper), getQuotedName/1896636041=([org.hibernate.mapping.Index, org.hibernate.dialect.Dialect], java.lang.String), var2654_toIdentifier/169392155=([org.hibernate.engine.jdbc.env.spi.IdentifierHelper, java.lang.String], org.hibernate.boot.model.naming.Identifier), <init>/-438001224=([org.hibernate.boot.model.relational.QualifiedNameImpl, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier], void), var1718_format/543602932=([org.hibernate.boot.model.relational.SqlStringGenerationContext, org.hibernate.boot.model.relational.QualifiedName], java.lang.String), cast-from-var2701-to-var1780=([org.hibernate.boot.model.relational.QualifiedNameImpl], org.hibernate.boot.model.relational.QualifiedName), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getColumnIterator/504997087=([org.hibernate.mapping.Index], java.util.Iterator), getColumnOrderMap/-630108323=([org.hibernate.mapping.Index], java.util.Map), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), arr-String-init=([], java.lang.String[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var571=org.hibernate.tool.schema.internal.StandardIndexExporter, var1363=r8, var860=org.hibernate.mapping.Index, var1061=r4, var1132=org.hibernate.boot.Metadata, var788=r0, var1718=org.hibernate.boot.model.relational.SqlStringGenerationContext, var3913=r3, var649=org.hibernate.boot.model.relational.Database, var3910=$r1, var2112=org.hibernate.engine.jdbc.env.spi.JdbcEnvironment, var2064=r2, var1414=org.hibernate.mapping.Table, var272=$r5, var3598=org.hibernate.boot.model.relational.QualifiedTableName, var1840=$r6, var850=r7, var1634=org.hibernate.dialect.Dialect, var1056=$r9, var2230=$z0, var2701=org.hibernate.boot.model.relational.QualifiedNameImpl, var2705=$r24, var1443=$r25, var3631=$r26, var1027=org.hibernate.boot.model.naming.Identifier, var2036=org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, var1981=$r34, var2635=$r27, var3953=$r28, var2390=$r33, var2654=org.hibernate.engine.jdbc.env.spi.IdentifierHelper, var26=$r31, var2613=$r29, var3855=$r30, var2653=$r32, var1780=org.hibernate.boot.model.relational.QualifiedName, var3589=r38, var2150=$r10, var692=$r11, var3013=$r12, var3449=$r13, var3835=$r14, var2769=$r35, var3867=z2, var698=$r36, var726=java.util.Map, var3680=$r37, var1497=$z3, var2233=$r15, var2556=$r16}
; {org.hibernate.tool.schema.internal.StandardIndexExporter=var571, r8=var1363, org.hibernate.mapping.Index=var860, r4=var1061, org.hibernate.boot.Metadata=var1132, r0=var788, org.hibernate.boot.model.relational.SqlStringGenerationContext=var1718, r3=var3913, org.hibernate.boot.model.relational.Database=var649, $r1=var3910, org.hibernate.engine.jdbc.env.spi.JdbcEnvironment=var2112, r2=var2064, org.hibernate.mapping.Table=var1414, $r5=var272, org.hibernate.boot.model.relational.QualifiedTableName=var3598, $r6=var1840, r7=var850, org.hibernate.dialect.Dialect=var1634, $r9=var1056, $z0=var2230, org.hibernate.boot.model.relational.QualifiedNameImpl=var2701, $r24=var2705, $r25=var1443, $r26=var3631, org.hibernate.boot.model.naming.Identifier=var1027, org.hibernate.boot.model.relational.QualifiedNameParser$NameParts=var2036, $r34=var1981, $r27=var2635, $r28=var3953, $r33=var2390, org.hibernate.engine.jdbc.env.spi.IdentifierHelper=var2654, $r31=var26, $r29=var2613, $r30=var3855, $r32=var2653, org.hibernate.boot.model.relational.QualifiedName=var1780, r38=var3589, $r10=var2150, $r11=var692, $r12=var3013, $r13=var3449, $r14=var3835, $r35=var2769, z2=var3867, $r36=var698, java.util.Map=var726, $r37=var3680, $z3=var1497, $r15=var2233, $r16=var2556}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.hibernate.tool.schema.internal.StandardIndexExporter;	r4 := @parameter0: org.hibernate.mapping.Index;	r0 := @parameter1: org.hibernate.boot.Metadata;	r3 := @parameter2: org.hibernate.boot.model.relational.SqlStringGenerationContext;	$r1 = interfaceinvoke r0.<org.hibernate.boot.Metadata: org.hibernate.boot.model.relational.Database getDatabase()>();	r2 = virtualinvoke $r1.<org.hibernate.boot.model.relational.Database: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment getJdbcEnvironment()>();	$r5 = virtualinvoke r4.<org.hibernate.mapping.Index: org.hibernate.mapping.Table getTable()>();	$r6 = virtualinvoke $r5.<org.hibernate.mapping.Table: org.hibernate.boot.model.relational.QualifiedTableName getQualifiedTableName()>();	r7 = interfaceinvoke r3.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String format(org.hibernate.boot.model.relational.QualifiedTableName)>($r6);	$r9 = r8.<org.hibernate.tool.schema.internal.StandardIndexExporter: org.hibernate.dialect.Dialect dialect>;	$z0 = virtualinvoke $r9.<org.hibernate.dialect.Dialect: boolean qualifyIndexName()>();	if $z0 == 0 goto r38 = virtualinvoke r4.<org.hibernate.mapping.Index: java.lang.String getName()>();	$r24 = new org.hibernate.boot.model.relational.QualifiedNameImpl;	$r25 = virtualinvoke r4.<org.hibernate.mapping.Index: org.hibernate.mapping.Table getTable()>();	$r26 = virtualinvoke $r25.<org.hibernate.mapping.Table: org.hibernate.boot.model.relational.QualifiedTableName getQualifiedTableName()>();	$r34 = virtualinvoke $r26.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getCatalogName()>();	$r27 = virtualinvoke r4.<org.hibernate.mapping.Index: org.hibernate.mapping.Table getTable()>();	$r28 = virtualinvoke $r27.<org.hibernate.mapping.Table: org.hibernate.boot.model.relational.QualifiedTableName getQualifiedTableName()>();	$r33 = virtualinvoke $r28.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getSchemaName()>();	$r31 = interfaceinvoke r2.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>();	$r29 = r8.<org.hibernate.tool.schema.internal.StandardIndexExporter: org.hibernate.dialect.Dialect dialect>;	$r30 = virtualinvoke r4.<org.hibernate.mapping.Index: java.lang.String getQuotedName(org.hibernate.dialect.Dialect)>($r29);	$r32 = interfaceinvoke $r31.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r30);	specialinvoke $r24.<org.hibernate.boot.model.relational.QualifiedNameImpl: void <init>(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r34, $r33, $r32);	r38 = interfaceinvoke r3.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String format(org.hibernate.boot.model.relational.QualifiedName)>($r24);	goto [?= $r10 = new java.lang.StringBuilder];	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create index ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r38);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r35 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	z2 = 1;	$r36 = virtualinvoke r4.<org.hibernate.mapping.Index: java.util.Iterator getColumnIterator()>();	$r37 = virtualinvoke r4.<org.hibernate.mapping.Index: java.util.Map getColumnOrderMap()>();	$z3 = interfaceinvoke $r36.<java.util.Iterator: boolean hasNext()>();	if $z3 == 0 goto virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r15 = newarray (java.lang.String)[1];	$r16 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>();	$r15[0] = $r16;	return $r15
;block_num 5