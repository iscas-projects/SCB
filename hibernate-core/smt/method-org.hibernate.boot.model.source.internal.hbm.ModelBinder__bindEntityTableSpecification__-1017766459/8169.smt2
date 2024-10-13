(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3846 0)
(declare-sort var1093 0)
(declare-sort var1837 0)
(declare-sort var1362 0)
(declare-sort var2156 0)
(declare-sort var3388 0)
(declare-sort var2633 0)
(declare-sort var1305 0)
(declare-sort var389 0)
(declare-sort var2630 0)
(declare-sort var3585 0)
(declare-sort var3378 0)
(declare-sort var1556 0)
(declare-sort var751 0)
(declare-sort var3316 0)
(declare-sort var3396 0)
(declare-sort var2337 0)
(declare-sort var95 0)
(declare-sort var473 0)
(declare-sort var202 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2630!class ClassObject)
(declare-fun database/1575709631 (var3846) var2633)
(declare-fun determineCatalogName/-707242197 (var3846 var1837) var1305)
(declare-fun determineSchemaName/50600339 (var3846 var1837) var1305)
(declare-fun locateNamespace/650936008 (var2633 var1305 var1305) var389)
(declare-fun isInstance/451912363 (ClassObject var3585) Bool)
(declare-fun cast-from-var1837-to-var3585 (var1837) var3585)
(declare-fun isAbstract/-698908000 (var3388) var3378)
(declare-fun cast-from-var1837-to-var1556 (var1837) var1556)
(declare-fun var1556_getSelectStatement/942743418 (var1556) String)
(declare-fun var1556_getLogicalName/1202057593 (var1556) String)
(declare-fun toIdentifier/-614655301 (var2633 String) var1305)
(declare-fun var751-init () var751)
(declare-fun <init>/-1111662061 (var751 var389 String Bool var1362) void)
(declare-fun cast-from-var751-to-var1362 (var751) var1362)
(declare-fun render/-241411902 (var1305) String)
(declare-fun setName/-276822577 (var1362 String) void)
(declare-fun var3396_getSuperType/823133162 (var3396) var3396)
(declare-fun cast-from-var2156-to-var3396 (var2156) var3396)
(declare-fun getMetadataCollector/1898057277 (var1093) var2337)
(declare-fun var473_getEntityNamingSource/2070971324 (var473) var95)
(declare-fun cast-from-var2156-to-var473 (var2156) var473)
(declare-fun var202_getEntityName/-119580260 (var202) String)
(declare-fun cast-from-var95-to-var202 (var95) var202)
(declare-fun var2337_addEntityTableXref/141341542 (var2337 String var1305 var1362 var3316) var3316)
(declare-fun var1837_getComment/1496529157 (var1837) String)
(declare-fun setComment/-148307189 (var1362 String) void)
(declare-fun var2337_addTableNameBinding/826585113 (var2337 var1305 var1362) void)
(declare-const null-var3846 var3846)
(declare-const null-var1093 var1093)
(declare-const null-var1837 var1837)
(declare-const null-var1362 var1362)
(declare-const null-var2156 var2156)
(declare-const null-var3388 var3388)
(declare-const null-var3378 var3378)
(declare-const null-var3316 var3316)
(declare-const null-var3396 var3396)
(declare-const var986 var3846) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder 
(assert (not (= var986 null-var3846)))
(declare-const var2159 var1093) ; Statement: r17 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var2159 null-var1093)))
(declare-const var830 var1837) ; Statement: r1 := @parameter1: org.hibernate.boot.model.source.spi.TableSpecificationSource 
(assert (not (= var830 null-var1837)))
(declare-const var1467 var1362) ; Statement: r13 := @parameter2: org.hibernate.mapping.Table 
(assert (not (= var1467 null-var1362)))
(declare-const var3170 var2156) ; Statement: r16 := @parameter3: org.hibernate.boot.model.source.spi.EntitySource 
(assert (not (= var3170 null-var2156)))
(declare-const var2539 var3388) ; Statement: r7 := @parameter4: org.hibernate.mapping.PersistentClass 
(assert (not (= var2539 null-var3388)))
(define-const var1249 var2633 (database/1575709631 var986)) ; Statement: $r2 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database> 
(assert true)
(define-const var1622 var1305 (determineCatalogName/-707242197 var986 var830)) ; Statement: $r4 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineCatalogName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1) 
(assert true)
(define-const var3914 var1305 (determineSchemaName/50600339 var986 var830)) ; Statement: $r3 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineSchemaName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1) 
(assert true)
(define-const var3949 var389 (locateNamespace/650936008 var1249 var1622 var3914)) ; Statement: r5 = virtualinvoke $r2.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.relational.Namespace locateNamespace(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r4, $r3) 
(define-const var3166 ClassObject var2630!class) ; Statement: $r6 = class "Lorg/hibernate/boot/model/source/spi/TableSource;" 
(assert true)
(define-const var1571 Bool (isInstance/451912363 var3166 (cast-from-var1837-to-var3585 var830))) ; Statement: z0 = virtualinvoke $r6.<java.lang.Class: boolean isInstance(java.lang.Object)>(r1) 
(assert true)
(define-const var2703 var3378 (isAbstract/-698908000 var2539)) ; Statement: $r8 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>() 
 ; Statement: if $r8 != null goto $r9 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>() 
