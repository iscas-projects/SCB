(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3982 0)
(declare-sort var3381 0)
(declare-sort var2142 0)
(declare-sort var3354 0)
(declare-sort var2436 0)
(declare-sort var2106 0)
(declare-sort var951 0)
(declare-sort var578 0)
(declare-sort var1731 0)
(declare-sort var3026 0)
(declare-sort var224 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var951-init () var951)
(declare-fun arr-var578-init () (Array Int var578))
(declare-fun getQualifiedTableName/-853736433 (var3381) var1731)
(declare-fun toString/199734091 (var3026) String)
(declare-fun cast-from-var1731-to-var3026 (var1731) var3026)
(declare-fun cast-from-String-to-var578 (String) var578)
(declare-fun String_format/1339386452 (String (Array Int var578)) String)
(declare-fun <init>/2079914650 (var951 String) void)
(declare-fun cast-from-var951-to-var224 (var951) var224)
(declare-const null-var3982 var3982)
(declare-const null-var3381 var3381)
(declare-const null-var2142 var2142)
(declare-const null-var3354 var3354)
(declare-const null-var2436 var2436)
(declare-const null-var2106 var2106)
(declare-const null-__Array__Int__var578__ (Array Int var578))
(declare-const var491 var3982) ; Statement: r10 := @this: org.hibernate.tool.schema.internal.AbstractSchemaValidator 
(assert (not (= var491 null-var3982)))
(declare-const var1231 var3381) ; Statement: r1 := @parameter0: org.hibernate.mapping.Table 
(assert (not (= var1231 null-var3381)))
(declare-const var3852 var2142) ; Statement: r0 := @parameter1: org.hibernate.tool.schema.extract.spi.TableInformation 
(assert (not (= var3852 null-var2142)))
(declare-const var1124 var3354) ; Statement: r11 := @parameter2: org.hibernate.boot.Metadata 
(assert (not (= var1124 null-var3354)))
(declare-const var669 var2436) ; Statement: r12 := @parameter3: org.hibernate.tool.schema.spi.ExecutionOptions 
(assert (not (= var669 null-var2436)))
(declare-const var23 var2106) ; Statement: r13 := @parameter4: org.hibernate.dialect.Dialect 
(assert (not (= var23 null-var2106)))
 ; Statement: if r0 != null goto r2 = virtualinvoke r1.<org.hibernate.mapping.Table: java.util.Iterator getColumnIterator()>() 
(assert (not (not (= var3852 null-var2142)))) ; Negate: Cond: r0 != null  
(define-const var193 var951 var951-init) ; Statement: $r24 = new org.hibernate.tool.schema.spi.SchemaManagementException 
(define-const var2619 (Array Int var578) arr-var578-init) ; Statement: $r20 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var2459 var1731 (getQualifiedTableName/-853736433 var1231)) ; Statement: $r21 = virtualinvoke r1.<org.hibernate.mapping.Table: org.hibernate.boot.model.relational.QualifiedTableName getQualifiedTableName()>() 
(assert true)
(define-const var197 String (toString/199734091 (cast-from-var1731-to-var3026 var2459))) ; Statement: $r22 = virtualinvoke $r21.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>() 
(declare-const var2619!1 (Array Int var578))
(assert (not (= var2619!1 null-__Array__Int__var578__)))
(assert (= (select var2619!1 0) (cast-from-String-to-var578 var197))) ; Statement: $r20[0] = $r22 
(define-const var948 String (String_format/1339386452 "Schema-validation: missing table [%s]" var2619!1)) ; Statement: $r23 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Schema-validation: missing table [%s]", $r20) 
(assert true)
;(assert (<init>/2079914650 var193 var948)) ; Statement: specialinvoke $r24.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String)>($r23) 

