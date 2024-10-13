(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2241 0)
(declare-sort var168 0)
(declare-sort var1064 0)
(declare-sort var820 0)
(declare-sort var903 0)
(declare-sort var962 0)
(declare-sort var1666 0)
(declare-sort var255 0)
(declare-sort var3045 0)
(declare-sort var2949 0)
(declare-sort var858 0)
(declare-sort var2814 0)
(declare-sort var3938 0)
(declare-sort var2072 0)
(declare-sort var1924 0)
(declare-sort var2359 0)
(declare-sort var2873 0)
(declare-sort var2423 0)
(declare-sort var1201 0)
(declare-sort var1474 0)
(declare-sort var2524 0)
(declare-sort var1000 0)
(declare-sort var2475 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2949!class ClassObject)
(declare-fun database/1575709631 (var2241) var1666)
(declare-fun determineCatalogName/-707242197 (var2241 var1064) var255)
(declare-fun determineSchemaName/50600339 (var2241 var1064) var255)
(declare-fun locateNamespace/650936008 (var1666 var255 var255) var3045)
(declare-fun isInstance/451912363 (ClassObject var858) Bool)
(declare-fun cast-from-var1064-to-var858 (var1064) var858)
(declare-fun isAbstract/-698908000 (var962) var2814)
(declare-fun booleanValue/-1820462562 (var2814) Bool)
(declare-fun cast-from-var1064-to-var3938 (var1064) var3938)
(declare-fun var3938_getSelectStatement/942743418 (var3938) String)
(declare-fun var3938_getLogicalName/1202057593 (var3938) String)
(declare-fun toIdentifier/-614655301 (var1666 String) var255)
(declare-fun var820-init () var820)
(declare-fun <init>/-24210129 (var820 var3045 String Bool) void)
(declare-fun render/-241411902 (var255) String)
(declare-fun setName/-276822577 (var820 String) void)
(declare-fun var1924_getSuperType/823133162 (var1924) var1924)
(declare-fun cast-from-var903-to-var1924 (var903) var1924)
(declare-fun cast-from-var1924-to-var903 (var1924) var903)
(declare-fun var2873_getEntityNamingSource/2070971324 (var2873) var2359)
(declare-fun cast-from-var903-to-var2873 (var903) var2873)
(declare-fun var2423_getEntityName/-119580260 (var2423) String)
(declare-fun cast-from-var2359-to-var2423 (var2359) var2423)
(declare-fun getMetadataCollector/1898057277 (var168) var1201)
(declare-fun var1201_getEntityTableXref/2869976 (var1201 String) var2072)
(declare-fun var1474-init () var1474)
(declare-fun arr-var858-init () (Array Int var858))
(declare-fun getEntityName/-2043384209 (var962) String)
(declare-fun cast-from-String-to-var858 (String) var858)
(declare-fun String_format/-647569892 (var2524 String (Array Int var858)) String)
(declare-fun getOrigin/1285793805 (var168) var1000)
(declare-fun <init>/235758574 (var1474 String var1000) void)
(declare-fun cast-from-var1474-to-var2475 (var1474) var2475)
(declare-const null-var2241 var2241)
(declare-const null-var168 var168)
(declare-const null-var1064 var1064)
(declare-const null-var820 var820)
(declare-const null-var903 var903)
(declare-const null-var962 var962)
(declare-const null-var2814 var2814)
(declare-const null-var2072 var2072)
(declare-const null-var1924 var1924)
(declare-const var2524-ENGLISH var2524)
(declare-const null-__Array__Int__var858__ (Array Int var858))
(declare-const var1821 var2241) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder 
(assert (not (= var1821 null-var2241)))
(declare-const var3619 var168) ; Statement: r17 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var3619 null-var168)))
(declare-const var942 var1064) ; Statement: r1 := @parameter1: org.hibernate.boot.model.source.spi.TableSpecificationSource 
(assert (not (= var942 null-var1064)))
(declare-const var1977 var820) ; Statement: r13 := @parameter2: org.hibernate.mapping.Table 
(assert (not (= var1977 null-var820)))
(declare-const var794 var903) ; Statement: r16 := @parameter3: org.hibernate.boot.model.source.spi.EntitySource 
(assert (not (= var794 null-var903)))
(declare-const var639 var962) ; Statement: r7 := @parameter4: org.hibernate.mapping.PersistentClass 
(assert (not (= var639 null-var962)))
(define-const var3028 var1666 (database/1575709631 var1821)) ; Statement: $r2 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database> 
(assert true)
(define-const var2901 var255 (determineCatalogName/-707242197 var1821 var942)) ; Statement: $r4 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineCatalogName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1) 
(assert true)
(define-const var824 var255 (determineSchemaName/50600339 var1821 var942)) ; Statement: $r3 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineSchemaName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1) 
(assert true)
(define-const var405 var3045 (locateNamespace/650936008 var3028 var2901 var824)) ; Statement: r5 = virtualinvoke $r2.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.relational.Namespace locateNamespace(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r4, $r3) 
(define-const var629 ClassObject var2949!class) ; Statement: $r6 = class "Lorg/hibernate/boot/model/source/spi/TableSource;" 
(assert true)
(define-const var1978 Bool (isInstance/451912363 var629 (cast-from-var1064-to-var858 var942))) ; Statement: z0 = virtualinvoke $r6.<java.lang.Class: boolean isInstance(java.lang.Object)>(r1) 
(assert true)
(define-const var760 var2814 (isAbstract/-698908000 var639)) ; Statement: $r8 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>() 
 ; Statement: if $r8 != null goto $r9 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>() 
