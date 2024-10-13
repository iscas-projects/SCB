(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3574 0)
(declare-sort var2167 0)
(declare-sort var173 0)
(declare-sort var2323 0)
(declare-sort var2168 0)
(declare-sort var2540 0)
(declare-sort var2446 0)
(declare-sort var2025 0)
(declare-sort var2455 0)
(declare-sort var1088 0)
(declare-sort var2033 0)
(declare-sort var646 0)
(declare-sort var2331 0)
(declare-sort var1884 0)
(declare-sort var906 0)
(declare-sort var847 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pluralAttributeSource/-717464970 (var3574) var2167)
(declare-fun var2167_getElementSource/-672304424 (var2167) var173)
(declare-fun cast-from-var173-to-var2323 (var173) var2323)
(declare-fun mappingDocument/-717464970 (var3574) var2168)
(declare-fun getMetadataCollector/1898057277 (var2168) var2540)
(declare-fun var2323_getReferencedEntityName/997038730 (var2323) String)
(declare-fun var2025_getEntityBinding/-1652541374 (var2025 String) var2446)
(declare-fun cast-from-var2540-to-var2025 (var2540) var2025)
(declare-fun var2455-init () var2455)
(declare-fun arr-var2033-init () (Array Int var2033))
(declare-fun var2331_getAttributeRole/-1958494126 (var2331) var646)
(declare-fun cast-from-var2167-to-var2331 (var2167) var2331)
(declare-fun getFullPath/-1971906419 (var1884) String)
(declare-fun cast-from-var646-to-var1884 (var646) var1884)
(declare-fun cast-from-String-to-var2033 (String) var2033)
(declare-fun String_format/-647569892 (var1088 String (Array Int var2033)) String)
(declare-fun getOrigin/1285793805 (var2168) var906)
(declare-fun <init>/235758574 (var2455 String var906) void)
(declare-fun cast-from-var2455-to-var847 (var2455) var847)
(declare-const null-var3574 var3574)
(declare-const null-var2446 var2446)
(declare-const var1088-ENGLISH var1088)
(declare-const null-__Array__Int__var2033__ (Array Int var2033))
(declare-const var392 var3574) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder$AbstractPluralAttributeSecondPass 
(assert (not (= var392 null-var3574)))
(define-const var329 var2167 (pluralAttributeSource/-717464970 var392)) ; Statement: $r1 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$AbstractPluralAttributeSecondPass: org.hibernate.boot.model.source.spi.PluralAttributeSource pluralAttributeSource> 
(define-const var259 var173 (var2167_getElementSource/-672304424 var329)) ; Statement: $r2 = interfaceinvoke $r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.PluralAttributeElementSource getElementSource()>() 
(define-const var1863 Bool true) ; Statement: $z0 = $r2 instanceof org.hibernate.boot.model.source.spi.PluralAttributeElementSourceOneToMany 
 ; Statement: if $z0 == 0 goto $r3 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$AbstractPluralAttributeSecondPass: org.hibernate.boot.model.source.spi.PluralAttributeSource pluralAttributeSource> 
