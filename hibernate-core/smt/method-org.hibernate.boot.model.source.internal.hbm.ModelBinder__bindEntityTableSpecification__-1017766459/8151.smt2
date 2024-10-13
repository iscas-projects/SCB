(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var403 0)
(declare-sort var328 0)
(declare-sort var499 0)
(declare-sort var3607 0)
(declare-sort var2901 0)
(declare-sort var2151 0)
(declare-sort var2773 0)
(declare-sort var2 0)
(declare-sort var48 0)
(declare-sort var1472 0)
(declare-sort var883 0)
(declare-sort var914 0)
(declare-sort var3110 0)
(declare-sort var1542 0)
(declare-sort var595 0)
(declare-sort var252 0)
(declare-sort var2932 0)
(declare-sort var2972 0)
(declare-sort var1142 0)
(declare-sort var1656 0)
(declare-sort var3024 0)
(declare-sort var751 0)
(declare-sort var1686 0)
(declare-sort var3925 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1472!class ClassObject)
(declare-fun database/1575709631 (var403) var2773)
(declare-fun determineCatalogName/-707242197 (var403 var499) var2)
(declare-fun determineSchemaName/50600339 (var403 var499) var2)
(declare-fun locateNamespace/650936008 (var2773 var2 var2) var48)
(declare-fun isInstance/451912363 (ClassObject var883) Bool)
(declare-fun cast-from-var499-to-var883 (var499) var883)
(declare-fun isAbstract/-698908000 (var2151) var914)
(declare-fun cast-from-var499-to-var3110 (var499) var3110)
(declare-fun var3110_getSelectStatement/942743418 (var3110) String)
(declare-fun var3110_getLogicalName/1202057593 (var3110) String)
(declare-fun toIdentifier/-614655301 (var2773 String) var2)
(declare-fun var1542-init () var1542)
(declare-fun <init>/-1111662061 (var1542 var48 String Bool var3607) void)
(declare-fun cast-from-var1542-to-var3607 (var1542) var3607)
(declare-fun render/-241411902 (var2) String)
(declare-fun setName/-276822577 (var3607 String) void)
(declare-fun var252_getSuperType/823133162 (var252) var252)
(declare-fun cast-from-var2901-to-var252 (var2901) var252)
(declare-fun cast-from-var252-to-var2901 (var252) var2901)
(declare-fun var2972_getEntityNamingSource/2070971324 (var2972) var2932)
(declare-fun cast-from-var2901-to-var2972 (var2901) var2972)
(declare-fun var1142_getEntityName/-119580260 (var1142) String)
(declare-fun cast-from-var2932-to-var1142 (var2932) var1142)
(declare-fun getMetadataCollector/1898057277 (var328) var1656)
(declare-fun var1656_getEntityTableXref/2869976 (var1656 String) var595)
(declare-fun var3024-init () var3024)
(declare-fun arr-var883-init () (Array Int var883))
(declare-fun getEntityName/-2043384209 (var2151) String)
(declare-fun cast-from-String-to-var883 (String) var883)
(declare-fun String_format/-647569892 (var751 String (Array Int var883)) String)
(declare-fun getOrigin/1285793805 (var328) var1686)
(declare-fun <init>/235758574 (var3024 String var1686) void)
(declare-fun cast-from-var3024-to-var3925 (var3024) var3925)
(declare-const null-var403 var403)
(declare-const null-var328 var328)
(declare-const null-var499 var499)
(declare-const null-var3607 var3607)
(declare-const null-var2901 var2901)
(declare-const null-var2151 var2151)
(declare-const null-var914 var914)
(declare-const null-var595 var595)
(declare-const null-var252 var252)
(declare-const var751-ENGLISH var751)
(declare-const null-__Array__Int__var883__ (Array Int var883))
(declare-const var90 var403) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder 
(assert (not (= var90 null-var403)))
(declare-const var876 var328) ; Statement: r17 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var876 null-var328)))
(declare-const var3705 var499) ; Statement: r1 := @parameter1: org.hibernate.boot.model.source.spi.TableSpecificationSource 
(assert (not (= var3705 null-var499)))
(declare-const var3305 var3607) ; Statement: r13 := @parameter2: org.hibernate.mapping.Table 
(assert (not (= var3305 null-var3607)))
(declare-const var87 var2901) ; Statement: r16 := @parameter3: org.hibernate.boot.model.source.spi.EntitySource 
(assert (not (= var87 null-var2901)))
(declare-const var1421 var2151) ; Statement: r7 := @parameter4: org.hibernate.mapping.PersistentClass 
(assert (not (= var1421 null-var2151)))
(define-const var2863 var2773 (database/1575709631 var90)) ; Statement: $r2 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database> 
(assert true)
(define-const var1085 var2 (determineCatalogName/-707242197 var90 var3705)) ; Statement: $r4 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineCatalogName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1) 
(assert true)
(define-const var1782 var2 (determineSchemaName/50600339 var90 var3705)) ; Statement: $r3 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineSchemaName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1) 
(assert true)
(define-const var3170 var48 (locateNamespace/650936008 var2863 var1085 var1782)) ; Statement: r5 = virtualinvoke $r2.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.relational.Namespace locateNamespace(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r4, $r3) 
(define-const var3348 ClassObject var1472!class) ; Statement: $r6 = class "Lorg/hibernate/boot/model/source/spi/TableSource;" 
(assert true)
(define-const var3268 Bool (isInstance/451912363 var3348 (cast-from-var499-to-var883 var3705))) ; Statement: z0 = virtualinvoke $r6.<java.lang.Class: boolean isInstance(java.lang.Object)>(r1) 
(assert true)
(define-const var946 var914 (isAbstract/-698908000 var1421)) ; Statement: $r8 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>() 
 ; Statement: if $r8 != null goto $r9 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>() 
