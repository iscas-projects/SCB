(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1946 0)
(declare-sort var1818 0)
(declare-sort var1187 0)
(declare-sort var1840 0)
(declare-sort var3547 0)
(declare-sort var3559 0)
(declare-sort var3061 0)
(declare-sort var2968 0)
(declare-sort var3736 0)
(declare-sort var3298 0)
(declare-sort var3397 0)
(declare-sort var52 0)
(declare-sort var2148 0)
(declare-sort var2328 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSqlTypeCode/-2051612395 (var1187 var2968) Int)
(declare-fun cast-from-var3547-to-var2968 (var3547) var2968)
(declare-fun var1840_getTypeCode/-410685307 (var1840) Int)
(declare-fun equivalentTypes/-145421708 (var3061 Int Int) Bool)
(declare-fun var3736-init () var3736)
(declare-fun arr-var3298-init () (Array Int var3298))
(declare-fun getName/1923604921 (var1187) String)
(declare-fun cast-from-String-to-var3298 (String) var3298)
(declare-fun getQualifiedTableName/-853736433 (var1818) var3397)
(declare-fun cast-from-var3397-to-var3298 (var3397) var3298)
(declare-fun var1840_getTypeName/-458009847 (var1840) String)
(declare-fun toLowerCase/1946809429 (String var52) String)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var2148_getTypeName/-1664405877 (Int) String)
(declare-fun getSqlType/1263732238 (var1187) String)
(declare-fun String_format/1339386452 (String (Array Int var3298)) String)
(declare-fun <init>/2079914650 (var3736 String) void)
(declare-fun cast-from-var3736-to-var2328 (var3736) var2328)
(declare-const null-var1946 var1946)
(declare-const null-var1818 var1818)
(declare-const null-var1187 var1187)
(declare-const null-var1840 var1840)
(declare-const null-var3547 var3547)
(declare-const null-var3559 var3559)
(declare-const null-var3061 var3061)
(declare-const null-__Array__Int__var3298__ (Array Int var3298))
(declare-const var52-ROOT var52)
(declare-const var1143 var1946) ; Statement: r26 := @this: org.hibernate.tool.schema.internal.AbstractSchemaValidator 
(assert (not (= var1143 null-var1946)))
(declare-const var3886 var1818) ; Statement: r7 := @parameter0: org.hibernate.mapping.Table 
(assert (not (= var3886 null-var1818)))
(declare-const var979 var1187) ; Statement: r1 := @parameter1: org.hibernate.mapping.Column 
(assert (not (= var979 null-var1187)))
(declare-const var974 var1840) ; Statement: r3 := @parameter2: org.hibernate.tool.schema.extract.spi.ColumnInformation 
(assert (not (= var974 null-var1840)))
(declare-const var3273 var3547) ; Statement: r2 := @parameter3: org.hibernate.boot.Metadata 
(assert (not (= var3273 null-var3547)))
(declare-const var3174 var3559) ; Statement: r27 := @parameter4: org.hibernate.tool.schema.spi.ExecutionOptions 
(assert (not (= var3174 null-var3559)))
(declare-const var1457 var3061) ; Statement: r0 := @parameter5: org.hibernate.dialect.Dialect 
(assert (not (= var1457 null-var3061)))
(assert true)
(define-const var3614 Int (getSqlTypeCode/-2051612395 var979 (cast-from-var3547-to-var2968 var3273))) ; Statement: $i1 = virtualinvoke r1.<org.hibernate.mapping.Column: int getSqlTypeCode(org.hibernate.engine.spi.Mapping)>(r2) 
(define-const var2377 Int (var1840_getTypeCode/-410685307 var974)) ; Statement: $i0 = interfaceinvoke r3.<org.hibernate.tool.schema.extract.spi.ColumnInformation: int getTypeCode()>() 
(assert true)
(define-const var2166 Bool (equivalentTypes/-145421708 var1457 var3614 var2377)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.dialect.Dialect: boolean equivalentTypes(int,int)>($i1, $i0) 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var2166 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3619 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z2 != 0 goto return 
(assert (not (not (= (ite var3619 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var2434 var3736 var3736-init) ; Statement: $r28 = new org.hibernate.tool.schema.spi.SchemaManagementException 
(define-const var3667 (Array Int var3298) arr-var3298-init) ; Statement: $r5 = newarray (java.lang.Object)[6] 
(assert true)
(define-const var3580 String (getName/1923604921 var979)) ; Statement: $r6 = virtualinvoke r1.<org.hibernate.mapping.Column: java.lang.String getName()>() 
(declare-const var3667!1 (Array Int var3298))
(assert (not (= var3667!1 null-__Array__Int__var3298__)))
(assert (= (select var3667!1 0) (cast-from-String-to-var3298 var3580))) ; Statement: $r5[0] = $r6 
(assert true)
(define-const var693 var3397 (getQualifiedTableName/-853736433 var3886)) ; Statement: $r8 = virtualinvoke r7.<org.hibernate.mapping.Table: org.hibernate.boot.model.relational.QualifiedTableName getQualifiedTableName()>() 
(declare-const var3667!2 (Array Int var3298))
(assert (not (= var3667!2 null-__Array__Int__var3298__)))
(assert (= (select var3667!2 1) (cast-from-var3397-to-var3298 var693))) ; Statement: $r5[1] = $r8 
(define-const var2034 String (var1840_getTypeName/-458009847 var974)) ; Statement: $r10 = interfaceinvoke r3.<org.hibernate.tool.schema.extract.spi.ColumnInformation: java.lang.String getTypeName()>() 
(define-const var2139 var52 var52-ROOT) ; Statement: $r9 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2482 String (toLowerCase/1946809429 var2034 var2139)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r9) 
(declare-const var3667!3 (Array Int var3298))
(assert (not (= var3667!3 null-__Array__Int__var3298__)))
(assert (= (select var3667!3 2) (cast-from-String-to-var3298 var2482))) ; Statement: $r5[2] = $r11 
(define-const var1123 Int (var1840_getTypeCode/-410685307 var974)) ; Statement: $i2 = interfaceinvoke r3.<org.hibernate.tool.schema.extract.spi.ColumnInformation: int getTypeCode()>() 
(define-const var3496 Int (Int_valueOf/-1371140006 var1123)) ; Statement: $r12 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2) 
(define-const var179 String (var2148_getTypeName/-1664405877 var3496)) ; Statement: $r13 = staticinvoke <org.hibernate.type.descriptor.JdbcTypeNameMapper: java.lang.String getTypeName(java.lang.Integer)>($r12) 
(declare-const var3667!4 (Array Int var3298))
(assert (not (= var3667!4 null-__Array__Int__var3298__)))
(assert (= (select var3667!4 3) (cast-from-String-to-var3298 var179))) ; Statement: $r5[3] = $r13 
(assert true)
(define-const var3241 String (getSqlType/1263732238 var979)) ; Statement: $r15 = virtualinvoke r1.<org.hibernate.mapping.Column: java.lang.String getSqlType()>() 
(define-const var431 var52 var52-ROOT) ; Statement: $r14 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1556 String (toLowerCase/1946809429 var3241 var431)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r14) 
(declare-const var3667!5 (Array Int var3298))
(assert (not (= var3667!5 null-__Array__Int__var3298__)))
(assert (= (select var3667!5 4) (cast-from-String-to-var3298 var1556))) ; Statement: $r5[4] = $r16 
(assert true)
(define-const var3771 Int (getSqlTypeCode/-2051612395 var979 (cast-from-var3547-to-var2968 var3273))) ; Statement: $i3 = virtualinvoke r1.<org.hibernate.mapping.Column: int getSqlTypeCode(org.hibernate.engine.spi.Mapping)>(r2) 
(define-const var2679 Int (Int_valueOf/-1371140006 var3771)) ; Statement: $r17 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i3) 
(define-const var2121 String (var2148_getTypeName/-1664405877 var2679)) ; Statement: $r18 = staticinvoke <org.hibernate.type.descriptor.JdbcTypeNameMapper: java.lang.String getTypeName(java.lang.Integer)>($r17) 
(declare-const var3667!6 (Array Int var3298))
(assert (not (= var3667!6 null-__Array__Int__var3298__)))
(assert (= (select var3667!6 5) (cast-from-String-to-var3298 var2121))) ; Statement: $r5[5] = $r18 
(define-const var1800 String (String_format/1339386452 "Schema-validation: wrong column type encountered in column [%s] in table [%s]; found [%s (Types#%s)], but expecting [%s (Types#%s)]" var3667!6)) ; Statement: $r19 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Schema-validation: wrong column type encountered in column [%s] in table [%s]; found [%s (Types#%s)], but expecting [%s (Types#%s)]", $r5) 
(assert true)
;(assert (<init>/2079914650 var2434 var1800)) ; Statement: specialinvoke $r28.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String)>($r19) 

(declare-const var2434!1 var3736)
(declare-const var1800!1 String)
(define-const var1362 var2328 (cast-from-var3736-to-var2328 var2434!1)) ; Statement: $r29 = (java.lang.Throwable) $r28 
 ; Statement: throw $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {getSqlTypeCode/-2051612395=([org.hibernate.mapping.Column, org.hibernate.engine.spi.Mapping], int), cast-from-var3547-to-var2968=([org.hibernate.boot.Metadata], org.hibernate.engine.spi.Mapping), var1840_getTypeCode/-410685307=([org.hibernate.tool.schema.extract.spi.ColumnInformation], int), equivalentTypes/-145421708=([org.hibernate.dialect.Dialect, int, int], boolean), var3736-init=([], org.hibernate.tool.schema.spi.SchemaManagementException), arr-var3298-init=([], java.lang.Object[]), getName/1923604921=([org.hibernate.mapping.Column], java.lang.String), cast-from-String-to-var3298=([java.lang.String], java.lang.Object), getQualifiedTableName/-853736433=([org.hibernate.mapping.Table], org.hibernate.boot.model.relational.QualifiedTableName), cast-from-var3397-to-var3298=([org.hibernate.boot.model.relational.QualifiedTableName], java.lang.Object), var1840_getTypeName/-458009847=([org.hibernate.tool.schema.extract.spi.ColumnInformation], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), Int_valueOf/-1371140006=([int], java.lang.Integer), var2148_getTypeName/-1664405877=([java.lang.Integer], java.lang.String), getSqlType/1263732238=([org.hibernate.mapping.Column], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/2079914650=([org.hibernate.tool.schema.spi.SchemaManagementException, java.lang.String], void), cast-from-var3736-to-var2328=([org.hibernate.tool.schema.spi.SchemaManagementException], java.lang.Throwable)}
; {var1946=org.hibernate.tool.schema.internal.AbstractSchemaValidator, var1143=r26, var1818=org.hibernate.mapping.Table, var3886=r7, var1187=org.hibernate.mapping.Column, var979=r1, var1840=org.hibernate.tool.schema.extract.spi.ColumnInformation, var974=r3, var3547=org.hibernate.boot.Metadata, var3273=r2, var3559=org.hibernate.tool.schema.spi.ExecutionOptions, var3174=r27, var3061=org.hibernate.dialect.Dialect, var1457=r0, var2968=org.hibernate.engine.spi.Mapping, var3614=$i1, var2377=$i0, var2166=$z0, var3619=$z2, var3736=org.hibernate.tool.schema.spi.SchemaManagementException, var2434=$r28, var3298=java.lang.Object, var3667=$r5, var3580=$r6, var3397=org.hibernate.boot.model.relational.QualifiedTableName, var693=$r8, var2034=$r10, var52=java.util.Locale, var2139=$r9, var2482=$r11, var1123=$i2, var3496=$r12, var2148=org.hibernate.type.descriptor.JdbcTypeNameMapper, var179=$r13, var3241=$r15, var431=$r14, var1556=$r16, var3771=$i3, var2679=$r17, var2121=$r18, var1800=$r19, var2328=java.lang.Throwable, var1362=$r29}
; {org.hibernate.tool.schema.internal.AbstractSchemaValidator=var1946, r26=var1143, org.hibernate.mapping.Table=var1818, r7=var3886, org.hibernate.mapping.Column=var1187, r1=var979, org.hibernate.tool.schema.extract.spi.ColumnInformation=var1840, r3=var974, org.hibernate.boot.Metadata=var3547, r2=var3273, org.hibernate.tool.schema.spi.ExecutionOptions=var3559, r27=var3174, org.hibernate.dialect.Dialect=var3061, r0=var1457, org.hibernate.engine.spi.Mapping=var2968, $i1=var3614, $i0=var2377, $z0=var2166, $z2=var3619, org.hibernate.tool.schema.spi.SchemaManagementException=var3736, $r28=var2434, java.lang.Object=var3298, $r5=var3667, $r6=var3580, org.hibernate.boot.model.relational.QualifiedTableName=var3397, $r8=var693, $r10=var2034, java.util.Locale=var52, $r9=var2139, $r11=var2482, $i2=var1123, $r12=var3496, org.hibernate.type.descriptor.JdbcTypeNameMapper=var2148, $r13=var179, $r15=var3241, $r14=var431, $r16=var1556, $i3=var3771, $r17=var2679, $r18=var2121, $r19=var1800, java.lang.Throwable=var2328, $r29=var1362}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 2,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r26 := @this: org.hibernate.tool.schema.internal.AbstractSchemaValidator;	r7 := @parameter0: org.hibernate.mapping.Table;	r1 := @parameter1: org.hibernate.mapping.Column;	r3 := @parameter2: org.hibernate.tool.schema.extract.spi.ColumnInformation;	r2 := @parameter3: org.hibernate.boot.Metadata;	r27 := @parameter4: org.hibernate.tool.schema.spi.ExecutionOptions;	r0 := @parameter5: org.hibernate.dialect.Dialect;	$i1 = virtualinvoke r1.<org.hibernate.mapping.Column: int getSqlTypeCode(org.hibernate.engine.spi.Mapping)>(r2);	$i0 = interfaceinvoke r3.<org.hibernate.tool.schema.extract.spi.ColumnInformation: int getTypeCode()>();	$z0 = virtualinvoke r0.<org.hibernate.dialect.Dialect: boolean equivalentTypes(int,int)>($i1, $i0);	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= (branch)];	if $z2 != 0 goto return;	$r28 = new org.hibernate.tool.schema.spi.SchemaManagementException;	$r5 = newarray (java.lang.Object)[6];	$r6 = virtualinvoke r1.<org.hibernate.mapping.Column: java.lang.String getName()>();	$r5[0] = $r6;	$r8 = virtualinvoke r7.<org.hibernate.mapping.Table: org.hibernate.boot.model.relational.QualifiedTableName getQualifiedTableName()>();	$r5[1] = $r8;	$r10 = interfaceinvoke r3.<org.hibernate.tool.schema.extract.spi.ColumnInformation: java.lang.String getTypeName()>();	$r9 = <java.util.Locale: java.util.Locale ROOT>;	$r11 = virtualinvoke $r10.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r9);	$r5[2] = $r11;	$i2 = interfaceinvoke r3.<org.hibernate.tool.schema.extract.spi.ColumnInformation: int getTypeCode()>();	$r12 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2);	$r13 = staticinvoke <org.hibernate.type.descriptor.JdbcTypeNameMapper: java.lang.String getTypeName(java.lang.Integer)>($r12);	$r5[3] = $r13;	$r15 = virtualinvoke r1.<org.hibernate.mapping.Column: java.lang.String getSqlType()>();	$r14 = <java.util.Locale: java.util.Locale ROOT>;	$r16 = virtualinvoke $r15.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r14);	$r5[4] = $r16;	$i3 = virtualinvoke r1.<org.hibernate.mapping.Column: int getSqlTypeCode(org.hibernate.engine.spi.Mapping)>(r2);	$r17 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i3);	$r18 = staticinvoke <org.hibernate.type.descriptor.JdbcTypeNameMapper: java.lang.String getTypeName(java.lang.Integer)>($r17);	$r5[5] = $r18;	$r19 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Schema-validation: wrong column type encountered in column [%s] in table [%s]; found [%s (Types#%s)], but expecting [%s (Types#%s)]", $r5);	specialinvoke $r28.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String)>($r19);	$r29 = (java.lang.Throwable) $r28;	throw $r29
;block_num 4