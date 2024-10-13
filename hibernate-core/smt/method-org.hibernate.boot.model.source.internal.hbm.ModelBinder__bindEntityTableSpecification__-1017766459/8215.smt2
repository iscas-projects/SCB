(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2128 0)
(declare-sort var1817 0)
(declare-sort var3397 0)
(declare-sort var3818 0)
(declare-sort var2269 0)
(declare-sort var2418 0)
(declare-sort var374 0)
(declare-sort var3739 0)
(declare-sort var717 0)
(declare-sort var2060 0)
(declare-sort var2947 0)
(declare-sort var1693 0)
(declare-sort var908 0)
(declare-sort var307 0)
(declare-sort var819 0)
(declare-sort var2912 0)
(declare-sort var1083 0)
(declare-sort var1730 0)
(declare-sort var1937 0)
(declare-sort var1327 0)
(declare-sort var1742 0)
(declare-sort var802 0)
(declare-sort var3240 0)
(declare-sort var3634 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2060!class ClassObject)
(declare-fun database/1575709631 (var2128) var374)
(declare-fun determineCatalogName/-707242197 (var2128 var3397) var3739)
(declare-fun determineSchemaName/50600339 (var2128 var3397) var3739)
(declare-fun locateNamespace/650936008 (var374 var3739 var3739) var717)
(declare-fun isInstance/451912363 (ClassObject var2947) Bool)
(declare-fun cast-from-var3397-to-var2947 (var3397) var2947)
(declare-fun isAbstract/-698908000 (var2418) var1693)
(declare-fun booleanValue/-1820462562 (var1693) Bool)
(declare-fun cast-from-var3397-to-var908 (var3397) var908)
(declare-fun var908_getSelectStatement/942743418 (var908) String)
(declare-fun var908_getLogicalName/1202057593 (var908) String)
(declare-fun toIdentifier/-614655301 (var374 String) var3739)
(declare-fun var307-init () var307)
(declare-fun <init>/-1111662061 (var307 var717 String Bool var3818) void)
(declare-fun cast-from-var307-to-var3818 (var307) var3818)
(declare-fun render/-241411902 (var3739) String)
(declare-fun setName/-276822577 (var3818 String) void)
(declare-fun var2912_getSuperType/823133162 (var2912) var2912)
(declare-fun cast-from-var2269-to-var2912 (var2269) var2912)
(declare-fun cast-from-var2912-to-var2269 (var2912) var2269)
(declare-fun var1730_getEntityNamingSource/2070971324 (var1730) var1083)
(declare-fun cast-from-var2269-to-var1730 (var2269) var1730)
(declare-fun var1937_getEntityName/-119580260 (var1937) String)
(declare-fun cast-from-var1083-to-var1937 (var1083) var1937)
(declare-fun getMetadataCollector/1898057277 (var1817) var1327)
(declare-fun var1327_getEntityTableXref/2869976 (var1327 String) var819)
(declare-fun var1742-init () var1742)
(declare-fun arr-var2947-init () (Array Int var2947))
(declare-fun getEntityName/-2043384209 (var2418) String)
(declare-fun cast-from-String-to-var2947 (String) var2947)
(declare-fun String_format/-647569892 (var802 String (Array Int var2947)) String)
(declare-fun getOrigin/1285793805 (var1817) var3240)
(declare-fun <init>/235758574 (var1742 String var3240) void)
(declare-fun cast-from-var1742-to-var3634 (var1742) var3634)
(declare-const null-var2128 var2128)
(declare-const null-var1817 var1817)
(declare-const null-var3397 var3397)
(declare-const null-var3818 var3818)
(declare-const null-var2269 var2269)
(declare-const null-var2418 var2418)
(declare-const null-var1693 var1693)
(declare-const null-var819 var819)
(declare-const null-var2912 var2912)
(declare-const var802-ENGLISH var802)
(declare-const null-__Array__Int__var2947__ (Array Int var2947))
(declare-const var1305 var2128) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder 
(assert (not (= var1305 null-var2128)))
(declare-const var2012 var1817) ; Statement: r17 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var2012 null-var1817)))
(declare-const var2355 var3397) ; Statement: r1 := @parameter1: org.hibernate.boot.model.source.spi.TableSpecificationSource 
(assert (not (= var2355 null-var3397)))
(declare-const var1622 var3818) ; Statement: r13 := @parameter2: org.hibernate.mapping.Table 
(assert (not (= var1622 null-var3818)))
(declare-const var917 var2269) ; Statement: r16 := @parameter3: org.hibernate.boot.model.source.spi.EntitySource 
(assert (not (= var917 null-var2269)))
(declare-const var1173 var2418) ; Statement: r7 := @parameter4: org.hibernate.mapping.PersistentClass 
(assert (not (= var1173 null-var2418)))
(define-const var1111 var374 (database/1575709631 var1305)) ; Statement: $r2 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database> 
(assert true)
(define-const var170 var3739 (determineCatalogName/-707242197 var1305 var2355)) ; Statement: $r4 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineCatalogName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1) 
(assert true)
(define-const var174 var3739 (determineSchemaName/50600339 var1305 var2355)) ; Statement: $r3 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineSchemaName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1) 
(assert true)
(define-const var696 var717 (locateNamespace/650936008 var1111 var170 var174)) ; Statement: r5 = virtualinvoke $r2.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.relational.Namespace locateNamespace(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r4, $r3) 
(define-const var1526 ClassObject var2060!class) ; Statement: $r6 = class "Lorg/hibernate/boot/model/source/spi/TableSource;" 
(assert true)
(define-const var3120 Bool (isInstance/451912363 var1526 (cast-from-var3397-to-var2947 var2355))) ; Statement: z0 = virtualinvoke $r6.<java.lang.Class: boolean isInstance(java.lang.Object)>(r1) 
(assert true)
(define-const var323 var1693 (isAbstract/-698908000 var1173)) ; Statement: $r8 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>() 
 ; Statement: if $r8 != null goto $r9 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>() 
