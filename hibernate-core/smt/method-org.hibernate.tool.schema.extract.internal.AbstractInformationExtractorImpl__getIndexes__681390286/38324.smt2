(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2567 0)
(declare-sort var3034 0)
(declare-sort var1495 0)
(declare-sort var3937 0)
(declare-sort var685 0)
(declare-sort var1262 0)
(declare-sort var3891 0)
(declare-sort var1496 0)
(declare-sort var513 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1495-init () var1495)
(declare-fun <init>/-201242697 (var1495) void)
(declare-fun var3034_getName/-554364985 (var3034) var3937)
(declare-fun getCatalogName/1959036760 (var1262) var685)
(declare-fun cast-from-var3937-to-var1262 (var3937) var1262)
(declare-fun getSchemaName/569056114 (var1262) var685)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/199734091 (var1262) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun convertSQLException/-114946358 (var2567 var3891 String) var1496)
(declare-fun cast-from-var1496-to-var513 (var1496) var513)
(declare-const null-var2567 var2567)
(declare-const null-var3034 var3034)
(declare-const null-var685 var685)
(declare-const null-var3891 var3891)
(declare-const var3137 var2567) ; Statement: r5 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl 
(assert (not (= var3137 null-var2567)))
(declare-const var3704 var3034) ; Statement: r1 := @parameter0: org.hibernate.tool.schema.extract.spi.TableInformation 
(assert (not (= var3704 null-var3034)))
(define-const var2112 var1495 var1495-init) ; Statement: $r25 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var2112)) ; Statement: specialinvoke $r25.<java.util.HashMap: void <init>()>() 

(declare-const var2112!1 var1495)
(define-const var3970 var3937 (var3034_getName/-554364985 var3704)) ; Statement: r2 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>() 
(assert true)
(define-const var2133 var685 (getCatalogName/1959036760 (cast-from-var3937-to-var1262 var3970))) ; Statement: r3 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getCatalogName()>() 
(assert true)
(define-const var2821 var685 (getSchemaName/569056114 (cast-from-var3937-to-var1262 var3970))) ; Statement: r4 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getSchemaName()>() 
 ; Statement: if r3 != null goto r23 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (not (not (= var2133 null-var685)))) ; Negate: Cond: r3 != null  
(define-const var3283 String "") ; Statement: r23 = "" 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r4 != null goto r24 = virtualinvoke r4.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (not (not (= var2821 null-var685)))) ; Negate: Cond: r4 != null  
(define-const var1356 String "") ; Statement: r24 = "" 
 ; Statement: goto [?= $r6 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getTableName()>()] 
(assert true) ; Non Conditional
(declare-const var2145 var3891) ; Statement: $r15 := @caughtexception 
(assert (not (= var2145 null-var3891)))
(define-const var1486 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1486)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1486!1 String)
(assert (= var1486!1 ""))
(assert true)
(define-const var789 String (append/672562846 var1486!1 "Error accessing index information: ")) ; Statement: $r19 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error accessing index information: ") 
(declare-const var1486!2 String)
(assert (= var1486!2 (str.++ var1486!1 "Error accessing index information: ")))
(define-const var698 var3937 (var3034_getName/-554364985 var3704)) ; Statement: $r17 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>() 
(assert true)
(define-const var2297 String (toString/199734091 (cast-from-var3937-to-var1262 var698))) ; Statement: $r18 = virtualinvoke $r17.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>() 
(assert true)
(define-const var252 String (append/672562846 var789 var2297)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var789!1 String)
(assert (= var789!1 (str.++ var789 var2297)))
(assert true)
(define-const var2391 String (toString/-2075883882 var252)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1348 var1496 (convertSQLException/-114946358 var3137 var2145 var2391)) ; Statement: $r22 = virtualinvoke r5.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: org.hibernate.JDBCException convertSQLException(java.sql.SQLException,java.lang.String)>($r15, $r21) 
(define-const var103 var513 (cast-from-var1496-to-var513 var1348)) ; Statement: $r28 = (java.lang.Throwable) $r22 
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {var1495-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), var3034_getName/-554364985=([org.hibernate.tool.schema.extract.spi.TableInformation], org.hibernate.boot.model.relational.QualifiedTableName), getCatalogName/1959036760=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), cast-from-var3937-to-var1262=([org.hibernate.boot.model.relational.QualifiedTableName], org.hibernate.boot.model.relational.QualifiedNameParser$NameParts), getSchemaName/569056114=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/199734091=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), convertSQLException/-114946358=([org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, java.sql.SQLException, java.lang.String], org.hibernate.JDBCException), cast-from-var1496-to-var513=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var2567=org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, var3137=r5, var3034=org.hibernate.tool.schema.extract.spi.TableInformation, var3704=r1, var1495=java.util.HashMap, var2112=$r25, var3937=org.hibernate.boot.model.relational.QualifiedTableName, var3970=r2, var685=org.hibernate.boot.model.naming.Identifier, var1262=org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, var2133=r3, var2821=r4, var3283=r23, var1356=r24, var3891=java.sql.SQLException, var2145=$r15, var1486=$r26, var789=$r19, var698=$r17, var2297=$r18, var252=$r20, var2391=$r21, var1496=org.hibernate.JDBCException, var1348=$r22, var513=java.lang.Throwable, var103=$r28}
; {org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl=var2567, r5=var3137, org.hibernate.tool.schema.extract.spi.TableInformation=var3034, r1=var3704, java.util.HashMap=var1495, $r25=var2112, org.hibernate.boot.model.relational.QualifiedTableName=var3937, r2=var3970, org.hibernate.boot.model.naming.Identifier=var685, org.hibernate.boot.model.relational.QualifiedNameParser$NameParts=var1262, r3=var2133, r4=var2821, r23=var3283, r24=var1356, java.sql.SQLException=var3891, $r15=var2145, $r26=var1486, $r19=var789, $r17=var698, $r18=var2297, $r20=var252, $r21=var2391, org.hibernate.JDBCException=var1496, $r22=var1348, java.lang.Throwable=var513, $r28=var103}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.boot.model.relational.QualifiedNameParser$NameParts: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl;	r1 := @parameter0: org.hibernate.tool.schema.extract.spi.TableInformation;	$r25 = new java.util.HashMap;	specialinvoke $r25.<java.util.HashMap: void <init>()>();	r2 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>();	r3 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getCatalogName()>();	r4 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getSchemaName()>();	if r3 != null goto r23 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	r23 = "";	goto [?= (branch)];	if r4 != null goto r24 = virtualinvoke r4.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	r24 = "";	goto [?= $r6 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getTableName()>()];	$r15 := @caughtexception;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error accessing index information: ");	$r17 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>();	$r18 = virtualinvoke $r17.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$r22 = virtualinvoke r5.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: org.hibernate.JDBCException convertSQLException(java.sql.SQLException,java.lang.String)>($r15, $r21);	$r28 = (java.lang.Throwable) $r22;	throw $r28
;block_num 5