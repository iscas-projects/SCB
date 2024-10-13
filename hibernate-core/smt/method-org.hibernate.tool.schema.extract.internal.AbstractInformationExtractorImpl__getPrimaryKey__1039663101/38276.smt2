(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1982 0)
(declare-sort var1556 0)
(declare-sort var2600 0)
(declare-sort var3119 0)
(declare-sort var720 0)
(declare-sort var3576 0)
(declare-sort var3541 0)
(declare-sort var1437 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-780813340 (var1556) var2600)
(declare-fun getCatalogName/1959036760 (var720) var3119)
(declare-fun cast-from-var2600-to-var720 (var2600) var720)
(declare-fun getSchemaName/569056114 (var720) var3119)
(declare-fun getText/-467579009 (var3119) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/199734091 (var720) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun convertSQLException/-114946358 (var1982 var3576 String) var3541)
(declare-fun cast-from-var3541-to-var1437 (var3541) var1437)
(declare-const null-var1982 var1982)
(declare-const null-var1556 var1556)
(declare-const null-var3119 var3119)
(declare-const null-var3576 var3576)
(declare-const var3108 var1982) ; Statement: r4 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl 
(assert (not (= var3108 null-var1982)))
(declare-const var3551 var1556) ; Statement: r0 := @parameter0: org.hibernate.tool.schema.extract.internal.TableInformationImpl 
(assert (not (= var3551 null-var1556)))
(assert true)
(define-const var2885 var2600 (getName/-780813340 var3551)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.TableInformationImpl: org.hibernate.boot.model.relational.QualifiedTableName getName()>() 
(assert true)
(define-const var1213 var3119 (getCatalogName/1959036760 (cast-from-var2600-to-var720 var2885))) ; Statement: r2 = virtualinvoke r1.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getCatalogName()>() 
(assert true)
(define-const var1791 var3119 (getSchemaName/569056114 (cast-from-var2600-to-var720 var2885))) ; Statement: r3 = virtualinvoke r1.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getSchemaName()>() 
 ; Statement: if r2 != null goto r18 = virtualinvoke r2.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (not (= var1213 null-var3119))) ; Cond: r2 != null 
(assert true)
(define-const var1448 String (getText/-467579009 var1213)) ; Statement: r18 = virtualinvoke r2.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert true) ; Non Conditional
 ; Statement: if r3 != null goto r19 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (not (= var1791 null-var3119))) ; Cond: r3 != null 
(assert true)
(define-const var1382 String (getText/-467579009 var1791)) ; Statement: r19 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var385 var3576) ; Statement: $r10 := @caughtexception 
(assert (not (= var385 null-var3576)))
(define-const var2652 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2652)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2652!1 String)
(assert (= var2652!1 ""))
(assert true)
(define-const var1691 String (append/672562846 var2652!1 "Error while reading primary key meta data for ")) ; Statement: $r14 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error while reading primary key meta data for ") 
(declare-const var2652!2 String)
(assert (= var2652!2 (str.++ var2652!1 "Error while reading primary key meta data for ")))
(assert true)
(define-const var910 var2600 (getName/-780813340 var3551)) ; Statement: $r12 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.TableInformationImpl: org.hibernate.boot.model.relational.QualifiedTableName getName()>() 
(assert true)
(define-const var2543 String (toString/199734091 (cast-from-var2600-to-var720 var910))) ; Statement: $r13 = virtualinvoke $r12.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>() 
(assert true)
(define-const var505 String (append/672562846 var1691 var2543)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var1691!1 String)
(assert (= var1691!1 (str.++ var1691 var2543)))
(assert true)
(define-const var2970 String (toString/-2075883882 var505)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3702 var3541 (convertSQLException/-114946358 var3108 var385 var2970)) ; Statement: $r17 = virtualinvoke r4.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: org.hibernate.JDBCException convertSQLException(java.sql.SQLException,java.lang.String)>($r10, $r16) 
(define-const var1415 var1437 (cast-from-var3541-to-var1437 var3702)) ; Statement: $r21 = (java.lang.Throwable) $r17 
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-780813340=([org.hibernate.tool.schema.extract.internal.TableInformationImpl], org.hibernate.boot.model.relational.QualifiedTableName), getCatalogName/1959036760=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), cast-from-var2600-to-var720=([org.hibernate.boot.model.relational.QualifiedTableName], org.hibernate.boot.model.relational.QualifiedNameParser$NameParts), getSchemaName/569056114=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), getText/-467579009=([org.hibernate.boot.model.naming.Identifier], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/199734091=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), convertSQLException/-114946358=([org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, java.sql.SQLException, java.lang.String], org.hibernate.JDBCException), cast-from-var3541-to-var1437=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var1982=org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, var3108=r4, var1556=org.hibernate.tool.schema.extract.internal.TableInformationImpl, var3551=r0, var2600=org.hibernate.boot.model.relational.QualifiedTableName, var2885=r1, var3119=org.hibernate.boot.model.naming.Identifier, var720=org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, var1213=r2, var1791=r3, var1448=r18, var1382=r19, var3576=java.sql.SQLException, var385=$r10, var2652=$r20, var1691=$r14, var910=$r12, var2543=$r13, var505=$r15, var2970=$r16, var3541=org.hibernate.JDBCException, var3702=$r17, var1437=java.lang.Throwable, var1415=$r21}
; {org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl=var1982, r4=var3108, org.hibernate.tool.schema.extract.internal.TableInformationImpl=var1556, r0=var3551, org.hibernate.boot.model.relational.QualifiedTableName=var2600, r1=var2885, org.hibernate.boot.model.naming.Identifier=var3119, org.hibernate.boot.model.relational.QualifiedNameParser$NameParts=var720, r2=var1213, r3=var1791, r18=var1448, r19=var1382, java.sql.SQLException=var3576, $r10=var385, $r20=var2652, $r14=var1691, $r12=var910, $r13=var2543, $r15=var505, $r16=var2970, org.hibernate.JDBCException=var3541, $r17=var3702, java.lang.Throwable=var1437, $r21=var1415}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.boot.model.relational.QualifiedNameParser$NameParts: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl;	r0 := @parameter0: org.hibernate.tool.schema.extract.internal.TableInformationImpl;	r1 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.TableInformationImpl: org.hibernate.boot.model.relational.QualifiedTableName getName()>();	r2 = virtualinvoke r1.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getCatalogName()>();	r3 = virtualinvoke r1.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getSchemaName()>();	if r2 != null goto r18 = virtualinvoke r2.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	r18 = virtualinvoke r2.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	if r3 != null goto r19 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	r19 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	$r10 := @caughtexception;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error while reading primary key meta data for ");	$r12 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.TableInformationImpl: org.hibernate.boot.model.relational.QualifiedTableName getName()>();	$r13 = virtualinvoke $r12.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = virtualinvoke r4.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: org.hibernate.JDBCException convertSQLException(java.sql.SQLException,java.lang.String)>($r10, $r16);	$r21 = (java.lang.Throwable) $r17;	throw $r21
;block_num 5