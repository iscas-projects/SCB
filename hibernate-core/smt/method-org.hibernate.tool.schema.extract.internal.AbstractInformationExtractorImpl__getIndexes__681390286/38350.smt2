(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1702 0)
(declare-sort var2430 0)
(declare-sort var1040 0)
(declare-sort var3497 0)
(declare-sort var3533 0)
(declare-sort var1837 0)
(declare-sort var2201 0)
(declare-sort var225 0)
(declare-sort var342 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1040-init () var1040)
(declare-fun <init>/-201242697 (var1040) void)
(declare-fun var2430_getName/-554364985 (var2430) var3497)
(declare-fun getCatalogName/1959036760 (var1837) var3533)
(declare-fun cast-from-var3497-to-var1837 (var3497) var1837)
(declare-fun getSchemaName/569056114 (var1837) var3533)
(declare-fun getText/-467579009 (var3533) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/199734091 (var1837) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun convertSQLException/-114946358 (var1702 var2201 String) var225)
(declare-fun cast-from-var225-to-var342 (var225) var342)
(declare-const null-var1702 var1702)
(declare-const null-var2430 var2430)
(declare-const null-var3533 var3533)
(declare-const null-var2201 var2201)
(declare-const var897 var1702) ; Statement: r5 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl 
(assert (not (= var897 null-var1702)))
(declare-const var1871 var2430) ; Statement: r1 := @parameter0: org.hibernate.tool.schema.extract.spi.TableInformation 
(assert (not (= var1871 null-var2430)))
(define-const var1854 var1040 var1040-init) ; Statement: $r25 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var1854)) ; Statement: specialinvoke $r25.<java.util.HashMap: void <init>()>() 

(declare-const var1854!1 var1040)
(define-const var3760 var3497 (var2430_getName/-554364985 var1871)) ; Statement: r2 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>() 
(assert true)
(define-const var3667 var3533 (getCatalogName/1959036760 (cast-from-var3497-to-var1837 var3760))) ; Statement: r3 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getCatalogName()>() 
(assert true)
(define-const var1091 var3533 (getSchemaName/569056114 (cast-from-var3497-to-var1837 var3760))) ; Statement: r4 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getSchemaName()>() 
 ; Statement: if r3 != null goto r23 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (not (not (= var3667 null-var3533)))) ; Negate: Cond: r3 != null  
(define-const var3459 String "") ; Statement: r23 = "" 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r4 != null goto r24 = virtualinvoke r4.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (not (= var1091 null-var3533))) ; Cond: r4 != null 
(assert true)
(define-const var159 String (getText/-467579009 var1091)) ; Statement: r24 = virtualinvoke r4.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1301 var2201) ; Statement: $r15 := @caughtexception 
(assert (not (= var1301 null-var2201)))
(define-const var610 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var610)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var610!1 String)
(assert (= var610!1 ""))
(assert true)
(define-const var870 String (append/672562846 var610!1 "Error accessing index information: ")) ; Statement: $r19 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error accessing index information: ") 
(declare-const var610!2 String)
(assert (= var610!2 (str.++ var610!1 "Error accessing index information: ")))
(define-const var2530 var3497 (var2430_getName/-554364985 var1871)) ; Statement: $r17 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>() 
(assert true)
(define-const var2268 String (toString/199734091 (cast-from-var3497-to-var1837 var2530))) ; Statement: $r18 = virtualinvoke $r17.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>() 
(assert true)
(define-const var923 String (append/672562846 var870 var2268)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var870!1 String)
(assert (= var870!1 (str.++ var870 var2268)))
(assert true)
(define-const var2904 String (toString/-2075883882 var923)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3007 var225 (convertSQLException/-114946358 var897 var1301 var2904)) ; Statement: $r22 = virtualinvoke r5.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: org.hibernate.JDBCException convertSQLException(java.sql.SQLException,java.lang.String)>($r15, $r21) 
(define-const var3111 var342 (cast-from-var225-to-var342 var3007)) ; Statement: $r28 = (java.lang.Throwable) $r22 
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {var1040-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), var2430_getName/-554364985=([org.hibernate.tool.schema.extract.spi.TableInformation], org.hibernate.boot.model.relational.QualifiedTableName), getCatalogName/1959036760=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), cast-from-var3497-to-var1837=([org.hibernate.boot.model.relational.QualifiedTableName], org.hibernate.boot.model.relational.QualifiedNameParser$NameParts), getSchemaName/569056114=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), getText/-467579009=([org.hibernate.boot.model.naming.Identifier], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/199734091=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), convertSQLException/-114946358=([org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, java.sql.SQLException, java.lang.String], org.hibernate.JDBCException), cast-from-var225-to-var342=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var1702=org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, var897=r5, var2430=org.hibernate.tool.schema.extract.spi.TableInformation, var1871=r1, var1040=java.util.HashMap, var1854=$r25, var3497=org.hibernate.boot.model.relational.QualifiedTableName, var3760=r2, var3533=org.hibernate.boot.model.naming.Identifier, var1837=org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, var3667=r3, var1091=r4, var3459=r23, var159=r24, var2201=java.sql.SQLException, var1301=$r15, var610=$r26, var870=$r19, var2530=$r17, var2268=$r18, var923=$r20, var2904=$r21, var225=org.hibernate.JDBCException, var3007=$r22, var342=java.lang.Throwable, var3111=$r28}
; {org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl=var1702, r5=var897, org.hibernate.tool.schema.extract.spi.TableInformation=var2430, r1=var1871, java.util.HashMap=var1040, $r25=var1854, org.hibernate.boot.model.relational.QualifiedTableName=var3497, r2=var3760, org.hibernate.boot.model.naming.Identifier=var3533, org.hibernate.boot.model.relational.QualifiedNameParser$NameParts=var1837, r3=var3667, r4=var1091, r23=var3459, r24=var159, java.sql.SQLException=var2201, $r15=var1301, $r26=var610, $r19=var870, $r17=var2530, $r18=var2268, $r20=var923, $r21=var2904, org.hibernate.JDBCException=var225, $r22=var3007, java.lang.Throwable=var342, $r28=var3111}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.boot.model.relational.QualifiedNameParser$NameParts: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl;	r1 := @parameter0: org.hibernate.tool.schema.extract.spi.TableInformation;	$r25 = new java.util.HashMap;	specialinvoke $r25.<java.util.HashMap: void <init>()>();	r2 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>();	r3 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getCatalogName()>();	r4 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getSchemaName()>();	if r3 != null goto r23 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	r23 = "";	goto [?= (branch)];	if r4 != null goto r24 = virtualinvoke r4.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	r24 = virtualinvoke r4.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	$r15 := @caughtexception;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error accessing index information: ");	$r17 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>();	$r18 = virtualinvoke $r17.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$r22 = virtualinvoke r5.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: org.hibernate.JDBCException convertSQLException(java.sql.SQLException,java.lang.String)>($r15, $r21);	$r28 = (java.lang.Throwable) $r22;	throw $r28
;block_num 5