(assert (not (not (= var946 null-var914)))) ; Negate: Cond: $r8 != null  
(define-const var3366 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
 ; Statement: goto [?= z1 = $z4] 
(assert true) ; Non Conditional
(define-const var2989 Bool var3366) ; Statement: z1 = $z4 
 ; Statement: if z0 == 0 goto r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1 
(assert (= (ite var3268 1 0) 0)) ; Cond: z0 == 0 
(define-const var843 var3110 (cast-from-var499-to-var3110 var3705)) ; Statement: r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1 
(define-const var2891 String (var3110_getSelectStatement/942743418 var843)) ; Statement: r10 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getSelectStatement()>() 
(define-const var291 var2773 (database/1575709631 var90)) ; Statement: $r11 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database> 
(define-const var941 String (var3110_getLogicalName/1202057593 var843)) ; Statement: $r12 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getLogicalName()>() 
(assert true)
(define-const var1548 var2 (toIdentifier/-614655301 var291 var941)) ; Statement: r42 = virtualinvoke $r11.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r12) 
 ; Statement: if r13 != null goto $r53 = new org.hibernate.mapping.DenormalizedTable 
(assert (not (= var3305 null-var3607))) ; Cond: r13 != null 
(define-const var3816 var1542 var1542-init) ; Statement: $r53 = new org.hibernate.mapping.DenormalizedTable 
(assert true)
;(assert (<init>/-1111662061 var3816 var3170 var2891 var3366 var3305)) ; Statement: specialinvoke $r53.<org.hibernate.mapping.DenormalizedTable: void <init>(org.hibernate.boot.model.relational.Namespace,java.lang.String,boolean,org.hibernate.mapping.Table)>(r5, r10, $z4, r13) 

(declare-const var3816!1 var1542)
(declare-const var3170!1 var48)
(declare-const var2891!1 String)
(declare-const var3366!1 Bool)
(declare-const var3305!1 var3607)
(define-const var3072 var3607 (cast-from-var1542-to-var3607 var3816!1)) ; Statement: r43 = $r53 
(assert true) ; Non Conditional
(assert true)
(define-const var777 String (render/-241411902 var1548)) ; Statement: $r15 = virtualinvoke r42.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>() 
(assert true)
;(assert (setName/-276822577 var3072 var777)) ; Statement: virtualinvoke r43.<org.hibernate.mapping.Table: void setName(java.lang.String)>($r15) 

(declare-const var3072!1 var3607)
(declare-const var777!1 String)
(assert true) ; Non Conditional
(define-const var3321 var595 null-var595) ; Statement: r45 = null 
(define-const var290 var252 (var252_getSuperType/823133162 (cast-from-var2901-to-var252 var87))) ; Statement: $r46 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.IdentifiableTypeSource getSuperType()>() 
 ; Statement: if $r46 == null goto $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(assert (not (= var290 null-var252))) ; Negate: Cond: $r46 == null  
