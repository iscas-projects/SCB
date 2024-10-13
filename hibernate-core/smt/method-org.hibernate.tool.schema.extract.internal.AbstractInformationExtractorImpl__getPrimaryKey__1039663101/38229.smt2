(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3138 0)
(declare-sort var1516 0)
(declare-sort var3247 0)
(declare-sort var3258 0)
(declare-sort var110 0)
(declare-sort var3274 0)
(declare-sort var3286 0)
(declare-sort var1129 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-780813340 (var1516) var3247)
(declare-fun getCatalogName/1959036760 (var110) var3258)
(declare-fun cast-from-var3247-to-var110 (var3247) var110)
(declare-fun getSchemaName/569056114 (var110) var3258)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/199734091 (var110) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun convertSQLException/-114946358 (var3138 var3274 String) var3286)
(declare-fun cast-from-var3286-to-var1129 (var3286) var1129)
(declare-const null-var3138 var3138)
(declare-const null-var1516 var1516)
(declare-const null-var3258 var3258)
(declare-const null-var3274 var3274)
(declare-const var285 var3138) ; Statement: r4 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl 
(assert (not (= var285 null-var3138)))
(declare-const var1944 var1516) ; Statement: r0 := @parameter0: org.hibernate.tool.schema.extract.internal.TableInformationImpl 
(assert (not (= var1944 null-var1516)))
(assert true)
(define-const var3487 var3247 (getName/-780813340 var1944)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.TableInformationImpl: org.hibernate.boot.model.relational.QualifiedTableName getName()>() 
(assert true)
(define-const var2601 var3258 (getCatalogName/1959036760 (cast-from-var3247-to-var110 var3487))) ; Statement: r2 = virtualinvoke r1.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getCatalogName()>() 
(assert true)
(define-const var1207 var3258 (getSchemaName/569056114 (cast-from-var3247-to-var110 var3487))) ; Statement: r3 = virtualinvoke r1.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getSchemaName()>() 
 ; Statement: if r2 != null goto r18 = virtualinvoke r2.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (not (not (= var2601 null-var3258)))) ; Negate: Cond: r2 != null  
(define-const var2249 String "") ; Statement: r18 = "" 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r3 != null goto r19 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (not (not (= var1207 null-var3258)))) ; Negate: Cond: r3 != null  
(define-const var3978 String "") ; Statement: r19 = "" 
 ; Statement: goto [?= $r5 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.TableInformationImpl: org.hibernate.boot.model.relational.QualifiedTableName getName()>()] 
(assert true) ; Non Conditional
(declare-const var2470 var3274) ; Statement: $r10 := @caughtexception 
(assert (not (= var2470 null-var3274)))
(define-const var2745 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2745)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2745!1 String)
(assert (= var2745!1 ""))
(assert true)
(define-const var641 String (append/672562846 var2745!1 "Error while reading primary key meta data for ")) ; Statement: $r14 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error while reading primary key meta data for ") 
(declare-const var2745!2 String)
(assert (= var2745!2 (str.++ var2745!1 "Error while reading primary key meta data for ")))
(assert true)
(define-const var1711 var3247 (getName/-780813340 var1944)) ; Statement: $r12 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.TableInformationImpl: org.hibernate.boot.model.relational.QualifiedTableName getName()>() 
(assert true)
(define-const var2332 String (toString/199734091 (cast-from-var3247-to-var110 var1711))) ; Statement: $r13 = virtualinvoke $r12.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>() 
(assert true)
(define-const var2818 String (append/672562846 var641 var2332)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var641!1 String)
(assert (= var641!1 (str.++ var641 var2332)))
(assert true)
(define-const var866 String (toString/-2075883882 var2818)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2 var3286 (convertSQLException/-114946358 var285 var2470 var866)) ; Statement: $r17 = virtualinvoke r4.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: org.hibernate.JDBCException convertSQLException(java.sql.SQLException,java.lang.String)>($r10, $r16) 
(define-const var1092 var1129 (cast-from-var3286-to-var1129 var2)) ; Statement: $r21 = (java.lang.Throwable) $r17 
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-780813340=([org.hibernate.tool.schema.extract.internal.TableInformationImpl], org.hibernate.boot.model.relational.QualifiedTableName), getCatalogName/1959036760=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), cast-from-var3247-to-var110=([org.hibernate.boot.model.relational.QualifiedTableName], org.hibernate.boot.model.relational.QualifiedNameParser$NameParts), getSchemaName/569056114=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], org.hibernate.boot.model.naming.Identifier), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/199734091=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), convertSQLException/-114946358=([org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, java.sql.SQLException, java.lang.String], org.hibernate.JDBCException), cast-from-var3286-to-var1129=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var3138=org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl, var285=r4, var1516=org.hibernate.tool.schema.extract.internal.TableInformationImpl, var1944=r0, var3247=org.hibernate.boot.model.relational.QualifiedTableName, var3487=r1, var3258=org.hibernate.boot.model.naming.Identifier, var110=org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, var2601=r2, var1207=r3, var2249=r18, var3978=r19, var3274=java.sql.SQLException, var2470=$r10, var2745=$r20, var641=$r14, var1711=$r12, var2332=$r13, var2818=$r15, var866=$r16, var3286=org.hibernate.JDBCException, var2=$r17, var1129=java.lang.Throwable, var1092=$r21}
; {org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl=var3138, r4=var285, org.hibernate.tool.schema.extract.internal.TableInformationImpl=var1516, r0=var1944, org.hibernate.boot.model.relational.QualifiedTableName=var3247, r1=var3487, org.hibernate.boot.model.naming.Identifier=var3258, org.hibernate.boot.model.relational.QualifiedNameParser$NameParts=var110, r2=var2601, r3=var1207, r18=var2249, r19=var3978, java.sql.SQLException=var3274, $r10=var2470, $r20=var2745, $r14=var641, $r12=var1711, $r13=var2332, $r15=var2818, $r16=var866, org.hibernate.JDBCException=var3286, $r17=var2, java.lang.Throwable=var1129, $r21=var1092}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.boot.model.relational.QualifiedNameParser$NameParts: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl;	r0 := @parameter0: org.hibernate.tool.schema.extract.internal.TableInformationImpl;	r1 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.TableInformationImpl: org.hibernate.boot.model.relational.QualifiedTableName getName()>();	r2 = virtualinvoke r1.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getCatalogName()>();	r3 = virtualinvoke r1.<org.hibernate.boot.model.relational.QualifiedTableName: org.hibernate.boot.model.naming.Identifier getSchemaName()>();	if r2 != null goto r18 = virtualinvoke r2.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	r18 = "";	goto [?= (branch)];	if r3 != null goto r19 = virtualinvoke r3.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	r19 = "";	goto [?= $r5 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.TableInformationImpl: org.hibernate.boot.model.relational.QualifiedTableName getName()>()];	$r10 := @caughtexception;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error while reading primary key meta data for ");	$r12 = virtualinvoke r0.<org.hibernate.tool.schema.extract.internal.TableInformationImpl: org.hibernate.boot.model.relational.QualifiedTableName getName()>();	$r13 = virtualinvoke $r12.<org.hibernate.boot.model.relational.QualifiedTableName: java.lang.String toString()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = virtualinvoke r4.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl: org.hibernate.JDBCException convertSQLException(java.sql.SQLException,java.lang.String)>($r10, $r16);	$r21 = (java.lang.Throwable) $r17;	throw $r21
;block_num 5