(assert (not (= var323 null-var1693))) ; Cond: $r8 != null 
(assert true)
(define-const var3887 var1693 (isAbstract/-698908000 var1173)) ; Statement: $r9 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>() 
(assert true)
(define-const var1857 Bool (booleanValue/-1820462562 var3887)) ; Statement: $z4 = virtualinvoke $r9.<java.lang.Boolean: boolean booleanValue()>() 
(assert true) ; Non Conditional
(define-const var335 Bool var1857) ; Statement: z1 = $z4 
 ; Statement: if z0 == 0 goto r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1 
(assert (= (ite var3120 1 0) 0)) ; Cond: z0 == 0 
(define-const var1651 var908 (cast-from-var3397-to-var908 var2355)) ; Statement: r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1 
(define-const var2254 String (var908_getSelectStatement/942743418 var1651)) ; Statement: r10 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getSelectStatement()>() 
(define-const var3348 var374 (database/1575709631 var1305)) ; Statement: $r11 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database> 
(define-const var3371 String (var908_getLogicalName/1202057593 var1651)) ; Statement: $r12 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getLogicalName()>() 
(assert true)
(define-const var755 var3739 (toIdentifier/-614655301 var3348 var3371)) ; Statement: r42 = virtualinvoke $r11.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r12) 
 ; Statement: if r13 != null goto $r53 = new org.hibernate.mapping.DenormalizedTable 
(assert (not (= var1622 null-var3818))) ; Cond: r13 != null 
(define-const var2263 var307 var307-init) ; Statement: $r53 = new org.hibernate.mapping.DenormalizedTable 
(assert true)
;(assert (<init>/-1111662061 var2263 var696 var2254 var1857 var1622)) ; Statement: specialinvoke $r53.<org.hibernate.mapping.DenormalizedTable: void <init>(org.hibernate.boot.model.relational.Namespace,java.lang.String,boolean,org.hibernate.mapping.Table)>(r5, r10, $z4, r13) 

(declare-const var2263!1 var307)
(declare-const var696!1 var717)
(declare-const var2254!1 String)
(declare-const var1857!1 Bool)
(declare-const var1622!1 var3818)
(define-const var2270 var3818 (cast-from-var307-to-var3818 var2263!1)) ; Statement: r43 = $r53 
(assert true) ; Non Conditional
(assert true)
(define-const var3894 String (render/-241411902 var755)) ; Statement: $r15 = virtualinvoke r42.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>() 
(assert true)
;(assert (setName/-276822577 var2270 var3894)) ; Statement: virtualinvoke r43.<org.hibernate.mapping.Table: void setName(java.lang.String)>($r15) 

(declare-const var2270!1 var3818)
(declare-const var3894!1 String)
(assert true) ; Non Conditional
(define-const var2610 var819 null-var819) ; Statement: r45 = null 
(define-const var1003 var2912 (var2912_getSuperType/823133162 (cast-from-var2269-to-var2912 var917))) ; Statement: $r46 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.IdentifiableTypeSource getSuperType()>() 
 ; Statement: if $r46 == null goto $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(assert (not (= var1003 null-var2912))) ; Negate: Cond: $r46 == null  
