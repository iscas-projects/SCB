(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3569 0)
(declare-sort var2084 0)
(declare-sort var918 0)
(declare-sort var2572 0)
(declare-sort var1636 0)
(declare-sort var2379 0)
(declare-sort var2277 0)
(declare-sort var3522 0)
(declare-sort var1049 0)
(declare-sort var1254 0)
(declare-sort var3250 0)
(declare-sort var3227 0)
(declare-sort var3103 0)
(declare-sort var331 0)
(declare-sort var3280 0)
(declare-sort var3755 0)
(declare-sort var2001 0)
(declare-sort var27 0)
(declare-sort var933 0)
(declare-sort var1719 0)
(declare-sort var3597 0)
(declare-sort var787 0)
(declare-sort var2606 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1254!class ClassObject)
(declare-fun database/1575709631 (var3569) var2277)
(declare-fun determineCatalogName/-707242197 (var3569 var918) var3522)
(declare-fun determineSchemaName/50600339 (var3569 var918) var3522)
(declare-fun locateNamespace/650936008 (var2277 var3522 var3522) var1049)
(declare-fun isInstance/451912363 (ClassObject var3250) Bool)
(declare-fun cast-from-var918-to-var3250 (var918) var3250)
(declare-fun isAbstract/-698908000 (var2379) var3227)
(declare-fun cast-from-var918-to-var3103 (var918) var3103)
(declare-fun var3103_getSelectStatement/942743418 (var3103) String)
(declare-fun var3103_getLogicalName/1202057593 (var3103) String)
(declare-fun toIdentifier/-614655301 (var2277 String) var3522)
(declare-fun var2572-init () var2572)
(declare-fun <init>/-24210129 (var2572 var1049 String Bool) void)
(declare-fun render/-241411902 (var3522) String)
(declare-fun setName/-276822577 (var2572 String) void)
(declare-fun var3280_getSuperType/823133162 (var3280) var3280)
(declare-fun cast-from-var1636-to-var3280 (var1636) var3280)
(declare-fun cast-from-var3280-to-var1636 (var3280) var1636)
(declare-fun var2001_getEntityNamingSource/2070971324 (var2001) var3755)
(declare-fun cast-from-var1636-to-var2001 (var1636) var2001)
(declare-fun var27_getEntityName/-119580260 (var27) String)
(declare-fun cast-from-var3755-to-var27 (var3755) var27)
(declare-fun getMetadataCollector/1898057277 (var2084) var933)
(declare-fun var933_getEntityTableXref/2869976 (var933 String) var331)
(declare-fun var1719-init () var1719)
(declare-fun arr-var3250-init () (Array Int var3250))
(declare-fun getEntityName/-2043384209 (var2379) String)
(declare-fun cast-from-String-to-var3250 (String) var3250)
(declare-fun String_format/-647569892 (var3597 String (Array Int var3250)) String)
(declare-fun getOrigin/1285793805 (var2084) var787)
(declare-fun <init>/235758574 (var1719 String var787) void)
(declare-fun cast-from-var1719-to-var2606 (var1719) var2606)
(declare-const null-var3569 var3569)
(declare-const null-var2084 var2084)
(declare-const null-var918 var918)
(declare-const null-var2572 var2572)
(declare-const null-var1636 var1636)
(declare-const null-var2379 var2379)
(declare-const null-var3227 var3227)
(declare-const null-var331 var331)
(declare-const null-var3280 var3280)
(declare-const var3597-ENGLISH var3597)
(declare-const null-__Array__Int__var3250__ (Array Int var3250))
(declare-const var2264 var3569) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder 
(assert (not (= var2264 null-var3569)))
(declare-const var1891 var2084) ; Statement: r17 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var1891 null-var2084)))
(declare-const var1788 var918) ; Statement: r1 := @parameter1: org.hibernate.boot.model.source.spi.TableSpecificationSource 
(assert (not (= var1788 null-var918)))
(declare-const var3579 var2572) ; Statement: r13 := @parameter2: org.hibernate.mapping.Table 
(assert (not (= var3579 null-var2572)))
(declare-const var145 var1636) ; Statement: r16 := @parameter3: org.hibernate.boot.model.source.spi.EntitySource 
(assert (not (= var145 null-var1636)))
(declare-const var1363 var2379) ; Statement: r7 := @parameter4: org.hibernate.mapping.PersistentClass 
(assert (not (= var1363 null-var2379)))
(define-const var405 var2277 (database/1575709631 var2264)) ; Statement: $r2 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database> 
(assert true)
(define-const var2244 var3522 (determineCatalogName/-707242197 var2264 var1788)) ; Statement: $r4 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineCatalogName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1) 
(assert true)
(define-const var1028 var3522 (determineSchemaName/50600339 var2264 var1788)) ; Statement: $r3 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineSchemaName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1) 
(assert true)
(define-const var848 var1049 (locateNamespace/650936008 var405 var2244 var1028)) ; Statement: r5 = virtualinvoke $r2.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.relational.Namespace locateNamespace(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r4, $r3) 
(define-const var3172 ClassObject var1254!class) ; Statement: $r6 = class "Lorg/hibernate/boot/model/source/spi/TableSource;" 
(assert true)
(define-const var1742 Bool (isInstance/451912363 var3172 (cast-from-var918-to-var3250 var1788))) ; Statement: z0 = virtualinvoke $r6.<java.lang.Class: boolean isInstance(java.lang.Object)>(r1) 
(assert true)
(define-const var771 var3227 (isAbstract/-698908000 var1363)) ; Statement: $r8 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>() 
 ; Statement: if $r8 != null goto $r9 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>() 