(declare-const var193!1 var951)
(declare-const var948!1 String)
(define-const var1969 var224 (cast-from-var951-to-var224 var193!1)) ; Statement: $r26 = (java.lang.Throwable) $r24 
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {var951-init=([], org.hibernate.tool.schema.spi.SchemaManagementException), arr-var578-init=([], java.lang.Object[]), getQualifiedTableName/-853736433=([org.hibernate.mapping.Table], org.hibernate.boot.model.relational.QualifiedTableName), toString/199734091=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], java.lang.String), cast-from-var1731-to-var3026=([org.hibernate.boot.model.relational.QualifiedTableName], org.hibernate.boot.model.relational.QualifiedNameParser$NameParts), cast-from-String-to-var578=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/2079914650=([org.hibernate.tool.schema.spi.SchemaManagementException, java.lang.String], void), cast-from-var951-to-var224=([org.hibernate.tool.schema.spi.SchemaManagementException], java.lang.Throwable)}
; {var3982=org.hibernate.tool.schema.internal.AbstractSchemaValidator, var491=r10, var3381=org.hibernate.mapping.Table, var1231=r1, var2142=org.hibernate.tool.schema.extract.spi.TableInformation, var3852=r0, var3354=org.hibernate.boot.Metadata, var1124=r11, var2436=org.hibernate.tool.schema.spi.ExecutionOptions, var669=r12, var2106=org.hibernate.dialect.Dialect, var23=r13, var951=org.hibernate.tool.schema.spi.SchemaManagementException, var193=$r24, var578=java.lang.Object, var2619=$r20, var1731=org.hibernate.boot.model.relational.QualifiedTableName, var2459=$r21, var3026=org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, var197=$r22, var948=$r23, var224=java.lang.Throwable, var1969=$r26}
; {org.hibernate.tool.schema.internal.AbstractSchemaValidator=var3982, r10=var491, org.hibernate.mapping.Table=var3381, r1=var1231, org.hibernate.tool.schema.extract.spi.TableInformation=var2142, r0=var3852, org.hibernate.boot.Metadata=var3354, r11=var1124, org.hibernate.tool.schema.spi.ExecutionOptions=var2436, r12=var669, org.hibernate.dialect.Dialect=var2106, r13=var23, org.hibernate.tool.schema.spi.SchemaManagementException=var951, $r24=var193, java.lang.Object=var578, $r20=var2619, org.hibernate.boot.model.relational.QualifiedTableName=var1731, $r21=var2459, org.hibernate.boot.model.relational.QualifiedNameParser$NameParts=var3026, $r22=var197, $r23=var948, java.lang.Throwable=var224, $r26=var1969}
;seq <org.hibernate.boot.model.relational.QualifiedNameParser$NameParts: java.lang.String toString()>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r10 := @this: org.hibernate.tool.schema.internal.AbstractSchemaValidator;	r1 := @parameter0: org.hibernate.mapping.Table;	r0 := @parameter1: org.hibernate.tool.schema.extract.spi.TableInformation;	r11 := @parameter2: org.hibernate.boot.Metadata;	r12 := @parameter3: org.hibernate.tool.schema.spi.ExecutionOptions;	r13 := @parameter4: org.hibernate.dialect.Dialect;	if r0 != null goto r2 = virtualinvoke r1.<org.hibernate.mapping.Table: java.util.Iterator getColumnIterator()>();	$r24 = new org.hibernate.tool.schema.spi.SchemaManagementException;	$r20 = newarray (java.lang.Object)[1];	$r21 = virtualinvoke r1.<org.hibernate.mapping.Table: org.hibernate.boot.model.relational.QualifiedTableName getQualifiedTableName()>();	$r22 = virtualinvoke $r21.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>();	$r20[0] = $r22;	$r23 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Schema-validation: missing table [%s]", $r20);	specialinvoke $r24.<org.hibernate.tool.schema.spi.SchemaManagementException: void <init>(java.lang.String)>($r23);	$r26 = (java.lang.Throwable) $r24;	throw $r26
;block_num 2