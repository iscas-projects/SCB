(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3330 0)
(declare-sort var795 0)
(declare-sort var99 0)
(declare-sort var923 0)
(declare-sort var5 0)
(declare-sort var3886 0)
(declare-sort var1720 0)
(declare-sort var2570 0)
(declare-sort var3026 0)
(declare-sort var3245 0)
(declare-sort var3612 0)
(declare-sort var2137 0)
(declare-sort var1163 0)
(declare-sort var1137 0)
(declare-sort var87 0)
(declare-sort var2133 0)
(declare-sort var1181 0)
(declare-sort var2231 0)
(declare-sort var3279 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3245!class ClassObject)
(declare-fun database/1575709631 (var3330) var1720)
(declare-fun determineCatalogName/-707242197 (var3330 var99) var2570)
(declare-fun determineSchemaName/50600339 (var3330 var99) var2570)
(declare-fun locateNamespace/650936008 (var1720 var2570 var2570) var3026)
(declare-fun isInstance/451912363 (ClassObject var3612) Bool)
(declare-fun cast-from-var99-to-var3612 (var99) var3612)
(declare-fun isAbstract/-698908000 (var3886) var2137)
(declare-fun cast-from-var99-to-var1163 (var99) var1163)
(declare-fun var1163_getSelectStatement/942743418 (var1163) String)
(declare-fun var1163_getLogicalName/1202057593 (var1163) String)
(declare-fun toIdentifier/-614655301 (var1720 String) var2570)
(declare-fun var923-init () var923)
(declare-fun <init>/-24210129 (var923 var3026 String Bool) void)
(declare-fun render/-241411902 (var2570) String)
(declare-fun setName/-276822577 (var923 String) void)
(declare-fun var87_getSuperType/823133162 (var87) var87)
(declare-fun cast-from-var5-to-var87 (var5) var87)
(declare-fun getMetadataCollector/1898057277 (var795) var2133)
(declare-fun var2231_getEntityNamingSource/2070971324 (var2231) var1181)
(declare-fun cast-from-var5-to-var2231 (var5) var2231)
(declare-fun var3279_getEntityName/-119580260 (var3279) String)
(declare-fun cast-from-var1181-to-var3279 (var1181) var3279)
(declare-fun var2133_addEntityTableXref/141341542 (var2133 String var2570 var923 var1137) var1137)
(declare-fun var99_getComment/1496529157 (var99) String)
(declare-fun setComment/-148307189 (var923 String) void)
(declare-fun var2133_addTableNameBinding/826585113 (var2133 var2570 var923) void)
(declare-const null-var3330 var3330)
(declare-const null-var795 var795)
(declare-const null-var99 var99)
(declare-const null-var923 var923)
(declare-const null-var5 var5)
(declare-const null-var3886 var3886)
(declare-const null-var2137 var2137)
(declare-const null-var1137 var1137)
(declare-const null-var87 var87)
(declare-const var170 var3330) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder 
(assert (not (= var170 null-var3330)))
(declare-const var1997 var795) ; Statement: r17 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var1997 null-var795)))
(declare-const var1426 var99) ; Statement: r1 := @parameter1: org.hibernate.boot.model.source.spi.TableSpecificationSource 
(assert (not (= var1426 null-var99)))
(declare-const var1447 var923) ; Statement: r13 := @parameter2: org.hibernate.mapping.Table 
(assert (not (= var1447 null-var923)))
(declare-const var724 var5) ; Statement: r16 := @parameter3: org.hibernate.boot.model.source.spi.EntitySource 
(assert (not (= var724 null-var5)))
(declare-const var1197 var3886) ; Statement: r7 := @parameter4: org.hibernate.mapping.PersistentClass 
(assert (not (= var1197 null-var3886)))
(define-const var3238 var1720 (database/1575709631 var170)) ; Statement: $r2 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database> 
(assert true)
(define-const var2261 var2570 (determineCatalogName/-707242197 var170 var1426)) ; Statement: $r4 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineCatalogName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1) 
(assert true)
(define-const var968 var2570 (determineSchemaName/50600339 var170 var1426)) ; Statement: $r3 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineSchemaName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1) 
(assert true)
(define-const var2472 var3026 (locateNamespace/650936008 var3238 var2261 var968)) ; Statement: r5 = virtualinvoke $r2.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.relational.Namespace locateNamespace(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r4, $r3) 
(define-const var2010 ClassObject var3245!class) ; Statement: $r6 = class "Lorg/hibernate/boot/model/source/spi/TableSource;" 
(assert true)
(define-const var3807 Bool (isInstance/451912363 var2010 (cast-from-var99-to-var3612 var1426))) ; Statement: z0 = virtualinvoke $r6.<java.lang.Class: boolean isInstance(java.lang.Object)>(r1) 
(assert true)
(define-const var946 var2137 (isAbstract/-698908000 var1197)) ; Statement: $r8 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>() 
 ; Statement: if $r8 != null goto $r9 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>() 