(assert (not (not (= var771 null-var3227)))) ; Negate: Cond: $r8 != null  
(define-const var1802 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
 ; Statement: goto [?= z1 = $z4] 
(assert true) ; Non Conditional
(define-const var1747 Bool var1802) ; Statement: z1 = $z4 
 ; Statement: if z0 == 0 goto r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1 
(assert (= (ite var1742 1 0) 0)) ; Cond: z0 == 0 
(define-const var2341 var3103 (cast-from-var918-to-var3103 var1788)) ; Statement: r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1 
(define-const var284 String (var3103_getSelectStatement/942743418 var2341)) ; Statement: r10 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getSelectStatement()>() 
(define-const var545 var2277 (database/1575709631 var2264)) ; Statement: $r11 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database> 
(define-const var3489 String (var3103_getLogicalName/1202057593 var2341)) ; Statement: $r12 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getLogicalName()>() 
(assert true)
(define-const var3658 var3522 (toIdentifier/-614655301 var545 var3489)) ; Statement: r42 = virtualinvoke $r11.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r12) 
 ; Statement: if r13 != null goto $r53 = new org.hibernate.mapping.DenormalizedTable 
(assert (not (not (= var3579 null-var2572)))) ; Negate: Cond: r13 != null  
(define-const var549 var2572 var2572-init) ; Statement: $r52 = new org.hibernate.mapping.Table 
(assert true)
;(assert (<init>/-24210129 var549 var848 var284 var1802)) ; Statement: specialinvoke $r52.<org.hibernate.mapping.Table: void <init>(org.hibernate.boot.model.relational.Namespace,java.lang.String,boolean)>(r5, r10, $z4) 

(declare-const var549!1 var2572)
(declare-const var848!1 var1049)
(declare-const var284!1 String)
(declare-const var1802!1 Bool)
(define-const var2660 var2572 var549!1) ; Statement: r43 = $r52 
 ; Statement: goto [?= $r15 = virtualinvoke r42.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var716 String (render/-241411902 var3658)) ; Statement: $r15 = virtualinvoke r42.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>() 
(assert true)
;(assert (setName/-276822577 var2660 var716)) ; Statement: virtualinvoke r43.<org.hibernate.mapping.Table: void setName(java.lang.String)>($r15) 

(declare-const var2660!1 var2572)
(declare-const var716!1 String)
(assert true) ; Non Conditional
(define-const var1268 var331 null-var331) ; Statement: r45 = null 
(define-const var359 var3280 (var3280_getSuperType/823133162 (cast-from-var1636-to-var3280 var145))) ; Statement: $r46 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.IdentifiableTypeSource getSuperType()>() 
 ; Statement: if $r46 == null goto $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(assert (not (= var359 null-var3280))) ; Negate: Cond: $r46 == null  
