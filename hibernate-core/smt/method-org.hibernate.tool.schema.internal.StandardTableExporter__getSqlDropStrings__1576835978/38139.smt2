(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2577 0)
(declare-sort var2271 0)
(declare-sort var3906 0)
(declare-sort var987 0)
(declare-sort var2682 0)
(declare-sort var217 0)
(declare-sort var731 0)
(declare-sort var2442 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun dialect/1825021694 (var2577) var2682)
(declare-fun supportsIfExistsBeforeTableName/2116380602 (var2682) Bool)
(declare-fun var217-init () var217)
(declare-fun getCatalog/-1531610639 (var2271) String)
(declare-fun isCatalogQuoted/1330188784 (var2271) Bool)
(declare-fun var731_toIdentifier/807223652 (String Bool) var731)
(declare-fun getSchema/281261871 (var2271) String)
(declare-fun isSchemaQuoted/1314969792 (var2271) Bool)
(declare-fun getNameIdentifier/1639380429 (var2271) var731)
(declare-fun <init>/280629704 (var217 var731 var731 var731) void)
(declare-fun var987_format/543602932 (var987 var2442) String)
(declare-fun cast-from-var217-to-var2442 (var217) var2442)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getCascadeConstraintsString/1107348749 (var2682) String)
(declare-fun supportsIfExistsAfterTableName/21995785 (var2682) Bool)
(declare-fun arr-String-init () (Array Int String))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2577 var2577)
(declare-const null-var2271 var2271)
(declare-const null-var3906 var3906)
(declare-const null-var987 var987)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var342 var2577) ; Statement: r1 := @this: org.hibernate.tool.schema.internal.StandardTableExporter 
(assert (not (= var342 null-var2577)))
(declare-const var3370 var2271) ; Statement: r4 := @parameter0: org.hibernate.mapping.Table 
(assert (not (= var3370 null-var2271)))
(declare-const var2344 var3906) ; Statement: r18 := @parameter1: org.hibernate.boot.Metadata 
(assert (not (= var2344 null-var3906)))
(declare-const var1630 var987) ; Statement: r10 := @parameter2: org.hibernate.boot.model.relational.SqlStringGenerationContext 
(assert (not (= var1630 null-var987)))
(define-const var730 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var730 "drop table ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("drop table ") 
(declare-const var730!1 String)
(assert (= var730!1 "drop table "))
(define-const var2281 var2682 (dialect/1825021694 var342)) ; Statement: $r2 = r1.<org.hibernate.tool.schema.internal.StandardTableExporter: org.hibernate.dialect.Dialect dialect> 
(assert true)
(define-const var1980 Bool (supportsIfExistsBeforeTableName/2116380602 var2281)) ; Statement: $z0 = virtualinvoke $r2.<org.hibernate.dialect.Dialect: boolean supportsIfExistsBeforeTableName()>() 
 ; Statement: if $z0 == 0 goto $r3 = new org.hibernate.boot.model.relational.QualifiedNameParser$NameParts 
(assert (= (ite var1980 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3934 var217 var217-init) ; Statement: $r3 = new org.hibernate.boot.model.relational.QualifiedNameParser$NameParts 
(assert true)
(define-const var3134 String (getCatalog/-1531610639 var3370)) ; Statement: $r5 = virtualinvoke r4.<org.hibernate.mapping.Table: java.lang.String getCatalog()>() 
(assert true)
(define-const var542 Bool (isCatalogQuoted/1330188784 var3370)) ; Statement: $z1 = virtualinvoke r4.<org.hibernate.mapping.Table: boolean isCatalogQuoted()>() 
(define-const var1076 var731 (var731_toIdentifier/807223652 var3134 var542)) ; Statement: $r9 = staticinvoke <org.hibernate.boot.model.naming.Identifier: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,boolean)>($r5, $z1) 
(assert true)
(define-const var2223 String (getSchema/281261871 var3370)) ; Statement: $r6 = virtualinvoke r4.<org.hibernate.mapping.Table: java.lang.String getSchema()>() 
(assert true)
(define-const var2767 Bool (isSchemaQuoted/1314969792 var3370)) ; Statement: $z2 = virtualinvoke r4.<org.hibernate.mapping.Table: boolean isSchemaQuoted()>() 
(define-const var3242 var731 (var731_toIdentifier/807223652 var2223 var2767)) ; Statement: $r8 = staticinvoke <org.hibernate.boot.model.naming.Identifier: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,boolean)>($r6, $z2) 
(assert true)
(define-const var3036 var731 (getNameIdentifier/1639380429 var3370)) ; Statement: $r7 = virtualinvoke r4.<org.hibernate.mapping.Table: org.hibernate.boot.model.naming.Identifier getNameIdentifier()>() 
(assert true)
;(assert (<init>/280629704 var3934 var1076 var3242 var3036)) ; Statement: specialinvoke $r3.<org.hibernate.boot.model.relational.QualifiedNameParser$NameParts: void <init>(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r9, $r8, $r7) 

(declare-const var3934!1 var217)
(declare-const var1076!1 var731)
(declare-const var3242!1 var731)
(declare-const var3036!1 var731)
(define-const var3232 String (var987_format/543602932 var1630 (cast-from-var217-to-var2442 var3934!1))) ; Statement: $r11 = interfaceinvoke r10.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String format(org.hibernate.boot.model.relational.QualifiedName)>($r3) 
(assert true)
(define-const var2023 String (append/672562846 var730!1 var3232)) ; Statement: $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var730!2 String)
(assert (= var730!2 (str.++ var730!1 var3232)))
(define-const var1996 var2682 (dialect/1825021694 var342)) ; Statement: $r12 = r1.<org.hibernate.tool.schema.internal.StandardTableExporter: org.hibernate.dialect.Dialect dialect> 
(assert true)
(define-const var3177 String (getCascadeConstraintsString/1107348749 var1996)) ; Statement: $r13 = virtualinvoke $r12.<org.hibernate.dialect.Dialect: java.lang.String getCascadeConstraintsString()>() 
(assert true)
;(assert (append/672562846 var2023 var3177)) ; Statement: virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2023!1 String)
(assert (= var2023!1 (str.++ var2023 var3177)))
(define-const var286 var2682 (dialect/1825021694 var342)) ; Statement: $r15 = r1.<org.hibernate.tool.schema.internal.StandardTableExporter: org.hibernate.dialect.Dialect dialect> 
(assert true)
(define-const var3512 Bool (supportsIfExistsAfterTableName/21995785 var286)) ; Statement: $z3 = virtualinvoke $r15.<org.hibernate.dialect.Dialect: boolean supportsIfExistsAfterTableName()>() 
 ; Statement: if $z3 == 0 goto $r16 = newarray (java.lang.String)[1] 
