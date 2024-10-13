(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var424 0)
(declare-sort var3388 0)
(declare-sort var1901 0)
(declare-sort var2705 0)
(declare-sort var849 0)
(declare-sort var1632 0)
(declare-sort var1403 0)
(declare-sort var3791 0)
(declare-sort var3483 0)
(declare-sort var476 0)
(declare-sort var78 0)
(declare-sort var11 0)
(declare-sort var3181 0)
(declare-sort var2298 0)
(declare-sort var2492 0)
(declare-sort var2740 0)
(declare-sort var3769 0)
(declare-sort var3840 0)
(declare-sort var1890 0)
(declare-sort var1230 0)
(declare-sort var2127 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sourceMappingDocument/1507685790 (var849) var2705)
(declare-fun cast-from-var3388-to-var849 (var3388) var849)
(declare-fun bindBasicEntityValues/-1388392898 (var424 var2705 var1632 var1403) void)
(declare-fun cast-from-var3388-to-var1632 (var3388) var1632)
(declare-fun cast-from-var1901-to-var1403 (var1901) var1403)
(declare-fun getSuperType/-22531657 (var3388) var3791)
(declare-fun cast-from-var3791-to-var3483 (var3791) var3483)
(declare-fun var78_getEntityNamingSource/2070971324 (var78) var476)
(declare-fun cast-from-var3483-to-var78 (var3483) var78)
(declare-fun var11_getEntityName/-119580260 (var11) String)
(declare-fun cast-from-var476-to-var11 (var476) var11)
(declare-fun getLocalMetadataBuildingContext/-1680457715 (var1632) var3181)
(declare-fun var2492_getMetadataCollector/-129185252 (var2492) var2298)
(declare-fun cast-from-var3181-to-var2492 (var3181) var2492)
(declare-fun var2298_getEntityTableXref/2869976 (var2298 String) var2740)
(declare-fun var3769-init () var3769)
(declare-fun arr-var1890-init () (Array Int var1890))
(declare-fun getEntityName/-2043384209 (var1403) String)
(declare-fun cast-from-String-to-var1890 (String) var1890)
(declare-fun String_format/-647569892 (var3840 String (Array Int var1890)) String)
(declare-fun origin/-1264989136 (var849) var1230)
(declare-fun <init>/235758574 (var3769 String var1230) void)
(declare-fun cast-from-var3769-to-var2127 (var3769) var2127)
(declare-const null-var424 var424)
(declare-const null-var3388 var3388)
(declare-const null-var1901 var1901)
(declare-const null-var2740 var2740)
(declare-const var3840-ENGLISH var3840)
(declare-const null-__Array__Int__var1890__ (Array Int var1890))
(declare-const var3550 var424) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder 
(assert (not (= var3550 null-var424)))
(declare-const var1952 var3388) ; Statement: r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.SubclassEntitySourceImpl 
(assert (not (= var1952 null-var3388)))
(declare-const var23 var1901) ; Statement: r2 := @parameter1: org.hibernate.mapping.SingleTableSubclass 
(assert (not (= var23 null-var1901)))
(assert true)
(define-const var1961 var2705 (sourceMappingDocument/1507685790 (cast-from-var3388-to-var849 var1952))) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.boot.model.source.internal.hbm.SubclassEntitySourceImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument sourceMappingDocument()>() 
(assert true)
;(assert (bindBasicEntityValues/-1388392898 var3550 var1961 (cast-from-var3388-to-var1632 var1952) (cast-from-var1901-to-var1403 var23))) ; Statement: specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: void bindBasicEntityValues(org.hibernate.boot.model.source.internal.hbm.MappingDocument,org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl,org.hibernate.mapping.PersistentClass)>($r3, r1, r2) 

