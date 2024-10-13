(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3091 0)
(declare-sort var92 0)
(declare-sort var2710 0)
(declare-sort var3533 0)
(declare-sort var1737 0)
(declare-sort var3739 0)
(declare-sort var1567 0)
(declare-sort var2936 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-780813340 (var92) var2710)
(declare-fun getCatalogName/1959036760 (var1737) var3533)
(declare-fun cast-from-var2710-to-var1737 (var2710) var1737)
(declare-fun getSchemaName/569056114 (var1737) var3533)
(declare-fun getText/-467579009 (var3533) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/199734091 (var1737) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun convertSQLException/-114946358 (var3091 var3739 String) var1567)
(declare-fun cast-from-var1567-to-var2936 (var1567) var2936)
(declare-const null-var3091 var3091)
(declare-const null-var92 var92)
(declare-const null-var3533 var3533)
(declare-const null-var3739 var3739)
(declare-const var675 var3091) ; Statement: r4 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl 
(assert (not (= var675 null-var3091)))
(declare-const var1218 var92) ; Statement: r0 := @parameter0: org.hibernate.tool.schema.extract.internal.TableInformationImpl 
(assert (not (= var1218 null-var92)))
(assert true)
(define-const var3027 var2710 (getName/-780813340 var1218)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.TableInformationImpl: org.hibernate.boot.model.relational.QualifiedTableName getName()>() 
(assert true)
(define-const var1739 var3533 (getCatalogName/1959036760 (cast-from-var2710-to-var1737 var3027))) ; Statement: r2 = virtualinvoke r1.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getCatalogName()>() 
(assert true)
(define-const var3567 var3533 (getSchemaName/569056114 (cast-from-var2710-to-var1737 var3027))) ; Statement: r3 = virtualinvoke r1.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getSchemaName()>() 
 ; Statement: if r2 != null goto r18 = virtualinvoke r2.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (not (= var1739 null-var3533))) ; Cond: r2 != null 
(assert true)
(define-const var1980 String (getText/-467579009 var1739)) ; Statement: r18 = virtualinvoke r2.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert true) ; Non Conditional
 ; Statement: if r3 != null goto r19 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (not (not (= var3567 null-var3533)))) ; Negate: Cond: r3 != null  
(define-const var999 String "") ; Statement: r19 = "" 
 ; Statement: goto [?= $r5 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.TableInformationImpl: org.hibernate.boot.model.relational.QualifiedTableName getName()>()] 
(assert true) ; Non Conditional
(declare-const var504 var3739) ; Statement: $r10 := @caughtexception 
(assert (not (= var504 null-var3739)))
(define-const var3007 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3007)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3007!1 String)
(assert (= var3007!1 ""))
(assert true)
(define-const var913 String (append/672562846 var3007!1 "Error while reading primary key meta data for ")) ; Statement: $r14 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error while reading primary key meta data for ") 
(declare-const var3007!2 String)
(assert (= var3007!2 (str.++ var3007!1 "Error while reading primary key meta data for ")))
(assert true)
(define-const var1808 var2710 (getName/-780813340 var1218)) ; Statement: $r12 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.TableInformationImpl: org.hibernate.boot.model.relational.QualifiedTableName getName()>() 
(assert true)
(define-const var3536 String (toString/199734091 (cast-from-var2710-to-var1737 var1808))) ; Statement: $r13 = virtualinvoke $r12.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>() 
(assert true)
(define-const var2081 String (append/672562846 var913 var3536)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var913!1 String)
(assert (= var913!1 (str.++ var913 var3536)))
(assert true)
(define-const var1994 String (toString/-2075883882 var2081)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2279 var1567 (convertSQLException/-114946358 var675 var504 var1994)) ; Statement: $r17 = virtualinvoke r4.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: org.hibernate.JDBCException convertSQLException(java.sql.SQLException,java.lang.String)>($r10, $r16) 
(define-const var2814 var2936 (cast-from-var1567-to-var2936 var2279)) ; Statement: $r21 = (java.lang.Throwable) $r17 
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-780813340=([org.hibernate.tool.schema.extract.internal.TableInformationImpl], org.hibernate.boot.model.relational.QualifiedTableName), getCatalogName/1959036760=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), cast-from-var2710-to-var1737=([org.hibernate.boot.model.relational.QualifiedTableName], org.hibernate.boot.model.relational.QualifiedNameParser$NameParts), getSchemaName/569056114=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), getText/-467579009=([org.hibernate.boot.model.naming.Identifier], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/199734091=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), convertSQLException/-114946358=([org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, java.sql.SQLException, java.lang.String], org.hibernate.JDBCException), cast-from-var1567-to-var2936=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var3091=org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, var675=r4, var92=org.hibernate.tool.schema.extract.internal.TableInformationImpl, var1218=r0, var2710=org.hibernate.boot.model.relational.QualifiedTableName, var3027=r1, var3533=org.hibernate.boot.model.naming.Identifier, var1737=org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, var1739=r2, var3567=r3, var1980=r18, var999=r19, var3739=java.sql.SQLException, var504=$r10, var3007=$r20, var913=$r14, var1808=$r12, var3536=$r13, var2081=$r15, var1994=$r16, var1567=org.hibernate.JDBCException, var2279=$r17, var2936=java.lang.Throwable, var2814=$r21}
; {org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl=var3091, r4=var675, org.hibernate.tool.schema.extract.internal.TableInformationImpl=var92, r0=var1218, org.hibernate.boot.model.relational.QualifiedTableName=var2710, r1=var3027, org.hibernate.boot.model.naming.Identifier=var3533, org.hibernate.boot.model.relational.QualifiedNameParser$NameParts=var1737, r2=var1739, r3=var3567, r18=var1980, r19=var999, java.sql.SQLException=var3739, $r10=var504, $r20=var3007, $r14=var913, $r12=var1808, $r13=var3536, $r15=var2081, $r16=var1994, org.hibernate.JDBCException=var1567, $r17=var2279, java.lang.Throwable=var2936, $r21=var2814}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.boot.model.relational.QualifiedNameParser$NameParts: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl;	r0 := @parameter0: org.hibernate.tool.schema.extract.internal.TableInformationImpl;	r1 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.TableInformationImpl: org.hibernate.boot.model.relational.QualifiedTableName getName()>();	r2 = virtualinvoke r1.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getCatalogName()>();	r3 = virtualinvoke r1.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getSchemaName()>();	if r2 != null goto r18 = virtualinvoke r2.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	r18 = virtualinvoke r2.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	if r3 != null goto r19 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	r19 = "";	goto [?= $r5 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.TableInformationImpl: org.hibernate.boot.model.relational.QualifiedTableName getName()>()];	$r10 := @caughtexception;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error while reading primary key meta data for ");	$r12 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.TableInformationImpl: org.hibernate.boot.model.relational.QualifiedTableName getName()>();	$r13 = virtualinvoke $r12.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = virtualinvoke r4.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: org.hibernate.JDBCException convertSQLException(java.sql.SQLException,java.lang.String)>($r10, $r16);	$r21 = (java.lang.Throwable) $r17;	throw $r21
;block_num 5