(assert (= (ite var3512 1 0) 0)) ; Cond: $z3 == 0 
(define-const var3853 (Array Int String) arr-String-init) ; Statement: $r16 = newarray (java.lang.String)[1] 
(assert true)
(define-const var3725 String (toString/-2075883882 var730!2)) ; Statement: $r17 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3853!1 (Array Int String))
(assert (not (= var3853!1 null-__Array__Int__String__)))
(assert (= (select var3853!1 0) var3725)) ; Statement: $r16[0] = $r17 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), dialect/1825021694=([org.hibernate.tool.schema.internal.StandardTableExporter], org.hibernate.dialect.Dialect), supportsIfExistsBeforeTableName/2116380602=([org.hibernate.dialect.Dialect], boolean), var217-init=([], org.hibernate.boot.model.relational.QualifiedNameParser$NameParts), getCatalog/-1531610639=([org.hibernate.mapping.Table], java.lang.String), isCatalogQuoted/1330188784=([org.hibernate.mapping.Table], boolean), var731_toIdentifier/807223652=([java.lang.String, boolean], org.hibernate.boot.model.naming.Identifier), getSchema/281261871=([org.hibernate.mapping.Table], java.lang.String), isSchemaQuoted/1314969792=([org.hibernate.mapping.Table], boolean), getNameIdentifier/1639380429=([org.hibernate.mapping.Table], org.hibernate.boot.model.naming.Identifier), <init>/280629704=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier], void), var987_format/543602932=([org.hibernate.boot.model.relational.SqlStringGenerationContext, org.hibernate.boot.model.relational.QualifiedName], java.lang.String), cast-from-var217-to-var2442=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.relational.QualifiedName), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getCascadeConstraintsString/1107348749=([org.hibernate.dialect.Dialect], java.lang.String), supportsIfExistsAfterTableName/21995785=([org.hibernate.dialect.Dialect], boolean), arr-String-init=([], java.lang.String[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2577=org.hibernate.tool.schema.internal.StandardTableExporter, var342=r1, var2271=org.hibernate.mapping.Table, var3370=r4, var3906=org.hibernate.boot.Metadata, var2344=r18, var987=org.hibernate.boot.model.relational.SqlStringGenerationContext, var1630=r10, var730=$r0, var2682=org.hibernate.dialect.Dialect, var2281=$r2, var1980=$z0, var217=org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, var3934=$r3, var3134=$r5, var542=$z1, var731=org.hibernate.boot.model.naming.Identifier, var1076=$r9, var2223=$r6, var2767=$z2, var3242=$r8, var3036=$r7, var2442=org.hibernate.boot.model.relational.QualifiedName, var3232=$r11, var2023=$r14, var1996=$r12, var3177=$r13, var286=$r15, var3512=$z3, var3853=$r16, var3725=$r17}
; {org.hibernate.tool.schema.internal.StandardTableExporter=var2577, r1=var342, org.hibernate.mapping.Table=var2271, r4=var3370, org.hibernate.boot.Metadata=var3906, r18=var2344, org.hibernate.boot.model.relational.SqlStringGenerationContext=var987, r10=var1630, $r0=var730, org.hibernate.dialect.Dialect=var2682, $r2=var2281, $z0=var1980, org.hibernate.boot.model.relational.QualifiedNameParser$NameParts=var217, $r3=var3934, $r5=var3134, $z1=var542, org.hibernate.boot.model.naming.Identifier=var731, $r9=var1076, $r6=var2223, $z2=var2767, $r8=var3242, $r7=var3036, org.hibernate.boot.model.relational.QualifiedName=var2442, $r11=var3232, $r14=var2023, $r12=var1996, $r13=var3177, $r15=var286, $z3=var3512, $r16=var3853, $r17=var3725}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tool.schema.internal.StandardTableExporter;	r4 := @parameter0: org.hibernate.mapping.Table;	r18 := @parameter1: org.hibernate.boot.Metadata;	r10 := @parameter2: org.hibernate.boot.model.relational.SqlStringGenerationContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("drop table ");	$r2 = r1.<org.hibernate.tool.schema.internal.StandardTableExporter: org.hibernate.dialect.Dialect dialect>;	$z0 = virtualinvoke $r2.<org.hibernate.dialect.Dialect: boolean supportsIfExistsBeforeTableName()>();	if $z0 == 0 goto $r3 = new org.hibernate.boot.model.relational.QualifiedNameParser$NameParts;	$r3 = new org.hibernate.boot.model.relational.QualifiedNameParser$NameParts;	$r5 = virtualinvoke r4.<org.hibernate.mapping.Table: java.lang.String getCatalog()>();	$z1 = virtualinvoke r4.<org.hibernate.mapping.Table: boolean isCatalogQuoted()>();	$r9 = staticinvoke <org.hibernate.boot.model.naming.Identifier: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,boolean)>($r5, $z1);	$r6 = virtualinvoke r4.<org.hibernate.mapping.Table: java.lang.String getSchema()>();	$z2 = virtualinvoke r4.<org.hibernate.mapping.Table: boolean isSchemaQuoted()>();	$r8 = staticinvoke <org.hibernate.boot.model.naming.Identifier: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String,boolean)>($r6, $z2);	$r7 = virtualinvoke r4.<org.hibernate.mapping.Table: org.hibernate.boot.model.naming.Identifier getNameIdentifier()>();	specialinvoke $r3.<org.hibernate.boot.model.relational.QualifiedNameParser$NameParts: void <init>(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r9, $r8, $r7);	$r11 = interfaceinvoke r10.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String format(org.hibernate.boot.model.relational.QualifiedName)>($r3);	$r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r12 = r1.<org.hibernate.tool.schema.internal.StandardTableExporter: org.hibernate.dialect.Dialect dialect>;	$r13 = virtualinvoke $r12.<org.hibernate.dialect.Dialect: java.lang.String getCascadeConstraintsString()>();	virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r15 = r1.<org.hibernate.tool.schema.internal.StandardTableExporter: org.hibernate.dialect.Dialect dialect>;	$z3 = virtualinvoke $r15.<org.hibernate.dialect.Dialect: boolean supportsIfExistsAfterTableName()>();	if $z3 == 0 goto $r16 = newarray (java.lang.String)[1];	$r16 = newarray (java.lang.String)[1];	$r17 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r16[0] = $r17;	return $r16
;block_num 3