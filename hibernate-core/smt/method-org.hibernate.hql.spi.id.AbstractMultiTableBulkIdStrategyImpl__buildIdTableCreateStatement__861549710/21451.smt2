(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var744 0)
(declare-sort var3568 0)
(declare-sort var2829 0)
(declare-sort var3922 0)
(declare-sort var932 0)
(declare-sort var2422 0)
(declare-sort var403 0)
(declare-sort var1048 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3922_getDialect/-253498657 (var3922) var932)
(declare-fun String-init () String)
(declare-fun getIdTableSupport/-186027504 (var744) var2422)
(declare-fun var2422_getCreateIdTableCommand/-520322296 (var2422) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getQualifiedTableName/-853736433 (var3568) var403)
(declare-fun formatIdTableName/993713153 (var744 var403 var3922) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getColumnIterator/1853955427 (var3568) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var2422_getCreateIdTableStatementOptions/-1831620424 (var2422) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var744 var744)
(declare-const null-var3568 var3568)
(declare-const null-var2829 var2829)
(declare-const null-var3922 var3922)
(declare-const null-String String)
(declare-const var3291 var744) ; Statement: r3 := @this: org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl 
(assert (not (= var3291 null-var744)))
(declare-const var1430 var3568) ; Statement: r6 := @parameter0: org.hibernate.mapping.Table 
(assert (not (= var1430 null-var3568)))
(declare-const var2608 var2829) ; Statement: r22 := @parameter1: org.hibernate.boot.spi.MetadataImplementor 
(assert (not (= var2608 null-var2829)))
(declare-const var2824 var3922) ; Statement: r0 := @parameter2: org.hibernate.boot.model.relational.SqlStringGenerationContext 
(assert (not (= var2824 null-var3922)))
(define-const var3796 var932 (var3922_getDialect/-253498657 var2824)) ; Statement: r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.SqlStringGenerationContext: org.hibernate.dialect.Dialect getDialect()>() 
(define-const var2842 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
(define-const var3636 var2422 (getIdTableSupport/-186027504 var3291)) ; Statement: $r4 = virtualinvoke r3.<org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl: org.hibernate.hql.spi.id.IdTableSupport getIdTableSupport()>() 
(define-const var3924 String (var2422_getCreateIdTableCommand/-520322296 var3636)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.hql.spi.id.IdTableSupport: java.lang.String getCreateIdTableCommand()>() 
(assert true)
;(assert (<init>/-1061048412 var2842 var3924)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5) 
(declare-const var2842!1 String)
(assert (= var2842!1 var3924))
(assert true)
(define-const var1632 String (append/-1166366385 var2842!1 32)) ; Statement: $r9 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2842!2 String)
(assert (str.prefixof var2842!1 var2842!2))
(assert true)
(define-const var684 var403 (getQualifiedTableName/-853736433 var1430)) ; Statement: $r7 = virtualinvoke r6.<org.hibernate.mapping.Table: org.hibernate.boot.model.relational.QualifiedTableName getQualifiedTableName()>() 
(assert true)
(define-const var2177 String (formatIdTableName/993713153 var3291 var684 var2824)) ; Statement: $r8 = virtualinvoke r3.<org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl: java.lang.String formatIdTableName(org.hibernate.boot.model.relational.QualifiedTableName,org.hibernate.boot.model.relational.SqlStringGenerationContext)>($r7, r0) 
(assert true)
(define-const var1056 String (append/672562846 var1632 var2177)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1632!1 String)
(assert (= var1632!1 (str.++ var1632 var2177)))
(assert true)
(define-const var582 String (append/672562846 var1056 " (")) ; Statement: r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var1056!1 String)
(assert (= var1056!1 (str.++ var1056 " (")))
(assert true)
(define-const var2204 Iterator (getColumnIterator/1853955427 var1430)) ; Statement: r12 = virtualinvoke r6.<org.hibernate.mapping.Table: java.util.Iterator getColumnIterator()>() 
(assert true) ; Non Conditional
(define-const var10 Bool (Iterator_hasNext/-1669924200 var2204)) ; Statement: $z0 = interfaceinvoke r12.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(assert (= (ite var10 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var582 ") ")) ; Statement: virtualinvoke r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var582!1 String)
(assert (= var582!1 (str.++ var582 ") ")))
(assert true)
(define-const var171 var2422 (getIdTableSupport/-186027504 var3291)) ; Statement: $r13 = virtualinvoke r3.<org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl: org.hibernate.hql.spi.id.IdTableSupport getIdTableSupport()>() 
(define-const var3274 String (var2422_getCreateIdTableStatementOptions/-1831620424 var171)) ; Statement: $r14 = interfaceinvoke $r13.<org.hibernate.hql.spi.id.IdTableSupport: java.lang.String getCreateIdTableStatementOptions()>() 
 ; Statement: if $r14 == null goto $r15 = virtualinvoke r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var3274 null-String)) ; Cond: $r14 == null 
