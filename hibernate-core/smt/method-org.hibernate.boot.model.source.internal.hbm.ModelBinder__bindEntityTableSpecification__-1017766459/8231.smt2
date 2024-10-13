(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2378 0)
(declare-sort var2881 0)
(declare-sort var1804 0)
(declare-sort var1210 0)
(declare-sort var53 0)
(declare-sort var3218 0)
(declare-sort var1079 0)
(declare-sort var2259 0)
(declare-sort var2159 0)
(declare-sort var199 0)
(declare-sort var883 0)
(declare-sort var990 0)
(declare-sort var845 0)
(declare-sort var3769 0)
(declare-sort var2411 0)
(declare-sort var3520 0)
(declare-sort var121 0)
(declare-sort var1312 0)
(declare-sort var3591 0)
(declare-sort var2550 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var199!class ClassObject)
(declare-fun database/1575709631 (var2378) var1079)
(declare-fun determineCatalogName/-707242197 (var2378 var1804) var2259)
(declare-fun determineSchemaName/50600339 (var2378 var1804) var2259)
(declare-fun locateNamespace/650936008 (var1079 var2259 var2259) var2159)
(declare-fun isInstance/451912363 (ClassObject var883) Bool)
(declare-fun cast-from-var1804-to-var883 (var1804) var883)
(declare-fun isAbstract/-698908000 (var3218) var990)
(declare-fun booleanValue/-1820462562 (var990) Bool)
(declare-fun cast-from-var1804-to-var845 (var1804) var845)
(declare-fun var845_getSelectStatement/942743418 (var845) String)
(declare-fun var845_getLogicalName/1202057593 (var845) String)
(declare-fun toIdentifier/-614655301 (var1079 String) var2259)
(declare-fun var3769-init () var3769)
(declare-fun <init>/-1111662061 (var3769 var2159 String Bool var1210) void)
(declare-fun cast-from-var3769-to-var1210 (var3769) var1210)
(declare-fun render/-241411902 (var2259) String)
(declare-fun setName/-276822577 (var1210 String) void)
(declare-fun var3520_getSuperType/823133162 (var3520) var3520)
(declare-fun cast-from-var53-to-var3520 (var53) var3520)
(declare-fun getMetadataCollector/1898057277 (var2881) var121)
(declare-fun var3591_getEntityNamingSource/2070971324 (var3591) var1312)
(declare-fun cast-from-var53-to-var3591 (var53) var3591)
(declare-fun var2550_getEntityName/-119580260 (var2550) String)
(declare-fun cast-from-var1312-to-var2550 (var1312) var2550)
(declare-fun var121_addEntityTableXref/141341542 (var121 String var2259 var1210 var2411) var2411)
(declare-fun var1804_getComment/1496529157 (var1804) String)
(declare-fun setComment/-148307189 (var1210 String) void)
(declare-fun var121_addTableNameBinding/826585113 (var121 var2259 var1210) void)
(declare-const null-var2378 var2378)
(declare-const null-var2881 var2881)
(declare-const null-var1804 var1804)
(declare-const null-var1210 var1210)
(declare-const null-var53 var53)
(declare-const null-var3218 var3218)
(declare-const null-var990 var990)
(declare-const null-var2411 var2411)
(declare-const null-var3520 var3520)
(declare-const var1108 var2378) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder 
(assert (not (= var1108 null-var2378)))
(declare-const var1752 var2881) ; Statement: r17 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var1752 null-var2881)))
(declare-const var3642 var1804) ; Statement: r1 := @parameter1: org.hibernate.boot.model.source.spi.TableSpecificationSource 
(assert (not (= var3642 null-var1804)))
(declare-const var828 var1210) ; Statement: r13 := @parameter2: org.hibernate.mapping.Table 
(assert (not (= var828 null-var1210)))
(declare-const var2323 var53) ; Statement: r16 := @parameter3: org.hibernate.boot.model.source.spi.EntitySource 
(assert (not (= var2323 null-var53)))
(declare-const var2937 var3218) ; Statement: r7 := @parameter4: org.hibernate.mapping.PersistentClass 
(assert (not (= var2937 null-var3218)))
(define-const var346 var1079 (database/1575709631 var1108)) ; Statement: $r2 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database> 
(assert true)
(define-const var1272 var2259 (determineCatalogName/-707242197 var1108 var3642)) ; Statement: $r4 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineCatalogName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1) 
(assert true)
(define-const var965 var2259 (determineSchemaName/50600339 var1108 var3642)) ; Statement: $r3 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineSchemaName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1) 
(assert true)
(define-const var3862 var2159 (locateNamespace/650936008 var346 var1272 var965)) ; Statement: r5 = virtualinvoke $r2.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.relational.Namespace locateNamespace(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r4, $r3) 
(define-const var1116 ClassObject var199!class) ; Statement: $r6 = class "Lorg/hibernate/boot/model/source/spi/TableSource;" 
(assert true)
(define-const var975 Bool (isInstance/451912363 var1116 (cast-from-var1804-to-var883 var3642))) ; Statement: z0 = virtualinvoke $r6.<java.lang.Class: boolean isInstance(java.lang.Object)>(r1) 
(assert true)
(define-const var1378 var990 (isAbstract/-698908000 var2937)) ; Statement: $r8 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>() 
 ; Statement: if $r8 != null goto $r9 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>() 