(assert (not (not (= var946 null-var2137)))) ; Negate: Cond: $r8 != null  
(define-const var2233 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
 ; Statement: goto [?= z1 = $z4] 
(assert true) ; Non Conditional
(define-const var1606 Bool var2233) ; Statement: z1 = $z4 
 ; Statement: if z0 == 0 goto r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1 
(assert (= (ite var3807 1 0) 0)) ; Cond: z0 == 0 
(define-const var2039 var1163 (cast-from-var99-to-var1163 var1426)) ; Statement: r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1 
(define-const var530 String (var1163_getSelectStatement/942743418 var2039)) ; Statement: r10 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getSelectStatement()>() 
(define-const var1467 var1720 (database/1575709631 var170)) ; Statement: $r11 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database> 
(define-const var2663 String (var1163_getLogicalName/1202057593 var2039)) ; Statement: $r12 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getLogicalName()>() 
(assert true)
(define-const var2048 var2570 (toIdentifier/-614655301 var1467 var2663)) ; Statement: r42 = virtualinvoke $r11.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r12) 
 ; Statement: if r13 != null goto $r53 = new org.hibernate.mapping.DenormalizedTable 
(assert (not (not (= var1447 null-var923)))) ; Negate: Cond: r13 != null  
(define-const var967 var923 var923-init) ; Statement: $r52 = new org.hibernate.mapping.Table 
(assert true)
;(assert (<init>/-24210129 var967 var2472 var530 var2233)) ; Statement: specialinvoke $r52.<org.hibernate.mapping.Table: void <init>(org.hibernate.boot.model.relational.Namespace,java.lang.String,boolean)>(r5, r10, $z4) 

(declare-const var967!1 var923)
(declare-const var2472!1 var3026)
(declare-const var530!1 String)
(declare-const var2233!1 Bool)
(define-const var1453 var923 var967!1) ; Statement: r43 = $r52 
 ; Statement: goto [?= $r15 = virtualinvoke r42.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1654 String (render/-241411902 var2048)) ; Statement: $r15 = virtualinvoke r42.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>() 
(assert true)
;(assert (setName/-276822577 var1453 var1654)) ; Statement: virtualinvoke r43.<org.hibernate.mapping.Table: void setName(java.lang.String)>($r15) 

(declare-const var1453!1 var923)
(declare-const var1654!1 String)
(assert true) ; Non Conditional
(define-const var3505 var1137 null-var1137) ; Statement: r45 = null 
(define-const var1898 var87 (var87_getSuperType/823133162 (cast-from-var5-to-var87 var724))) ; Statement: $r46 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.IdentifiableTypeSource getSuperType()>() 
 ; Statement: if $r46 == null goto $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(assert (= var1898 null-var87)) ; Cond: $r46 == null 
