(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var371 0)
(declare-sort var564 0)
(declare-sort var126 0)
(declare-sort var1386 0)
(declare-sort var733 0)
(declare-sort var2376 0)
(declare-sort var1414 0)
(declare-sort var1599 0)
(declare-sort var3617 0)
(declare-sort var1318 0)
(declare-sort var3214 0)
(declare-sort var3963 0)
(declare-sort var3462 0)
(declare-sort var1619 0)
(declare-sort var3707 0)
(declare-sort var1885 0)
(declare-sort var2791 0)
(declare-sort var3128 0)
(declare-sort var2649 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1318!class ClassObject)
(declare-fun database/1575709631 (var371) var1414)
(declare-fun determineCatalogName/-707242197 (var371 var126) var1599)
(declare-fun determineSchemaName/50600339 (var371 var126) var1599)
(declare-fun locateNamespace/650936008 (var1414 var1599 var1599) var3617)
(declare-fun isInstance/451912363 (ClassObject var3214) Bool)
(declare-fun cast-from-var126-to-var3214 (var126) var3214)
(declare-fun isAbstract/-698908000 (var2376) var3963)
(declare-fun booleanValue/-1820462562 (var3963) Bool)
(declare-fun cast-from-var126-to-var3462 (var126) var3462)
(declare-fun var3462_getSelectStatement/942743418 (var3462) String)
(declare-fun var3462_getLogicalName/1202057593 (var3462) String)
(declare-fun toIdentifier/-614655301 (var1414 String) var1599)
(declare-fun var1386-init () var1386)
(declare-fun <init>/-24210129 (var1386 var3617 String Bool) void)
(declare-fun render/-241411902 (var1599) String)
(declare-fun setName/-276822577 (var1386 String) void)
(declare-fun var3707_getSuperType/823133162 (var3707) var3707)
(declare-fun cast-from-var733-to-var3707 (var733) var3707)
(declare-fun getMetadataCollector/1898057277 (var564) var1885)
(declare-fun var3128_getEntityNamingSource/2070971324 (var3128) var2791)
(declare-fun cast-from-var733-to-var3128 (var733) var3128)
(declare-fun var2649_getEntityName/-119580260 (var2649) String)
(declare-fun cast-from-var2791-to-var2649 (var2791) var2649)
(declare-fun var1885_addEntityTableXref/141341542 (var1885 String var1599 var1386 var1619) var1619)
(declare-fun var126_getComment/1496529157 (var126) String)
(declare-fun setComment/-148307189 (var1386 String) void)
(declare-fun var1885_addTableNameBinding/826585113 (var1885 var1599 var1386) void)
(declare-const null-var371 var371)
(declare-const null-var564 var564)
(declare-const null-var126 var126)
(declare-const null-var1386 var1386)
(declare-const null-var733 var733)
(declare-const null-var2376 var2376)
(declare-const null-var3963 var3963)
(declare-const null-var1619 var1619)
(declare-const null-var3707 var3707)
(declare-const var1721 var371) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder 
(assert (not (= var1721 null-var371)))
(declare-const var934 var564) ; Statement: r17 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var934 null-var564)))
(declare-const var3896 var126) ; Statement: r1 := @parameter1: org.hibernate.boot.model.source.spi.TableSpecificationSource 
(assert (not (= var3896 null-var126)))
(declare-const var123 var1386) ; Statement: r13 := @parameter2: org.hibernate.mapping.Table 
(assert (not (= var123 null-var1386)))
(declare-const var2097 var733) ; Statement: r16 := @parameter3: org.hibernate.boot.model.source.spi.EntitySource 
(assert (not (= var2097 null-var733)))
(declare-const var872 var2376) ; Statement: r7 := @parameter4: org.hibernate.mapping.PersistentClass 
(assert (not (= var872 null-var2376)))
(define-const var3667 var1414 (database/1575709631 var1721)) ; Statement: $r2 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database> 
(assert true)
(define-const var3941 var1599 (determineCatalogName/-707242197 var1721 var3896)) ; Statement: $r4 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineCatalogName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1) 
(assert true)
(define-const var2409 var1599 (determineSchemaName/50600339 var1721 var3896)) ; Statement: $r3 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineSchemaName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1) 
(assert true)
(define-const var3593 var3617 (locateNamespace/650936008 var3667 var3941 var2409)) ; Statement: r5 = virtualinvoke $r2.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.relational.Namespace locateNamespace(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r4, $r3) 
(define-const var45 ClassObject var1318!class) ; Statement: $r6 = class "Lorg/hibernate/boot/model/source/spi/TableSource;" 
(assert true)
(define-const var258 Bool (isInstance/451912363 var45 (cast-from-var126-to-var3214 var3896))) ; Statement: z0 = virtualinvoke $r6.<java.lang.Class: boolean isInstance(java.lang.Object)>(r1) 
(assert true)
(define-const var680 var3963 (isAbstract/-698908000 var872)) ; Statement: $r8 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>() 
 ; Statement: if $r8 != null goto $r9 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>() 
