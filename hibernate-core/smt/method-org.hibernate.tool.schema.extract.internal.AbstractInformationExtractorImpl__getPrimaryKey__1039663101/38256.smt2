(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2311 0)
(declare-sort var794 0)
(declare-sort var2695 0)
(declare-sort var1300 0)
(declare-sort var3913 0)
(declare-sort var3741 0)
(declare-sort var3756 0)
(declare-sort var3437 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-780813340 (var794) var2695)
(declare-fun getCatalogName/1959036760 (var3913) var1300)
(declare-fun cast-from-var2695-to-var3913 (var2695) var3913)
(declare-fun getSchemaName/569056114 (var3913) var1300)
(declare-fun getText/-467579009 (var1300) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/199734091 (var3913) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun convertSQLException/-114946358 (var2311 var3741 String) var3756)
(declare-fun cast-from-var3756-to-var3437 (var3756) var3437)
(declare-const null-var2311 var2311)
(declare-const null-var794 var794)
(declare-const null-var1300 var1300)
(declare-const null-var3741 var3741)
(declare-const var461 var2311) ; Statement: r4 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl 
(assert (not (= var461 null-var2311)))
(declare-const var3792 var794) ; Statement: r0 := @parameter0: org.hibernate.tool.schema.extract.internal.TableInformationImpl 
(assert (not (= var3792 null-var794)))
(assert true)
(define-const var1243 var2695 (getName/-780813340 var3792)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.TableInformationImpl: org.hibernate.boot.model.relational.QualifiedTableName getName()>() 
(assert true)
(define-const var3483 var1300 (getCatalogName/1959036760 (cast-from-var2695-to-var3913 var1243))) ; Statement: r2 = virtualinvoke r1.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getCatalogName()>() 
(assert true)
(define-const var2470 var1300 (getSchemaName/569056114 (cast-from-var2695-to-var3913 var1243))) ; Statement: r3 = virtualinvoke r1.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getSchemaName()>() 
 ; Statement: if r2 != null goto r18 = virtualinvoke r2.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (not (not (= var3483 null-var1300)))) ; Negate: Cond: r2 != null  
(define-const var699 String "") ; Statement: r18 = "" 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r3 != null goto r19 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (not (= var2470 null-var1300))) ; Cond: r3 != null 
(assert true)
(define-const var3614 String (getText/-467579009 var2470)) ; Statement: r19 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1340 var3741) ; Statement: $r10 := @caughtexception 
(assert (not (= var1340 null-var3741)))
(define-const var1666 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1666)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1666!1 String)
(assert (= var1666!1 ""))
(assert true)
(define-const var3519 String (append/672562846 var1666!1 "Error while reading primary key meta data for ")) ; Statement: $r14 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error while reading primary key meta data for ") 
(declare-const var1666!2 String)
(assert (= var1666!2 (str.++ var1666!1 "Error while reading primary key meta data for ")))
(assert true)
(define-const var2374 var2695 (getName/-780813340 var3792)) ; Statement: $r12 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.TableInformationImpl: org.hibernate.boot.model.relational.QualifiedTableName getName()>() 
(assert true)
(define-const var1511 String (toString/199734091 (cast-from-var2695-to-var3913 var2374))) ; Statement: $r13 = virtualinvoke $r12.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>() 
(assert true)
(define-const var2302 String (append/672562846 var3519 var1511)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var3519!1 String)
(assert (= var3519!1 (str.++ var3519 var1511)))
(assert true)
(define-const var1830 String (toString/-2075883882 var2302)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2854 var3756 (convertSQLException/-114946358 var461 var1340 var1830)) ; Statement: $r17 = virtualinvoke r4.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: org.hibernate.JDBCException convertSQLException(java.sql.SQLException,java.lang.String)>($r10, $r16) 
(define-const var3324 var3437 (cast-from-var3756-to-var3437 var2854)) ; Statement: $r21 = (java.lang.Throwable) $r17 
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-780813340=([org.hibernate.tool.schema.extract.internal.TableInformationImpl], org.hibernate.boot.model.relational.QualifiedTableName), getCatalogName/1959036760=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), cast-from-var2695-to-var3913=([org.hibernate.boot.model.relational.QualifiedTableName], org.hibernate.boot.model.relational.QualifiedNameParser$NameParts), getSchemaName/569056114=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), getText/-467579009=([org.hibernate.boot.model.naming.Identifier], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/199734091=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), convertSQLException/-114946358=([org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, java.sql.SQLException, java.lang.String], org.hibernate.JDBCException), cast-from-var3756-to-var3437=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var2311=org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, var461=r4, var794=org.hibernate.tool.schema.extract.internal.TableInformationImpl, var3792=r0, var2695=org.hibernate.boot.model.relational.QualifiedTableName, var1243=r1, var1300=org.hibernate.boot.model.naming.Identifier, var3913=org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, var3483=r2, var2470=r3, var699=r18, var3614=r19, var3741=java.sql.SQLException, var1340=$r10, var1666=$r20, var3519=$r14, var2374=$r12, var1511=$r13, var2302=$r15, var1830=$r16, var3756=org.hibernate.JDBCException, var2854=$r17, var3437=java.lang.Throwable, var3324=$r21}
; {org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl=var2311, r4=var461, org.hibernate.tool.schema.extract.internal.TableInformationImpl=var794, r0=var3792, org.hibernate.boot.model.relational.QualifiedTableName=var2695, r1=var1243, org.hibernate.boot.model.naming.Identifier=var1300, org.hibernate.boot.model.relational.QualifiedNameParser$NameParts=var3913, r2=var3483, r3=var2470, r18=var699, r19=var3614, java.sql.SQLException=var3741, $r10=var1340, $r20=var1666, $r14=var3519, $r12=var2374, $r13=var1511, $r15=var2302, $r16=var1830, org.hibernate.JDBCException=var3756, $r17=var2854, java.lang.Throwable=var3437, $r21=var3324}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.boot.model.relational.QualifiedNameParser$NameParts: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl;	r0 := @parameter0: org.hibernate.tool.schema.extract.internal.TableInformationImpl;	r1 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.TableInformationImpl: org.hibernate.boot.model.relational.QualifiedTableName getName()>();	r2 = virtualinvoke r1.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getCatalogName()>();	r3 = virtualinvoke r1.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getSchemaName()>();	if r2 != null goto r18 = virtualinvoke r2.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	r18 = "";	goto [?= (branch)];	if r3 != null goto r19 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	r19 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	$r10 := @caughtexception;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error while reading primary key meta data for ");	$r12 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.TableInformationImpl: org.hibernate.boot.model.relational.QualifiedTableName getName()>();	$r13 = virtualinvoke $r12.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = virtualinvoke r4.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: org.hibernate.JDBCException convertSQLException(java.sql.SQLException,java.lang.String)>($r10, $r16);	$r21 = (java.lang.Throwable) $r17;	throw $r21
;block_num 5