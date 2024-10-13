(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1993 0)
(declare-sort var927 0)
(declare-sort var3106 0)
(declare-sort var2385 0)
(declare-sort var2468 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getIdTableSupport/-186027504 (var1993) var2385)
(declare-fun var2385_getDropIdTableCommand/540792117 (var2385) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getQualifiedTableName/-853736433 (var927) var2468)
(declare-fun formatIdTableName/993713153 (var1993 var2468 var3106) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1993 var1993)
(declare-const null-var927 var927)
(declare-const null-var3106 var3106)
(declare-const var874 var1993) ; Statement: r1 := @this: org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl 
(assert (not (= var874 null-var1993)))
(declare-const var2429 var927) ; Statement: r5 := @parameter0: org.hibernate.mapping.Table 
(assert (not (= var2429 null-var927)))
(declare-const var2616 var3106) ; Statement: r6 := @parameter1: org.hibernate.boot.model.relational.SqlStringGenerationContext 
(assert (not (= var2616 null-var3106)))
(define-const var3884 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3884)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3884!1 String)
(assert (= var3884!1 ""))
(assert true)
(define-const var1380 var2385 (getIdTableSupport/-186027504 var874)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl: org.hibernate.hql.spi.id.IdTableSupport getIdTableSupport()>() 
(define-const var79 String (var2385_getDropIdTableCommand/540792117 var1380)) ; Statement: $r3 = interfaceinvoke $r2.<org.hibernate.hql.spi.id.IdTableSupport: java.lang.String getDropIdTableCommand()>() 
(assert true)
(define-const var3720 String (append/672562846 var3884!1 var79)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3884!2 String)
(assert (= var3884!2 (str.++ var3884!1 var79)))
(assert true)
(define-const var3163 String (append/672562846 var3720 " ")) ; Statement: $r9 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3720!1 String)
(assert (= var3720!1 (str.++ var3720 " ")))
(assert true)
(define-const var3571 var2468 (getQualifiedTableName/-853736433 var2429)) ; Statement: $r7 = virtualinvoke r5.<org.hibernate.mapping.Table: org.hibernate.boot.model.relational.QualifiedTableName getQualifiedTableName()>() 
(assert true)
(define-const var3483 String (formatIdTableName/993713153 var874 var3571 var2616)) ; Statement: $r8 = virtualinvoke r1.<org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl: java.lang.String formatIdTableName(org.hibernate.boot.model.relational.QualifiedTableName,org.hibernate.boot.model.relational.SqlStringGenerationContext)>($r7, r6) 
(assert true)
(define-const var2405 String (append/672562846 var3163 var3483)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3163!1 String)
(assert (= var3163!1 (str.++ var3163 var3483)))
(assert true)
(define-const var3133 String (toString/-2075883882 var2405)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getIdTableSupport/-186027504=([org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl], org.hibernate.hql.spi.id.IdTableSupport), var2385_getDropIdTableCommand/540792117=([org.hibernate.hql.spi.id.IdTableSupport], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getQualifiedTableName/-853736433=([org.hibernate.mapping.Table], org.hibernate.boot.model.relational.QualifiedTableName), formatIdTableName/993713153=([org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl, org.hibernate.boot.model.relational.QualifiedTableName, org.hibernate.boot.model.relational.SqlStringGenerationContext], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1993=org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl, var874=r1, var927=org.hibernate.mapping.Table, var2429=r5, var3106=org.hibernate.boot.model.relational.SqlStringGenerationContext, var2616=r6, var3884=$r0, var2385=org.hibernate.hql.spi.id.IdTableSupport, var1380=$r2, var79=$r3, var3720=$r4, var3163=$r9, var2468=org.hibernate.boot.model.relational.QualifiedTableName, var3571=$r7, var3483=$r8, var2405=$r10, var3133=$r11}
; {org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl=var1993, r1=var874, org.hibernate.mapping.Table=var927, r5=var2429, org.hibernate.boot.model.relational.SqlStringGenerationContext=var3106, r6=var2616, $r0=var3884, org.hibernate.hql.spi.id.IdTableSupport=var2385, $r2=var1380, $r3=var79, $r4=var3720, $r9=var3163, org.hibernate.boot.model.relational.QualifiedTableName=var2468, $r7=var3571, $r8=var3483, $r10=var2405, $r11=var3133}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl;	r5 := @parameter0: org.hibernate.mapping.Table;	r6 := @parameter1: org.hibernate.boot.model.relational.SqlStringGenerationContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl: org.hibernate.hql.spi.id.IdTableSupport getIdTableSupport()>();	$r3 = interfaceinvoke $r2.<org.hibernate.hql.spi.id.IdTableSupport: java.lang.String getDropIdTableCommand()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r9 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r7 = virtualinvoke r5.<org.hibernate.mapping.Table: org.hibernate.boot.model.relational.QualifiedTableName getQualifiedTableName()>();	$r8 = virtualinvoke r1.<org.hibernate.hql.spi.id.AbstractMultiTableBulkIdStrategyImpl: java.lang.String formatIdTableName(org.hibernate.boot.model.relational.QualifiedTableName,org.hibernate.boot.model.relational.SqlStringGenerationContext)>($r7, r6);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1