(define-const var3064 var2912 (var2912_getSuperType/823133162 (cast-from-var2269-to-var2912 var917))) ; Statement: $r24 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.IdentifiableTypeSource getSuperType()>() 
(define-const var3748 var2269 (cast-from-var2912-to-var2269 var3064)) ; Statement: $r25 = (org.hibernate.boot.model.source.spi.EntitySource) $r24 
(define-const var2813 var1083 (var1730_getEntityNamingSource/2070971324 (cast-from-var2269-to-var1730 var3748))) ; Statement: $r26 = interfaceinvoke $r25.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.EntityNamingSource getEntityNamingSource()>() 
(define-const var2919 String (var1937_getEntityName/-119580260 (cast-from-var1083-to-var1937 var2813))) ; Statement: r47 = interfaceinvoke $r26.<org.hibernate.boot.model.source.spi.EntityNamingSource: java.lang.String getEntityName()>() 
(assert true)
(define-const var2036 var1327 (getMetadataCollector/1898057277 var2012)) ; Statement: $r27 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(define-const var2610!1 var819 (var1327_getEntityTableXref/2869976 var2036 var2919)) ; Statement: r45 = interfaceinvoke $r27.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref getEntityTableXref(java.lang.String)>(r47) 
 ; Statement: if r45 != null goto $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(assert (not (not (= var2610!1 null-var819)))) ; Negate: Cond: r45 != null  
(define-const var2577 var1742 var1742-init) ; Statement: $r54 = new org.hibernate.boot.MappingException 
(define-const var2808 var802 var802-ENGLISH) ; Statement: $r30 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var2252 (Array Int var2947) arr-var2947-init) ; Statement: $r29 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var585 String (getEntityName/-2043384209 var1173)) ; Statement: $r31 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>() 
(declare-const var2252!1 (Array Int var2947))
(assert (not (= var2252!1 null-__Array__Int__var2947__)))
(assert (= (select var2252!1 0) (cast-from-String-to-var2947 var585))) ; Statement: $r29[0] = $r31 
(declare-const var2252!2 (Array Int var2947))
(assert (not (= var2252!2 null-__Array__Int__var2947__)))
(assert (= (select var2252!2 1) (cast-from-String-to-var2947 var2919))) ; Statement: $r29[1] = r47 
(define-const var3723 String (String_format/-647569892 var2808 "Unable to locate entity table xref for entity [%s] super-type [%s]" var2252!2)) ; Statement: $r33 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r30, "Unable to locate entity table xref for entity [%s] super-type [%s]", $r29) 
(assert true)
(define-const var3754 var3240 (getOrigin/1285793805 var2012)) ; Statement: $r32 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>() 
(assert true)
;(assert (<init>/235758574 var2577 var3723 var3754)) ; Statement: specialinvoke $r54.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r33, $r32) 