(assert true)
(define-const var204 String (toString/-2075883882 var582!1)) ; Statement: $r15 = virtualinvoke r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var3922_getDialect/-253498657=([org.hibernate.boot.model.relational.SqlStringGenerationContext], org.hibernate.dialect.Dialect), String-init=([], java.lang.StringBuilder), getIdTableSupport/-186027504=([org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl], org.hibernate.hql.spi.id.IdTableSupport), var2422_getCreateIdTableCommand/-520322296=([org.hibernate.hql.spi.id.IdTableSupport], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getQualifiedTableName/-853736433=([org.hibernate.mapping.Table], org.hibernate.boot.model.relational.QualifiedTableName), formatIdTableName/993713153=([org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl, org.hibernate.boot.model.relational.QualifiedTableName, org.hibernate.boot.model.relational.SqlStringGenerationContext], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getColumnIterator/1853955427=([org.hibernate.mapping.Table], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var2422_getCreateIdTableStatementOptions/-1831620424=([org.hibernate.hql.spi.id.IdTableSupport], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var744=org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl, var3291=r3, var3568=org.hibernate.mapping.Table, var1430=r6, var2829=org.hibernate.boot.spi.MetadataImplementor, var2608=r22, var3922=org.hibernate.boot.model.relational.SqlStringGenerationContext, var2824=r0, var932=org.hibernate.dialect.Dialect, var3796=r1, var2842=$r2, var2422=org.hibernate.hql.spi.id.IdTableSupport, var3636=$r4, var3924=$r5, var1632=$r9, var403=org.hibernate.boot.model.relational.QualifiedTableName, var684=$r7, var2177=$r8, var1056=$r10, var582=r11, var2204=r12, var10=$z0, var171=$r13, var3274=$r14, var1048=null_type, var204=$r15}
; {org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl=var744, r3=var3291, org.hibernate.mapping.Table=var3568, r6=var1430, org.hibernate.boot.spi.MetadataImplementor=var2829, r22=var2608, org.hibernate.boot.model.relational.SqlStringGenerationContext=var3922, r0=var2824, org.hibernate.dialect.Dialect=var932, r1=var3796, $r2=var2842, org.hibernate.hql.spi.id.IdTableSupport=var2422, $r4=var3636, $r5=var3924, $r9=var1632, org.hibernate.boot.model.relational.QualifiedTableName=var403, $r7=var684, $r8=var2177, $r10=var1056, r11=var582, r12=var2204, $z0=var10, $r13=var171, $r14=var3274, null_type=var1048, $r15=var204}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl;	r6 := @parameter0: org.hibernate.mapping.Table;	r22 := @parameter1: org.hibernate.boot.spi.MetadataImplementor;	r0 := @parameter2: org.hibernate.boot.model.relational.SqlStringGenerationContext;	r1 = interfaceinvoke r0.<org.hibernate.boot.model.relational.SqlStringGenerationContext: org.hibernate.dialect.Dialect getDialect()>();	$r2 = new java.lang.StringBuilder;	$r4 = virtualinvoke r3.<org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl: org.hibernate.hql.spi.id.IdTableSupport getIdTableSupport()>();	$r5 = interfaceinvoke $r4.<org.hibernate.hql.spi.id.IdTableSupport: java.lang.String getCreateIdTableCommand()>();	specialinvoke $r2.<java.lang.StringBuilder: void <init>(java.lang.String)>($r5);	$r9 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r7 = virtualinvoke r6.<org.hibernate.mapping.Table: org.hibernate.boot.model.relational.QualifiedTableName getQualifiedTableName()>();	$r8 = virtualinvoke r3.<org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl: java.lang.String formatIdTableName(org.hibernate.boot.model.relational.QualifiedTableName,org.hibernate.boot.model.relational.SqlStringGenerationContext)>($r7, r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	r12 = virtualinvoke r6.<org.hibernate.mapping.Table: java.util.Iterator getColumnIterator()>();	$z0 = interfaceinvoke r12.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	virtualinvoke r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r13 = virtualinvoke r3.<org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl: org.hibernate.hql.spi.id.IdTableSupport getIdTableSupport()>();	$r14 = interfaceinvoke $r13.<org.hibernate.hql.spi.id.IdTableSupport: java.lang.String getCreateIdTableStatementOptions()>();	if $r14 == null goto $r15 = virtualinvoke r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 4