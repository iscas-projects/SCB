(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3410 0)
(declare-sort var1251 0)
(declare-sort var3763 0)
(declare-sort var1039 0)
(declare-sort var1805 0)
(declare-sort var2619 0)
(declare-sort var834 0)
(declare-sort var101 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTable/2028539592 (var2619) var1805)
(declare-fun cast-from-var1251-to-var2619 (var1251) var2619)
(declare-fun getQualifiedTableName/-853736433 (var1805) var834)
(declare-fun var1039_format/1204537082 (var1039 var834) String)
(declare-fun String-init () String)
(declare-fun dialect/-331694648 (var3410) var101)
(declare-fun getAlterTableString/-573220996 (var101 String) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun getDropUnique/-71926664 (var3410) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun supportsIfExistsBeforeConstraintName/562498463 (var101) Bool)
(declare-fun getName/-2142322286 (var2619) String)
(declare-fun quote/1287717023 (var101 String) String)
(declare-fun supportsIfExistsAfterConstraintName/-744010832 (var101) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3410 var3410)
(declare-const null-var1251 var1251)
(declare-const null-var3763 var3763)
(declare-const null-var1039 var1039)
(declare-const var1745 var3410) ; Statement: r6 := @this: org.hibernate.dialect.unique.DefaultUniqueDelegate 
(assert (not (= var1745 null-var3410)))
(declare-const var1787 var1251) ; Statement: r1 := @parameter0: org.hibernate.mapping.UniqueKey 
(assert (not (= var1787 null-var1251)))
(declare-const var280 var3763) ; Statement: r16 := @parameter1: org.hibernate.boot.Metadata 
(assert (not (= var280 null-var3763)))
(declare-const var1628 var1039) ; Statement: r0 := @parameter2: org.hibernate.boot.model.relational.SqlStringGenerationContext 
(assert (not (= var1628 null-var1039)))
(assert true)
(define-const var104 var1805 (getTable/2028539592 (cast-from-var1251-to-var2619 var1787))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.mapping.UniqueKey: org.hibernate.mapping.Table getTable()>() 
(assert true)
(define-const var2192 var834 (getQualifiedTableName/-853736433 var104)) ; Statement: $r3 = virtualinvoke $r2.<org.hibernate.mapping.Table: org.hibernate.boot.model.relational.QualifiedTableName getQualifiedTableName()>() 
(define-const var1415 String (var1039_format/1204537082 var1628 var2192)) ; Statement: r4 = interfaceinvoke r0.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String format(org.hibernate.boot.model.relational.QualifiedTableName)>($r3) 
(define-const var2455 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(define-const var953 var101 (dialect/-331694648 var1745)) ; Statement: $r7 = r6.<org.hibernate.dialect.unique.DefaultUniqueDelegate: org.hibernate.dialect.Dialect dialect> 
(assert true)
(define-const var1252 String (getAlterTableString/-573220996 var953 var1415)) ; Statement: $r8 = virtualinvoke $r7.<org.hibernate.dialect.Dialect: java.lang.String getAlterTableString(java.lang.String)>(r4) 
(assert true)
;(assert (<init>/-1061048412 var2455 var1252)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>(java.lang.String)>($r8) 
(declare-const var2455!1 String)
(assert (= var2455!1 var1252))
(assert true)
(define-const var996 String (getDropUnique/-71926664 var1745)) ; Statement: $r9 = virtualinvoke r6.<org.hibernate.dialect.unique.DefaultUniqueDelegate: java.lang.String getDropUnique()>() 
(assert true)
;(assert (append/672562846 var2455!1 var996)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2455!2 String)
(assert (= var2455!2 (str.++ var2455!1 var996)))
(define-const var932 var101 (dialect/-331694648 var1745)) ; Statement: $r10 = r6.<org.hibernate.dialect.unique.DefaultUniqueDelegate: org.hibernate.dialect.Dialect dialect> 
(assert true)
(define-const var1489 Bool (supportsIfExistsBeforeConstraintName/562498463 var932)) ; Statement: $z0 = virtualinvoke $r10.<org.hibernate.dialect.Dialect: boolean supportsIfExistsBeforeConstraintName()>() 
 ; Statement: if $z0 == 0 goto $r11 = r6.<org.hibernate.dialect.unique.DefaultUniqueDelegate: org.hibernate.dialect.Dialect dialect> 
(assert (= (ite var1489 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1451 var101 (dialect/-331694648 var1745)) ; Statement: $r11 = r6.<org.hibernate.dialect.unique.DefaultUniqueDelegate: org.hibernate.dialect.Dialect dialect> 
(assert true)
(define-const var560 String (getName/-2142322286 (cast-from-var1251-to-var2619 var1787))) ; Statement: $r12 = virtualinvoke r1.<org.hibernate.mapping.UniqueKey: java.lang.String getName()>() 
(assert true)
(define-const var330 String (quote/1287717023 var1451 var560)) ; Statement: $r13 = virtualinvoke $r11.<org.hibernate.dialect.Dialect: java.lang.String quote(java.lang.String)>($r12) 
(assert true)
;(assert (append/672562846 var2455!2 var330)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2455!3 String)
(assert (= var2455!3 (str.++ var2455!2 var330)))
(define-const var3871 var101 (dialect/-331694648 var1745)) ; Statement: $r14 = r6.<org.hibernate.dialect.unique.DefaultUniqueDelegate: org.hibernate.dialect.Dialect dialect> 
(assert true)
(define-const var2160 Bool (supportsIfExistsAfterConstraintName/-744010832 var3871)) ; Statement: $z1 = virtualinvoke $r14.<org.hibernate.dialect.Dialect: boolean supportsIfExistsAfterConstraintName()>() 
 ; Statement: if $z1 == 0 goto $r15 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2160 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1017 String (toString/-2075883882 var2455!3)) ; Statement: $r15 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getTable/2028539592=([org.hibernate.mapping.Constraint], org.hibernate.mapping.Table), cast-from-var1251-to-var2619=([org.hibernate.mapping.UniqueKey], org.hibernate.mapping.Constraint), getQualifiedTableName/-853736433=([org.hibernate.mapping.Table], org.hibernate.boot.model.relational.QualifiedTableName), var1039_format/1204537082=([org.hibernate.boot.model.relational.SqlStringGenerationContext, org.hibernate.boot.model.relational.QualifiedTableName], java.lang.String), String-init=([], java.lang.StringBuilder), dialect/-331694648=([org.hibernate.dialect.unique.DefaultUniqueDelegate], org.hibernate.dialect.Dialect), getAlterTableString/-573220996=([org.hibernate.dialect.Dialect, java.lang.String], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), getDropUnique/-71926664=([org.hibernate.dialect.unique.DefaultUniqueDelegate], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), supportsIfExistsBeforeConstraintName/562498463=([org.hibernate.dialect.Dialect], boolean), getName/-2142322286=([org.hibernate.mapping.Constraint], java.lang.String), quote/1287717023=([org.hibernate.dialect.Dialect, java.lang.String], java.lang.String), supportsIfExistsAfterConstraintName/-744010832=([org.hibernate.dialect.Dialect], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3410=org.hibernate.dialect.unique.DefaultUniqueDelegate, var1745=r6, var1251=org.hibernate.mapping.UniqueKey, var1787=r1, var3763=org.hibernate.boot.Metadata, var280=r16, var1039=org.hibernate.boot.model.relational.SqlStringGenerationContext, var1628=r0, var1805=org.hibernate.mapping.Table, var2619=org.hibernate.mapping.Constraint, var104=$r2, var834=org.hibernate.boot.model.relational.QualifiedTableName, var2192=$r3, var1415=r4, var2455=$r5, var101=org.hibernate.dialect.Dialect, var953=$r7, var1252=$r8, var996=$r9, var932=$r10, var1489=$z0, var1451=$r11, var560=$r12, var330=$r13, var3871=$r14, var2160=$z1, var1017=$r15}
; {org.hibernate.dialect.unique.DefaultUniqueDelegate=var3410, r6=var1745, org.hibernate.mapping.UniqueKey=var1251, r1=var1787, org.hibernate.boot.Metadata=var3763, r16=var280, org.hibernate.boot.model.relational.SqlStringGenerationContext=var1039, r0=var1628, org.hibernate.mapping.Table=var1805, org.hibernate.mapping.Constraint=var2619, $r2=var104, org.hibernate.boot.model.relational.QualifiedTableName=var834, $r3=var2192, r4=var1415, $r5=var2455, org.hibernate.dialect.Dialect=var101, $r7=var953, $r8=var1252, $r9=var996, $r10=var932, $z0=var1489, $r11=var1451, $r12=var560, $r13=var330, $r14=var3871, $z1=var2160, $r15=var1017}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.unique.DefaultUniqueDelegate;	r1 := @parameter0: org.hibernate.mapping.UniqueKey;	r16 := @parameter1: org.hibernate.boot.Metadata;	r0 := @parameter2: org.hibernate.boot.model.relational.SqlStringGenerationContext;	$r2 = virtualinvoke r1.<org.hibernate.mapping.UniqueKey: org.hibernate.mapping.Table getTable()>();	$r3 = virtualinvoke $r2.<org.hibernate.mapping.Table: org.hibernate.boot.model.relational.QualifiedTableName getQualifiedTableName()>();	r4 = interfaceinvoke r0.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String format(org.hibernate.boot.model.relational.QualifiedTableName)>($r3);	$r5 = new java.lang.StringBuilder;	$r7 = r6.<org.hibernate.dialect.unique.DefaultUniqueDelegate: org.hibernate.dialect.Dialect dialect>;	$r8 = virtualinvoke $r7.<org.hibernate.dialect.Dialect: java.lang.String getAlterTableString(java.lang.String)>(r4);	specialinvoke $r5.<java.lang.StringBuilder: void <init>(java.lang.String)>($r8);	$r9 = virtualinvoke r6.<org.hibernate.dialect.unique.DefaultUniqueDelegate: java.lang.String getDropUnique()>();	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r10 = r6.<org.hibernate.dialect.unique.DefaultUniqueDelegate: org.hibernate.dialect.Dialect dialect>;	$z0 = virtualinvoke $r10.<org.hibernate.dialect.Dialect: boolean supportsIfExistsBeforeConstraintName()>();	if $z0 == 0 goto $r11 = r6.<org.hibernate.dialect.unique.DefaultUniqueDelegate: org.hibernate.dialect.Dialect dialect>;	$r11 = r6.<org.hibernate.dialect.unique.DefaultUniqueDelegate: org.hibernate.dialect.Dialect dialect>;	$r12 = virtualinvoke r1.<org.hibernate.mapping.UniqueKey: java.lang.String getName()>();	$r13 = virtualinvoke $r11.<org.hibernate.dialect.Dialect: java.lang.String quote(java.lang.String)>($r12);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r14 = r6.<org.hibernate.dialect.unique.DefaultUniqueDelegate: org.hibernate.dialect.Dialect dialect>;	$z1 = virtualinvoke $r14.<org.hibernate.dialect.Dialect: boolean supportsIfExistsAfterConstraintName()>();	if $z1 == 0 goto $r15 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 3