(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2039 0)
(declare-sort var691 0)
(declare-sort var1258 0)
(declare-sort var2813 0)
(declare-sort var349 0)
(declare-sort var1750 0)
(declare-sort var737 0)
(declare-sort var690 0)
(declare-sort var2541 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1258-init () var1258)
(declare-fun <init>/-201242697 (var1258) void)
(declare-fun var691_getName/-554364985 (var691) var2813)
(declare-fun getCatalogName/1959036760 (var1750) var349)
(declare-fun cast-from-var2813-to-var1750 (var2813) var1750)
(declare-fun getSchemaName/569056114 (var1750) var349)
(declare-fun getText/-467579009 (var349) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/199734091 (var1750) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun convertSQLException/-114946358 (var2039 var737 String) var690)
(declare-fun cast-from-var690-to-var2541 (var690) var2541)
(declare-const null-var2039 var2039)
(declare-const null-var691 var691)
(declare-const null-var349 var349)
(declare-const null-var737 var737)
(declare-const var187 var2039) ; Statement: r5 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl 
(assert (not (= var187 null-var2039)))
(declare-const var3944 var691) ; Statement: r1 := @parameter0: org.hibernate.tool.schema.extract.spi.TableInformation 
(assert (not (= var3944 null-var691)))
(define-const var3394 var1258 var1258-init) ; Statement: $r26 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3394)) ; Statement: specialinvoke $r26.<java.util.HashMap: void <init>()>() 

(declare-const var3394!1 var1258)
(define-const var2300 var2813 (var691_getName/-554364985 var3944)) ; Statement: r2 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>() 
(assert true)
(define-const var1032 var349 (getCatalogName/1959036760 (cast-from-var2813-to-var1750 var2300))) ; Statement: r3 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getCatalogName()>() 
(assert true)
(define-const var2635 var349 (getSchemaName/569056114 (cast-from-var2813-to-var1750 var2300))) ; Statement: r4 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getSchemaName()>() 
 ; Statement: if r3 != null goto r24 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (not (not (= var1032 null-var349)))) ; Negate: Cond: r3 != null  
(define-const var1185 String "") ; Statement: r24 = "" 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r4 != null goto r25 = virtualinvoke r4.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (not (= var2635 null-var349))) ; Cond: r4 != null 
(assert true)
(define-const var2101 String (getText/-467579009 var2635)) ; Statement: r25 = virtualinvoke r4.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1362 var737) ; Statement: $r16 := @caughtexception 
(assert (not (= var1362 null-var737)))
(define-const var1904 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1904)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1904!1 String)
(assert (= var1904!1 ""))
(assert true)
(define-const var3918 String (append/672562846 var1904!1 "Error accessing column metadata: ")) ; Statement: $r20 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error accessing column metadata: ") 
(declare-const var1904!2 String)
(assert (= var1904!2 (str.++ var1904!1 "Error accessing column metadata: ")))
(define-const var3324 var2813 (var691_getName/-554364985 var3944)) ; Statement: $r18 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>() 
(assert true)
(define-const var2232 String (toString/199734091 (cast-from-var2813-to-var1750 var3324))) ; Statement: $r19 = virtualinvoke $r18.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>() 
(assert true)
(define-const var2831 String (append/672562846 var3918 var2232)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var3918!1 String)
(assert (= var3918!1 (str.++ var3918 var2232)))
(assert true)
(define-const var3373 String (toString/-2075883882 var2831)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var450 var690 (convertSQLException/-114946358 var187 var1362 var3373)) ; Statement: $r23 = virtualinvoke r5.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: org.hibernate.JDBCException convertSQLException(java.sql.SQLException,java.lang.String)>($r16, $r22) 
(define-const var3027 var2541 (cast-from-var690-to-var2541 var450)) ; Statement: $r29 = (java.lang.Throwable) $r23 
 ; Statement: throw $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var1258-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), var691_getName/-554364985=([org.hibernate.tool.schema.extract.spi.TableInformation], org.hibernate.boot.model.relational.QualifiedTableName), getCatalogName/1959036760=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), cast-from-var2813-to-var1750=([org.hibernate.boot.model.relational.QualifiedTableName], org.hibernate.boot.model.relational.QualifiedNameParser$NameParts), getSchemaName/569056114=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), getText/-467579009=([org.hibernate.boot.model.naming.Identifier], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/199734091=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), convertSQLException/-114946358=([org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, java.sql.SQLException, java.lang.String], org.hibernate.JDBCException), cast-from-var690-to-var2541=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var2039=org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, var187=r5, var691=org.hibernate.tool.schema.extract.spi.TableInformation, var3944=r1, var1258=java.util.HashMap, var3394=$r26, var2813=org.hibernate.boot.model.relational.QualifiedTableName, var2300=r2, var349=org.hibernate.boot.model.naming.Identifier, var1750=org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, var1032=r3, var2635=r4, var1185=r24, var2101=r25, var737=java.sql.SQLException, var1362=$r16, var1904=$r27, var3918=$r20, var3324=$r18, var2232=$r19, var2831=$r21, var3373=$r22, var690=org.hibernate.JDBCException, var450=$r23, var2541=java.lang.Throwable, var3027=$r29}
; {org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl=var2039, r5=var187, org.hibernate.tool.schema.extract.spi.TableInformation=var691, r1=var3944, java.util.HashMap=var1258, $r26=var3394, org.hibernate.boot.model.relational.QualifiedTableName=var2813, r2=var2300, org.hibernate.boot.model.naming.Identifier=var349, org.hibernate.boot.model.relational.QualifiedNameParser$NameParts=var1750, r3=var1032, r4=var2635, r24=var1185, r25=var2101, java.sql.SQLException=var737, $r16=var1362, $r27=var1904, $r20=var3918, $r18=var3324, $r19=var2232, $r21=var2831, $r22=var3373, org.hibernate.JDBCException=var690, $r23=var450, java.lang.Throwable=var2541, $r29=var3027}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.boot.model.relational.QualifiedNameParser$NameParts: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl;	r1 := @parameter0: org.hibernate.tool.schema.extract.spi.TableInformation;	$r26 = new java.util.HashMap;	specialinvoke $r26.<java.util.HashMap: void <init>()>();	r2 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>();	r3 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getCatalogName()>();	r4 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getSchemaName()>();	if r3 != null goto r24 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	r24 = "";	goto [?= (branch)];	if r4 != null goto r25 = virtualinvoke r4.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	r25 = virtualinvoke r4.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	$r16 := @caughtexception;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error accessing column metadata: ");	$r18 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>();	$r19 = virtualinvoke $r18.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	$r23 = virtualinvoke r5.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: org.hibernate.JDBCException convertSQLException(java.sql.SQLException,java.lang.String)>($r16, $r22);	$r29 = (java.lang.Throwable) $r23;	throw $r29
;block_num 5