(declare-const var3550!1 var424)
(declare-const var1961!1 var2705)
(declare-const var1952!1 var3388)
(declare-const var23!1 var1901)
(assert true)
(define-const var808 var3791 (getSuperType/-22531657 var1952!1)) ; Statement: $r4 = virtualinvoke r1.<org.hibernate.boot.model.source.internal.hbm.SubclassEntitySourceImpl: org.hibernate.boot.model.source.spi.IdentifiableTypeSource getSuperType()>() 
(define-const var3375 var3483 (cast-from-var3791-to-var3483 var808)) ; Statement: $r5 = (org.hibernate.boot.model.source.spi.EntitySource) $r4 
(define-const var1220 var476 (var78_getEntityNamingSource/2070971324 (cast-from-var3483-to-var78 var3375))) ; Statement: $r6 = interfaceinvoke $r5.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.EntityNamingSource getEntityNamingSource()>() 
(define-const var480 String (var11_getEntityName/-119580260 (cast-from-var476-to-var11 var1220))) ; Statement: r7 = interfaceinvoke $r6.<org.hibernate.boot.model.source.spi.EntityNamingSource: java.lang.String getEntityName()>() 
(assert true)
(define-const var299 var3181 (getLocalMetadataBuildingContext/-1680457715 (cast-from-var3388-to-var1632 var1952!1))) ; Statement: $r8 = virtualinvoke r1.<org.hibernate.boot.model.source.internal.hbm.SubclassEntitySourceImpl: org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext getLocalMetadataBuildingContext()>() 
(define-const var2801 var2298 (var2492_getMetadataCollector/-129185252 (cast-from-var3181-to-var2492 var299))) ; Statement: $r9 = interfaceinvoke $r8.<org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(define-const var3040 var2740 (var2298_getEntityTableXref/2869976 var2801 var480)) ; Statement: r10 = interfaceinvoke $r9.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref getEntityTableXref(java.lang.String)>(r7) 
 ; Statement: if r10 != null goto $r11 = virtualinvoke r1.<org.hibernate.boot.model.source.internal.hbm.SubclassEntitySourceImpl: org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext getLocalMetadataBuildingContext()>() 
(assert (not (not (= var3040 null-var2740)))) ; Negate: Cond: r10 != null  
(define-const var2287 var3769 var3769-init) ; Statement: $r29 = new org.hibernate.boot.MappingException 
(define-const var1525 var3840 var3840-ENGLISH) ; Statement: $r25 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var1054 (Array Int var1890) arr-var1890-init) ; Statement: $r24 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var41 String (getEntityName/-2043384209 (cast-from-var1901-to-var1403 var23!1))) ; Statement: $r26 = virtualinvoke r2.<org.hibernate.mapping.SingleTableSubclass: java.lang.String getEntityName()>() 
(declare-const var1054!1 (Array Int var1890))
(assert (not (= var1054!1 null-__Array__Int__var1890__)))
(assert (= (select var1054!1 0) (cast-from-String-to-var1890 var41))) ; Statement: $r24[0] = $r26 
(declare-const var1054!2 (Array Int var1890))
(assert (not (= var1054!2 null-__Array__Int__var1890__)))
(assert (= (select var1054!2 1) (cast-from-String-to-var1890 var480))) ; Statement: $r24[1] = r7 
(define-const var3329 String (String_format/-647569892 var1525 "Unable to locate entity table xref for entity [%s] super-type [%s]" var1054!2)) ; Statement: $r28 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r25, "Unable to locate entity table xref for entity [%s] super-type [%s]", $r24) 
(assert true)
(define-const var616 var1230 (origin/-1264989136 (cast-from-var3388-to-var849 var1952!1))) ; Statement: $r27 = virtualinvoke r1.<org.hibernate.boot.model.source.internal.hbm.SubclassEntitySourceImpl: org.hibernate.boot.jaxb.Origin origin()>() 
(assert true)
;(assert (<init>/235758574 var2287 var3329 var616)) ; Statement: specialinvoke $r29.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r28, $r27) 