(declare-const var2577!1 var1742)
(declare-const var3723!1 String)
(declare-const var3754!1 var3240)
(define-const var220 var3634 (cast-from-var1742-to-var3634 var2577!1)) ; Statement: $r55 = (java.lang.Throwable) $r54 
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {database/1575709631=([org.hibernate.boot.model.source.internal.hbm.ModelBinder], org.hibernate.boot.model.relational.Database), determineCatalogName/-707242197=([org.hibernate.boot.model.source.internal.hbm.ModelBinder, org.hibernate.boot.model.source.spi.TableSpecificationSource], org.hibernate.boot.model.naming.Identifier), determineSchemaName/50600339=([org.hibernate.boot.model.source.internal.hbm.ModelBinder, org.hibernate.boot.model.source.spi.TableSpecificationSource], org.hibernate.boot.model.naming.Identifier), locateNamespace/650936008=([org.hibernate.boot.model.relational.Database, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier], org.hibernate.boot.model.relational.Namespace), isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var3397-to-var2947=([org.hibernate.boot.model.source.spi.TableSpecificationSource], java.lang.Object), isAbstract/-698908000=([org.hibernate.mapping.PersistentClass], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), cast-from-var3397-to-var908=([org.hibernate.boot.model.source.spi.TableSpecificationSource], org.hibernate.boot.model.source.spi.InLineViewSource), var908_getSelectStatement/942743418=([org.hibernate.boot.model.source.spi.InLineViewSource], java.lang.String), var908_getLogicalName/1202057593=([org.hibernate.boot.model.source.spi.InLineViewSource], java.lang.String), toIdentifier/-614655301=([org.hibernate.boot.model.relational.Database, java.lang.String], org.hibernate.boot.model.naming.Identifier), var307-init=([], org.hibernate.mapping.DenormalizedTable), <init>/-1111662061=([org.hibernate.mapping.DenormalizedTable, org.hibernate.boot.model.relational.Namespace, java.lang.String, boolean, org.hibernate.mapping.Table], void), cast-from-var307-to-var3818=([org.hibernate.mapping.DenormalizedTable], org.hibernate.mapping.Table), render/-241411902=([org.hibernate.boot.model.naming.Identifier], java.lang.String), setName/-276822577=([org.hibernate.mapping.Table, java.lang.String], void), var2912_getSuperType/823133162=([org.hibernate.boot.model.source.spi.IdentifiableTypeSource], org.hibernate.boot.model.source.spi.IdentifiableTypeSource), cast-from-var2269-to-var2912=([org.hibernate.boot.model.source.spi.EntitySource], org.hibernate.boot.model.source.spi.IdentifiableTypeSource), cast-from-var2912-to-var2269=([org.hibernate.boot.model.source.spi.IdentifiableTypeSource], org.hibernate.boot.model.source.spi.EntitySource), var1730_getEntityNamingSource/2070971324=([org.hibernate.boot.model.source.spi.EntityNamingSourceContributor], org.hibernate.boot.model.source.spi.EntityNamingSource), cast-from-var2269-to-var1730=([org.hibernate.boot.model.source.spi.EntitySource], org.hibernate.boot.model.source.spi.EntityNamingSourceContributor), var1937_getEntityName/-119580260=([org.hibernate.boot.model.naming.EntityNaming], java.lang.String), cast-from-var1083-to-var1937=([org.hibernate.boot.model.source.spi.EntityNamingSource], org.hibernate.boot.model.naming.EntityNaming), getMetadataCollector/1898057277=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.spi.InFlightMetadataCollector), var1327_getEntityTableXref/2869976=([org.hibernate.boot.spi.InFlightMetadataCollector, java.lang.String], org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref), var1742-init=([], org.hibernate.boot.MappingException), arr-var2947-init=([], java.lang.Object[]), getEntityName/-2043384209=([org.hibernate.mapping.PersistentClass], java.lang.String), cast-from-String-to-var2947=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), getOrigin/1285793805=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.jaxb.Origin), <init>/235758574=([org.hibernate.boot.MappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var1742-to-var3634=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var2128=org.hibernate.boot.model.source.internal.hbm.ModelBinder, var1305=r0, var1817=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var2012=r17, var3397=org.hibernate.boot.model.source.spi.TableSpecificationSource, var2355=r1, var3818=org.hibernate.mapping.Table, var1622=r13, var2269=org.hibernate.boot.model.source.spi.EntitySource, var917=r16, var2418=org.hibernate.mapping.PersistentClass, var1173=r7, var374=org.hibernate.boot.model.relational.Database, var1111=$r2, var3739=org.hibernate.boot.model.naming.Identifier, var170=$r4, var174=$r3, var717=org.hibernate.boot.model.relational.Namespace, var696=r5, var2060=org.hibernate.boot.model.source.spi.TableSource, var1526=$r6, var2947=java.lang.Object, var3120=z0, var1693=java.lang.Boolean, var323=$r8, var3887=$r9, var1857=$z4, var335=z1, var908=org.hibernate.boot.model.source.spi.InLineViewSource, var1651=r44, var2254=r10, var3348=$r11, var3371=$r12, var755=r42, var307=org.hibernate.mapping.DenormalizedTable, var2263=$r53, var2270=r43, var3894=$r15, var819=org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref, var2610=r45, var2912=org.hibernate.boot.model.source.spi.IdentifiableTypeSource, var1003=$r46, var3064=$r24, var3748=$r25, var1083=org.hibernate.boot.model.source.spi.EntityNamingSource, var1730=org.hibernate.boot.model.source.spi.EntityNamingSourceContributor, var2813=$r26, var1937=org.hibernate.boot.model.naming.EntityNaming, var2919=r47, var1327=org.hibernate.boot.spi.InFlightMetadataCollector, var2036=$r27, var1742=org.hibernate.boot.MappingException, var2577=$r54, var802=java.util.Locale, var2808=$r30, var2252=$r29, var585=$r31, var3723=$r33, var3240=org.hibernate.boot.jaxb.Origin, var3754=$r32, var3634=java.lang.Throwable, var220=$r55}
; {org.hibernate.boot.model.source.internal.hbm.ModelBinder=var2128, r0=var1305, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var1817, r17=var2012, org.hibernate.boot.model.source.spi.TableSpecificationSource=var3397, r1=var2355, org.hibernate.mapping.Table=var3818, r13=var1622, org.hibernate.boot.model.source.spi.EntitySource=var2269, r16=var917, org.hibernate.mapping.PersistentClass=var2418, r7=var1173, org.hibernate.boot.model.relational.Database=var374, $r2=var1111, org.hibernate.boot.model.naming.Identifier=var3739, $r4=var170, $r3=var174, org.hibernate.boot.model.relational.Namespace=var717, r5=var696, org.hibernate.boot.model.source.spi.TableSource=var2060, $r6=var1526, java.lang.Object=var2947, z0=var3120, java.lang.Boolean=var1693, $r8=var323, $r9=var3887, $z4=var1857, z1=var335, org.hibernate.boot.model.source.spi.InLineViewSource=var908, r44=var1651, r10=var2254, $r11=var3348, $r12=var3371, r42=var755, org.hibernate.mapping.DenormalizedTable=var307, $r53=var2263, r43=var2270, $r15=var3894, org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref=var819, r45=var2610, org.hibernate.boot.model.source.spi.IdentifiableTypeSource=var2912, $r46=var1003, $r24=var3064, $r25=var3748, org.hibernate.boot.model.source.spi.EntityNamingSource=var1083, org.hibernate.boot.model.source.spi.EntityNamingSourceContributor=var1730, $r26=var2813, org.hibernate.boot.model.naming.EntityNaming=var1937, r47=var2919, org.hibernate.boot.spi.InFlightMetadataCollector=var1327, $r27=var2036, org.hibernate.boot.MappingException=var1742, $r54=var2577, java.util.Locale=var802, $r30=var2808, $r29=var2252, $r31=var585, $r33=var3723, org.hibernate.boot.jaxb.Origin=var3240, $r32=var3754, java.lang.Throwable=var3634, $r55=var220}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder;	r17 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r1 := @parameter1: org.hibernate.boot.model.source.spi.TableSpecificationSource;	r13 := @parameter2: org.hibernate.mapping.Table;	r16 := @parameter3: org.hibernate.boot.model.source.spi.EntitySource;	r7 := @parameter4: org.hibernate.mapping.PersistentClass;	$r2 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database>;	$r4 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineCatalogName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1);	$r3 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineSchemaName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1);	r5 = virtualinvoke $r2.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.relational.Namespace locateNamespace(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r4, $r3);	$r6 = class "Lorg/hibernate/boot/model/source/spi/TableSource;";	z0 = virtualinvoke $r6.<java.lang.Class: boolean isInstance(java.lang.Object)>(r1);	$r8 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>();	if $r8 != null goto $r9 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>();	$r9 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>();	$z4 = virtualinvoke $r9.<java.lang.Boolean: boolean booleanValue()>();	z1 = $z4;	if z0 == 0 goto r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1;	r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1;	r10 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getSelectStatement()>();	$r11 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database>;	$r12 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getLogicalName()>();	r42 = virtualinvoke $r11.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r12);	if r13 != null goto $r53 = new org.hibernate.mapping.DenormalizedTable;	$r53 = new org.hibernate.mapping.DenormalizedTable;	specialinvoke $r53.<org.hibernate.mapping.DenormalizedTable: void <init>(org.hibernate.boot.model.relational.Namespace,java.lang.String,boolean,org.hibernate.mapping.Table)>(r5, r10, $z4, r13);	r43 = $r53;	$r15 = virtualinvoke r42.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>();	virtualinvoke r43.<org.hibernate.mapping.Table: void setName(java.lang.String)>($r15);	r45 = null;	$r46 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.IdentifiableTypeSource getSuperType()>();	if $r46 == null goto $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r24 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.IdentifiableTypeSource getSuperType()>();	$r25 = (org.hibernate.boot.model.source.spi.EntitySource) $r24;	$r26 = interfaceinvoke $r25.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.EntityNamingSource getEntityNamingSource()>();	r47 = interfaceinvoke $r26.<org.hibernate.boot.model.source.spi.EntityNamingSource: java.lang.String getEntityName()>();	$r27 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	r45 = interfaceinvoke $r27.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref getEntityTableXref(java.lang.String)>(r47);	if r45 != null goto $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r54 = new org.hibernate.boot.MappingException;	$r30 = <java.util.Locale: java.util.Locale ENGLISH>;	$r29 = newarray (java.lang.Object)[2];	$r31 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>();	$r29[0] = $r31;	$r29[1] = r47;	$r33 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r30, "Unable to locate entity table xref for entity [%s] super-type [%s]", $r29);	$r32 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>();	specialinvoke $r54.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r33, $r32);	$r55 = (java.lang.Throwable) $r54;	throw $r55
;block_num 9