(assert (not (= var1378 null-var990))) ; Cond: $r8 != null 
(assert true)
(define-const var3206 var990 (isAbstract/-698908000 var2937)) ; Statement: $r9 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>() 
(assert true)
(define-const var3762 Bool (booleanValue/-1820462562 var3206)) ; Statement: $z4 = virtualinvoke $r9.<java.lang.Boolean: boolean booleanValue()>() 
(assert true) ; Non Conditional
(define-const var2976 Bool var3762) ; Statement: z1 = $z4 
 ; Statement: if z0 == 0 goto r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1 
(assert (= (ite var975 1 0) 0)) ; Cond: z0 == 0 
(define-const var37 var845 (cast-from-var1804-to-var845 var3642)) ; Statement: r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1 
(define-const var1011 String (var845_getSelectStatement/942743418 var37)) ; Statement: r10 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getSelectStatement()>() 
(define-const var1083 var1079 (database/1575709631 var1108)) ; Statement: $r11 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database> 
(define-const var1544 String (var845_getLogicalName/1202057593 var37)) ; Statement: $r12 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getLogicalName()>() 
(assert true)
(define-const var2565 var2259 (toIdentifier/-614655301 var1083 var1544)) ; Statement: r42 = virtualinvoke $r11.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r12) 
 ; Statement: if r13 != null goto $r53 = new org.hibernate.mapping.DenormalizedTable 
(assert (not (= var828 null-var1210))) ; Cond: r13 != null 
(define-const var596 var3769 var3769-init) ; Statement: $r53 = new org.hibernate.mapping.DenormalizedTable 
(assert true)
;(assert (<init>/-1111662061 var596 var3862 var1011 var3762 var828)) ; Statement: specialinvoke $r53.<org.hibernate.mapping.DenormalizedTable: void <init>(org.hibernate.boot.model.relational.Namespace,java.lang.String,boolean,org.hibernate.mapping.Table)>(r5, r10, $z4, r13) 

(declare-const var596!1 var3769)
(declare-const var3862!1 var2159)
(declare-const var1011!1 String)
(declare-const var3762!1 Bool)
(declare-const var828!1 var1210)
(define-const var2769 var1210 (cast-from-var3769-to-var1210 var596!1)) ; Statement: r43 = $r53 
(assert true) ; Non Conditional
(assert true)
(define-const var837 String (render/-241411902 var2565)) ; Statement: $r15 = virtualinvoke r42.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>() 
(assert true)
;(assert (setName/-276822577 var2769 var837)) ; Statement: virtualinvoke r43.<org.hibernate.mapping.Table: void setName(java.lang.String)>($r15) 

(declare-const var2769!1 var1210)
(declare-const var837!1 String)
(assert true) ; Non Conditional
(define-const var2070 var2411 null-var2411) ; Statement: r45 = null 
(define-const var1565 var3520 (var3520_getSuperType/823133162 (cast-from-var53-to-var3520 var2323))) ; Statement: $r46 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.IdentifiableTypeSource getSuperType()>() 
 ; Statement: if $r46 == null goto $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(assert (= var1565 null-var3520)) ; Cond: $r46 == null 