(assert (not (= var680 null-var3963))) ; Cond: $r8 != null 
(assert true)
(define-const var993 var3963 (isAbstract/-698908000 var872)) ; Statement: $r9 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>() 
(assert true)
(define-const var652 Bool (booleanValue/-1820462562 var993)) ; Statement: $z4 = virtualinvoke $r9.<java.lang.Boolean: boolean booleanValue()>() 
(assert true) ; Non Conditional
(define-const var751 Bool var652) ; Statement: z1 = $z4 
 ; Statement: if z0 == 0 goto r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1 
(assert (= (ite var258 1 0) 0)) ; Cond: z0 == 0 
(define-const var374 var3462 (cast-from-var126-to-var3462 var3896)) ; Statement: r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1 
(define-const var3014 String (var3462_getSelectStatement/942743418 var374)) ; Statement: r10 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getSelectStatement()>() 
(define-const var322 var1414 (database/1575709631 var1721)) ; Statement: $r11 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database> 
(define-const var2119 String (var3462_getLogicalName/1202057593 var374)) ; Statement: $r12 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getLogicalName()>() 
(assert true)
(define-const var1950 var1599 (toIdentifier/-614655301 var322 var2119)) ; Statement: r42 = virtualinvoke $r11.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r12) 
 ; Statement: if r13 != null goto $r53 = new org.hibernate.mapping.DenormalizedTable 
(assert (not (not (= var123 null-var1386)))) ; Negate: Cond: r13 != null  
(define-const var2159 var1386 var1386-init) ; Statement: $r52 = new org.hibernate.mapping.Table 
(assert true)
;(assert (<init>/-24210129 var2159 var3593 var3014 var652)) ; Statement: specialinvoke $r52.<org.hibernate.mapping.Table: void <init>(org.hibernate.boot.model.relational.Namespace,java.lang.String,boolean)>(r5, r10, $z4) 

(declare-const var2159!1 var1386)
(declare-const var3593!1 var3617)
(declare-const var3014!1 String)
(declare-const var652!1 Bool)
(define-const var1580 var1386 var2159!1) ; Statement: r43 = $r52 
 ; Statement: goto [?= $r15 = virtualinvoke r42.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var397 String (render/-241411902 var1950)) ; Statement: $r15 = virtualinvoke r42.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>() 
(assert true)
;(assert (setName/-276822577 var1580 var397)) ; Statement: virtualinvoke r43.<org.hibernate.mapping.Table: void setName(java.lang.String)>($r15) 

(declare-const var1580!1 var1386)
(declare-const var397!1 String)
(assert true) ; Non Conditional
(define-const var3381 var1619 null-var1619) ; Statement: r45 = null 
(define-const var327 var3707 (var3707_getSuperType/823133162 (cast-from-var733-to-var3707 var2097))) ; Statement: $r46 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.IdentifiableTypeSource getSuperType()>() 
 ; Statement: if $r46 == null goto $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(assert (= var327 null-var3707)) ; Cond: $r46 == null 
