(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3167 0)
(declare-sort var846 0)
(declare-sort var1118 0)
(declare-sort var1204 0)
(declare-sort var257 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun subselect/310692072 (var3167) String)
(declare-fun var1204-init () var1204)
(declare-fun catalog/310692072 (var3167) var257)
(declare-fun schema/310692072 (var3167) var257)
(declare-fun name/310692072 (var3167) var257)
(declare-fun <init>/-1697340226 (var1204 var257 var257 var257) void)
(declare-fun var846_format/1204537082 (var846 var1204) String)
(declare-const null-var3167 var3167)
(declare-const null-var846 var846)
(declare-const null-String String)
(declare-const var1222 var3167) ; Statement: r0 := @this: org.hibernate.mapping.Table 
(assert (not (= var1222 null-var3167)))
(declare-const var28 var846) ; Statement: r2 := @parameter0: org.hibernate.boot.model.relational.SqlStringGenerationContext 
(assert (not (= var28 null-var846)))
(define-const var1603 String (subselect/310692072 var1222)) ; Statement: $r1 = r0.<org.hibernate.mapping.Table: java.lang.String subselect> 
 ; Statement: if $r1 == null goto $r3 = new org.hibernate.boot.model.relational.QualifiedTableName 
(assert (= var1603 null-String)) ; Cond: $r1 == null 
(define-const var3317 var1204 var1204-init) ; Statement: $r3 = new org.hibernate.boot.model.relational.QualifiedTableName 
(define-const var611 var257 (catalog/310692072 var1222)) ; Statement: $r6 = r0.<org.hibernate.mapping.Table: org.hibernate.boot.model.naming.Identifier catalog> 
(define-const var2625 var257 (schema/310692072 var1222)) ; Statement: $r5 = r0.<org.hibernate.mapping.Table: org.hibernate.boot.model.naming.Identifier schema> 
(define-const var1432 var257 (name/310692072 var1222)) ; Statement: $r4 = r0.<org.hibernate.mapping.Table: org.hibernate.boot.model.naming.Identifier name> 
(assert true)
;(assert (<init>/-1697340226 var3317 var611 var2625 var1432)) ; Statement: specialinvoke $r3.<org.hibernate.boot.model.relational.QualifiedTableName: void <init>(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r6, $r5, $r4) 

(declare-const var3317!1 var1204)
(declare-const var611!1 var257)
(declare-const var2625!1 var257)
(declare-const var1432!1 var257)
(define-const var1880 String (var846_format/1204537082 var28 var3317!1)) ; Statement: $r7 = interfaceinvoke r2.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String format(org.hibernate.boot.model.relational.QualifiedTableName)>($r3) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {subselect/310692072=([org.hibernate.mapping.Table], java.lang.String), var1204-init=([], org.hibernate.boot.model.relational.QualifiedTableName), catalog/310692072=([org.hibernate.mapping.Table], org.hibernate.boot.model.naming.Identifier), schema/310692072=([org.hibernate.mapping.Table], org.hibernate.boot.model.naming.Identifier), name/310692072=([org.hibernate.mapping.Table], org.hibernate.boot.model.naming.Identifier), <init>/-1697340226=([org.hibernate.boot.model.relational.QualifiedTableName, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier], void), var846_format/1204537082=([org.hibernate.boot.model.relational.SqlStringGenerationContext, org.hibernate.boot.model.relational.QualifiedTableName], java.lang.String)}
; {var3167=org.hibernate.mapping.Table, var1222=r0, var846=org.hibernate.boot.model.relational.SqlStringGenerationContext, var28=r2, var1603=$r1, var1118=null_type, var1204=org.hibernate.boot.model.relational.QualifiedTableName, var3317=$r3, var257=org.hibernate.boot.model.naming.Identifier, var611=$r6, var2625=$r5, var1432=$r4, var1880=$r7}
; {org.hibernate.mapping.Table=var3167, r0=var1222, org.hibernate.boot.model.relational.SqlStringGenerationContext=var846, r2=var28, $r1=var1603, null_type=var1118, org.hibernate.boot.model.relational.QualifiedTableName=var1204, $r3=var3317, org.hibernate.boot.model.naming.Identifier=var257, $r6=var611, $r5=var2625, $r4=var1432, $r7=var1880}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.mapping.Table;	r2 := @parameter0: org.hibernate.boot.model.relational.SqlStringGenerationContext;	$r1 = r0.<org.hibernate.mapping.Table: java.lang.String subselect>;	if $r1 == null goto $r3 = new org.hibernate.boot.model.relational.QualifiedTableName;	$r3 = new org.hibernate.boot.model.relational.QualifiedTableName;	$r6 = r0.<org.hibernate.mapping.Table: org.hibernate.boot.model.naming.Identifier catalog>;	$r5 = r0.<org.hibernate.mapping.Table: org.hibernate.boot.model.naming.Identifier schema>;	$r4 = r0.<org.hibernate.mapping.Table: org.hibernate.boot.model.naming.Identifier name>;	specialinvoke $r3.<org.hibernate.boot.model.relational.QualifiedTableName: void <init>(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r6, $r5, $r4);	$r7 = interfaceinvoke r2.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String format(org.hibernate.boot.model.relational.QualifiedTableName)>($r3);	return $r7
;block_num 2