(assert (not (= (ite var1863 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2904 var2167 (pluralAttributeSource/-717464970 var392)) ; Statement: $r51 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$AbstractPluralAttributeSecondPass: org.hibernate.boot.model.source.spi.PluralAttributeSource pluralAttributeSource> 
(define-const var2404 var173 (var2167_getElementSource/-672304424 var2904)) ; Statement: $r52 = interfaceinvoke $r51.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.PluralAttributeElementSource getElementSource()>() 
(define-const var3431 var2323 (cast-from-var173-to-var2323 var2404)) ; Statement: r70 = (org.hibernate.boot.model.source.spi.PluralAttributeElementSourceOneToMany) $r52 
(define-const var1181 var2168 (mappingDocument/-717464970 var392)) ; Statement: $r53 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$AbstractPluralAttributeSecondPass: org.hibernate.boot.model.source.internal.hbm.MappingDocument mappingDocument> 
(assert true)
(define-const var1420 var2540 (getMetadataCollector/1898057277 var1181)) ; Statement: $r55 = virtualinvoke $r53.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>() 
(define-const var3740 String (var2323_getReferencedEntityName/997038730 var3431)) ; Statement: $r54 = interfaceinvoke r70.<org.hibernate.boot.model.source.spi.PluralAttributeElementSourceOneToMany: java.lang.String getReferencedEntityName()>() 
(define-const var944 var2446 (var2025_getEntityBinding/-1652541374 (cast-from-var2540-to-var2025 var1420) var3740)) ; Statement: r71 = interfaceinvoke $r55.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.mapping.PersistentClass getEntityBinding(java.lang.String)>($r54) 
 ; Statement: if r71 != null goto $r56 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$AbstractPluralAttributeSecondPass: org.hibernate.mapping.Collection collectionBinding> 
(assert (not (not (= var944 null-var2446)))) ; Negate: Cond: r71 != null  
(define-const var2724 var2455 var2455-init) ; Statement: $r77 = new org.hibernate.boot.MappingException 
(define-const var829 var1088 var1088-ENGLISH) ; Statement: $r61 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var1505 (Array Int var2033) arr-var2033-init) ; Statement: $r59 = newarray (java.lang.Object)[2] 
(define-const var2550 var2167 (pluralAttributeSource/-717464970 var392)) ; Statement: $r60 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$AbstractPluralAttributeSecondPass: org.hibernate.boot.model.source.spi.PluralAttributeSource pluralAttributeSource> 
(define-const var1169 var646 (var2331_getAttributeRole/-1958494126 (cast-from-var2167-to-var2331 var2550))) ; Statement: $r62 = interfaceinvoke $r60.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRole()>() 
(assert true)
(define-const var789 String (getFullPath/-1971906419 (cast-from-var646-to-var1884 var1169))) ; Statement: $r63 = virtualinvoke $r62.<org.hibernate.boot.model.source.spi.AttributeRole: java.lang.String getFullPath()>() 
(declare-const var1505!1 (Array Int var2033))
(assert (not (= var1505!1 null-__Array__Int__var2033__)))
(assert (= (select var1505!1 0) (cast-from-String-to-var2033 var789))) ; Statement: $r59[0] = $r63 
(define-const var2507 var2167 (pluralAttributeSource/-717464970 var392)) ; Statement: $r64 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$AbstractPluralAttributeSecondPass: org.hibernate.boot.model.source.spi.PluralAttributeSource pluralAttributeSource> 
(define-const var837 var646 (var2331_getAttributeRole/-1958494126 (cast-from-var2167-to-var2331 var2507))) ; Statement: $r65 = interfaceinvoke $r64.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRole()>() 
(assert true)
(define-const var3340 String (getFullPath/-1971906419 (cast-from-var646-to-var1884 var837))) ; Statement: $r66 = virtualinvoke $r65.<org.hibernate.boot.model.source.spi.AttributeRole: java.lang.String getFullPath()>() 
(declare-const var1505!2 (Array Int var2033))
(assert (not (= var1505!2 null-__Array__Int__var2033__)))
(assert (= (select var1505!2 1) (cast-from-String-to-var2033 var3340))) ; Statement: $r59[1] = $r66 
(define-const var2595 String (String_format/-647569892 var829 "Association [%s] references an unmapped entity [%s]" var1505!2)) ; Statement: $r69 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r61, "Association [%s] references an unmapped entity [%s]", $r59) 
(define-const var3360 var2168 (mappingDocument/-717464970 var392)) ; Statement: $r67 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$AbstractPluralAttributeSecondPass: org.hibernate.boot.model.source.internal.hbm.MappingDocument mappingDocument> 
(assert true)
(define-const var3690 var906 (getOrigin/1285793805 var3360)) ; Statement: $r68 = virtualinvoke $r67.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>() 
(assert true)
;(assert (<init>/235758574 var2724 var2595 var3690)) ; Statement: specialinvoke $r77.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r69, $r68) 

(declare-const var2724!1 var2455)
(declare-const var2595!1 String)
(declare-const var3690!1 var906)
(define-const var2182 var847 (cast-from-var2455-to-var847 var2724!1)) ; Statement: $r81 = (java.lang.Throwable) $r77 
 ; Statement: throw $r81 
