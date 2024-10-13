(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2992 0)
(declare-sort var709 0)
(declare-sort var670 0)
(declare-sort var2577 0)
(declare-sort var3292 0)
(declare-sort var3317 0)
(declare-sort var671 0)
(declare-sort var325 0)
(declare-sort var2235 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var670-init () var670)
(declare-fun <init>/-201242697 (var670) void)
(declare-fun var709_getName/-554364985 (var709) var2577)
(declare-fun getCatalogName/1959036760 (var3317) var3292)
(declare-fun cast-from-var2577-to-var3317 (var2577) var3317)
(declare-fun getSchemaName/569056114 (var3317) var3292)
(declare-fun getText/-467579009 (var3292) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/199734091 (var3317) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun convertSQLException/-114946358 (var2992 var671 String) var325)
(declare-fun cast-from-var325-to-var2235 (var325) var2235)
(declare-const null-var2992 var2992)
(declare-const null-var709 var709)
(declare-const null-var3292 var3292)
(declare-const null-var671 var671)
(declare-const var912 var2992) ; Statement: r5 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl 
(assert (not (= var912 null-var2992)))
(declare-const var798 var709) ; Statement: r1 := @parameter0: org.hibernate.tool.schema.extract.spi.TableInformation 
(assert (not (= var798 null-var709)))
(define-const var1147 var670 var670-init) ; Statement: $r25 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var1147)) ; Statement: specialinvoke $r25.<java.util.HashMap: void <init>()>() 

(declare-const var1147!1 var670)
(define-const var1377 var2577 (var709_getName/-554364985 var798)) ; Statement: r2 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>() 
(assert true)
(define-const var1000 var3292 (getCatalogName/1959036760 (cast-from-var2577-to-var3317 var1377))) ; Statement: r3 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getCatalogName()>() 
(assert true)
(define-const var3812 var3292 (getSchemaName/569056114 (cast-from-var2577-to-var3317 var1377))) ; Statement: r4 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getSchemaName()>() 
 ; Statement: if r3 != null goto r23 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (not (= var1000 null-var3292))) ; Cond: r3 != null 
(assert true)
(define-const var548 String (getText/-467579009 var1000)) ; Statement: r23 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert true) ; Non Conditional
 ; Statement: if r4 != null goto r24 = virtualinvoke r4.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (not (not (= var3812 null-var3292)))) ; Negate: Cond: r4 != null  
(define-const var2205 String "") ; Statement: r24 = "" 
 ; Statement: goto [?= $r6 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getTableName()>()] 
(assert true) ; Non Conditional
(declare-const var1795 var671) ; Statement: $r15 := @caughtexception 
(assert (not (= var1795 null-var671)))
(define-const var2367 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2367)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2367!1 String)
(assert (= var2367!1 ""))
(assert true)
(define-const var3161 String (append/672562846 var2367!1 "Error accessing index information: ")) ; Statement: $r19 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error accessing index information: ") 
(declare-const var2367!2 String)
(assert (= var2367!2 (str.++ var2367!1 "Error accessing index information: ")))
(define-const var2264 var2577 (var709_getName/-554364985 var798)) ; Statement: $r17 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>() 
(assert true)
(define-const var3899 String (toString/199734091 (cast-from-var2577-to-var3317 var2264))) ; Statement: $r18 = virtualinvoke $r17.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>() 
(assert true)
(define-const var1826 String (append/672562846 var3161 var3899)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var3161!1 String)
(assert (= var3161!1 (str.++ var3161 var3899)))
(assert true)
(define-const var614 String (toString/-2075883882 var1826)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3462 var325 (convertSQLException/-114946358 var912 var1795 var614)) ; Statement: $r22 = virtualinvoke r5.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: org.hibernate.JDBCException convertSQLException(java.sql.SQLException,java.lang.String)>($r15, $r21) 
(define-const var251 var2235 (cast-from-var325-to-var2235 var3462)) ; Statement: $r28 = (java.lang.Throwable) $r22 
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {var670-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), var709_getName/-554364985=([org.hibernate.tool.schema.extract.spi.TableInformation], org.hibernate.boot.model.relational.QualifiedTableName), getCatalogName/1959036760=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), cast-from-var2577-to-var3317=([org.hibernate.boot.model.relational.QualifiedTableName], org.hibernate.boot.model.relational.QualifiedNameParser$NameParts), getSchemaName/569056114=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), getText/-467579009=([org.hibernate.boot.model.naming.Identifier], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/199734091=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), convertSQLException/-114946358=([org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, java.sql.SQLException, java.lang.String], org.hibernate.JDBCException), cast-from-var325-to-var2235=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var2992=org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, var912=r5, var709=org.hibernate.tool.schema.extract.spi.TableInformation, var798=r1, var670=java.util.HashMap, var1147=$r25, var2577=org.hibernate.boot.model.relational.QualifiedTableName, var1377=r2, var3292=org.hibernate.boot.model.naming.Identifier, var3317=org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, var1000=r3, var3812=r4, var548=r23, var2205=r24, var671=java.sql.SQLException, var1795=$r15, var2367=$r26, var3161=$r19, var2264=$r17, var3899=$r18, var1826=$r20, var614=$r21, var325=org.hibernate.JDBCException, var3462=$r22, var2235=java.lang.Throwable, var251=$r28}
; {org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl=var2992, r5=var912, org.hibernate.tool.schema.extract.spi.TableInformation=var709, r1=var798, java.util.HashMap=var670, $r25=var1147, org.hibernate.boot.model.relational.QualifiedTableName=var2577, r2=var1377, org.hibernate.boot.model.naming.Identifier=var3292, org.hibernate.boot.model.relational.QualifiedNameParser$NameParts=var3317, r3=var1000, r4=var3812, r23=var548, r24=var2205, java.sql.SQLException=var671, $r15=var1795, $r26=var2367, $r19=var3161, $r17=var2264, $r18=var3899, $r20=var1826, $r21=var614, org.hibernate.JDBCException=var325, $r22=var3462, java.lang.Throwable=var2235, $r28=var251}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.boot.model.relational.QualifiedNameParser$NameParts: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl;	r1 := @parameter0: org.hibernate.tool.schema.extract.spi.TableInformation;	$r25 = new java.util.HashMap;	specialinvoke $r25.<java.util.HashMap: void <init>()>();	r2 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>();	r3 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getCatalogName()>();	r4 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getSchemaName()>();	if r3 != null goto r23 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	r23 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	if r4 != null goto r24 = virtualinvoke r4.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	r24 = "";	goto [?= $r6 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getTableName()>()];	$r15 := @caughtexception;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error accessing index information: ");	$r17 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>();	$r18 = virtualinvoke $r17.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$r22 = virtualinvoke r5.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: org.hibernate.JDBCException convertSQLException(java.sql.SQLException,java.lang.String)>($r15, $r21);	$r28 = (java.lang.Throwable) $r22;	throw $r28
;block_num 5