(assert true)
(define-const var1420 var121 (getMetadataCollector/1898057277 var1752)) ; Statement: $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(define-const var636 var1312 (var3591_getEntityNamingSource/2070971324 (cast-from-var53-to-var3591 var2323))) ; Statement: $r18 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.EntityNamingSource getEntityNamingSource()>() 
(define-const var3582 String (var2550_getEntityName/-119580260 (cast-from-var1312-to-var2550 var636))) ; Statement: $r19 = interfaceinvoke $r18.<org.hibernate.boot.model.source.spi.EntityNamingSource: java.lang.String getEntityName()>() 
;(assert (var121_addEntityTableXref/141341542 var1420 var3582 var2565 var2769!1 var2070)) ; Statement: interfaceinvoke $r20.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref addEntityTableXref(java.lang.String,org.hibernate.boot.model.naming.Identifier,org.hibernate.mapping.Table,org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref)>($r19, r42, r43, r45) 

(declare-const var1420!1 var121)
(declare-const var3582!1 String)
(declare-const var2565!1 var2259)
(declare-const var2769!2 var1210)
(declare-const var2070!1 var2411)
 ; Statement: if z0 == 0 goto $r49 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.TableSpecificationSource: java.lang.String getComment()>() 
(assert (= (ite var975 1 0) 0)) ; Cond: z0 == 0 
(define-const var1304 String (var1804_getComment/1496529157 var3642)) ; Statement: $r49 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.TableSpecificationSource: java.lang.String getComment()>() 
(assert true)
;(assert (setComment/-148307189 var2769!2 var1304)) ; Statement: virtualinvoke r43.<org.hibernate.mapping.Table: void setComment(java.lang.String)>($r49) 

(declare-const var2769!3 var1210)
(declare-const var1304!1 String)
(assert true)
(define-const var2108 var121 (getMetadataCollector/1898057277 var1752)) ; Statement: $r50 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
;(assert (var121_addTableNameBinding/826585113 var2108 var2565!1 var2769!3)) ; Statement: interfaceinvoke $r50.<org.hibernate.boot.spi.InFlightMetadataCollector: void addTableNameBinding(org.hibernate.boot.model.naming.Identifier,org.hibernate.mapping.Table)>(r42, r43) 

(declare-const var2108!1 var121)
(declare-const var2565!2 var2259)
(declare-const var2769!4 var1210)
 ; Statement: return r43 
