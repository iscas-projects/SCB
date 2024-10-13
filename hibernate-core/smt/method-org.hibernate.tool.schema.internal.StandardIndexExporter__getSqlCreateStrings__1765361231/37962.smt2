(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1676 0)
(declare-sort var3408 0)
(declare-sort var444 0)
(declare-sort var3284 0)
(declare-sort var320 0)
(declare-sort var3807 0)
(declare-sort var760 0)
(declare-sort var193 0)
(declare-sort var3874 0)
(declare-sort var1083 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var444_getDatabase/193995574 (var444) var320)
(declare-fun getJdbcEnvironment/-2057911686 (var320) var3807)
(declare-fun getTable/-2097669385 (var3408) var760)
(declare-fun getQualifiedTableName/-853736433 (var760) var193)
(declare-fun var3284_format/1204537082 (var3284 var193) String)
(declare-fun dialect/235358210 (var1676) var3874)
(declare-fun qualifyIndexName/1384883955 (var3874) Bool)
(declare-fun getName/-354198463 (var3408) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getColumnIterator/504997087 (var3408) Iterator)
(declare-fun getColumnOrderMap/-630108323 (var3408) var1083)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun arr-String-init () (Array Int String))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1676 var1676)
(declare-const null-var3408 var3408)
(declare-const null-var444 var444)
(declare-const null-var3284 var3284)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var648 var1676) ; Statement: r8 := @this: org.hibernate.tool.schema.internal.StandardIndexExporter 
(assert (not (= var648 null-var1676)))
(declare-const var2465 var3408) ; Statement: r4 := @parameter0: org.hibernate.mapping.Index 
(assert (not (= var2465 null-var3408)))
(declare-const var584 var444) ; Statement: r0 := @parameter1: org.hibernate.boot.Metadata 
(assert (not (= var584 null-var444)))
(declare-const var2571 var3284) ; Statement: r3 := @parameter2: org.hibernate.boot.model.relational.SqlStringGenerationContext 
(assert (not (= var2571 null-var3284)))
(define-const var3394 var320 (var444_getDatabase/193995574 var584)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.boot.Metadata: org.hibernate.boot.model.relational.Database getDatabase()>() 
(assert true)
(define-const var2027 var3807 (getJdbcEnvironment/-2057911686 var3394)) ; Statement: r2 = virtualinvoke $r1.<org.hibernate.boot.model.relational.Database: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment getJdbcEnvironment()>() 
(assert true)
(define-const var3272 var760 (getTable/-2097669385 var2465)) ; Statement: $r5 = virtualinvoke r4.<org.hibernate.mapping.Index: org.hibernate.mapping.Table getTable()>() 
(assert true)
(define-const var157 var193 (getQualifiedTableName/-853736433 var3272)) ; Statement: $r6 = virtualinvoke $r5.<org.hibernate.mapping.Table: org.hibernate.boot.model.relational.QualifiedTableName getQualifiedTableName()>() 
(define-const var396 String (var3284_format/1204537082 var2571 var157)) ; Statement: r7 = interfaceinvoke r3.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String format(org.hibernate.boot.model.relational.QualifiedTableName)>($r6) 
(define-const var1780 var3874 (dialect/235358210 var648)) ; Statement: $r9 = r8.<org.hibernate.tool.schema.internal.StandardIndexExporter: org.hibernate.dialect.Dialect dialect> 
(assert true)
(define-const var1190 Bool (qualifyIndexName/1384883955 var1780)) ; Statement: $z0 = virtualinvoke $r9.<org.hibernate.dialect.Dialect: boolean qualifyIndexName()>() 
 ; Statement: if $z0 == 0 goto r38 = virtualinvoke r4.<org.hibernate.mapping.Index: java.lang.String getName()>() 
(assert (= (ite var1190 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3608 String (getName/-354198463 var2465)) ; Statement: r38 = virtualinvoke r4.<org.hibernate.mapping.Index: java.lang.String getName()>() 
(assert true) ; Non Conditional
(define-const var1537 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1537)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1537!1 String)
(assert (= var1537!1 ""))
(assert true)
(define-const var3447 String (append/672562846 var1537!1 "create index ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create index ") 
(declare-const var1537!2 String)
(assert (= var1537!2 (str.++ var1537!1 "create index ")))
(assert true)
(define-const var3197 String (append/672562846 var3447 var3608)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r38) 
(declare-const var3447!1 String)
(assert (= var3447!1 (str.++ var3447 var3608)))
(assert true)
(define-const var1958 String (append/672562846 var3197 " on ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on ") 
(declare-const var3197!1 String)
(assert (= var3197!1 (str.++ var3197 " on ")))
(assert true)
(define-const var3521 String (append/672562846 var1958 var396)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var1958!1 String)
(assert (= var1958!1 (str.++ var1958 var396)))
(assert true)
(define-const var1075 String (append/672562846 var3521 " (")) ; Statement: $r35 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var3521!1 String)
(assert (= var3521!1 (str.++ var3521 " (")))
(define-const var2142 Bool (ite (= 1 1) true false)) ; Statement: z2 = 1 
(assert true)
(define-const var2996 Iterator (getColumnIterator/504997087 var2465)) ; Statement: $r36 = virtualinvoke r4.<org.hibernate.mapping.Index: java.util.Iterator getColumnIterator()>() 
(assert true)
(define-const var159 var1083 (getColumnOrderMap/-630108323 var2465)) ; Statement: $r37 = virtualinvoke r4.<org.hibernate.mapping.Index: java.util.Map getColumnOrderMap()>() 
(assert true) ; Non Conditional
(define-const var2628 Bool (Iterator_hasNext/-1669924200 var2996)) ; Statement: $z3 = interfaceinvoke $r36.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z3 == 0 goto virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(assert (= (ite var2628 1 0) 0)) ; Cond: $z3 == 0 
(assert true)
;(assert (append/672562846 var1075 ")")) ; Statement: virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1075!1 String)
(assert (= var1075!1 (str.++ var1075 ")")))
(define-const var3532 (Array Int String) arr-String-init) ; Statement: $r15 = newarray (java.lang.String)[1] 
(assert true)
(define-const var1099 String (toString/-2075883882 var1075!1)) ; Statement: $r16 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3532!1 (Array Int String))
(assert (not (= var3532!1 null-__Array__Int__String__)))
(assert (= (select var3532!1 0) var1099)) ; Statement: $r15[0] = $r16 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var444_getDatabase/193995574=([org.hibernate.boot.Metadata], org.hibernate.boot.model.relational.Database), getJdbcEnvironment/-2057911686=([org.hibernate.boot.model.relational.Database], org.hibernate.engine.jdbc.env.spi.JdbcEnvironment), getTable/-2097669385=([org.hibernate.mapping.Index], org.hibernate.mapping.Table), getQualifiedTableName/-853736433=([org.hibernate.mapping.Table], org.hibernate.boot.model.relational.QualifiedTableName), var3284_format/1204537082=([org.hibernate.boot.model.relational.SqlStringGenerationContext, org.hibernate.boot.model.relational.QualifiedTableName], java.lang.String), dialect/235358210=([org.hibernate.tool.schema.internal.StandardIndexExporter], org.hibernate.dialect.Dialect), qualifyIndexName/1384883955=([org.hibernate.dialect.Dialect], boolean), getName/-354198463=([org.hibernate.mapping.Index], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getColumnIterator/504997087=([org.hibernate.mapping.Index], java.util.Iterator), getColumnOrderMap/-630108323=([org.hibernate.mapping.Index], java.util.Map), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), arr-String-init=([], java.lang.String[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1676=org.hibernate.tool.schema.internal.StandardIndexExporter, var648=r8, var3408=org.hibernate.mapping.Index, var2465=r4, var444=org.hibernate.boot.Metadata, var584=r0, var3284=org.hibernate.boot.model.relational.SqlStringGenerationContext, var2571=r3, var320=org.hibernate.boot.model.relational.Database, var3394=$r1, var3807=org.hibernate.engine.jdbc.env.spi.JdbcEnvironment, var2027=r2, var760=org.hibernate.mapping.Table, var3272=$r5, var193=org.hibernate.boot.model.relational.QualifiedTableName, var157=$r6, var396=r7, var3874=org.hibernate.dialect.Dialect, var1780=$r9, var1190=$z0, var3608=r38, var1537=$r10, var3447=$r11, var3197=$r12, var1958=$r13, var3521=$r14, var1075=$r35, var2142=z2, var2996=$r36, var1083=java.util.Map, var159=$r37, var2628=$z3, var3532=$r15, var1099=$r16}
; {org.hibernate.tool.schema.internal.StandardIndexExporter=var1676, r8=var648, org.hibernate.mapping.Index=var3408, r4=var2465, org.hibernate.boot.Metadata=var444, r0=var584, org.hibernate.boot.model.relational.SqlStringGenerationContext=var3284, r3=var2571, org.hibernate.boot.model.relational.Database=var320, $r1=var3394, org.hibernate.engine.jdbc.env.spi.JdbcEnvironment=var3807, r2=var2027, org.hibernate.mapping.Table=var760, $r5=var3272, org.hibernate.boot.model.relational.QualifiedTableName=var193, $r6=var157, r7=var396, org.hibernate.dialect.Dialect=var3874, $r9=var1780, $z0=var1190, r38=var3608, $r10=var1537, $r11=var3447, $r12=var3197, $r13=var1958, $r14=var3521, $r35=var1075, z2=var2142, $r36=var2996, java.util.Map=var1083, $r37=var159, $z3=var2628, $r15=var3532, $r16=var1099}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.hibernate.tool.schema.internal.StandardIndexExporter;	r4 := @parameter0: org.hibernate.mapping.Index;	r0 := @parameter1: org.hibernate.boot.Metadata;	r3 := @parameter2: org.hibernate.boot.model.relational.SqlStringGenerationContext;	$r1 = interfaceinvoke r0.<org.hibernate.boot.Metadata: org.hibernate.boot.model.relational.Database getDatabase()>();	r2 = virtualinvoke $r1.<org.hibernate.boot.model.relational.Database: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment getJdbcEnvironment()>();	$r5 = virtualinvoke r4.<org.hibernate.mapping.Index: org.hibernate.mapping.Table getTable()>();	$r6 = virtualinvoke $r5.<org.hibernate.mapping.Table: org.hibernate.boot.model.relational.QualifiedTableName getQualifiedTableName()>();	r7 = interfaceinvoke r3.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String format(org.hibernate.boot.model.relational.QualifiedTableName)>($r6);	$r9 = r8.<org.hibernate.tool.schema.internal.StandardIndexExporter: org.hibernate.dialect.Dialect dialect>;	$z0 = virtualinvoke $r9.<org.hibernate.dialect.Dialect: boolean qualifyIndexName()>();	if $z0 == 0 goto r38 = virtualinvoke r4.<org.hibernate.mapping.Index: java.lang.String getName()>();	r38 = virtualinvoke r4.<org.hibernate.mapping.Index: java.lang.String getName()>();	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("create index ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r38);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r35 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	z2 = 1;	$r36 = virtualinvoke r4.<org.hibernate.mapping.Index: java.util.Iterator getColumnIterator()>();	$r37 = virtualinvoke r4.<org.hibernate.mapping.Index: java.util.Map getColumnOrderMap()>();	$z3 = interfaceinvoke $r36.<java.util.Iterator: boolean hasNext()>();	if $z3 == 0 goto virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r15 = newarray (java.lang.String)[1];	$r16 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>();	$r15[0] = $r16;	return $r15
;block_num 5