(define-const var2016 var252 (var252_getSuperType/823133162 (cast-from-var2901-to-var252 var87))) ; Statement: $r24 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.IdentifiableTypeSource getSuperType()>() 
(define-const var1908 var2901 (cast-from-var252-to-var2901 var2016)) ; Statement: $r25 = (org.hibernate.boot.model.source.spi.EntitySource) $r24 
(define-const var3942 var2932 (var2972_getEntityNamingSource/2070971324 (cast-from-var2901-to-var2972 var1908))) ; Statement: $r26 = interfaceinvoke $r25.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.EntityNamingSource getEntityNamingSource()>() 
(define-const var3484 String (var1142_getEntityName/-119580260 (cast-from-var2932-to-var1142 var3942))) ; Statement: r47 = interfaceinvoke $r26.<org.hibernate.boot.model.source.spi.EntityNamingSource: java.lang.String getEntityName()>() 
(assert true)
(define-const var2698 var1656 (getMetadataCollector/1898057277 var876)) ; Statement: $r27 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(define-const var3321!1 var595 (var1656_getEntityTableXref/2869976 var2698 var3484)) ; Statement: r45 = interfaceinvoke $r27.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref getEntityTableXref(java.lang.String)>(r47) 
 ; Statement: if r45 != null goto $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(assert (not (not (= var3321!1 null-var595)))) ; Negate: Cond: r45 != null  
(define-const var2982 var3024 var3024-init) ; Statement: $r54 = new org.hibernate.boot.MappingException 
(define-const var491 var751 var751-ENGLISH) ; Statement: $r30 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var3455 (Array Int var883) arr-var883-init) ; Statement: $r29 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var1636 String (getEntityName/-2043384209 var1421)) ; Statement: $r31 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>() 
(declare-const var3455!1 (Array Int var883))
(assert (not (= var3455!1 null-__Array__Int__var883__)))
(assert (= (select var3455!1 0) (cast-from-String-to-var883 var1636))) ; Statement: $r29[0] = $r31 
(declare-const var3455!2 (Array Int var883))
(assert (not (= var3455!2 null-__Array__Int__var883__)))
(assert (= (select var3455!2 1) (cast-from-String-to-var883 var3484))) ; Statement: $r29[1] = r47 
(define-const var153 String (String_format/-647569892 var491 "Unable to locate entity table xref for entity [%s] super-type [%s]" var3455!2)) ; Statement: $r33 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r30, "Unable to locate entity table xref for entity [%s] super-type [%s]", $r29) 
(assert true)
(define-const var2525 var1686 (getOrigin/1285793805 var876)) ; Statement: $r32 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>() 
(assert true)
;(assert (<init>/235758574 var2982 var153 var2525)) ; Statement: specialinvoke $r54.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r33, $r32) 