(assert true)
(define-const var2095 var1885 (getMetadataCollector/1898057277 var934)) ; Statement: $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(define-const var3018 var2791 (var3128_getEntityNamingSource/2070971324 (cast-from-var733-to-var3128 var2097))) ; Statement: $r18 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.EntityNamingSource getEntityNamingSource()>() 
(define-const var1572 String (var2649_getEntityName/-119580260 (cast-from-var2791-to-var2649 var3018))) ; Statement: $r19 = interfaceinvoke $r18.<org.hibernate.boot.model.source.spi.EntityNamingSource: java.lang.String getEntityName()>() 
;(assert (var1885_addEntityTableXref/141341542 var2095 var1572 var1950 var1580!1 var3381)) ; Statement: interfaceinvoke $r20.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref addEntityTableXref(java.lang.String,org.hibernate.boot.model.naming.Identifier,org.hibernate.mapping.Table,org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref)>($r19, r42, r43, r45) 

(declare-const var2095!1 var1885)
(declare-const var1572!1 String)
(declare-const var1950!1 var1599)
(declare-const var1580!2 var1386)
(declare-const var3381!1 var1619)
 ; Statement: if z0 == 0 goto $r49 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.TableSpecificationSource: java.lang.String getComment()>() 
(assert (= (ite var258 1 0) 0)) ; Cond: z0 == 0 
(define-const var3355 String (var126_getComment/1496529157 var3896)) ; Statement: $r49 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.TableSpecificationSource: java.lang.String getComment()>() 
(assert true)
;(assert (setComment/-148307189 var1580!2 var3355)) ; Statement: virtualinvoke r43.<org.hibernate.mapping.Table: void setComment(java.lang.String)>($r49) 

(declare-const var1580!3 var1386)
(declare-const var3355!1 String)
(assert true)
(define-const var1151 var1885 (getMetadataCollector/1898057277 var934)) ; Statement: $r50 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
;(assert (var1885_addTableNameBinding/826585113 var1151 var1950!1 var1580!3)) ; Statement: interfaceinvoke $r50.<org.hibernate.boot.spi.InFlightMetadataCollector: void addTableNameBinding(org.hibernate.boot.model.naming.Identifier,org.hibernate.mapping.Table)>(r42, r43) 

(declare-const var1151!1 var1885)
(declare-const var1950!2 var1599)
(declare-const var1580!4 var1386)
 ; Statement: return r43 