(declare-const var2287!1 var3769)
(declare-const var3329!1 String)
(declare-const var616!1 var1230)
(define-const var1591 var2127 (cast-from-var3769-to-var2127 var2287!1)) ; Statement: $r30 = (java.lang.Throwable) $r29 
 ; Statement: throw $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {sourceMappingDocument/1507685790=([org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode], org.hibernate.boot.model.source.internal.hbm.MappingDocument), cast-from-var3388-to-var849=([org.hibernate.boot.model.source.internal.hbm.SubclassEntitySourceImpl], org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode), bindBasicEntityValues/-1388392898=([org.hibernate.boot.model.source.internal.hbm.ModelBinder, org.hibernate.boot.model.source.internal.hbm.MappingDocument, org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl, org.hibernate.mapping.PersistentClass], void), cast-from-var3388-to-var1632=([org.hibernate.boot.model.source.internal.hbm.SubclassEntitySourceImpl], org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl), cast-from-var1901-to-var1403=([org.hibernate.mapping.SingleTableSubclass], org.hibernate.mapping.PersistentClass), getSuperType/-22531657=([org.hibernate.boot.model.source.internal.hbm.SubclassEntitySourceImpl], org.hibernate.boot.model.source.spi.IdentifiableTypeSource), cast-from-var3791-to-var3483=([org.hibernate.boot.model.source.spi.IdentifiableTypeSource], org.hibernate.boot.model.source.spi.EntitySource), var78_getEntityNamingSource/2070971324=([org.hibernate.boot.model.source.spi.EntityNamingSourceContributor], org.hibernate.boot.model.source.spi.EntityNamingSource), cast-from-var3483-to-var78=([org.hibernate.boot.model.source.spi.EntitySource], org.hibernate.boot.model.source.spi.EntityNamingSourceContributor), var11_getEntityName/-119580260=([org.hibernate.boot.model.naming.EntityNaming], java.lang.String), cast-from-var476-to-var11=([org.hibernate.boot.model.source.spi.EntityNamingSource], org.hibernate.boot.model.naming.EntityNaming), getLocalMetadataBuildingContext/-1680457715=([org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl], org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext), var2492_getMetadataCollector/-129185252=([org.hibernate.boot.spi.MetadataBuildingContext], org.hibernate.boot.spi.InFlightMetadataCollector), cast-from-var3181-to-var2492=([org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext], org.hibernate.boot.spi.MetadataBuildingContext), var2298_getEntityTableXref/2869976=([org.hibernate.boot.spi.InFlightMetadataCollector, java.lang.String], org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref), var3769-init=([], org.hibernate.boot.MappingException), arr-var1890-init=([], java.lang.Object[]), getEntityName/-2043384209=([org.hibernate.mapping.PersistentClass], java.lang.String), cast-from-String-to-var1890=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), origin/-1264989136=([org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode], org.hibernate.boot.jaxb.Origin), <init>/235758574=([org.hibernate.boot.MappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var3769-to-var2127=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var424=org.hibernate.boot.model.source.internal.hbm.ModelBinder, var3550=r0, var3388=org.hibernate.boot.model.source.internal.hbm.SubclassEntitySourceImpl, var1952=r1, var1901=org.hibernate.mapping.SingleTableSubclass, var23=r2, var2705=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var849=org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode, var1961=$r3, var1632=org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl, var1403=org.hibernate.mapping.PersistentClass, var3791=org.hibernate.boot.model.source.spi.IdentifiableTypeSource, var808=$r4, var3483=org.hibernate.boot.model.source.spi.EntitySource, var3375=$r5, var476=org.hibernate.boot.model.source.spi.EntityNamingSource, var78=org.hibernate.boot.model.source.spi.EntityNamingSourceContributor, var1220=$r6, var11=org.hibernate.boot.model.naming.EntityNaming, var480=r7, var3181=org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext, var299=$r8, var2298=org.hibernate.boot.spi.InFlightMetadataCollector, var2492=org.hibernate.boot.spi.MetadataBuildingContext, var2801=$r9, var2740=org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref, var3040=r10, var3769=org.hibernate.boot.MappingException, var2287=$r29, var3840=java.util.Locale, var1525=$r25, var1890=java.lang.Object, var1054=$r24, var41=$r26, var3329=$r28, var1230=org.hibernate.boot.jaxb.Origin, var616=$r27, var2127=java.lang.Throwable, var1591=$r30}
; {org.hibernate.boot.model.source.internal.hbm.ModelBinder=var424, r0=var3550, org.hibernate.boot.model.source.internal.hbm.SubclassEntitySourceImpl=var3388, r1=var1952, org.hibernate.mapping.SingleTableSubclass=var1901, r2=var23, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var2705, org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode=var849, $r3=var1961, org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl=var1632, org.hibernate.mapping.PersistentClass=var1403, org.hibernate.boot.model.source.spi.IdentifiableTypeSource=var3791, $r4=var808, org.hibernate.boot.model.source.spi.EntitySource=var3483, $r5=var3375, org.hibernate.boot.model.source.spi.EntityNamingSource=var476, org.hibernate.boot.model.source.spi.EntityNamingSourceContributor=var78, $r6=var1220, org.hibernate.boot.model.naming.EntityNaming=var11, r7=var480, org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext=var3181, $r8=var299, org.hibernate.boot.spi.InFlightMetadataCollector=var2298, org.hibernate.boot.spi.MetadataBuildingContext=var2492, $r9=var2801, org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref=var2740, r10=var3040, org.hibernate.boot.MappingException=var3769, $r29=var2287, java.util.Locale=var3840, $r25=var1525, java.lang.Object=var1890, $r24=var1054, $r26=var41, $r28=var3329, org.hibernate.boot.jaxb.Origin=var1230, $r27=var616, java.lang.Throwable=var2127, $r30=var1591}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder;	r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.SubclassEntitySourceImpl;	r2 := @parameter1: org.hibernate.mapping.SingleTableSubclass;	$r3 = virtualinvoke r1.<org.hibernate.boot.model.source.internal.hbm.SubclassEntitySourceImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument sourceMappingDocument()>();	specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: void bindBasicEntityValues(org.hibernate.boot.model.source.internal.hbm.MappingDocument,org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl,org.hibernate.mapping.PersistentClass)>($r3, r1, r2);	$r4 = virtualinvoke r1.<org.hibernate.boot.model.source.internal.hbm.SubclassEntitySourceImpl: org.hibernate.boot.model.source.spi.IdentifiableTypeSource getSuperType()>();	$r5 = (org.hibernate.boot.model.source.spi.EntitySource) $r4;	$r6 = interfaceinvoke $r5.<org.hibernate.boot.model.source.spi.EntitySource: org.hibernate.boot.model.source.spi.EntityNamingSource getEntityNamingSource()>();	r7 = interfaceinvoke $r6.<org.hibernate.boot.model.source.spi.EntityNamingSource: java.lang.String getEntityName()>();	$r8 = virtualinvoke r1.<org.hibernate.boot.model.source.internal.hbm.SubclassEntitySourceImpl: org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext getLocalMetadataBuildingContext()>();	$r9 = interfaceinvoke $r8.<org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	r10 = interfaceinvoke $r9.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.boot.spi.InFlightMetadataCollector$EntityTableXref getEntityTableXref(java.lang.String)>(r7);	if r10 != null goto $r11 = virtualinvoke r1.<org.hibernate.boot.model.source.internal.hbm.SubclassEntitySourceImpl: org.hibernate.boot.model.source.spi.LocalMetadataBuildingContext getLocalMetadataBuildingContext()>();	$r29 = new org.hibernate.boot.MappingException;	$r25 = <java.util.Locale: java.util.Locale ENGLISH>;	$r24 = newarray (java.lang.Object)[2];	$r26 = virtualinvoke r2.<org.hibernate.mapping.SingleTableSubclass: java.lang.String getEntityName()>();	$r24[0] = $r26;	$r24[1] = r7;	$r28 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r25, "Unable to locate entity table xref for entity [%s] super-type [%s]", $r24);	$r27 = virtualinvoke r1.<org.hibernate.boot.model.source.internal.hbm.SubclassEntitySourceImpl: org.hibernate.boot.jaxb.Origin origin()>();	specialinvoke $r29.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r28, $r27);	$r30 = (java.lang.Throwable) $r29;	throw $r30
;block_num 2