(check-sat)
(get-model)
(get-unsat-core)
; {pluralAttributeSource/-717464970=([org.hibernate.boot.model.source.internal.hbm.ModelBinder$AbstractPluralAttributeSecondPass], org.hibernate.boot.model.source.spi.PluralAttributeSource), var2167_getElementSource/-672304424=([org.hibernate.boot.model.source.spi.PluralAttributeSource], org.hibernate.boot.model.source.spi.PluralAttributeElementSource), cast-from-var173-to-var2323=([org.hibernate.boot.model.source.spi.PluralAttributeElementSource], org.hibernate.boot.model.source.spi.PluralAttributeElementSourceOneToMany), mappingDocument/-717464970=([org.hibernate.boot.model.source.internal.hbm.ModelBinder$AbstractPluralAttributeSecondPass], org.hibernate.boot.model.source.internal.hbm.MappingDocument), getMetadataCollector/1898057277=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.spi.InFlightMetadataCollector), var2323_getReferencedEntityName/997038730=([org.hibernate.boot.model.source.spi.PluralAttributeElementSourceOneToMany], java.lang.String), var2025_getEntityBinding/-1652541374=([org.hibernate.boot.Metadata, java.lang.String], org.hibernate.mapping.PersistentClass), cast-from-var2540-to-var2025=([org.hibernate.boot.spi.InFlightMetadataCollector], org.hibernate.boot.Metadata), var2455-init=([], org.hibernate.boot.MappingException), arr-var2033-init=([], java.lang.Object[]), var2331_getAttributeRole/-1958494126=([org.hibernate.boot.model.source.spi.AttributeSource], org.hibernate.boot.model.source.spi.AttributeRole), cast-from-var2167-to-var2331=([org.hibernate.boot.model.source.spi.PluralAttributeSource], org.hibernate.boot.model.source.spi.AttributeSource), getFullPath/-1971906419=([org.hibernate.boot.model.source.spi.AbstractAttributeKey], java.lang.String), cast-from-var646-to-var1884=([org.hibernate.boot.model.source.spi.AttributeRole], org.hibernate.boot.model.source.spi.AbstractAttributeKey), cast-from-String-to-var2033=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), getOrigin/1285793805=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.jaxb.Origin), <init>/235758574=([org.hibernate.boot.MappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var2455-to-var847=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var3574=org.hibernate.boot.model.source.internal.hbm.ModelBinder$AbstractPluralAttributeSecondPass, var392=r0, var2167=org.hibernate.boot.model.source.spi.PluralAttributeSource, var329=$r1, var173=org.hibernate.boot.model.source.spi.PluralAttributeElementSource, var259=$r2, var1863=$z0, var2904=$r51, var2404=$r52, var2323=org.hibernate.boot.model.source.spi.PluralAttributeElementSourceOneToMany, var3431=r70, var2168=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var1181=$r53, var2540=org.hibernate.boot.spi.InFlightMetadataCollector, var1420=$r55, var3740=$r54, var2446=org.hibernate.mapping.PersistentClass, var2025=org.hibernate.boot.Metadata, var944=r71, var2455=org.hibernate.boot.MappingException, var2724=$r77, var1088=java.util.Locale, var829=$r61, var2033=java.lang.Object, var1505=$r59, var2550=$r60, var646=org.hibernate.boot.model.source.spi.AttributeRole, var2331=org.hibernate.boot.model.source.spi.AttributeSource, var1169=$r62, var1884=org.hibernate.boot.model.source.spi.AbstractAttributeKey, var789=$r63, var2507=$r64, var837=$r65, var3340=$r66, var2595=$r69, var3360=$r67, var906=org.hibernate.boot.jaxb.Origin, var3690=$r68, var847=java.lang.Throwable, var2182=$r81}
; {org.hibernate.boot.model.source.internal.hbm.ModelBinder$AbstractPluralAttributeSecondPass=var3574, r0=var392, org.hibernate.boot.model.source.spi.PluralAttributeSource=var2167, $r1=var329, org.hibernate.boot.model.source.spi.PluralAttributeElementSource=var173, $r2=var259, $z0=var1863, $r51=var2904, $r52=var2404, org.hibernate.boot.model.source.spi.PluralAttributeElementSourceOneToMany=var2323, r70=var3431, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var2168, $r53=var1181, org.hibernate.boot.spi.InFlightMetadataCollector=var2540, $r55=var1420, $r54=var3740, org.hibernate.mapping.PersistentClass=var2446, org.hibernate.boot.Metadata=var2025, r71=var944, org.hibernate.boot.MappingException=var2455, $r77=var2724, java.util.Locale=var1088, $r61=var829, java.lang.Object=var2033, $r59=var1505, $r60=var2550, org.hibernate.boot.model.source.spi.AttributeRole=var646, org.hibernate.boot.model.source.spi.AttributeSource=var2331, $r62=var1169, org.hibernate.boot.model.source.spi.AbstractAttributeKey=var1884, $r63=var789, $r64=var2507, $r65=var837, $r66=var3340, $r69=var2595, $r67=var3360, org.hibernate.boot.jaxb.Origin=var906, $r68=var3690, java.lang.Throwable=var847, $r81=var2182}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder$AbstractPluralAttributeSecondPass;	$r1 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$AbstractPluralAttributeSecondPass: org.hibernate.boot.model.source.spi.PluralAttributeSource pluralAttributeSource>;	$r2 = interfaceinvoke $r1.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.PluralAttributeElementSource getElementSource()>();	$z0 = $r2 instanceof org.hibernate.boot.model.source.spi.PluralAttributeElementSourceOneToMany;	if $z0 == 0 goto $r3 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$AbstractPluralAttributeSecondPass: org.hibernate.boot.model.source.spi.PluralAttributeSource pluralAttributeSource>;	$r51 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$AbstractPluralAttributeSecondPass: org.hibernate.boot.model.source.spi.PluralAttributeSource pluralAttributeSource>;	$r52 = interfaceinvoke $r51.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.PluralAttributeElementSource getElementSource()>();	r70 = (org.hibernate.boot.model.source.spi.PluralAttributeElementSourceOneToMany) $r52;	$r53 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$AbstractPluralAttributeSecondPass: org.hibernate.boot.model.source.internal.hbm.MappingDocument mappingDocument>;	$r55 = virtualinvoke $r53.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.spi.InFlightMetadataCollector getMetadataCollector()>();	$r54 = interfaceinvoke r70.<org.hibernate.boot.model.source.spi.PluralAttributeElementSourceOneToMany: java.lang.String getReferencedEntityName()>();	r71 = interfaceinvoke $r55.<org.hibernate.boot.spi.InFlightMetadataCollector: org.hibernate.mapping.PersistentClass getEntityBinding(java.lang.String)>($r54);	if r71 != null goto $r56 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$AbstractPluralAttributeSecondPass: org.hibernate.mapping.Collection collectionBinding>;	$r77 = new org.hibernate.boot.MappingException;	$r61 = <java.util.Locale: java.util.Locale ENGLISH>;	$r59 = newarray (java.lang.Object)[2];	$r60 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$AbstractPluralAttributeSecondPass: org.hibernate.boot.model.source.spi.PluralAttributeSource pluralAttributeSource>;	$r62 = interfaceinvoke $r60.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRole()>();	$r63 = virtualinvoke $r62.<org.hibernate.boot.model.source.spi.AttributeRole: java.lang.String getFullPath()>();	$r59[0] = $r63;	$r64 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$AbstractPluralAttributeSecondPass: org.hibernate.boot.model.source.spi.PluralAttributeSource pluralAttributeSource>;	$r65 = interfaceinvoke $r64.<org.hibernate.boot.model.source.spi.PluralAttributeSource: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRole()>();	$r66 = virtualinvoke $r65.<org.hibernate.boot.model.source.spi.AttributeRole: java.lang.String getFullPath()>();	$r59[1] = $r66;	$r69 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r61, "Association [%s] references an unmapped entity [%s]", $r59);	$r67 = r0.<org.hibernate.boot.model.source.internal.hbm.ModelBinder$AbstractPluralAttributeSecondPass: org.hibernate.boot.model.source.internal.hbm.MappingDocument mappingDocument>;	$r68 = virtualinvoke $r67.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>();	specialinvoke $r77.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r69, $r68);	$r81 = (java.lang.Throwable) $r77;	throw $r81
;block_num 3