(check-sat)
(get-model)
(get-unsat-core)
; {database/1575709631=([org.hibernate.boot.model.source.internal.hbm.ModelBinder], org.hibernate.boot.model.relational.Database), determineCatalogName/-707242197=([org.hibernate.boot.model.source.internal.hbm.ModelBinder, org.hibernate.boot.model.source.spi.TableSpecificationSource], org.hibernate.boot.model.naming.Identifier), determineSchemaName/50600339=([org.hibernate.boot.model.source.internal.hbm.ModelBinder, org.hibernate.boot.model.source.spi.TableSpecificationSource], org.hibernate.boot.model.naming.Identifier), locateNamespace/650936008=([org.hibernate.boot.model.relational.Database, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier], org.hibernate.boot.model.relational.Namespace), isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var126-to-var3214=([org.hibernate.boot.model.source.spi.TableSpecificationSource], java.lang.Object), isAbstract/-698908000=([org.hibernate.mapping.PersistentClass], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), cast-from-var126-to-var3462=([org.hibernate.boot.model.source.spi.TableSpecificationSource], org.hibernate.boot.model.source.spi.InLineViewSource), var3462_getSelectStatement/942743418=([org.hibernate.boot.model.source.spi.InLineViewSource], java.lang.String), var3462_getLogicalName/1202057593=([org.hibernate.boot.model.source.spi.InLineViewSource], java.lang.String), toIdentifier/-614655301=([org.hibernate.boot.model.relational.Database, java.lang.String], org.hibernate.boot.model.naming.Identifier), var1386-init=([], org.hibernate.mapping.Table), <init>/-24210129=([org.hibernate.mapping.Table, org.hibernate.boot.model.relational.Namespace, java.lang.String, boolean], void), render/-241411902=([org.hibernate.boot.model.naming.Identifier], java.lang.String), setName/-276822577=([org.hibernate.mapping.Table, java.lang.String], void), var3707_getSuperType/823133162=([org.hibernate.boot.model.source.spi.IdentifiableTypeSource], org.hibernate.boot.model.source.spi.IdentifiableTypeSource), cast-from-var733-to-var3707=([org.hibernate.boot.model.source.spi.EntitySource], org.hibernate.boot.model.source.spi.IdentifiableTypeSource), getMetadataCollector/1898057277=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.spi.InFlightMetadataCollector), var3128_getEntityNamingSource/2070971324=([org.hibernate.boot.model.source.spi.EntityNamingSourceContributor], org.hibernate.boot.model.source.spi.EntityNamingSource), cast-from-var733-to-var3128=([org.hibernate.boot.model.source.spi.EntitySource], org.hibernate.boot.model.source.spi.EntityNamingSourceContributor), var2649_getEntityName/-119580260=([org.hibernate.boot.model.naming.EntityNaming], java.lang.String), cast-from-var2791-to-var2649=([org.hibernate.boot.model.source.spi.EntityNamingSource], org.hibernate.boot.model.naming.EntityNaming), var1885_addEntityTableXref/141341542=([org.hibernate.boot.spi.InFlightMetadataCollector, java.lang.String, org.hibernate.boot.model.naming.Identifier, org.hibernate.mapping.Table, org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref], org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref), var126_getComment/1496529157=([org.hibernate.boot.model.source.spi.TableSpecificationSource], java.lang.String), setComment/-148307189=([org.hibernate.mapping.Table, java.lang.String], void), var1885_addTableNameBinding/826585113=([org.hibernate.boot.spi.InFlightMetadataCollector, org.hibernate.boot.model.naming.Identifier, org.hibernate.mapping.Table], void)}
; {var371=org.hibernate.boot.model.source.internal.hbm.ModelBinder, var1721=r0, var564=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var934=r17, var126=org.hibernate.boot.model.source.spi.TableSpecificationSource, var3896=r1, var1386=org.hibernate.mapping.Table, var123=r13, var733=org.hibernate.boot.model.source.spi.EntitySource, var2097=r16, var2376=org.hibernate.mapping.PersistentClass, var872=r7, var1414=org.hibernate.boot.model.relational.Database, var3667=$r2, var1599=org.hibernate.boot.model.naming.Identifier, var3941=$r4, var2409=$r3, var3617=org.hibernate.boot.model.relational.Namespace, var3593=r5, var1318=org.hibernate.boot.model.source.spi.TableSource, var45=$r6, var3214=java.lang.Object, var258=z0, var3963=java.lang.Boolean, var680=$r8, var993=$r9, var652=$z4, var751=z1, var3462=org.hibernate.boot.model.source.spi.InLineViewSource, var374=r44, var3014=r10, var322=$r11, var2119=$r12, var1950=r42, var2159=$r52, var1580=r43, var397=$r15, var1619=org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref, var3381=r45, var3707=org.hibernate.boot.model.source.spi.IdentifiableTypeSource, var327=$r46, var1885=org.hibernate.boot.spi.InFlightMetadataCollector, var2095=$r20, var2791=org.hibernate.boot.model.source.spi.EntityNamingSource, var3128=org.hibernate.boot.model.source.spi.EntityNamingSourceContributor, var3018=$r18, var2649=org.hibernate.boot.model.naming.EntityNaming, var1572=$r19, var3355=$r49, var1151=$r50}
; {org.hibernate.boot.model.source.internal.hbm.ModelBinder=var371, r0=var1721, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var564, r17=var934, org.hibernate.boot.model.source.spi.TableSpecificationSource=var126, r1=var3896, org.hibernate.mapping.Table=var1386, r13=var123, org.hibernate.boot.model.source.spi.EntitySource=var733, r16=var2097, org.hibernate.mapping.PersistentClass=var2376, r7=var872, org.hibernate.boot.model.relational.Database=var1414, $r2=var3667, org.hibernate.boot.model.naming.Identifier=var1599, $r4=var3941, $r3=var2409, org.hibernate.boot.model.relational.Namespace=var3617, r5=var3593, org.hibernate.boot.model.source.spi.TableSource=var1318, $r6=var45, java.lang.Object=var3214, z0=var258, java.lang.Boolean=var3963, $r8=var680, $r9=var993, $z4=var652, z1=var751, org.hibernate.boot.model.source.spi.InLineViewSource=var3462, r44=var374, r10=var3014, $r11=var322, $r12=var2119, r42=var1950, $r52=var2159, r43=var1580, $r15=var397, org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref=var1619, r45=var3381, org.hibernate.boot.model.source.spi.IdentifiableTypeSource=var3707, $r46=var327, org.hibernate.boot.spi.InFlightMetadataCollector=var1885, $r20=var2095, org.hibernate.boot.model.source.spi.EntityNamingSource=var2791, org.hibernate.boot.model.source.spi.EntityNamingSourceContributor=var3128, $r18=var3018, org.hibernate.boot.model.naming.EntityNaming=var2649, $r19=var1572, $r49=var3355, $r50=var1151}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder;	r17 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r1 := @parameter1: org.hibernate.boot.model.source.spi.TableSpecificationSource;	r13 := @parameter2: org.hibernate.mapping.Table;	r16 := @parameter3: org.hibernate.boot.model.source.spi.EntitySource;	r7 := @parameter4: org.hibernate.mapping.PersistentClass;	$r2 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database>;	$r4 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineCatalogName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1);	$r3 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineSchemaName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1);	r5 = virtualinvoke $r2.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.relational.Namespace locateNamespace(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r4, $r3);	$r6 = class "Lorg/hibernate/boot/model/source/spi/TableSource;";	z0 = virtualinvoke $r6.<java.lang.Class: boolean isInstance(java.lang.Object)>(r1);	$r8 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>();	if $r8 != null goto $r9 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>();	$r9 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>();	$z4 = virtualinvoke $r9.<java.lang.Boolean: boolean booleanValue()>();	z1 = $z4;	if z0 == 0 goto r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1;	r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1;	r10 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getSelectStatement()>();	$r11 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database>;	$r12 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getLogicalName()>();	r42 = virtualinvoke $r11.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r12);	if r13 != null goto $r53 = new org.hibernate.mapping.DenormalizedTable;	$r52 = new org.hibernate.mapping.Table;	specialinvoke $r52.<org.hibernate.mapping.Table: void <init>(org.hibernate.boot.model.relational.Namespace,java.lang.String,boolean)>(r5, r10, $z4);	r43 = $r52;	goto [?= $r15 = virtualinvoke r42.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>()];	$r15 = virtualinvoke r42.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>();	virtualinvoke r43.<org.hibernate.mapping.Table: void setName(java.lang.String)>($r15);	r45 = null;	$r46 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.IdentifiableTypeSource getSuperType()>();	if $r46 == null goto $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r18 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.EntityNamingSource getEntityNamingSource()>();	$r19 = interfaceinvoke $r18.<org.hibernate.boot.model.source.spi.EntityNamingSource: java.lang.String getEntityName()>();	interfaceinvoke $r20.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref addEntityTableXref(java.lang.String,org.hibernate.boot.model.naming.Identifier,org.hibernate.mapping.Table,org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref)>($r19, r42, r43, r45);	if z0 == 0 goto $r49 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.TableSpecificationSource: java.lang.String getComment()>();	$r49 = interfaceinvoke r1.<org.hibernate.boot.model.source.spi.TableSpecificationSource: java.lang.String getComment()>();	virtualinvoke r43.<org.hibernate.mapping.Table: void setComment(java.lang.String)>($r49);	$r50 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	interfaceinvoke $r50.<org.hibernate.boot.spi.InFlightMetadataCollector: void addTableNameBinding(org.hibernate.boot.model.naming.Identifier,org.hibernate.mapping.Table)>(r42, r43);	return r43
;block_num 9