(assert true)
(define-const var626 var2133 (getMetadataCollector/1898057277 var1997)) ; Statement: $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(define-const var2800 var1181 (var2231_getEntityNamingSource/2070971324 (cast-from-var5-to-var2231 var724))) ; Statement: $r18 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.EntityNamingSource getEntityNamingSource()>() 
(define-const var386 String (var3279_getEntityName/-119580260 (cast-from-var1181-to-var3279 var2800))) ; Statement: $r19 = interfaceinvoke $r18.<org.hibernate.boot.model.source.spi.EntityNamingSource: java.lang.String getEntityName()>() 
;(assert (var2133_addEntityTableXref/141341542 var626 var386 var2048 var1453!1 var3505)) ; Statement: interfaceinvoke $r20.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref addEntityTableXref(java.lang.String,org.hibernate.boot.model.naming.Identifier,org.hibernate.mapping.Table,org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref)>($r19, r42, r43, r45) 

(declare-const var626!1 var2133)
(declare-const var386!1 String)
(declare-const var2048!1 var2570)
(declare-const var1453!2 var923)
(declare-const var3505!1 var1137)
 ; Statement: if z0 == 0 goto $r49 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.TableSpecificationSource: java.lang.String getComment()>() 
(assert (= (ite var3807 1 0) 0)) ; Cond: z0 == 0 
(define-const var2538 String (var99_getComment/1496529157 var1426)) ; Statement: $r49 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.TableSpecificationSource: java.lang.String getComment()>() 
(assert true)
;(assert (setComment/-148307189 var1453!2 var2538)) ; Statement: virtualinvoke r43.<org.hibernate.mapping.Table: void setComment(java.lang.String)>($r49) 

(declare-const var1453!3 var923)
(declare-const var2538!1 String)
(assert true)
(define-const var2527 var2133 (getMetadataCollector/1898057277 var1997)) ; Statement: $r50 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
;(assert (var2133_addTableNameBinding/826585113 var2527 var2048!1 var1453!3)) ; Statement: interfaceinvoke $r50.<org.hibernate.boot.spi.InFlightMetadataCollector: void addTableNameBinding(org.hibernate.boot.model.naming.Identifier,org.hibernate.mapping.Table)>(r42, r43) 

(declare-const var2527!1 var2133)
(declare-const var2048!2 var2570)
(declare-const var1453!4 var923)
 ; Statement: return r43 
