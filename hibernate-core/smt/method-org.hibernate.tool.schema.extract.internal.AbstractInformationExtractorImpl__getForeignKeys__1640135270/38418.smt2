(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3846 0)
(declare-sort var566 0)
(declare-sort var3503 0)
(declare-sort var2700 0)
(declare-sort var1948 0)
(declare-sort var1439 0)
(declare-sort var1521 0)
(declare-sort var3028 0)
(declare-sort var2149 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3503-init () var3503)
(declare-fun <init>/-201242697 (var3503) void)
(declare-fun var566_getName/-554364985 (var566) var2700)
(declare-fun getCatalogName/1959036760 (var1439) var1948)
(declare-fun cast-from-var2700-to-var1439 (var2700) var1439)
(declare-fun getSchemaName/569056114 (var1439) var1948)
(declare-fun getText/-467579009 (var1948) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/199734091 (var1439) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun convertSQLException/-114946358 (var3846 var1521 String) var3028)
(declare-fun cast-from-var3028-to-var2149 (var3028) var2149)
(declare-const null-var3846 var3846)
(declare-const null-var566 var566)
(declare-const null-var1948 var1948)
(declare-const null-var1521 var1521)
(declare-const var2731 var3846) ; Statement: r5 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl 
(assert (not (= var2731 null-var3846)))
(declare-const var2186 var566) ; Statement: r1 := @parameter0: org.hibernate.tool.schema.extract.spi.TableInformation 
(assert (not (= var2186 null-var566)))
(define-const var3016 var3503 var3503-init) ; Statement: $r26 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var3016)) ; Statement: specialinvoke $r26.<java.util.HashMap: void <init>()>() 

(declare-const var3016!1 var3503)
(define-const var2304 var2700 (var566_getName/-554364985 var2186)) ; Statement: r2 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>() 
(assert true)
(define-const var1402 var1948 (getCatalogName/1959036760 (cast-from-var2700-to-var1439 var2304))) ; Statement: r3 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getCatalogName()>() 
(assert true)
(define-const var3309 var1948 (getSchemaName/569056114 (cast-from-var2700-to-var1439 var2304))) ; Statement: r4 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getSchemaName()>() 
 ; Statement: if r3 != null goto r24 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (not (= var1402 null-var1948))) ; Cond: r3 != null 
(assert true)
(define-const var207 String (getText/-467579009 var1402)) ; Statement: r24 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert true) ; Non Conditional
 ; Statement: if r4 != null goto r25 = virtualinvoke r4.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (not (not (= var3309 null-var1948)))) ; Negate: Cond: r4 != null  
(define-const var2208 String "") ; Statement: r25 = "" 
 ; Statement: goto [?= $r6 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>()] 
(assert true) ; Non Conditional
(declare-const var2300 var1521) ; Statement: $r16 := @caughtexception 
(assert (not (= var2300 null-var1521)))
(define-const var190 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var190)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var190!1 String)
(assert (= var190!1 ""))
(assert true)
(define-const var2201 String (append/672562846 var190!1 "Error accessing column metadata: ")) ; Statement: $r20 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error accessing column metadata: ") 
(declare-const var190!2 String)
(assert (= var190!2 (str.++ var190!1 "Error accessing column metadata: ")))
(define-const var359 var2700 (var566_getName/-554364985 var2186)) ; Statement: $r18 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>() 
(assert true)
(define-const var3806 String (toString/199734091 (cast-from-var2700-to-var1439 var359))) ; Statement: $r19 = virtualinvoke $r18.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>() 
(assert true)
(define-const var453 String (append/672562846 var2201 var3806)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var2201!1 String)
(assert (= var2201!1 (str.++ var2201 var3806)))
(assert true)
(define-const var2364 String (toString/-2075883882 var453)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2641 var3028 (convertSQLException/-114946358 var2731 var2300 var2364)) ; Statement: $r23 = virtualinvoke r5.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: org.hibernate.JDBCException convertSQLException(java.sql.SQLException,java.lang.String)>($r16, $r22) 
(define-const var2422 var2149 (cast-from-var3028-to-var2149 var2641)) ; Statement: $r29 = (java.lang.Throwable) $r23 
 ; Statement: throw $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var3503-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), var566_getName/-554364985=([org.hibernate.tool.schema.extract.spi.TableInformation], org.hibernate.boot.model.relational.QualifiedTableName), getCatalogName/1959036760=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), cast-from-var2700-to-var1439=([org.hibernate.boot.model.relational.QualifiedTableName], org.hibernate.boot.model.relational.QualifiedNameParser$NameParts), getSchemaName/569056114=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), getText/-467579009=([org.hibernate.boot.model.naming.Identifier], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/199734091=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), convertSQLException/-114946358=([org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, java.sql.SQLException, java.lang.String], org.hibernate.JDBCException), cast-from-var3028-to-var2149=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var3846=org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, var2731=r5, var566=org.hibernate.tool.schema.extract.spi.TableInformation, var2186=r1, var3503=java.util.HashMap, var3016=$r26, var2700=org.hibernate.boot.model.relational.QualifiedTableName, var2304=r2, var1948=org.hibernate.boot.model.naming.Identifier, var1439=org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, var1402=r3, var3309=r4, var207=r24, var2208=r25, var1521=java.sql.SQLException, var2300=$r16, var190=$r27, var2201=$r20, var359=$r18, var3806=$r19, var453=$r21, var2364=$r22, var3028=org.hibernate.JDBCException, var2641=$r23, var2149=java.lang.Throwable, var2422=$r29}
; {org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl=var3846, r5=var2731, org.hibernate.tool.schema.extract.spi.TableInformation=var566, r1=var2186, java.util.HashMap=var3503, $r26=var3016, org.hibernate.boot.model.relational.QualifiedTableName=var2700, r2=var2304, org.hibernate.boot.model.naming.Identifier=var1948, org.hibernate.boot.model.relational.QualifiedNameParser$NameParts=var1439, r3=var1402, r4=var3309, r24=var207, r25=var2208, java.sql.SQLException=var1521, $r16=var2300, $r27=var190, $r20=var2201, $r18=var359, $r19=var3806, $r21=var453, $r22=var2364, org.hibernate.JDBCException=var3028, $r23=var2641, java.lang.Throwable=var2149, $r29=var2422}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.boot.model.relational.QualifiedNameParser$NameParts: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl;	r1 := @parameter0: org.hibernate.tool.schema.extract.spi.TableInformation;	$r26 = new java.util.HashMap;	specialinvoke $r26.<java.util.HashMap: void <init>()>();	r2 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>();	r3 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getCatalogName()>();	r4 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getSchemaName()>();	if r3 != null goto r24 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	r24 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	if r4 != null goto r25 = virtualinvoke r4.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	r25 = "";	goto [?= $r6 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>()];	$r16 := @caughtexception;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error accessing column metadata: ");	$r18 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>();	$r19 = virtualinvoke $r18.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	$r23 = virtualinvoke r5.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: org.hibernate.JDBCException convertSQLException(java.sql.SQLException,java.lang.String)>($r16, $r22);	$r29 = (java.lang.Throwable) $r23;	throw $r29
;block_num 5