(assert (not (= var760 null-var2814))) ; Cond: $r8 != null 
(assert true)
(define-const var3578 var2814 (isAbstract/-698908000 var639)) ; Statement: $r9 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>() 
(assert true)
(define-const var1905 Bool (booleanValue/-1820462562 var3578)) ; Statement: $z4 = virtualinvoke $r9.<java.lang.Boolean: boolean booleanValue()>() 
(assert true) ; Non Conditional
(define-const var3575 Bool var1905) ; Statement: z1 = $z4 
 ; Statement: if z0 == 0 goto r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1 
(assert (= (ite var1978 1 0) 0)) ; Cond: z0 == 0 
(define-const var2012 var3938 (cast-from-var1064-to-var3938 var942)) ; Statement: r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1 
(define-const var1244 String (var3938_getSelectStatement/942743418 var2012)) ; Statement: r10 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getSelectStatement()>() 
(define-const var1413 var1666 (database/1575709631 var1821)) ; Statement: $r11 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database> 
(define-const var2378 String (var3938_getLogicalName/1202057593 var2012)) ; Statement: $r12 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getLogicalName()>() 
(assert true)
(define-const var1630 var255 (toIdentifier/-614655301 var1413 var2378)) ; Statement: r42 = virtualinvoke $r11.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r12) 
 ; Statement: if r13 != null goto $r53 = new org.hibernate.mapping.DenormalizedTable 
(assert (not (not (= var1977 null-var820)))) ; Negate: Cond: r13 != null  
(define-const var2207 var820 var820-init) ; Statement: $r52 = new org.hibernate.mapping.Table 
(assert true)
;(assert (<init>/-24210129 var2207 var405 var1244 var1905)) ; Statement: specialinvoke $r52.<org.hibernate.mapping.Table: void <init>(org.hibernate.boot.model.relational.Namespace,java.lang.String,boolean)>(r5, r10, $z4) 

(declare-const var2207!1 var820)
(declare-const var405!1 var3045)
(declare-const var1244!1 String)
(declare-const var1905!1 Bool)
(define-const var467 var820 var2207!1) ; Statement: r43 = $r52 
 ; Statement: goto [?= $r15 = virtualinvoke r42.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var518 String (render/-241411902 var1630)) ; Statement: $r15 = virtualinvoke r42.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>() 
(assert true)
;(assert (setName/-276822577 var467 var518)) ; Statement: virtualinvoke r43.<org.hibernate.mapping.Table: void setName(java.lang.String)>($r15) 

(declare-const var467!1 var820)
(declare-const var518!1 String)
(assert true) ; Non Conditional
(define-const var28 var2072 null-var2072) ; Statement: r45 = null 
(define-const var22 var1924 (var1924_getSuperType/823133162 (cast-from-var903-to-var1924 var794))) ; Statement: $r46 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.IdentifiableTypeSource getSuperType()>() 
 ; Statement: if $r46 == null goto $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(assert (not (= var22 null-var1924))) ; Negate: Cond: $r46 == null  