(assert (not (not (= var2703 null-var3378)))) ; Negate: Cond: $r8 != null  
(define-const var3859 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
 ; Statement: goto [?= z1 = $z4] 
(assert true) ; Non Conditional
(define-const var3400 Bool var3859) ; Statement: z1 = $z4 
 ; Statement: if z0 == 0 goto r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1 
(assert (= (ite var1571 1 0) 0)) ; Cond: z0 == 0 
(define-const var443 var1556 (cast-from-var1837-to-var1556 var830)) ; Statement: r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1 
(define-const var1497 String (var1556_getSelectStatement/942743418 var443)) ; Statement: r10 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getSelectStatement()>() 
(define-const var3849 var2633 (database/1575709631 var986)) ; Statement: $r11 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database> 
(define-const var3278 String (var1556_getLogicalName/1202057593 var443)) ; Statement: $r12 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getLogicalName()>() 
(assert true)
(define-const var692 var1305 (toIdentifier/-614655301 var3849 var3278)) ; Statement: r42 = virtualinvoke $r11.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r12) 
 ; Statement: if r13 != null goto $r53 = new org.hibernate.mapping.DenormalizedTable 
(assert (not (= var1467 null-var1362))) ; Cond: r13 != null 
(define-const var2831 var751 var751-init) ; Statement: $r53 = new org.hibernate.mapping.DenormalizedTable 
(assert true)
;(assert (<init>/-1111662061 var2831 var3949 var1497 var3859 var1467)) ; Statement: specialinvoke $r53.<org.hibernate.mapping.DenormalizedTable: void <init>(org.hibernate.boot.model.relational.Namespace,java.lang.String,boolean,org.hibernate.mapping.Table)>(r5, r10, $z4, r13) 

(declare-const var2831!1 var751)
(declare-const var3949!1 var389)
(declare-const var1497!1 String)
(declare-const var3859!1 Bool)
(declare-const var1467!1 var1362)
(define-const var69 var1362 (cast-from-var751-to-var1362 var2831!1)) ; Statement: r43 = $r53 
(assert true) ; Non Conditional
(assert true)
(define-const var407 String (render/-241411902 var692)) ; Statement: $r15 = virtualinvoke r42.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>() 
(assert true)
;(assert (setName/-276822577 var69 var407)) ; Statement: virtualinvoke r43.<org.hibernate.mapping.Table: void setName(java.lang.String)>($r15) 

(declare-const var69!1 var1362)
(declare-const var407!1 String)
(assert true) ; Non Conditional
(define-const var3519 var3316 null-var3316) ; Statement: r45 = null 
(define-const var898 var3396 (var3396_getSuperType/823133162 (cast-from-var2156-to-var3396 var3170))) ; Statement: $r46 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.IdentifiableTypeSource getSuperType()>() 
 ; Statement: if $r46 == null goto $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(assert (= var898 null-var3396)) ; Cond: $r46 == null 