(define-const var2326 var3280 (var3280_getSuperType/823133162 (cast-from-var1636-to-var3280 var145))) ; Statement: $r24 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.IdentifiableTypeSource getSuperType()>() 
(define-const var3979 var1636 (cast-from-var3280-to-var1636 var2326)) ; Statement: $r25 = (org.hibernate.boot.model.source.spi.EntitySource) $r24 
(define-const var391 var3755 (var2001_getEntityNamingSource/2070971324 (cast-from-var1636-to-var2001 var3979))) ; Statement: $r26 = interfaceinvoke $r25.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.EntityNamingSource getEntityNamingSource()>() 
(define-const var1610 String (var27_getEntityName/-119580260 (cast-from-var3755-to-var27 var391))) ; Statement: r47 = interfaceinvoke $r26.<org.hibernate.boot.model.source.spi.EntityNamingSource: java.lang.String getEntityName()>() 
(assert true)
(define-const var2159 var933 (getMetadataCollector/1898057277 var1891)) ; Statement: $r27 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(define-const var1268!1 var331 (var933_getEntityTableXref/2869976 var2159 var1610)) ; Statement: r45 = interfaceinvoke $r27.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref getEntityTableXref(java.lang.String)>(r47) 
 ; Statement: if r45 != null goto $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(assert (not (not (= var1268!1 null-var331)))) ; Negate: Cond: r45 != null  
(define-const var329 var1719 var1719-init) ; Statement: $r54 = new org.hibernate.boot.MappingException 
(define-const var1686 var3597 var3597-ENGLISH) ; Statement: $r30 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var2201 (Array Int var3250) arr-var3250-init) ; Statement: $r29 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var697 String (getEntityName/-2043384209 var1363)) ; Statement: $r31 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>() 
(declare-const var2201!1 (Array Int var3250))
(assert (not (= var2201!1 null-__Array__Int__var3250__)))
(assert (= (select var2201!1 0) (cast-from-String-to-var3250 var697))) ; Statement: $r29[0] = $r31 
(declare-const var2201!2 (Array Int var3250))
(assert (not (= var2201!2 null-__Array__Int__var3250__)))
(assert (= (select var2201!2 1) (cast-from-String-to-var3250 var1610))) ; Statement: $r29[1] = r47 
(define-const var3720 String (String_format/-647569892 var1686 "Unable to locate entity table xref for entity [%s] super-type [%s]" var2201!2)) ; Statement: $r33 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r30, "Unable to locate entity table xref for entity [%s] super-type [%s]", $r29) 
(assert true)
(define-const var1444 var787 (getOrigin/1285793805 var1891)) ; Statement: $r32 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>() 
(assert true)
;(assert (<init>/235758574 var329 var3720 var1444)) ; Statement: specialinvoke $r54.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r33, $r32) 