(define-const var1412 var1924 (var1924_getSuperType/823133162 (cast-from-var903-to-var1924 var794))) ; Statement: $r24 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.IdentifiableTypeSource getSuperType()>() 
(define-const var2954 var903 (cast-from-var1924-to-var903 var1412)) ; Statement: $r25 = (org.hibernate.boot.model.source.spi.EntitySource) $r24 
(define-const var3551 var2359 (var2873_getEntityNamingSource/2070971324 (cast-from-var903-to-var2873 var2954))) ; Statement: $r26 = interfaceinvoke $r25.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.EntityNamingSource getEntityNamingSource()>() 
(define-const var2080 String (var2423_getEntityName/-119580260 (cast-from-var2359-to-var2423 var3551))) ; Statement: r47 = interfaceinvoke $r26.<org.hibernate.boot.model.source.spi.EntityNamingSource: java.lang.String getEntityName()>() 
(assert true)
(define-const var1371 var1201 (getMetadataCollector/1898057277 var3619)) ; Statement: $r27 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(define-const var28!1 var2072 (var1201_getEntityTableXref/2869976 var1371 var2080)) ; Statement: r45 = interfaceinvoke $r27.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref getEntityTableXref(java.lang.String)>(r47) 
 ; Statement: if r45 != null goto $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(assert (not (not (= var28!1 null-var2072)))) ; Negate: Cond: r45 != null  
(define-const var2063 var1474 var1474-init) ; Statement: $r54 = new org.hibernate.boot.MappingException 
(define-const var2749 var2524 var2524-ENGLISH) ; Statement: $r30 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var471 (Array Int var858) arr-var858-init) ; Statement: $r29 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var51 String (getEntityName/-2043384209 var639)) ; Statement: $r31 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>() 
(declare-const var471!1 (Array Int var858))
(assert (not (= var471!1 null-__Array__Int__var858__)))
(assert (= (select var471!1 0) (cast-from-String-to-var858 var51))) ; Statement: $r29[0] = $r31 
(declare-const var471!2 (Array Int var858))
(assert (not (= var471!2 null-__Array__Int__var858__)))
(assert (= (select var471!2 1) (cast-from-String-to-var858 var2080))) ; Statement: $r29[1] = r47 
(define-const var2198 String (String_format/-647569892 var2749 "Unable to locate entity table xref for entity [%s] super-type [%s]" var471!2)) ; Statement: $r33 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r30, "Unable to locate entity table xref for entity [%s] super-type [%s]", $r29) 
(assert true)
(define-const var3431 var1000 (getOrigin/1285793805 var3619)) ; Statement: $r32 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>() 
(assert true)
;(assert (<init>/235758574 var2063 var2198 var3431)) ; Statement: specialinvoke $r54.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r33, $r32) 