(assert true)
(define-const var2019 var2337 (getMetadataCollector/1898057277 var2159)) ; Statement: $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(define-const var3892 var95 (var473_getEntityNamingSource/2070971324 (cast-from-var2156-to-var473 var3170))) ; Statement: $r18 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.EntityNamingSource getEntityNamingSource()>() 
(define-const var2817 String (var202_getEntityName/-119580260 (cast-from-var95-to-var202 var3892))) ; Statement: $r19 = interfaceinvoke $r18.<org.hibernate.boot.model.source.spi.EntityNamingSource: java.lang.String getEntityName()>() 
;(assert (var2337_addEntityTableXref/141341542 var2019 var2817 var692 var69!1 var3519)) ; Statement: interfaceinvoke $r20.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref addEntityTableXref(java.lang.String,org.hibernate.boot.model.naming.Identifier,org.hibernate.mapping.Table,org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref)>($r19, r42, r43, r45) 

(declare-const var2019!1 var2337)
(declare-const var2817!1 String)
(declare-const var692!1 var1305)
(declare-const var69!2 var1362)
(declare-const var3519!1 var3316)
 ; Statement: if z0 == 0 goto $r49 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.TableSpecificationSource: java.lang.String getComment()>() 
(assert (= (ite var1571 1 0) 0)) ; Cond: z0 == 0 
(define-const var1790 String (var1837_getComment/1496529157 var830)) ; Statement: $r49 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.TableSpecificationSource: java.lang.String getComment()>() 
(assert true)
;(assert (setComment/-148307189 var69!2 var1790)) ; Statement: virtualinvoke r43.<org.hibernate.mapping.Table: void setComment(java.lang.String)>($r49) 

(declare-const var69!3 var1362)
(declare-const var1790!1 String)
(assert true)
(define-const var3257 var2337 (getMetadataCollector/1898057277 var2159)) ; Statement: $r50 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
;(assert (var2337_addTableNameBinding/826585113 var3257 var692!1 var69!3)) ; Statement: interfaceinvoke $r50.<org.hibernate.boot.spi.InFlightMetadataCollector: void addTableNameBinding(org.hibernate.boot.model.naming.Identifier,org.hibernate.mapping.Table)>(r42, r43) 

(declare-const var3257!1 var2337)
(declare-const var692!2 var1305)
(declare-const var69!4 var1362)
 ; Statement: return r43 