(declare-const var2982!1 var3024)
(declare-const var153!1 String)
(declare-const var2525!1 var1686)
(define-const var173 var3925 (cast-from-var3024-to-var3925 var2982!1)) ; Statement: $r55 = (java.lang.Throwable) $r54 
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {database/1575709631=([org.hibernate.boot.model.source.internal.hbm.ModelBinder], org.hibernate.boot.model.relational.Database), determineCatalogName/-707242197=([org.hibernate.boot.model.source.internal.hbm.ModelBinder, org.hibernate.boot.model.source.spi.TableSpecificationSource], org.hibernate.boot.model.naming.Identifier), determineSchemaName/50600339=([org.hibernate.boot.model.source.internal.hbm.ModelBinder, org.hibernate.boot.model.source.spi.TableSpecificationSource], org.hibernate.boot.model.naming.Identifier), locateNamespace/650936008=([org.hibernate.boot.model.relational.Database, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier], org.hibernate.boot.model.relational.Namespace), isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var499-to-var883=([org.hibernate.boot.model.source.spi.TableSpecificationSource], java.lang.Object), isAbstract/-698908000=([org.hibernate.mapping.PersistentClass], java.lang.Boolean), cast-from-var499-to-var3110=([org.hibernate.boot.model.source.spi.TableSpecificationSource], org.hibernate.boot.model.source.spi.InLineViewSource), var3110_getSelectStatement/942743418=([org.hibernate.boot.model.source.spi.InLineViewSource], java.lang.String), var3110_getLogicalName/1202057593=([org.hibernate.boot.model.source.spi.InLineViewSource], java.lang.String), toIdentifier/-614655301=([org.hibernate.boot.model.relational.Database, java.lang.String], org.hibernate.boot.model.naming.Identifier), var1542-init=([], org.hibernate.mapping.DenormalizedTable), <init>/-1111662061=([org.hibernate.mapping.DenormalizedTable, org.hibernate.boot.model.relational.Namespace, java.lang.String, boolean, org.hibernate.mapping.Table], void), cast-from-var1542-to-var3607=([org.hibernate.mapping.DenormalizedTable], org.hibernate.mapping.Table), render/-241411902=([org.hibernate.boot.model.naming.Identifier], java.lang.String), setName/-276822577=([org.hibernate.mapping.Table, java.lang.String], void), var252_getSuperType/823133162=([org.hibernate.boot.model.source.spi.IdentifiableTypeSource], org.hibernate.boot.model.source.spi.IdentifiableTypeSource), cast-from-var2901-to-var252=([org.hibernate.boot.model.source.spi.EntitySource], org.hibernate.boot.model.source.spi.IdentifiableTypeSource), cast-from-var252-to-var2901=([org.hibernate.boot.model.source.spi.IdentifiableTypeSource], org.hibernate.boot.model.source.spi.EntitySource), var2972_getEntityNamingSource/2070971324=([org.hibernate.boot.model.source.spi.EntityNamingSourceContributor], org.hibernate.boot.model.source.spi.EntityNamingSource), cast-from-var2901-to-var2972=([org.hibernate.boot.model.source.spi.EntitySource], org.hibernate.boot.model.source.spi.EntityNamingSourceContributor), var1142_getEntityName/-119580260=([org.hibernate.boot.model.naming.EntityNaming], java.lang.String), cast-from-var2932-to-var1142=([org.hibernate.boot.model.source.spi.EntityNamingSource], org.hibernate.boot.model.naming.EntityNaming), getMetadataCollector/1898057277=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.spi.InFlightMetadataCollector), var1656_getEntityTableXref/2869976=([org.hibernate.boot.spi.InFlightMetadataCollector, java.lang.String], org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref), var3024-init=([], org.hibernate.boot.MappingException), arr-var883-init=([], java.lang.Object[]), getEntityName/-2043384209=([org.hibernate.mapping.PersistentClass], java.lang.String), cast-from-String-to-var883=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), getOrigin/1285793805=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.jaxb.Origin), <init>/235758574=([org.hibernate.boot.MappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var3024-to-var3925=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var403=org.hibernate.boot.model.source.internal.hbm.ModelBinder, var90=r0, var328=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var876=r17, var499=org.hibernate.boot.model.source.spi.TableSpecificationSource, var3705=r1, var3607=org.hibernate.mapping.Table, var3305=r13, var2901=org.hibernate.boot.model.source.spi.EntitySource, var87=r16, var2151=org.hibernate.mapping.PersistentClass, var1421=r7, var2773=org.hibernate.boot.model.relational.Database, var2863=$r2, var2=org.hibernate.boot.model.naming.Identifier, var1085=$r4, var1782=$r3, var48=org.hibernate.boot.model.relational.Namespace, var3170=r5, var1472=org.hibernate.boot.model.source.spi.TableSource, var3348=$r6, var883=java.lang.Object, var3268=z0, var914=java.lang.Boolean, var946=$r8, var3366=$z4, var2989=z1, var3110=org.hibernate.boot.model.source.spi.InLineViewSource, var843=r44, var2891=r10, var291=$r11, var941=$r12, var1548=r42, var1542=org.hibernate.mapping.DenormalizedTable, var3816=$r53, var3072=r43, var777=$r15, var595=org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref, var3321=r45, var252=org.hibernate.boot.model.source.spi.IdentifiableTypeSource, var290=$r46, var2016=$r24, var1908=$r25, var2932=org.hibernate.boot.model.source.spi.EntityNamingSource, var2972=org.hibernate.boot.model.source.spi.EntityNamingSourceContributor, var3942=$r26, var1142=org.hibernate.boot.model.naming.EntityNaming, var3484=r47, var1656=org.hibernate.boot.spi.InFlightMetadataCollector, var2698=$r27, var3024=org.hibernate.boot.MappingException, var2982=$r54, var751=java.util.Locale, var491=$r30, var3455=$r29, var1636=$r31, var153=$r33, var1686=org.hibernate.boot.jaxb.Origin, var2525=$r32, var3925=java.lang.Throwable, var173=$r55}
; {org.hibernate.boot.model.source.internal.hbm.ModelBinder=var403, r0=var90, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var328, r17=var876, org.hibernate.boot.model.source.spi.TableSpecificationSource=var499, r1=var3705, org.hibernate.mapping.Table=var3607, r13=var3305, org.hibernate.boot.model.source.spi.EntitySource=var2901, r16=var87, org.hibernate.mapping.PersistentClass=var2151, r7=var1421, org.hibernate.boot.model.relational.Database=var2773, $r2=var2863, org.hibernate.boot.model.naming.Identifier=var2, $r4=var1085, $r3=var1782, org.hibernate.boot.model.relational.Namespace=var48, r5=var3170, org.hibernate.boot.model.source.spi.TableSource=var1472, $r6=var3348, java.lang.Object=var883, z0=var3268, java.lang.Boolean=var914, $r8=var946, $z4=var3366, z1=var2989, org.hibernate.boot.model.source.spi.InLineViewSource=var3110, r44=var843, r10=var2891, $r11=var291, $r12=var941, r42=var1548, org.hibernate.mapping.DenormalizedTable=var1542, $r53=var3816, r43=var3072, $r15=var777, org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref=var595, r45=var3321, org.hibernate.boot.model.source.spi.IdentifiableTypeSource=var252, $r46=var290, $r24=var2016, $r25=var1908, org.hibernate.boot.model.source.spi.EntityNamingSource=var2932, org.hibernate.boot.model.source.spi.EntityNamingSourceContributor=var2972, $r26=var3942, org.hibernate.boot.model.naming.EntityNaming=var1142, r47=var3484, org.hibernate.boot.spi.InFlightMetadataCollector=var1656, $r27=var2698, org.hibernate.boot.MappingException=var3024, $r54=var2982, java.util.Locale=var751, $r30=var491, $r29=var3455, $r31=var1636, $r33=var153, org.hibernate.boot.jaxb.Origin=var1686, $r32=var2525, java.lang.Throwable=var3925, $r55=var173}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder;	r17 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r1 := @parameter1: org.hibernate.boot.model.source.spi.TableSpecificationSource;	r13 := @parameter2: org.hibernate.mapping.Table;	r16 := @parameter3: org.hibernate.boot.model.source.spi.EntitySource;	r7 := @parameter4: org.hibernate.mapping.PersistentClass;	$r2 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database>;	$r4 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineCatalogName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1);	$r3 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineSchemaName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1);	r5 = virtualinvoke $r2.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.relational.Namespace locateNamespace(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r4, $r3);	$r6 = class "Lorg/hibernate/boot/model/source/spi/TableSource;";	z0 = virtualinvoke $r6.<java.lang.Class: boolean isInstance(java.lang.Object)>(r1);	$r8 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>();	if $r8 != null goto $r9 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>();	$z4 = 0;	goto [?= z1 = $z4];	z1 = $z4;	if z0 == 0 goto r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1;	r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1;	r10 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getSelectStatement()>();	$r11 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database>;	$r12 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getLogicalName()>();	r42 = virtualinvoke $r11.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r12);	if r13 != null goto $r53 = new org.hibernate.mapping.DenormalizedTable;	$r53 = new org.hibernate.mapping.DenormalizedTable;	specialinvoke $r53.<org.hibernate.mapping.DenormalizedTable: void <init>(org.hibernate.boot.model.relational.Namespace,java.lang.String,boolean,org.hibernate.mapping.Table)>(r5, r10, $z4, r13);	r43 = $r53;	$r15 = virtualinvoke r42.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>();	virtualinvoke r43.<org.hibernate.mapping.Table: void setName(java.lang.String)>($r15);	r45 = null;	$r46 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.IdentifiableTypeSource getSuperType()>();	if $r46 == null goto $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r24 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.IdentifiableTypeSource getSuperType()>();	$r25 = (org.hibernate.boot.model.source.spi.EntitySource) $r24;	$r26 = interfaceinvoke $r25.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.EntityNamingSource getEntityNamingSource()>();	r47 = interfaceinvoke $r26.<org.hibernate.boot.model.source.spi.EntityNamingSource: java.lang.String getEntityName()>();	$r27 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	r45 = interfaceinvoke $r27.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref getEntityTableXref(java.lang.String)>(r47);	if r45 != null goto $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r54 = new org.hibernate.boot.MappingException;	$r30 = <java.util.Locale: java.util.Locale ENGLISH>;	$r29 = newarray (java.lang.Object)[2];	$r31 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>();	$r29[0] = $r31;	$r29[1] = r47;	$r33 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r30, "Unable to locate entity table xref for entity [%s] super-type [%s]", $r29);	$r32 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>();	specialinvoke $r54.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r33, $r32);	$r55 = (java.lang.Throwable) $r54;	throw $r55
;block_num 9