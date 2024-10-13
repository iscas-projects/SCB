(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1973 0)
(declare-sort var2240 0)
(declare-sort var798 0)
(declare-sort var3333 0)
(declare-sort var3128 0)
(declare-sort var1530 0)
(declare-sort var1958 0)
(declare-sort var2574 0)
(declare-sort var870 0)
(declare-sort var170 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getExtractionContext/923664956 (var3333) var798)
(declare-fun cast-from-var1973-to-var3333 (var1973) var3333)
(declare-fun var798_getSqlStringGenerationContext/-364576155 (var798) var3128)
(declare-fun var2240_getName/-554364985 (var2240) var1530)
(declare-fun quote/-913238707 (var1530) var1530)
(declare-fun var3128_format/1204537082 (var3128 var1530) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/199734091 (var2574) String)
(declare-fun cast-from-var1530-to-var2574 (var1530) var2574)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun convertSQLException/-114946358 (var3333 var1958 String) var870)
(declare-fun cast-from-var870-to-var170 (var870) var170)
(declare-const null-var1973 var1973)
(declare-const null-var2240 var2240)
(declare-const null-var1958 var1958)
(declare-const var741 var1973) ; Statement: r0 := @this: org.hibernate.tool.schema.extract.internal.InformationExtractorJdbcDatabaseMetaDataImpl 
(assert (not (= var741 null-var1973)))
(declare-const var1467 var2240) ; Statement: r2 := @parameter0: org.hibernate.tool.schema.extract.spi.TableInformation 
(assert (not (= var1467 null-var2240)))
(assert true)
(define-const var1896 var798 (getExtractionContext/923664956 (cast-from-var1973-to-var3333 var741))) ; Statement: r1 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.InformationExtractorJdbcDatabaseMetaDataImpl: org.hibernate.tool.schema.extract.spi.ExtractionContext getExtractionContext()>() 
(define-const var3486 var3128 (var798_getSqlStringGenerationContext/-364576155 var1896)) ; Statement: $r5 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.ExtractionContext: org.hibernate.boot.model.relational.SqlStringGenerationContext getSqlStringGenerationContext()>() 
(define-const var359 var1530 (var2240_getName/-554364985 var1467)) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>() 
(assert true)
(define-const var1799 var1530 (quote/-913238707 var359)) ; Statement: $r4 = virtualinvoke $r3.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.relational.QualifiedTableName quote()>() 
(define-const var1439 String (var3128_format/1204537082 var3486 var1799)) ; Statement: r6 = interfaceinvoke $r5.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String format(org.hibernate.boot.model.relational.QualifiedTableName)>($r4) 
(define-const var636 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1915 var1958) ; Statement: $r13 := @caughtexception 
(assert (not (= var1915 null-var1958)))
(define-const var3597 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3597)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3597!1 String)
(assert (= var3597!1 ""))
(assert true)
(define-const var3362 String (append/672562846 var3597!1 "Error accessing column metadata: ")) ; Statement: $r17 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error accessing column metadata: ") 
(declare-const var3597!2 String)
(assert (= var3597!2 (str.++ var3597!1 "Error accessing column metadata: ")))
(define-const var645 var1530 (var2240_getName/-554364985 var1467)) ; Statement: $r15 = interfaceinvoke r2.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>() 
(assert true)
(define-const var281 String (toString/199734091 (cast-from-var1530-to-var2574 var645))) ; Statement: $r16 = virtualinvoke $r15.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>() 
(assert true)
(define-const var3327 String (append/672562846 var3362 var281)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var3362!1 String)
(assert (= var3362!1 (str.++ var3362 var281)))
(assert true)
(define-const var2075 String (toString/-2075883882 var3327)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2390 var870 (convertSQLException/-114946358 (cast-from-var1973-to-var3333 var741) var1915 var2075)) ; Statement: $r20 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.InformationExtractorJdbcDatabaseMetaDataImpl: org.hibernate.JDBCException convertSQLException(java.sql.SQLException,java.lang.String)>($r13, $r19) 
(define-const var1555 var170 (cast-from-var870-to-var170 var2390)) ; Statement: $r23 = (java.lang.Throwable) $r20 
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {getExtractionContext/923664956=([org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl], org.hibernate.tool.schema.extract.spi.ExtractionContext), cast-from-var1973-to-var3333=([org.hibernate.tool.schema.extract.internal.InformationExtractorJdbcDatabaseMetaDataImpl], org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl), var798_getSqlStringGenerationContext/-364576155=([org.hibernate.tool.schema.extract.spi.ExtractionContext], org.hibernate.boot.model.relational.SqlStringGenerationContext), var2240_getName/-554364985=([org.hibernate.tool.schema.extract.spi.TableInformation], org.hibernate.boot.model.relational.QualifiedTableName), quote/-913238707=([org.hibernate.boot.model.relational.QualifiedTableName], org.hibernate.boot.model.relational.QualifiedTableName), var3128_format/1204537082=([org.hibernate.boot.model.relational.SqlStringGenerationContext, org.hibernate.boot.model.relational.QualifiedTableName], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/199734091=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], java.lang.String), cast-from-var1530-to-var2574=([org.hibernate.boot.model.relational.QualifiedTableName], org.hibernate.boot.model.relational.QualifiedNameParser$NameParts), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), convertSQLException/-114946358=([org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, java.sql.SQLException, java.lang.String], org.hibernate.JDBCException), cast-from-var870-to-var170=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var1973=org.hibernate.tool.schema.extract.internal.InformationExtractorJdbcDatabaseMetaDataImpl, var741=r0, var2240=org.hibernate.tool.schema.extract.spi.TableInformation, var1467=r2, var798=org.hibernate.tool.schema.extract.spi.ExtractionContext, var3333=org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, var1896=r1, var3128=org.hibernate.boot.model.relational.SqlStringGenerationContext, var3486=$r5, var1530=org.hibernate.boot.model.relational.QualifiedTableName, var359=$r3, var1799=$r4, var1439=r6, var636=$r21, var1958=java.sql.SQLException, var1915=$r13, var3597=$r22, var3362=$r17, var645=$r15, var2574=org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, var281=$r16, var3327=$r18, var2075=$r19, var870=org.hibernate.JDBCException, var2390=$r20, var170=java.lang.Throwable, var1555=$r23}
; {org.hibernate.tool.schema.extract.internal.InformationExtractorJdbcDatabaseMetaDataImpl=var1973, r0=var741, org.hibernate.tool.schema.extract.spi.TableInformation=var2240, r2=var1467, org.hibernate.tool.schema.extract.spi.ExtractionContext=var798, org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl=var3333, r1=var1896, org.hibernate.boot.model.relational.SqlStringGenerationContext=var3128, $r5=var3486, org.hibernate.boot.model.relational.QualifiedTableName=var1530, $r3=var359, $r4=var1799, r6=var1439, $r21=var636, java.sql.SQLException=var1958, $r13=var1915, $r22=var3597, $r17=var3362, $r15=var645, org.hibernate.boot.model.relational.QualifiedNameParser$NameParts=var2574, $r16=var281, $r18=var3327, $r19=var2075, org.hibernate.JDBCException=var870, $r20=var2390, java.lang.Throwable=var170, $r23=var1555}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.boot.model.relational.QualifiedNameParser$NameParts: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.tool.schema.extract.internal.InformationExtractorJdbcDatabaseMetaDataImpl;	r2 := @parameter0: org.hibernate.tool.schema.extract.spi.TableInformation;	r1 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.InformationExtractorJdbcDatabaseMetaDataImpl: org.hibernate.tool.schema.extract.spi.ExtractionContext getExtractionContext()>();	$r5 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.ExtractionContext: org.hibernate.boot.model.relational.SqlStringGenerationContext getSqlStringGenerationContext()>();	$r3 = interfaceinvoke r2.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>();	$r4 = virtualinvoke $r3.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.relational.QualifiedTableName quote()>();	r6 = interfaceinvoke $r5.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String format(org.hibernate.boot.model.relational.QualifiedTableName)>($r4);	$r21 = new java.lang.StringBuilder;	$r13 := @caughtexception;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error accessing column metadata: ");	$r15 = interfaceinvoke r2.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>();	$r16 = virtualinvoke $r15.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	$r20 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.InformationExtractorJdbcDatabaseMetaDataImpl: org.hibernate.JDBCException convertSQLException(java.sql.SQLException,java.lang.String)>($r13, $r19);	$r23 = (java.lang.Throwable) $r20;	throw $r23
;block_num 2