(declare-const var2063!1 var1474)
(declare-const var2198!1 String)
(declare-const var3431!1 var1000)
(define-const var1127 var2475 (cast-from-var1474-to-var2475 var2063!1)) ; Statement: $r55 = (java.lang.Throwable) $r54 
 ; Statement: throw $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {database/1575709631=([org.hibernate.boot.model.source.internal.hbm.ModelBinder], org.hibernate.boot.model.relational.Database), determineCatalogName/-707242197=([org.hibernate.boot.model.source.internal.hbm.ModelBinder, org.hibernate.boot.model.source.spi.TableSpecificationSource], org.hibernate.boot.model.naming.Identifier), determineSchemaName/50600339=([org.hibernate.boot.model.source.internal.hbm.ModelBinder, org.hibernate.boot.model.source.spi.TableSpecificationSource], org.hibernate.boot.model.naming.Identifier), locateNamespace/650936008=([org.hibernate.boot.model.relational.Database, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier], org.hibernate.boot.model.relational.Namespace), isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var1064-to-var858=([org.hibernate.boot.model.source.spi.TableSpecificationSource], java.lang.Object), isAbstract/-698908000=([org.hibernate.mapping.PersistentClass], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), cast-from-var1064-to-var3938=([org.hibernate.boot.model.source.spi.TableSpecificationSource], org.hibernate.boot.model.source.spi.InLineViewSource), var3938_getSelectStatement/942743418=([org.hibernate.boot.model.source.spi.InLineViewSource], java.lang.String), var3938_getLogicalName/1202057593=([org.hibernate.boot.model.source.spi.InLineViewSource], java.lang.String), toIdentifier/-614655301=([org.hibernate.boot.model.relational.Database, java.lang.String], org.hibernate.boot.model.naming.Identifier), var820-init=([], org.hibernate.mapping.Table), <init>/-24210129=([org.hibernate.mapping.Table, org.hibernate.boot.model.relational.Namespace, java.lang.String, boolean], void), render/-241411902=([org.hibernate.boot.model.naming.Identifier], java.lang.String), setName/-276822577=([org.hibernate.mapping.Table, java.lang.String], void), var1924_getSuperType/823133162=([org.hibernate.boot.model.source.spi.IdentifiableTypeSource], org.hibernate.boot.model.source.spi.IdentifiableTypeSource), cast-from-var903-to-var1924=([org.hibernate.boot.model.source.spi.EntitySource], org.hibernate.boot.model.source.spi.IdentifiableTypeSource), cast-from-var1924-to-var903=([org.hibernate.boot.model.source.spi.IdentifiableTypeSource], org.hibernate.boot.model.source.spi.EntitySource), var2873_getEntityNamingSource/2070971324=([org.hibernate.boot.model.source.spi.EntityNamingSourceContributor], org.hibernate.boot.model.source.spi.EntityNamingSource), cast-from-var903-to-var2873=([org.hibernate.boot.model.source.spi.EntitySource], org.hibernate.boot.model.source.spi.EntityNamingSourceContributor), var2423_getEntityName/-119580260=([org.hibernate.boot.model.naming.EntityNaming], java.lang.String), cast-from-var2359-to-var2423=([org.hibernate.boot.model.source.spi.EntityNamingSource], org.hibernate.boot.model.naming.EntityNaming), getMetadataCollector/1898057277=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.spi.InFlightMetadataCollector), var1201_getEntityTableXref/2869976=([org.hibernate.boot.spi.InFlightMetadataCollector, java.lang.String], org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref), var1474-init=([], org.hibernate.boot.MappingException), arr-var858-init=([], java.lang.Object[]), getEntityName/-2043384209=([org.hibernate.mapping.PersistentClass], java.lang.String), cast-from-String-to-var858=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), getOrigin/1285793805=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.jaxb.Origin), <init>/235758574=([org.hibernate.boot.MappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var1474-to-var2475=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var2241=org.hibernate.boot.model.source.internal.hbm.ModelBinder, var1821=r0, var168=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var3619=r17, var1064=org.hibernate.boot.model.source.spi.TableSpecificationSource, var942=r1, var820=org.hibernate.mapping.Table, var1977=r13, var903=org.hibernate.boot.model.source.spi.EntitySource, var794=r16, var962=org.hibernate.mapping.PersistentClass, var639=r7, var1666=org.hibernate.boot.model.relational.Database, var3028=$r2, var255=org.hibernate.boot.model.naming.Identifier, var2901=$r4, var824=$r3, var3045=org.hibernate.boot.model.relational.Namespace, var405=r5, var2949=org.hibernate.boot.model.source.spi.TableSource, var629=$r6, var858=java.lang.Object, var1978=z0, var2814=java.lang.Boolean, var760=$r8, var3578=$r9, var1905=$z4, var3575=z1, var3938=org.hibernate.boot.model.source.spi.InLineViewSource, var2012=r44, var1244=r10, var1413=$r11, var2378=$r12, var1630=r42, var2207=$r52, var467=r43, var518=$r15, var2072=org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref, var28=r45, var1924=org.hibernate.boot.model.source.spi.IdentifiableTypeSource, var22=$r46, var1412=$r24, var2954=$r25, var2359=org.hibernate.boot.model.source.spi.EntityNamingSource, var2873=org.hibernate.boot.model.source.spi.EntityNamingSourceContributor, var3551=$r26, var2423=org.hibernate.boot.model.naming.EntityNaming, var2080=r47, var1201=org.hibernate.boot.spi.InFlightMetadataCollector, var1371=$r27, var1474=org.hibernate.boot.MappingException, var2063=$r54, var2524=java.util.Locale, var2749=$r30, var471=$r29, var51=$r31, var2198=$r33, var1000=org.hibernate.boot.jaxb.Origin, var3431=$r32, var2475=java.lang.Throwable, var1127=$r55}
; {org.hibernate.boot.model.source.internal.hbm.ModelBinder=var2241, r0=var1821, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var168, r17=var3619, org.hibernate.boot.model.source.spi.TableSpecificationSource=var1064, r1=var942, org.hibernate.mapping.Table=var820, r13=var1977, org.hibernate.boot.model.source.spi.EntitySource=var903, r16=var794, org.hibernate.mapping.PersistentClass=var962, r7=var639, org.hibernate.boot.model.relational.Database=var1666, $r2=var3028, org.hibernate.boot.model.naming.Identifier=var255, $r4=var2901, $r3=var824, org.hibernate.boot.model.relational.Namespace=var3045, r5=var405, org.hibernate.boot.model.source.spi.TableSource=var2949, $r6=var629, java.lang.Object=var858, z0=var1978, java.lang.Boolean=var2814, $r8=var760, $r9=var3578, $z4=var1905, z1=var3575, org.hibernate.boot.model.source.spi.InLineViewSource=var3938, r44=var2012, r10=var1244, $r11=var1413, $r12=var2378, r42=var1630, $r52=var2207, r43=var467, $r15=var518, org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref=var2072, r45=var28, org.hibernate.boot.model.source.spi.IdentifiableTypeSource=var1924, $r46=var22, $r24=var1412, $r25=var2954, org.hibernate.boot.model.source.spi.EntityNamingSource=var2359, org.hibernate.boot.model.source.spi.EntityNamingSourceContributor=var2873, $r26=var3551, org.hibernate.boot.model.naming.EntityNaming=var2423, r47=var2080, org.hibernate.boot.spi.InFlightMetadataCollector=var1201, $r27=var1371, org.hibernate.boot.MappingException=var1474, $r54=var2063, java.util.Locale=var2524, $r30=var2749, $r29=var471, $r31=var51, $r33=var2198, org.hibernate.boot.jaxb.Origin=var1000, $r32=var3431, java.lang.Throwable=var2475, $r55=var1127}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder;	r17 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r1 := @parameter1: org.hibernate.boot.model.source.spi.TableSpecificationSource;	r13 := @parameter2: org.hibernate.mapping.Table;	r16 := @parameter3: org.hibernate.boot.model.source.spi.EntitySource;	r7 := @parameter4: org.hibernate.mapping.PersistentClass;	$r2 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database>;	$r4 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineCatalogName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1);	$r3 = specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.naming.Identifier determineSchemaName(org.hibernate.boot.model.source.spi.TableSpecificationSource)>(r1);	r5 = virtualinvoke $r2.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.relational.Namespace locateNamespace(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>($r4, $r3);	$r6 = class "Lorg/hibernate/boot/model/source/spi/TableSource;";	z0 = virtualinvoke $r6.<java.lang.Class: boolean isInstance(java.lang.Object)>(r1);	$r8 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>();	if $r8 != null goto $r9 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>();	$r9 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.Boolean isAbstract()>();	$z4 = virtualinvoke $r9.<java.lang.Boolean: boolean booleanValue()>();	z1 = $z4;	if z0 == 0 goto r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1;	r44 = (org.hibernate.boot.model.source.spi.InLineViewSource) r1;	r10 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getSelectStatement()>();	$r11 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.relational.Database database>;	$r12 = interfaceinvoke r44.<org.hibernate.boot.model.source.spi.InLineViewSource: java.lang.String getLogicalName()>();	r42 = virtualinvoke $r11.<org.hibernate.boot.model.relational.Database: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r12);	if r13 != null goto $r53 = new org.hibernate.mapping.DenormalizedTable;	$r52 = new org.hibernate.mapping.Table;	specialinvoke $r52.<org.hibernate.mapping.Table: void <init>(org.hibernate.boot.model.relational.Namespace,java.lang.String,boolean)>(r5, r10, $z4);	r43 = $r52;	goto [?= $r15 = virtualinvoke r42.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>()];	$r15 = virtualinvoke r42.<org.hibernate.boot.model.naming.Identifier: java.lang.String render()>();	virtualinvoke r43.<org.hibernate.mapping.Table: void setName(java.lang.String)>($r15);	r45 = null;	$r46 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.IdentifiableTypeSource getSuperType()>();	if $r46 == null goto $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r24 = interfaceinvoke r16.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.IdentifiableTypeSource getSuperType()>();	$r25 = (org.hibernate.boot.model.source.spi.EntitySource) $r24;	$r26 = interfaceinvoke $r25.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.EntityNamingSource getEntityNamingSource()>();	r47 = interfaceinvoke $r26.<org.hibernate.boot.model.source.spi.EntityNamingSource: java.lang.String getEntityName()>();	$r27 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	r45 = interfaceinvoke $r27.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref getEntityTableXref(java.lang.String)>(r47);	if r45 != null goto $r20 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r54 = new org.hibernate.boot.MappingException;	$r30 = <java.util.Locale: java.util.Locale ENGLISH>;	$r29 = newarray (java.lang.Object)[2];	$r31 = virtualinvoke r7.<org.hibernate.mapping.PersistentClass: java.lang.String getEntityName()>();	$r29[0] = $r31;	$r29[1] = r47;	$r33 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r30, "Unable to locate entity table xref for entity [%s] super-type [%s]", $r29);	$r32 = virtualinvoke r17.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>();	specialinvoke $r54.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r33, $r32);	$r55 = (java.lang.Throwable) $r54;	throw $r55
;block_num 9