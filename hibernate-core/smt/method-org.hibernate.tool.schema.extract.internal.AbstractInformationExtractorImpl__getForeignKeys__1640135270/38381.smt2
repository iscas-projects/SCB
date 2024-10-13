(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2668 0)
(declare-sort var1374 0)
(declare-sort var1154 0)
(declare-sort var3090 0)
(declare-sort var3259 0)
(declare-sort var438 0)
(declare-sort var3079 0)
(declare-sort var3319 0)
(declare-sort var3106 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1154-init () var1154)
(declare-fun <init>/-201242697 (var1154) void)
(declare-fun var1374_getName/-554364985 (var1374) var3090)
(declare-fun getCatalogName/1959036760 (var438) var3259)
(declare-fun cast-from-var3090-to-var438 (var3090) var438)
(declare-fun getSchemaName/569056114 (var438) var3259)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/199734091 (var438) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun convertSQLException/-114946358 (var2668 var3079 String) var3319)
(declare-fun cast-from-var3319-to-var3106 (var3319) var3106)
(declare-const null-var2668 var2668)
(declare-const null-var1374 var1374)
(declare-const null-var3259 var3259)
(declare-const null-var3079 var3079)
(declare-const var219 var2668) ; Statement: r5 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl 
(assert (not (= var219 null-var2668)))
(declare-const var2042 var1374) ; Statement: r1 := @parameter0: org.hibernate.tool.schema.extract.spi.TableInformation 
(assert (not (= var2042 null-var1374)))
(define-const var2608 var1154 var1154-init) ; Statement: $r26 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var2608)) ; Statement: specialinvoke $r26.<java.util.HashMap: void <init>()>() 

(declare-const var2608!1 var1154)
(define-const var2964 var3090 (var1374_getName/-554364985 var2042)) ; Statement: r2 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>() 
(assert true)
(define-const var461 var3259 (getCatalogName/1959036760 (cast-from-var3090-to-var438 var2964))) ; Statement: r3 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getCatalogName()>() 
(assert true)
(define-const var564 var3259 (getSchemaName/569056114 (cast-from-var3090-to-var438 var2964))) ; Statement: r4 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getSchemaName()>() 
 ; Statement: if r3 != null goto r24 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (not (not (= var461 null-var3259)))) ; Negate: Cond: r3 != null  
(define-const var1464 String "") ; Statement: r24 = "" 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r4 != null goto r25 = virtualinvoke r4.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (not (not (= var564 null-var3259)))) ; Negate: Cond: r4 != null  
(define-const var1607 String "") ; Statement: r25 = "" 
 ; Statement: goto [?= $r6 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>()] 
(assert true) ; Non Conditional
(declare-const var470 var3079) ; Statement: $r16 := @caughtexception 
(assert (not (= var470 null-var3079)))
(define-const var1929 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1929)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1929!1 String)
(assert (= var1929!1 ""))
(assert true)
(define-const var3985 String (append/672562846 var1929!1 "Error accessing column metadata: ")) ; Statement: $r20 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error accessing column metadata: ") 
(declare-const var1929!2 String)
(assert (= var1929!2 (str.++ var1929!1 "Error accessing column metadata: ")))
(define-const var1041 var3090 (var1374_getName/-554364985 var2042)) ; Statement: $r18 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>() 
(assert true)
(define-const var3133 String (toString/199734091 (cast-from-var3090-to-var438 var1041))) ; Statement: $r19 = virtualinvoke $r18.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>() 
(assert true)
(define-const var2240 String (append/672562846 var3985 var3133)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var3985!1 String)
(assert (= var3985!1 (str.++ var3985 var3133)))
(assert true)
(define-const var224 String (toString/-2075883882 var2240)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3613 var3319 (convertSQLException/-114946358 var219 var470 var224)) ; Statement: $r23 = virtualinvoke r5.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: org.hibernate.JDBCException convertSQLException(java.sql.SQLException,java.lang.String)>($r16, $r22) 
(define-const var3893 var3106 (cast-from-var3319-to-var3106 var3613)) ; Statement: $r29 = (java.lang.Throwable) $r23 
 ; Statement: throw $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var1154-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), var1374_getName/-554364985=([org.hibernate.tool.schema.extract.spi.TableInformation], org.hibernate.boot.model.relational.QualifiedTableName), getCatalogName/1959036760=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), cast-from-var3090-to-var438=([org.hibernate.boot.model.relational.QualifiedTableName], org.hibernate.boot.model.relational.QualifiedNameParser$NameParts), getSchemaName/569056114=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/199734091=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), convertSQLException/-114946358=([org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, java.sql.SQLException, java.lang.String], org.hibernate.JDBCException), cast-from-var3319-to-var3106=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var2668=org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, var219=r5, var1374=org.hibernate.tool.schema.extract.spi.TableInformation, var2042=r1, var1154=java.util.HashMap, var2608=$r26, var3090=org.hibernate.boot.model.relational.QualifiedTableName, var2964=r2, var3259=org.hibernate.boot.model.naming.Identifier, var438=org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, var461=r3, var564=r4, var1464=r24, var1607=r25, var3079=java.sql.SQLException, var470=$r16, var1929=$r27, var3985=$r20, var1041=$r18, var3133=$r19, var2240=$r21, var224=$r22, var3319=org.hibernate.JDBCException, var3613=$r23, var3106=java.lang.Throwable, var3893=$r29}
; {org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl=var2668, r5=var219, org.hibernate.tool.schema.extract.spi.TableInformation=var1374, r1=var2042, java.util.HashMap=var1154, $r26=var2608, org.hibernate.boot.model.relational.QualifiedTableName=var3090, r2=var2964, org.hibernate.boot.model.naming.Identifier=var3259, org.hibernate.boot.model.relational.QualifiedNameParser$NameParts=var438, r3=var461, r4=var564, r24=var1464, r25=var1607, java.sql.SQLException=var3079, $r16=var470, $r27=var1929, $r20=var3985, $r18=var1041, $r19=var3133, $r21=var2240, $r22=var224, org.hibernate.JDBCException=var3319, $r23=var3613, java.lang.Throwable=var3106, $r29=var3893}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.boot.model.relational.QualifiedNameParser$NameParts: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl;	r1 := @parameter0: org.hibernate.tool.schema.extract.spi.TableInformation;	$r26 = new java.util.HashMap;	specialinvoke $r26.<java.util.HashMap: void <init>()>();	r2 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>();	r3 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getCatalogName()>();	r4 = virtualinvoke r2.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getSchemaName()>();	if r3 != null goto r24 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	r24 = "";	goto [?= (branch)];	if r4 != null goto r25 = virtualinvoke r4.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	r25 = "";	goto [?= $r6 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>()];	$r16 := @caughtexception;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error accessing column metadata: ");	$r18 = interfaceinvoke r1.<org.hibernate.tool.schema.extract.spi.TableInformation: org.hibernate.boot.model.relational.QualifiedTableName getName()>();	$r19 = virtualinvoke $r18.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	$r23 = virtualinvoke r5.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: org.hibernate.JDBCException convertSQLException(java.sql.SQLException,java.lang.String)>($r16, $r22);	$r29 = (java.lang.Throwable) $r23;	throw $r29
;block_num 5