(declare-const var329!1 var1719)
(declare-const var3720!1 String)
(declare-const var1444!1 var787)
(define-const var1867 var2606 (cast-from-var1719-to-var2606 var329!1)) ; Statement: $r55 = (java.lang.Throwable) $r54 
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {database/1575709631=([org.hibernate.boot.model.source.internal.hbm.ModelBinder], org.hibernate.boot.model.relational.Database), determineCatalogName/-707242197=([org.hibernate.boot.model.source.internal.hbm.ModelBinder, org.hibernate.boot.model.source.spi.TableSpecificationSource], org.hibernate.boot.model.naming.Identifier), determineSchemaName/50600339=([org.hibernate.boot.model.source.internal.hbm.ModelBinder, org.hibernate.boot.model.source.spi.TableSpecificationSource], org.hibernate.boot.model.naming.Identifier), locateNamespace/650936008=([org.hibernate.boot.model.relational.Database, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier], org.hibernate.boot.model.relational.Namespace), isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var918-to-var3250=([org.hibernate.boot.model.source.spi.TableSpecificationSource], java.lang.Object), isAbstract/-698908000=([org.hibernate.mapping.PersistentClass], java.lang.Boolean), cast-from-var918-to-var3103=([org.hibernate.boot.model.source.spi.TableSpecificationSource], org.hibernate.boot.model.source.spi.InLineViewSource), var3103_getSelectStatement/942743418=([org.hibernate.boot.model.source.spi.InLineViewSource], java.lang.String), var3103_getLogicalName/1202057593=([org.hibernate.boot.model.source.spi.InLineViewSource], java.lang.String), toIdentifier/-614655301=([org.hibernate.boot.model.relational.Database, java.lang.String], org.hibernate.boot.model.naming.Identifier), var2572-init=([], org.hibernate.mapping.Table), <init>/-24210129=([org.hibernate.mapping.Table, org.hibernate.boot.model.relational.Namespace, java.lang.String, boolean], void), render/-241411902=([org.hibernate.boot.model.naming.Identifier], java.lang.String), setName/-276822577=([org.hibernate.mapping.Table, java.lang.String], void), var3280_getSuperType/823133162=([org.hibernate.boot.model.source.spi.IdentifiableTypeSource], org.hibernate.boot.model.source.spi.IdentifiableTypeSource), cast-from-var1636-to-var3280=([org.hibernate.boot.model.source.spi.EntitySource], org.hibernate.boot.model.source.spi.IdentifiableTypeSource), cast-from-var3280-to-var1636=([org.hibernate.boot.model.source.spi.IdentifiableTypeSource], org.hibernate.boot.model.source.spi.EntitySource), var2001_getEntityNamingSource/2070971324=([org.hibernate.boot.model.source.spi.EntityNamingSourceContributor], org.hibernate.boot.model.source.spi.EntityNamingSource), cast-from-var1636-to-var2001=([org.hibernate.boot.model.source.spi.EntitySource], org.hibernate.boot.model.source.spi.EntityNamingSourceContributor), var27_getEntityName/-119580260=([org.hibernate.boot.model.naming.EntityNaming], java.lang.String), cast-from-var3755-to-var27=([org.hibernate.boot.model.source.spi.EntityNamingSource], org.hibernate.boot.model.naming.EntityNaming), getMetadataCollector/1898057277=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.spi.InFlightMetadataCollector), var933_getEntityTableXref/2869976=([org.hibernate.boot.spi.InFlightMetadataCollector, java.lang.String], org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref), var1719-init=([], org.hibernate.boot.MappingException), arr-var3250-init=([], java.lang.Object[]), getEntityName/-2043384209=([org.hibernate.mapping.PersistentClass], java.lang.String), cast-from-String-to-var3250=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), getOrigin/1285793805=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.jaxb.Origin), <init>/235758574=([org.hibernate.boot.MappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var1719-to-var2606=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var3569=org.hibernate.boot.model.source.internal.hbm.ModelBinder, var2264=r0, var2084=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var1891=r17, var918=org.hibernate.boot.model.source.spi.TableSpecificationSource, var1788=r1, var2572=org.hibernate.mapping.Table, var3579=r13, var1636=org.hibernate.boot.model.source.spi.EntitySource, var145=r16, var2379=org.hibernate.mapping.PersistentClass, var1363=r7, var2277=org.hibernate.boot.model.relational.Database, var405=$r2, var3522=org.hibernate.boot.model.naming.Identifier, var2244=$r4, var1028=$r3, var1049=org.hibernate.boot.model.relational.Namespace, var848=r5, var1254=org.hibernate.boot.model.source.spi.TableSource, var3172=$r6, var3250=java.lang.Object, var1742=z0, var3227=java.lang.Boolean, var771=$r8, var1802=$z4, var1747=z1, var3103=org.hibernate.boot.model.source.spi.InLineViewSource, var2341=r44, var284=r10, var545=$r11, var3489=$r12, var3658=r42, var549=$r52, var2660=r43, var716=$r15, var331=org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref, var1268=r45, var3280=org.hibernate.boot.model.source.spi.IdentifiableTypeSource, var359=$r46, var2326=$r24, var3979=$r25, var3755=org.hibernate.boot.model.source.spi.EntityNamingSource, var2001=org.hibernate.boot.model.source.spi.EntityNamingSourceContributor, var391=$r26, var27=org.hibernate.boot.model.naming.EntityNaming, var1610=r47, var933=org.hibernate.boot.spi.InFlightMetadataCollector, var2159=$r27, var1719=org.hibernate.boot.MappingException, var329=$r54, var3597=java.util.Locale, var1686=$r30, var2201=$r29, var697=$r31, var3720=$r33, var787=org.hibernate.boot.jaxb.Origin, var1444=$r32, var2606=java.lang.Throwable, var1867=$r55}
; {org.hibernate.boot.model.source.internal.hbm.ModelBinder=var3569, r0=var2264, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var2084, r17=var1891, org.hibernate.boot.model.source.spi.TableSpecificationSource=var918, r1=var1788, org.hibernate.mapping.Table=var2572, r13=var3579, org.hibernate.boot.model.source.spi.EntitySource=var1636, r16=var145, org.hibernate.mapping.PersistentClass=var2379, r7=var1363, org.hibernate.boot.model.relational.Database=var2277, $r2=var405, org.hibernate.boot.model.naming.Identifier=var3522, $r4=var2244, $r3=var1028, org.hibernate.boot.model.relational.Namespace=var1049, r5=var848, org.hibernate.boot.model.source.spi.TableSource=var1254, $r6=var3172, java.lang.Object=var3250, z0=var1742, java.lang.Boolean=var3227, $r8=var771, $z4=var1802, z1=var1747, org.hibernate.boot.model.source.spi.InLineViewSource=var3103, r44=var2341, r10=var284, $r11=var545, $r12=var3489, r42=var3658, $r52=var549, r43=var2660, $r15=var716, org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref=var331, r45=var1268, org.hibernate.boot.model.source.spi.IdentifiableTypeSource=var3280, $r46=var359, $r24=var2326, $r25=var3979, org.hibernate.boot.model.source.spi.EntityNamingSource=var3755, org.hibernate.boot.model.source.spi.EntityNamingSourceContributor=var2001, $r26=var391, org.hibernate.boot.model.naming.EntityNaming=var27, r47=var1610, org.hibernate.boot.spi.InFlightMetadataCollector=var933, $r27=var2159, org.hibernate.boot.MappingException=var1719, $r54=var329, java.util.Locale=var3597, $r30=var1686, $r29=var2201, $r31=var697, $r33=var3720, org.hibernate.boot.jaxb.Origin=var787, $r32=var1444, java.lang.Throwable=var2606, $r55=var1867}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder;	r17 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r1 := @parameter1: org.hibernate.boot.model.source.spi.TableSpecificationSource;	r13 := @parameter2: org.hibernate.mapping.Table;	r16 := @parameter3: org.hibernate.boot.model.source.spi.EntitySource;	r7 := @parameter4: org.hibernate.mapping.PersistentClass;	$r2 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database>;	$r4 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineCatalogName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1);	$r3 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineSchemaName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1);	r5 = virtualinvoke $r2.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.relational.Namespace locateNamespace(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r4, $r3);	$r6 = class "Lorg/hibernate/boot/model/source/spi/TableSource;";	z0 = virtualinvoke $r6.<java.lang.Class: boolean isInstance(java.lang.Object)>(r1);	$r8 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>();	if $r8 != null goto $r9 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>();	$z4 = 0;	goto [?= z1 = $z4];	z1 = $z4;	if z0 == 0 goto r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1;	r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1;	r10 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getSelectStatement()>();	$r11 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database>;	$r12 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getLogicalName()>();	r42 = virtualinvoke $r11.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r12);	if r13 != null goto $r53 = new org.hibernate.mapping.DenormalizedTable;	$r52 = new org.hibernate.mapping.Table;	specialinvoke $r52.<org.hibernate.mapping.Table: void <init>(org.hibernate.boot.model.relational.Namespace,java.lang.String,boolean)>(r5, r10, $z4);	r43 = $r52;	goto [?= $r15 = virtualinvoke r42.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>()];	$r15 = virtualinvoke r42.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>();	virtualinvoke r43.<org.hibernate.mapping.Table: void setName(java.lang.String)>($r15);	r45 = null;	$r46 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.IdentifiableTypeSource getSuperType()>();	if $r46 == null goto $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r24 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.IdentifiableTypeSource getSuperType()>();	$r25 = (org.hibernate.boot.model.source.spi.EntitySource) $r24;	$r26 = interfaceinvoke $r25.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.EntityNamingSource getEntityNamingSource()>();	r47 = interfaceinvoke $r26.<org.hibernate.boot.model.source.spi.EntityNamingSource: java.lang.String getEntityName()>();	$r27 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	r45 = interfaceinvoke $r27.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref getEntityTableXref(java.lang.String)>(r47);	if r45 != null goto $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r54 = new org.hibernate.boot.MappingException;	$r30 = <java.util.Locale: java.util.Locale ENGLISH>;	$r29 = newarray (java.lang.Object)[2];	$r31 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>();	$r29[0] = $r31;	$r29[1] = r47;	$r33 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r30, "Unable to locate entity table xref for entity [%s] super-type [%s]", $r29);	$r32 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>();	specialinvoke $r54.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r33, $r32);	$r55 = (java.lang.Throwable) $r54;	throw $r55
;block_num 9