(check-sat)
(get-model)
(get-unsat-core)
; {database/1575709631=([org.hibernate.boot.model.source.internal.hbm.ModelBinder], org.hibernate.boot.model.relational.Database), determineCatalogName/-707242197=([org.hibernate.boot.model.source.internal.hbm.ModelBinder, org.hibernate.boot.model.source.spi.TableSpecificationSource], org.hibernate.boot.model.naming.Identifier), determineSchemaName/50600339=([org.hibernate.boot.model.source.internal.hbm.ModelBinder, org.hibernate.boot.model.source.spi.TableSpecificationSource], org.hibernate.boot.model.naming.Identifier), locateNamespace/650936008=([org.hibernate.boot.model.relational.Database, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier], org.hibernate.boot.model.relational.Namespace), isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var99-to-var3612=([org.hibernate.boot.model.source.spi.TableSpecificationSource], java.lang.Object), isAbstract/-698908000=([org.hibernate.mapping.PersistentClass], java.lang.Boolean), cast-from-var99-to-var1163=([org.hibernate.boot.model.source.spi.TableSpecificationSource], org.hibernate.boot.model.source.spi.InLineViewSource), var1163_getSelectStatement/942743418=([org.hibernate.boot.model.source.spi.InLineViewSource], java.lang.String), var1163_getLogicalName/1202057593=([org.hibernate.boot.model.source.spi.InLineViewSource], java.lang.String), toIdentifier/-614655301=([org.hibernate.boot.model.relational.Database, java.lang.String], org.hibernate.boot.model.naming.Identifier), var923-init=([], org.hibernate.mapping.Table), <init>/-24210129=([org.hibernate.mapping.Table, org.hibernate.boot.model.relational.Namespace, java.lang.String, boolean], void), render/-241411902=([org.hibernate.boot.model.naming.Identifier], java.lang.String), setName/-276822577=([org.hibernate.mapping.Table, java.lang.String], void), var87_getSuperType/823133162=([org.hibernate.boot.model.source.spi.IdentifiableTypeSource], org.hibernate.boot.model.source.spi.IdentifiableTypeSource), cast-from-var5-to-var87=([org.hibernate.boot.model.source.spi.EntitySource], org.hibernate.boot.model.source.spi.IdentifiableTypeSource), getMetadataCollector/1898057277=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.spi.InFlightMetadataCollector), var2231_getEntityNamingSource/2070971324=([org.hibernate.boot.model.source.spi.EntityNamingSourceContributor], org.hibernate.boot.model.source.spi.EntityNamingSource), cast-from-var5-to-var2231=([org.hibernate.boot.model.source.spi.EntitySource], org.hibernate.boot.model.source.spi.EntityNamingSourceContributor), var3279_getEntityName/-119580260=([org.hibernate.boot.model.naming.EntityNaming], java.lang.String), cast-from-var1181-to-var3279=([org.hibernate.boot.model.source.spi.EntityNamingSource], org.hibernate.boot.model.naming.EntityNaming), var2133_addEntityTableXref/141341542=([org.hibernate.boot.spi.InFlightMetadataCollector, java.lang.String, org.hibernate.boot.model.naming.Identifier, org.hibernate.mapping.Table, org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref], org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref), var99_getComment/1496529157=([org.hibernate.boot.model.source.spi.TableSpecificationSource], java.lang.String), setComment/-148307189=([org.hibernate.mapping.Table, java.lang.String], void), var2133_addTableNameBinding/826585113=([org.hibernate.boot.spi.InFlightMetadataCollector, org.hibernate.boot.model.naming.Identifier, org.hibernate.mapping.Table], void)}
; {var3330=org.hibernate.boot.model.source.internal.hbm.ModelBinder, var170=r0, var795=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var1997=r17, var99=org.hibernate.boot.model.source.spi.TableSpecificationSource, var1426=r1, var923=org.hibernate.mapping.Table, var1447=r13, var5=org.hibernate.boot.model.source.spi.EntitySource, var724=r16, var3886=org.hibernate.mapping.PersistentClass, var1197=r7, var1720=org.hibernate.boot.model.relational.Database, var3238=$r2, var2570=org.hibernate.boot.model.naming.Identifier, var2261=$r4, var968=$r3, var3026=org.hibernate.boot.model.relational.Namespace, var2472=r5, var3245=org.hibernate.boot.model.source.spi.TableSource, var2010=$r6, var3612=java.lang.Object, var3807=z0, var2137=java.lang.Boolean, var946=$r8, var2233=$z4, var1606=z1, var1163=org.hibernate.boot.model.source.spi.InLineViewSource, var2039=r44, var530=r10, var1467=$r11, var2663=$r12, var2048=r42, var967=$r52, var1453=r43, var1654=$r15, var1137=org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref, var3505=r45, var87=org.hibernate.boot.model.source.spi.IdentifiableTypeSource, var1898=$r46, var2133=org.hibernate.boot.spi.InFlightMetadataCollector, var626=$r20, var1181=org.hibernate.boot.model.source.spi.EntityNamingSource, var2231=org.hibernate.boot.model.source.spi.EntityNamingSourceContributor, var2800=$r18, var3279=org.hibernate.boot.model.naming.EntityNaming, var386=$r19, var2538=$r49, var2527=$r50}
; {org.hibernate.boot.model.source.internal.hbm.ModelBinder=var3330, r0=var170, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var795, r17=var1997, org.hibernate.boot.model.source.spi.TableSpecificationSource=var99, r1=var1426, org.hibernate.mapping.Table=var923, r13=var1447, org.hibernate.boot.model.source.spi.EntitySource=var5, r16=var724, org.hibernate.mapping.PersistentClass=var3886, r7=var1197, org.hibernate.boot.model.relational.Database=var1720, $r2=var3238, org.hibernate.boot.model.naming.Identifier=var2570, $r4=var2261, $r3=var968, org.hibernate.boot.model.relational.Namespace=var3026, r5=var2472, org.hibernate.boot.model.source.spi.TableSource=var3245, $r6=var2010, java.lang.Object=var3612, z0=var3807, java.lang.Boolean=var2137, $r8=var946, $z4=var2233, z1=var1606, org.hibernate.boot.model.source.spi.InLineViewSource=var1163, r44=var2039, r10=var530, $r11=var1467, $r12=var2663, r42=var2048, $r52=var967, r43=var1453, $r15=var1654, org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref=var1137, r45=var3505, org.hibernate.boot.model.source.spi.IdentifiableTypeSource=var87, $r46=var1898, org.hibernate.boot.spi.InFlightMetadataCollector=var2133, $r20=var626, org.hibernate.boot.model.source.spi.EntityNamingSource=var1181, org.hibernate.boot.model.source.spi.EntityNamingSourceContributor=var2231, $r18=var2800, org.hibernate.boot.model.naming.EntityNaming=var3279, $r19=var386, $r49=var2538, $r50=var2527}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder;	r17 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r1 := @parameter1: org.hibernate.boot.model.source.spi.TableSpecificationSource;	r13 := @parameter2: org.hibernate.mapping.Table;	r16 := @parameter3: org.hibernate.boot.model.source.spi.EntitySource;	r7 := @parameter4: org.hibernate.mapping.PersistentClass;	$r2 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database>;	$r4 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineCatalogName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1);	$r3 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineSchemaName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1);	r5 = virtualinvoke $r2.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.relational.Namespace locateNamespace(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r4, $r3);	$r6 = class "Lorg/hibernate/boot/model/source/spi/TableSource;";	z0 = virtualinvoke $r6.<java.lang.Class: boolean isInstance(java.lang.Object)>(r1);	$r8 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>();	if $r8 != null goto $r9 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>();	$z4 = 0;	goto [?= z1 = $z4];	z1 = $z4;	if z0 == 0 goto r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1;	r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1;	r10 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getSelectStatement()>();	$r11 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database>;	$r12 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getLogicalName()>();	r42 = virtualinvoke $r11.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r12);	if r13 != null goto $r53 = new org.hibernate.mapping.DenormalizedTable;	$r52 = new org.hibernate.mapping.Table;	specialinvoke $r52.<org.hibernate.mapping.Table: void <init>(org.hibernate.boot.model.relational.Namespace,java.lang.String,boolean)>(r5, r10, $z4);	r43 = $r52;	goto [?= $r15 = virtualinvoke r42.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>()];	$r15 = virtualinvoke r42.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>();	virtualinvoke r43.<org.hibernate.mapping.Table: void setName(java.lang.String)>($r15);	r45 = null;	$r46 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.IdentifiableTypeSource getSuperType()>();	if $r46 == null goto $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r18 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.EntityNamingSource getEntityNamingSource()>();	$r19 = interfaceinvoke $r18.<org.hibernate.boot.model.source.spi.EntityNamingSource: java.lang.String getEntityName()>();	interfaceinvoke $r20.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref addEntityTableXref(java.lang.String,org.hibernate.boot.model.naming.Identifier,org.hibernate.mapping.Table,org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref)>($r19, r42, r43, r45);	if z0 == 0 goto $r49 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.TableSpecificationSource: java.lang.String getComment()>();	$r49 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.TableSpecificationSource: java.lang.String getComment()>();	virtualinvoke r43.<org.hibernate.mapping.Table: void setComment(java.lang.String)>($r49);	$r50 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	interfaceinvoke $r50.<org.hibernate.boot.spi.InFlightMetadataCollector: void addTableNameBinding(org.hibernate.boot.model.naming.Identifier,org.hibernate.mapping.Table)>(r42, r43);	return r43
;block_num 9