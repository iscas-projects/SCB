(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2836 0)
(declare-sort var2000 0)
(declare-sort var1325 0)
(declare-sort var1731 0)
(declare-sort var357 0)
(declare-sort var1256 0)
(declare-sort var1976 0)
(declare-sort var984 0)
(declare-sort var1028 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1325-init () var1325)
(declare-fun <init>/-201242697 (var1325) void)
(declare-fun var2000_getName/-554364985 (var2000) var1731)
(declare-fun getCatalogName/1959036760 (var1256) var357)
(declare-fun cast-from-var1731-to-var1256 (var1731) var1256)
(declare-fun getSchemaName/569056114 (var1256) var357)
(declare-fun getText/-467579009 (var357) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/199734091 (var1256) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun convertSQLException/-114946358 (var2836 var1976 String) var984)
(declare-fun cast-from-var984-to-var1028 (var984) var1028)
(declare-const null-var2836 var2836)
(declare-const null-var2000 var2000)
(declare-const null-var357 var357)
(declare-const null-var1976 var1976)
(declare-const var526 var2836) ; Statement: r5 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl 
(assert (not (= var526 null-var2836)))
(declare-const var1516 var2000) ; Statement: r1 := @parameter0: org.hibernate.tool.schema.extract.spi.TableInformation 
(assert (not (= var1516 null-var2000)))
(define-const var3902 var1325 var1325-init) ; Statement: $r25 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3902)) ; Statement: specialinvoke $r25.<java.util.HashMap: void <init>()>() 

(declare-const var3902!1 var1325)
(define-const var1427 var1731 (var2000_getName/-554364985 var1516)) ; Statement: r2 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>() 
(assert true)
(define-const var89 var357 (getCatalogName/1959036760 (cast-from-var1731-to-var1256 var1427))) ; Statement: r3 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getCatalogName()>() 
(assert true)
(define-const var1058 var357 (getSchemaName/569056114 (cast-from-var1731-to-var1256 var1427))) ; Statement: r4 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getSchemaName()>() 
 ; Statement: if r3 != null goto r23 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (not (= var89 null-var357))) ; Cond: r3 != null 
(assert true)
(define-const var338 String (getText/-467579009 var89)) ; Statement: r23 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert true) ; Non Conditional
 ; Statement: if r4 != null goto r24 = virtualinvoke r4.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (not (= var1058 null-var357))) ; Cond: r4 != null 
(assert true)
(define-const var3101 String (getText/-467579009 var1058)) ; Statement: r24 = virtualinvoke r4.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var628 var1976) ; Statement: $r15 := @caughtexception 
(assert (not (= var628 null-var1976)))
(define-const var1698 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1698)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1698!1 String)
(assert (= var1698!1 ""))
(assert true)
(define-const var2671 String (append/672562846 var1698!1 "Error accessing index information: ")) ; Statement: $r19 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error accessing index information: ") 
(declare-const var1698!2 String)
(assert (= var1698!2 (str.++ var1698!1 "Error accessing index information: ")))
(define-const var2932 var1731 (var2000_getName/-554364985 var1516)) ; Statement: $r17 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>() 
(assert true)
(define-const var1739 String (toString/199734091 (cast-from-var1731-to-var1256 var2932))) ; Statement: $r18 = virtualinvoke $r17.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>() 
(assert true)
(define-const var1887 String (append/672562846 var2671 var1739)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var2671!1 String)
(assert (= var2671!1 (str.++ var2671 var1739)))
(assert true)
(define-const var3878 String (toString/-2075883882 var1887)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var148 var984 (convertSQLException/-114946358 var526 var628 var3878)) ; Statement: $r22 = virtualinvoke r5.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: org.hibernate.JDBCException convertSQLException(java.sql.SQLException,java.lang.String)>($r15, $r21) 
(define-const var1890 var1028 (cast-from-var984-to-var1028 var148)) ; Statement: $r28 = (java.lang.Throwable) $r22 
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {var1325-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), var2000_getName/-554364985=([org.hibernate.tool.schema.extract.spi.TableInformation], org.hibernate.boot.model.relational.QualifiedTableName), getCatalogName/1959036760=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), cast-from-var1731-to-var1256=([org.hibernate.boot.model.relational.QualifiedTableName], org.hibernate.boot.model.relational.QualifiedNameParser$NameParts), getSchemaName/569056114=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), getText/-467579009=([org.hibernate.boot.model.naming.Identifier], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/199734091=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), convertSQLException/-114946358=([org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, java.sql.SQLException, java.lang.String], org.hibernate.JDBCException), cast-from-var984-to-var1028=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var2836=org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, var526=r5, var2000=org.hibernate.tool.schema.extract.spi.TableInformation, var1516=r1, var1325=java.util.HashMap, var3902=$r25, var1731=org.hibernate.boot.model.relational.QualifiedTableName, var1427=r2, var357=org.hibernate.boot.model.naming.Identifier, var1256=org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, var89=r3, var1058=r4, var338=r23, var3101=r24, var1976=java.sql.SQLException, var628=$r15, var1698=$r26, var2671=$r19, var2932=$r17, var1739=$r18, var1887=$r20, var3878=$r21, var984=org.hibernate.JDBCException, var148=$r22, var1028=java.lang.Throwable, var1890=$r28}
; {org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl=var2836, r5=var526, org.hibernate.tool.schema.extract.spi.TableInformation=var2000, r1=var1516, java.util.HashMap=var1325, $r25=var3902, org.hibernate.boot.model.relational.QualifiedTableName=var1731, r2=var1427, org.hibernate.boot.model.naming.Identifier=var357, org.hibernate.boot.model.relational.QualifiedNameParser$NameParts=var1256, r3=var89, r4=var1058, r23=var338, r24=var3101, java.sql.SQLException=var1976, $r15=var628, $r26=var1698, $r19=var2671, $r17=var2932, $r18=var1739, $r20=var1887, $r21=var3878, org.hibernate.JDBCException=var984, $r22=var148, java.lang.Throwable=var1028, $r28=var1890}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.boot.model.relational.QualifiedNameParser$NameParts: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl;	r1 := @parameter0: org.hibernate.tool.schema.extract.spi.TableInformation;	$r25 = new java.util.HashMap;	specialinvoke $r25.<java.util.HashMap: void <init>()>();	r2 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>();	r3 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getCatalogName()>();	r4 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getSchemaName()>();	if r3 != null goto r23 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	r23 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	if r4 != null goto r24 = virtualinvoke r4.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	r24 = virtualinvoke r4.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	$r15 := @caughtexception;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error accessing index information: ");	$r17 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>();	$r18 = virtualinvoke $r17.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$r22 = virtualinvoke r5.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: org.hibernate.JDBCException convertSQLException(java.sql.SQLException,java.lang.String)>($r15, $r21);	$r28 = (java.lang.Throwable) $r22;	throw $r28
;block_num 5