(check-sat)
(get-model)
(get-unsat-core)
; {database/1575709631=([org.hibernate.boot.model.source.internal.hbm.ModelBinder], org.hibernate.boot.model.relational.Database), determineCatalogName/-707242197=([org.hibernate.boot.model.source.internal.hbm.ModelBinder, org.hibernate.boot.model.source.spi.TableSpecificationSource], org.hibernate.boot.model.naming.Identifier), determineSchemaName/50600339=([org.hibernate.boot.model.source.internal.hbm.ModelBinder, org.hibernate.boot.model.source.spi.TableSpecificationSource], org.hibernate.boot.model.naming.Identifier), locateNamespace/650936008=([org.hibernate.boot.model.relational.Database, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier], org.hibernate.boot.model.relational.Namespace), isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var1837-to-var3585=([org.hibernate.boot.model.source.spi.TableSpecificationSource], java.lang.Object), isAbstract/-698908000=([org.hibernate.mapping.PersistentClass], java.lang.Boolean), cast-from-var1837-to-var1556=([org.hibernate.boot.model.source.spi.TableSpecificationSource], org.hibernate.boot.model.source.spi.InLineViewSource), var1556_getSelectStatement/942743418=([org.hibernate.boot.model.source.spi.InLineViewSource], java.lang.String), var1556_getLogicalName/1202057593=([org.hibernate.boot.model.source.spi.InLineViewSource], java.lang.String), toIdentifier/-614655301=([org.hibernate.boot.model.relational.Database, java.lang.String], org.hibernate.boot.model.naming.Identifier), var751-init=([], org.hibernate.mapping.DenormalizedTable), <init>/-1111662061=([org.hibernate.mapping.DenormalizedTable, org.hibernate.boot.model.relational.Namespace, java.lang.String, boolean, org.hibernate.mapping.Table], void), cast-from-var751-to-var1362=([org.hibernate.mapping.DenormalizedTable], org.hibernate.mapping.Table), render/-241411902=([org.hibernate.boot.model.naming.Identifier], java.lang.String), setName/-276822577=([org.hibernate.mapping.Table, java.lang.String], void), var3396_getSuperType/823133162=([org.hibernate.boot.model.source.spi.IdentifiableTypeSource], org.hibernate.boot.model.source.spi.IdentifiableTypeSource), cast-from-var2156-to-var3396=([org.hibernate.boot.model.source.spi.EntitySource], org.hibernate.boot.model.source.spi.IdentifiableTypeSource), getMetadataCollector/1898057277=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.spi.InFlightMetadataCollector), var473_getEntityNamingSource/2070971324=([org.hibernate.boot.model.source.spi.EntityNamingSourceContributor], org.hibernate.boot.model.source.spi.EntityNamingSource), cast-from-var2156-to-var473=([org.hibernate.boot.model.source.spi.EntitySource], org.hibernate.boot.model.source.spi.EntityNamingSourceContributor), var202_getEntityName/-119580260=([org.hibernate.boot.model.naming.EntityNaming], java.lang.String), cast-from-var95-to-var202=([org.hibernate.boot.model.source.spi.EntityNamingSource], org.hibernate.boot.model.naming.EntityNaming), var2337_addEntityTableXref/141341542=([org.hibernate.boot.spi.InFlightMetadataCollector, java.lang.String, org.hibernate.boot.model.naming.Identifier, org.hibernate.mapping.Table, org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref], org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref), var1837_getComment/1496529157=([org.hibernate.boot.model.source.spi.TableSpecificationSource], java.lang.String), setComment/-148307189=([org.hibernate.mapping.Table, java.lang.String], void), var2337_addTableNameBinding/826585113=([org.hibernate.boot.spi.InFlightMetadataCollector, org.hibernate.boot.model.naming.Identifier, org.hibernate.mapping.Table], void)}
; {var3846=org.hibernate.boot.model.source.internal.hbm.ModelBinder, var986=r0, var1093=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var2159=r17, var1837=org.hibernate.boot.model.source.spi.TableSpecificationSource, var830=r1, var1362=org.hibernate.mapping.Table, var1467=r13, var2156=org.hibernate.boot.model.source.spi.EntitySource, var3170=r16, var3388=org.hibernate.mapping.PersistentClass, var2539=r7, var2633=org.hibernate.boot.model.relational.Database, var1249=$r2, var1305=org.hibernate.boot.model.naming.Identifier, var1622=$r4, var3914=$r3, var389=org.hibernate.boot.model.relational.Namespace, var3949=r5, var2630=org.hibernate.boot.model.source.spi.TableSource, var3166=$r6, var3585=java.lang.Object, var1571=z0, var3378=java.lang.Boolean, var2703=$r8, var3859=$z4, var3400=z1, var1556=org.hibernate.boot.model.source.spi.InLineViewSource, var443=r44, var1497=r10, var3849=$r11, var3278=$r12, var692=r42, var751=org.hibernate.mapping.DenormalizedTable, var2831=$r53, var69=r43, var407=$r15, var3316=org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref, var3519=r45, var3396=org.hibernate.boot.model.source.spi.IdentifiableTypeSource, var898=$r46, var2337=org.hibernate.boot.spi.InFlightMetadataCollector, var2019=$r20, var95=org.hibernate.boot.model.source.spi.EntityNamingSource, var473=org.hibernate.boot.model.source.spi.EntityNamingSourceContributor, var3892=$r18, var202=org.hibernate.boot.model.naming.EntityNaming, var2817=$r19, var1790=$r49, var3257=$r50}
; {org.hibernate.boot.model.source.internal.hbm.ModelBinder=var3846, r0=var986, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var1093, r17=var2159, org.hibernate.boot.model.source.spi.TableSpecificationSource=var1837, r1=var830, org.hibernate.mapping.Table=var1362, r13=var1467, org.hibernate.boot.model.source.spi.EntitySource=var2156, r16=var3170, org.hibernate.mapping.PersistentClass=var3388, r7=var2539, org.hibernate.boot.model.relational.Database=var2633, $r2=var1249, org.hibernate.boot.model.naming.Identifier=var1305, $r4=var1622, $r3=var3914, org.hibernate.boot.model.relational.Namespace=var389, r5=var3949, org.hibernate.boot.model.source.spi.TableSource=var2630, $r6=var3166, java.lang.Object=var3585, z0=var1571, java.lang.Boolean=var3378, $r8=var2703, $z4=var3859, z1=var3400, org.hibernate.boot.model.source.spi.InLineViewSource=var1556, r44=var443, r10=var1497, $r11=var3849, $r12=var3278, r42=var692, org.hibernate.mapping.DenormalizedTable=var751, $r53=var2831, r43=var69, $r15=var407, org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref=var3316, r45=var3519, org.hibernate.boot.model.source.spi.IdentifiableTypeSource=var3396, $r46=var898, org.hibernate.boot.spi.InFlightMetadataCollector=var2337, $r20=var2019, org.hibernate.boot.model.source.spi.EntityNamingSource=var95, org.hibernate.boot.model.source.spi.EntityNamingSourceContributor=var473, $r18=var3892, org.hibernate.boot.model.naming.EntityNaming=var202, $r19=var2817, $r49=var1790, $r50=var3257}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder;	r17 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r1 := @parameter1: org.hibernate.boot.model.source.spi.TableSpecificationSource;	r13 := @parameter2: org.hibernate.mapping.Table;	r16 := @parameter3: org.hibernate.boot.model.source.spi.EntitySource;	r7 := @parameter4: org.hibernate.mapping.PersistentClass;	$r2 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database>;	$r4 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineCatalogName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1);	$r3 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineSchemaName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1);	r5 = virtualinvoke $r2.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.relational.Namespace locateNamespace(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r4, $r3);	$r6 = class "Lorg/hibernate/boot/model/source/spi/TableSource;";	z0 = virtualinvoke $r6.<java.lang.Class: boolean isInstance(java.lang.Object)>(r1);	$r8 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>();	if $r8 != null goto $r9 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>();	$z4 = 0;	goto [?= z1 = $z4];	z1 = $z4;	if z0 == 0 goto r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1;	r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1;	r10 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getSelectStatement()>();	$r11 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database>;	$r12 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getLogicalName()>();	r42 = virtualinvoke $r11.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r12);	if r13 != null goto $r53 = new org.hibernate.mapping.DenormalizedTable;	$r53 = new org.hibernate.mapping.DenormalizedTable;	specialinvoke $r53.<org.hibernate.mapping.DenormalizedTable: void <init>(org.hibernate.boot.model.relational.Namespace,java.lang.String,boolean,org.hibernate.mapping.Table)>(r5, r10, $z4, r13);	r43 = $r53;	$r15 = virtualinvoke r42.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>();	virtualinvoke r43.<org.hibernate.mapping.Table: void setName(java.lang.String)>($r15);	r45 = null;	$r46 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.IdentifiableTypeSource getSuperType()>();	if $r46 == null goto $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r18 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.EntityNamingSource getEntityNamingSource()>();	$r19 = interfaceinvoke $r18.<org.hibernate.boot.model.source.spi.EntityNamingSource: java.lang.String getEntityName()>();	interfaceinvoke $r20.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref addEntityTableXref(java.lang.String,org.hibernate.boot.model.naming.Identifier,org.hibernate.mapping.Table,org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref)>($r19, r42, r43, r45);	if z0 == 0 goto $r49 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.TableSpecificationSource: java.lang.String getComment()>();	$r49 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.TableSpecificationSource: java.lang.String getComment()>();	virtualinvoke r43.<org.hibernate.mapping.Table: void setComment(java.lang.String)>($r49);	$r50 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	interfaceinvoke $r50.<org.hibernate.boot.spi.InFlightMetadataCollector: void addTableNameBinding(org.hibernate.boot.model.naming.Identifier,org.hibernate.mapping.Table)>(r42, r43);	return r43
;block_num 9