(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3141 0)
(declare-sort var2933 0)
(declare-sort var1061 0)
(declare-sort var789 0)
(declare-sort var3235 0)
(declare-sort var1128 0)
(declare-sort var3273 0)
(declare-sort var3125 0)
(declare-sort var2089 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1061-init () var1061)
(declare-fun <init>/-201242697 (var1061) void)
(declare-fun var2933_getName/-554364985 (var2933) var789)
(declare-fun getCatalogName/1959036760 (var1128) var3235)
(declare-fun cast-from-var789-to-var1128 (var789) var1128)
(declare-fun getSchemaName/569056114 (var1128) var3235)
(declare-fun getText/-467579009 (var3235) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/199734091 (var1128) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun convertSQLException/-114946358 (var3141 var3273 String) var3125)
(declare-fun cast-from-var3125-to-var2089 (var3125) var2089)
(declare-const null-var3141 var3141)
(declare-const null-var2933 var2933)
(declare-const null-var3235 var3235)
(declare-const null-var3273 var3273)
(declare-const var2350 var3141) ; Statement: r5 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl 
(assert (not (= var2350 null-var3141)))
(declare-const var3931 var2933) ; Statement: r1 := @parameter0: org.hibernate.tool.schema.extract.spi.TableInformation 
(assert (not (= var3931 null-var2933)))
(define-const var355 var1061 var1061-init) ; Statement: $r26 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var355)) ; Statement: specialinvoke $r26.<java.util.HashMap: void <init>()>() 

(declare-const var355!1 var1061)
(define-const var3383 var789 (var2933_getName/-554364985 var3931)) ; Statement: r2 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>() 
(assert true)
(define-const var1165 var3235 (getCatalogName/1959036760 (cast-from-var789-to-var1128 var3383))) ; Statement: r3 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getCatalogName()>() 
(assert true)
(define-const var1820 var3235 (getSchemaName/569056114 (cast-from-var789-to-var1128 var3383))) ; Statement: r4 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getSchemaName()>() 
 ; Statement: if r3 != null goto r24 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (not (= var1165 null-var3235))) ; Cond: r3 != null 
(assert true)
(define-const var2600 String (getText/-467579009 var1165)) ; Statement: r24 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert true) ; Non Conditional
 ; Statement: if r4 != null goto r25 = virtualinvoke r4.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (not (= var1820 null-var3235))) ; Cond: r4 != null 
(assert true)
(define-const var3050 String (getText/-467579009 var1820)) ; Statement: r25 = virtualinvoke r4.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2386 var3273) ; Statement: $r16 := @caughtexception 
(assert (not (= var2386 null-var3273)))
(define-const var1605 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1605)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1605!1 String)
(assert (= var1605!1 ""))
(assert true)
(define-const var3111 String (append/672562846 var1605!1 "Error accessing column metadata: ")) ; Statement: $r20 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error accessing column metadata: ") 
(declare-const var1605!2 String)
(assert (= var1605!2 (str.++ var1605!1 "Error accessing column metadata: ")))
(define-const var3063 var789 (var2933_getName/-554364985 var3931)) ; Statement: $r18 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>() 
(assert true)
(define-const var207 String (toString/199734091 (cast-from-var789-to-var1128 var3063))) ; Statement: $r19 = virtualinvoke $r18.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>() 
(assert true)
(define-const var2095 String (append/672562846 var3111 var207)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var3111!1 String)
(assert (= var3111!1 (str.++ var3111 var207)))
(assert true)
(define-const var198 String (toString/-2075883882 var2095)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2222 var3125 (convertSQLException/-114946358 var2350 var2386 var198)) ; Statement: $r23 = virtualinvoke r5.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: org.hibernate.JDBCException convertSQLException(java.sql.SQLException,java.lang.String)>($r16, $r22) 
(define-const var423 var2089 (cast-from-var3125-to-var2089 var2222)) ; Statement: $r29 = (java.lang.Throwable) $r23 
 ; Statement: throw $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var1061-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), var2933_getName/-554364985=([org.hibernate.tool.schema.extract.spi.TableInformation], org.hibernate.boot.model.relational.QualifiedTableName), getCatalogName/1959036760=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), cast-from-var789-to-var1128=([org.hibernate.boot.model.relational.QualifiedTableName], org.hibernate.boot.model.relational.QualifiedNameParser$NameParts), getSchemaName/569056114=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), getText/-467579009=([org.hibernate.boot.model.naming.Identifier], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/199734091=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), convertSQLException/-114946358=([org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, java.sql.SQLException, java.lang.String], org.hibernate.JDBCException), cast-from-var3125-to-var2089=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var3141=org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, var2350=r5, var2933=org.hibernate.tool.schema.extract.spi.TableInformation, var3931=r1, var1061=java.util.HashMap, var355=$r26, var789=org.hibernate.boot.model.relational.QualifiedTableName, var3383=r2, var3235=org.hibernate.boot.model.naming.Identifier, var1128=org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, var1165=r3, var1820=r4, var2600=r24, var3050=r25, var3273=java.sql.SQLException, var2386=$r16, var1605=$r27, var3111=$r20, var3063=$r18, var207=$r19, var2095=$r21, var198=$r22, var3125=org.hibernate.JDBCException, var2222=$r23, var2089=java.lang.Throwable, var423=$r29}
; {org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl=var3141, r5=var2350, org.hibernate.tool.schema.extract.spi.TableInformation=var2933, r1=var3931, java.util.HashMap=var1061, $r26=var355, org.hibernate.boot.model.relational.QualifiedTableName=var789, r2=var3383, org.hibernate.boot.model.naming.Identifier=var3235, org.hibernate.boot.model.relational.QualifiedNameParser$NameParts=var1128, r3=var1165, r4=var1820, r24=var2600, r25=var3050, java.sql.SQLException=var3273, $r16=var2386, $r27=var1605, $r20=var3111, $r18=var3063, $r19=var207, $r21=var2095, $r22=var198, org.hibernate.JDBCException=var3125, $r23=var2222, java.lang.Throwable=var2089, $r29=var423}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.boot.model.relational.QualifiedNameParser$NameParts: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl;	r1 := @parameter0: org.hibernate.tool.schema.extract.spi.TableInformation;	$r26 = new java.util.HashMap;	specialinvoke $r26.<java.util.HashMap: void <init>()>();	r2 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>();	r3 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getCatalogName()>();	r4 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getSchemaName()>();	if r3 != null goto r24 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	r24 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	if r4 != null goto r25 = virtualinvoke r4.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	r25 = virtualinvoke r4.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	$r16 := @caughtexception;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error accessing column metadata: ");	$r18 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>();	$r19 = virtualinvoke $r18.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	$r23 = virtualinvoke r5.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: org.hibernate.JDBCException convertSQLException(java.sql.SQLException,java.lang.String)>($r16, $r22);	$r29 = (java.lang.Throwable) $r23;	throw $r29
;block_num 5