(check-sat)
(get-model)
(get-unsat-core)
; {database/1575709631=([org.hibernate.boot.model.source.internal.hbm.ModelBinder], org.hibernate.boot.model.relational.Database), determineCatalogName/-707242197=([org.hibernate.boot.model.source.internal.hbm.ModelBinder, org.hibernate.boot.model.source.spi.TableSpecificationSource], org.hibernate.boot.model.naming.Identifier), determineSchemaName/50600339=([org.hibernate.boot.model.source.internal.hbm.ModelBinder, org.hibernate.boot.model.source.spi.TableSpecificationSource], org.hibernate.boot.model.naming.Identifier), locateNamespace/650936008=([org.hibernate.boot.model.relational.Database, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier], org.hibernate.boot.model.relational.Namespace), isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var1804-to-var883=([org.hibernate.boot.model.source.spi.TableSpecificationSource], java.lang.Object), isAbstract/-698908000=([org.hibernate.mapping.PersistentClass], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), cast-from-var1804-to-var845=([org.hibernate.boot.model.source.spi.TableSpecificationSource], org.hibernate.boot.model.source.spi.InLineViewSource), var845_getSelectStatement/942743418=([org.hibernate.boot.model.source.spi.InLineViewSource], java.lang.String), var845_getLogicalName/1202057593=([org.hibernate.boot.model.source.spi.InLineViewSource], java.lang.String), toIdentifier/-614655301=([org.hibernate.boot.model.relational.Database, java.lang.String], org.hibernate.boot.model.naming.Identifier), var3769-init=([], org.hibernate.mapping.DenormalizedTable), <init>/-1111662061=([org.hibernate.mapping.DenormalizedTable, org.hibernate.boot.model.relational.Namespace, java.lang.String, boolean, org.hibernate.mapping.Table], void), cast-from-var3769-to-var1210=([org.hibernate.mapping.DenormalizedTable], org.hibernate.mapping.Table), render/-241411902=([org.hibernate.boot.model.naming.Identifier], java.lang.String), setName/-276822577=([org.hibernate.mapping.Table, java.lang.String], void), var3520_getSuperType/823133162=([org.hibernate.boot.model.source.spi.IdentifiableTypeSource], org.hibernate.boot.model.source.spi.IdentifiableTypeSource), cast-from-var53-to-var3520=([org.hibernate.boot.model.source.spi.EntitySource], org.hibernate.boot.model.source.spi.IdentifiableTypeSource), getMetadataCollector/1898057277=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.spi.InFlightMetadataCollector), var3591_getEntityNamingSource/2070971324=([org.hibernate.boot.model.source.spi.EntityNamingSourceContributor], org.hibernate.boot.model.source.spi.EntityNamingSource), cast-from-var53-to-var3591=([org.hibernate.boot.model.source.spi.EntitySource], org.hibernate.boot.model.source.spi.EntityNamingSourceContributor), var2550_getEntityName/-119580260=([org.hibernate.boot.model.naming.EntityNaming], java.lang.String), cast-from-var1312-to-var2550=([org.hibernate.boot.model.source.spi.EntityNamingSource], org.hibernate.boot.model.naming.EntityNaming), var121_addEntityTableXref/141341542=([org.hibernate.boot.spi.InFlightMetadataCollector, java.lang.String, org.hibernate.boot.model.naming.Identifier, org.hibernate.mapping.Table, org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref], org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref), var1804_getComment/1496529157=([org.hibernate.boot.model.source.spi.TableSpecificationSource], java.lang.String), setComment/-148307189=([org.hibernate.mapping.Table, java.lang.String], void), var121_addTableNameBinding/826585113=([org.hibernate.boot.spi.InFlightMetadataCollector, org.hibernate.boot.model.naming.Identifier, org.hibernate.mapping.Table], void)}
; {var2378=org.hibernate.boot.model.source.internal.hbm.ModelBinder, var1108=r0, var2881=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var1752=r17, var1804=org.hibernate.boot.model.source.spi.TableSpecificationSource, var3642=r1, var1210=org.hibernate.mapping.Table, var828=r13, var53=org.hibernate.boot.model.source.spi.EntitySource, var2323=r16, var3218=org.hibernate.mapping.PersistentClass, var2937=r7, var1079=org.hibernate.boot.model.relational.Database, var346=$r2, var2259=org.hibernate.boot.model.naming.Identifier, var1272=$r4, var965=$r3, var2159=org.hibernate.boot.model.relational.Namespace, var3862=r5, var199=org.hibernate.boot.model.source.spi.TableSource, var1116=$r6, var883=java.lang.Object, var975=z0, var990=java.lang.Boolean, var1378=$r8, var3206=$r9, var3762=$z4, var2976=z1, var845=org.hibernate.boot.model.source.spi.InLineViewSource, var37=r44, var1011=r10, var1083=$r11, var1544=$r12, var2565=r42, var3769=org.hibernate.mapping.DenormalizedTable, var596=$r53, var2769=r43, var837=$r15, var2411=org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref, var2070=r45, var3520=org.hibernate.boot.model.source.spi.IdentifiableTypeSource, var1565=$r46, var121=org.hibernate.boot.spi.InFlightMetadataCollector, var1420=$r20, var1312=org.hibernate.boot.model.source.spi.EntityNamingSource, var3591=org.hibernate.boot.model.source.spi.EntityNamingSourceContributor, var636=$r18, var2550=org.hibernate.boot.model.naming.EntityNaming, var3582=$r19, var1304=$r49, var2108=$r50}
; {org.hibernate.boot.model.source.internal.hbm.ModelBinder=var2378, r0=var1108, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var2881, r17=var1752, org.hibernate.boot.model.source.spi.TableSpecificationSource=var1804, r1=var3642, org.hibernate.mapping.Table=var1210, r13=var828, org.hibernate.boot.model.source.spi.EntitySource=var53, r16=var2323, org.hibernate.mapping.PersistentClass=var3218, r7=var2937, org.hibernate.boot.model.relational.Database=var1079, $r2=var346, org.hibernate.boot.model.naming.Identifier=var2259, $r4=var1272, $r3=var965, org.hibernate.boot.model.relational.Namespace=var2159, r5=var3862, org.hibernate.boot.model.source.spi.TableSource=var199, $r6=var1116, java.lang.Object=var883, z0=var975, java.lang.Boolean=var990, $r8=var1378, $r9=var3206, $z4=var3762, z1=var2976, org.hibernate.boot.model.source.spi.InLineViewSource=var845, r44=var37, r10=var1011, $r11=var1083, $r12=var1544, r42=var2565, org.hibernate.mapping.DenormalizedTable=var3769, $r53=var596, r43=var2769, $r15=var837, org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref=var2411, r45=var2070, org.hibernate.boot.model.source.spi.IdentifiableTypeSource=var3520, $r46=var1565, org.hibernate.boot.spi.InFlightMetadataCollector=var121, $r20=var1420, org.hibernate.boot.model.source.spi.EntityNamingSource=var1312, org.hibernate.boot.model.source.spi.EntityNamingSourceContributor=var3591, $r18=var636, org.hibernate.boot.model.naming.EntityNaming=var2550, $r19=var3582, $r49=var1304, $r50=var2108}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder;	r17 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r1 := @parameter1: org.hibernate.boot.model.source.spi.TableSpecificationSource;	r13 := @parameter2: org.hibernate.mapping.Table;	r16 := @parameter3: org.hibernate.boot.model.source.spi.EntitySource;	r7 := @parameter4: org.hibernate.mapping.PersistentClass;	$r2 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database>;	$r4 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineCatalogName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1);	$r3 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineSchemaName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1);	r5 = virtualinvoke $r2.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.relational.Namespace locateNamespace(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r4, $r3);	$r6 = class "Lorg/hibernate/boot/model/source/spi/TableSource;";	z0 = virtualinvoke $r6.<java.lang.Class: boolean isInstance(java.lang.Object)>(r1);	$r8 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>();	if $r8 != null goto $r9 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>();	$r9 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>();	$z4 = virtualinvoke $r9.<java.lang.Boolean: boolean booleanValue()>();	z1 = $z4;	if z0 == 0 goto r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1;	r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1;	r10 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getSelectStatement()>();	$r11 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database>;	$r12 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getLogicalName()>();	r42 = virtualinvoke $r11.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r12);	if r13 != null goto $r53 = new org.hibernate.mapping.DenormalizedTable;	$r53 = new org.hibernate.mapping.DenormalizedTable;	specialinvoke $r53.<org.hibernate.mapping.DenormalizedTable: void <init>(org.hibernate.boot.model.relational.Namespace,java.lang.String,boolean,org.hibernate.mapping.Table)>(r5, r10, $z4, r13);	r43 = $r53;	$r15 = virtualinvoke r42.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>();	virtualinvoke r43.<org.hibernate.mapping.Table: void setName(java.lang.String)>($r15);	r45 = null;	$r46 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.IdentifiableTypeSource getSuperType()>();	if $r46 == null goto $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r18 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.EntityNamingSource getEntityNamingSource()>();	$r19 = interfaceinvoke $r18.<org.hibernate.boot.model.source.spi.EntityNamingSource: java.lang.String getEntityName()>();	interfaceinvoke $r20.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref addEntityTableXref(java.lang.String,org.hibernate.boot.model.naming.Identifier,org.hibernate.mapping.Table,org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref)>($r19, r42, r43, r45);	if z0 == 0 goto $r49 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.TableSpecificationSource: java.lang.String getComment()>();	$r49 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.TableSpecificationSource: java.lang.String getComment()>();	virtualinvoke r43.<org.hibernate.mapping.Table: void setComment(java.lang.String)>($r49);	$r50 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	interfaceinvoke $r50.<org.hibernate.boot.spi.InFlightMetadataCollector: void addTableNameBinding(org.hibernate.boot.model.naming.Identifier,org.hibernate.mapping.Table)>(r42, r43);	return r43
;block_num 9