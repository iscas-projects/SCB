(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1130 0)
(declare-sort var3439 0)
(declare-sort var2452 0)
(declare-sort var3807 0)
(declare-sort var2766 0)
(declare-sort var2248 0)
(declare-sort var3909 0)
(declare-sort var3055 0)
(declare-sort var2677 0)
(declare-sort var216 0)
(declare-sort var842 0)
(declare-sort var3498 0)
(declare-sort var807 0)
(declare-sort var1968 0)
(declare-sort var3827 0)
(declare-sort var2044 0)
(declare-sort var1731 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2452_getIndexSource/128323349 (var2452) var2766)
(declare-fun cast-from-var2766-to-var2248 (var2766) var2248)
(declare-fun var3909-init () var3909)
(declare-fun getCollectionTable/510724581 (var2677) var3055)
(declare-fun cast-from-var3807-to-var2677 (var3807) var2677)
(declare-fun <init>/429284018 (var3909 var216 var3055) void)
(declare-fun cast-from-var3439-to-var216 (var3439) var216)
(declare-fun var2766_getTypeInformation/1303097949 (var2766) var842)
(declare-fun cast-from-var2248-to-var2766 (var2248) var2766)
(declare-fun var1130_bindSimpleValueType/-1268747953 (var3439 var842 var3909) void)
(declare-fun isTypeSpecified/1297486380 (var3909) Bool)
(declare-fun var3498-init () var3498)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1968_getAttributeRole/-1958494126 (var1968) var807)
(declare-fun cast-from-var2452-to-var1968 (var2452) var1968)
(declare-fun getFullPath/-1971906419 (var3827) String)
(declare-fun cast-from-var807-to-var3827 (var807) var3827)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getOrigin/1285793805 (var3439) var2044)
(declare-fun <init>/235758574 (var3498 String var2044) void)
(declare-fun cast-from-var3498-to-var1731 (var3498) var1731)
(declare-const null-var1130 var1130)
(declare-const null-var3439 var3439)
(declare-const null-var2452 var2452)
(declare-const null-var3807 var3807)
(declare-const var1324 var1130) ; Statement: r10 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder 
(assert (not (= var1324 null-var1130)))
(declare-const var2758 var3439) ; Statement: r7 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var2758 null-var3439)))
(declare-const var44 var2452) ; Statement: r0 := @parameter1: org.hibernate.boot.model.source.internal.hbm.IndexedPluralAttributeSource 
(assert (not (= var44 null-var2452)))
(declare-const var1527 var3807) ; Statement: r8 := @parameter2: org.hibernate.mapping.Map 
(assert (not (= var1527 null-var3807)))
(define-const var1927 var2766 (var2452_getIndexSource/128323349 var44)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.boot.model.source.internal.hbm.IndexedPluralAttributeSource: org.hibernate.boot.model.source.spi.PluralAttributeIndexSource getIndexSource()>() 
(define-const var2179 Bool true) ; Statement: $z0 = $r1 instanceof org.hibernate.boot.model.source.spi.PluralAttributeMapKeySourceBasic 
 ; Statement: if $z0 == 0 goto $r2 = interfaceinvoke r0.<org.hibernate.boot.model.source.internal.hbm.IndexedPluralAttributeSource: org.hibernate.boot.model.source.spi.PluralAttributeIndexSource getIndexSource()>() 
(assert (not (= (ite var2179 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2053 var2766 (var2452_getIndexSource/128323349 var44)) ; Statement: $r27 = interfaceinvoke r0.<org.hibernate.boot.model.source.internal.hbm.IndexedPluralAttributeSource: org.hibernate.boot.model.source.spi.PluralAttributeIndexSource getIndexSource()>() 
(define-const var3037 var2248 (cast-from-var2766-to-var2248 var2053)) ; Statement: r42 = (org.hibernate.boot.model.source.spi.PluralAttributeMapKeySourceBasic) $r27 
(define-const var1918 var3909 var3909-init) ; Statement: $r46 = new org.hibernate.mapping.SimpleValue 
(assert true)
(define-const var1390 var3055 (getCollectionTable/510724581 (cast-from-var3807-to-var2677 var1527))) ; Statement: $r29 = virtualinvoke r8.<org.hibernate.mapping.Map: org.hibernate.mapping.Table getCollectionTable()>() 
(assert true)
;(assert (<init>/429284018 var1918 (cast-from-var3439-to-var216 var2758) var1390)) ; Statement: specialinvoke $r46.<org.hibernate.mapping.SimpleValue: void <init>(org.hibernate.boot.spi.MetadataBuildingContext,org.hibernate.mapping.Table)>(r7, $r29) 

(declare-const var1918!1 var3909)
(declare-const var2758!1 var3439)
(declare-const var1390!1 var3055)
(define-const var1373 var842 (var2766_getTypeInformation/1303097949 (cast-from-var2248-to-var2766 var3037))) ; Statement: $r30 = interfaceinvoke r42.<org.hibernate.boot.model.source.spi.PluralAttributeMapKeySourceBasic: org.hibernate.boot.model.source.spi.HibernateTypeSource getTypeInformation()>() 
;(assert (var1130_bindSimpleValueType/-1268747953 var2758!1 var1373 var1918!1)) ; Statement: staticinvoke <org.hibernate.boot.model.source.internal.hbm.ModelBinder: void bindSimpleValueType(org.hibernate.boot.model.source.internal.hbm.MappingDocument,org.hibernate.boot.model.source.spi.HibernateTypeSource,org.hibernate.mapping.SimpleValue)>(r7, $r30, $r46) 

(declare-const var2758!2 var3439)
(declare-const var1373!1 var842)
(declare-const var1918!2 var3909)
(assert true)
(define-const var3028 Bool (isTypeSpecified/1297486380 var1918!2)) ; Statement: $z4 = virtualinvoke $r46.<org.hibernate.mapping.SimpleValue: boolean isTypeSpecified()>() 
 ; Statement: if $z4 != 0 goto $r31 = r10.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.source.internal.hbm.RelationalObjectBinder relationalObjectBinder> 
(assert (not (not (= (ite var3028 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var1910 var3498 var3498-init) ; Statement: $r48 = new org.hibernate.boot.MappingException 
(define-const var432 String String-init) ; Statement: $r47 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var432)) ; Statement: specialinvoke $r47.<java.lang.StringBuilder: void <init>()>() 
(declare-const var432!1 String)
(assert (= var432!1 ""))
(assert true)
(define-const var2388 String (append/672562846 var432!1 "map index element must specify a type: ")) ; Statement: $r38 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("map index element must specify a type: ") 
(declare-const var432!2 String)
(assert (= var432!2 (str.++ var432!1 "map index element must specify a type: ")))
(define-const var3537 var807 (var1968_getAttributeRole/-1958494126 (cast-from-var2452-to-var1968 var44))) ; Statement: $r36 = interfaceinvoke r0.<org.hibernate.boot.model.source.internal.hbm.IndexedPluralAttributeSource: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRole()>() 
(assert true)
(define-const var3234 String (getFullPath/-1971906419 (cast-from-var807-to-var3827 var3537))) ; Statement: $r37 = virtualinvoke $r36.<org.hibernate.boot.model.source.spi.AttributeRole: java.lang.String getFullPath()>() 
(assert true)
(define-const var482 String (append/672562846 var2388 var3234)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r37) 
(declare-const var2388!1 String)
(assert (= var2388!1 (str.++ var2388 var3234)))
(assert true)
(define-const var1254 String (toString/-2075883882 var482)) ; Statement: $r41 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1358 var2044 (getOrigin/1285793805 var2758!2)) ; Statement: $r40 = virtualinvoke r7.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>() 
(assert true)
;(assert (<init>/235758574 var1910 var1254 var1358)) ; Statement: specialinvoke $r48.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r41, $r40) 

(declare-const var1910!1 var3498)
(declare-const var1254!1 String)
(declare-const var1358!1 var2044)
(define-const var3870 var1731 (cast-from-var3498-to-var1731 var1910!1)) ; Statement: $r54 = (java.lang.Throwable) $r48 
 ; Statement: throw $r54 
(check-sat)
(get-model)
(get-unsat-core)
; {var2452_getIndexSource/128323349=([org.hibernate.boot.model.source.internal.hbm.IndexedPluralAttributeSource], org.hibernate.boot.model.source.spi.PluralAttributeIndexSource), cast-from-var2766-to-var2248=([org.hibernate.boot.model.source.spi.PluralAttributeIndexSource], org.hibernate.boot.model.source.spi.PluralAttributeMapKeySourceBasic), var3909-init=([], org.hibernate.mapping.SimpleValue), getCollectionTable/510724581=([org.hibernate.mapping.Collection], org.hibernate.mapping.Table), cast-from-var3807-to-var2677=([org.hibernate.mapping.Map], org.hibernate.mapping.Collection), <init>/429284018=([org.hibernate.mapping.SimpleValue, org.hibernate.boot.spi.MetadataBuildingContext, org.hibernate.mapping.Table], void), cast-from-var3439-to-var216=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.spi.MetadataBuildingContext), var2766_getTypeInformation/1303097949=([org.hibernate.boot.model.source.spi.PluralAttributeIndexSource], org.hibernate.boot.model.source.spi.HibernateTypeSource), cast-from-var2248-to-var2766=([org.hibernate.boot.model.source.spi.PluralAttributeMapKeySourceBasic], org.hibernate.boot.model.source.spi.PluralAttributeIndexSource), var1130_bindSimpleValueType/-1268747953=([org.hibernate.boot.model.source.internal.hbm.MappingDocument, org.hibernate.boot.model.source.spi.HibernateTypeSource, org.hibernate.mapping.SimpleValue], void), isTypeSpecified/1297486380=([org.hibernate.mapping.SimpleValue], boolean), var3498-init=([], org.hibernate.boot.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1968_getAttributeRole/-1958494126=([org.hibernate.boot.model.source.spi.AttributeSource], org.hibernate.boot.model.source.spi.AttributeRole), cast-from-var2452-to-var1968=([org.hibernate.boot.model.source.internal.hbm.IndexedPluralAttributeSource], org.hibernate.boot.model.source.spi.AttributeSource), getFullPath/-1971906419=([org.hibernate.boot.model.source.spi.AbstractAttributeKey], java.lang.String), cast-from-var807-to-var3827=([org.hibernate.boot.model.source.spi.AttributeRole], org.hibernate.boot.model.source.spi.AbstractAttributeKey), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getOrigin/1285793805=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.jaxb.Origin), <init>/235758574=([org.hibernate.boot.MappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var3498-to-var1731=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var1130=org.hibernate.boot.model.source.internal.hbm.ModelBinder, var1324=r10, var3439=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var2758=r7, var2452=org.hibernate.boot.model.source.internal.hbm.IndexedPluralAttributeSource, var44=r0, var3807=org.hibernate.mapping.Map, var1527=r8, var2766=org.hibernate.boot.model.source.spi.PluralAttributeIndexSource, var1927=$r1, var2179=$z0, var2053=$r27, var2248=org.hibernate.boot.model.source.spi.PluralAttributeMapKeySourceBasic, var3037=r42, var3909=org.hibernate.mapping.SimpleValue, var1918=$r46, var3055=org.hibernate.mapping.Table, var2677=org.hibernate.mapping.Collection, var1390=$r29, var216=org.hibernate.boot.spi.MetadataBuildingContext, var842=org.hibernate.boot.model.source.spi.HibernateTypeSource, var1373=$r30, var3028=$z4, var3498=org.hibernate.boot.MappingException, var1910=$r48, var432=$r47, var2388=$r38, var807=org.hibernate.boot.model.source.spi.AttributeRole, var1968=org.hibernate.boot.model.source.spi.AttributeSource, var3537=$r36, var3827=org.hibernate.boot.model.source.spi.AbstractAttributeKey, var3234=$r37, var482=$r39, var1254=$r41, var2044=org.hibernate.boot.jaxb.Origin, var1358=$r40, var1731=java.lang.Throwable, var3870=$r54}
; {org.hibernate.boot.model.source.internal.hbm.ModelBinder=var1130, r10=var1324, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var3439, r7=var2758, org.hibernate.boot.model.source.internal.hbm.IndexedPluralAttributeSource=var2452, r0=var44, org.hibernate.mapping.Map=var3807, r8=var1527, org.hibernate.boot.model.source.spi.PluralAttributeIndexSource=var2766, $r1=var1927, $z0=var2179, $r27=var2053, org.hibernate.boot.model.source.spi.PluralAttributeMapKeySourceBasic=var2248, r42=var3037, org.hibernate.mapping.SimpleValue=var3909, $r46=var1918, org.hibernate.mapping.Table=var3055, org.hibernate.mapping.Collection=var2677, $r29=var1390, org.hibernate.boot.spi.MetadataBuildingContext=var216, org.hibernate.boot.model.source.spi.HibernateTypeSource=var842, $r30=var1373, $z4=var3028, org.hibernate.boot.MappingException=var3498, $r48=var1910, $r47=var432, $r38=var2388, org.hibernate.boot.model.source.spi.AttributeRole=var807, org.hibernate.boot.model.source.spi.AttributeSource=var1968, $r36=var3537, org.hibernate.boot.model.source.spi.AbstractAttributeKey=var3827, $r37=var3234, $r39=var482, $r41=var1254, org.hibernate.boot.jaxb.Origin=var2044, $r40=var1358, java.lang.Throwable=var1731, $r54=var3870}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder;	r7 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r0 := @parameter1: org.hibernate.boot.model.source.internal.hbm.IndexedPluralAttributeSource;	r8 := @parameter2: org.hibernate.mapping.Map;	$r1 = interfaceinvoke r0.<org.hibernate.boot.model.source.internal.hbm.IndexedPluralAttributeSource: org.hibernate.boot.model.source.spi.PluralAttributeIndexSource getIndexSource()>();	$z0 = $r1 instanceof org.hibernate.boot.model.source.spi.PluralAttributeMapKeySourceBasic;	if $z0 == 0 goto $r2 = interfaceinvoke r0.<org.hibernate.boot.model.source.internal.hbm.IndexedPluralAttributeSource: org.hibernate.boot.model.source.spi.PluralAttributeIndexSource getIndexSource()>();	$r27 = interfaceinvoke r0.<org.hibernate.boot.model.source.internal.hbm.IndexedPluralAttributeSource: org.hibernate.boot.model.source.spi.PluralAttributeIndexSource getIndexSource()>();	r42 = (org.hibernate.boot.model.source.spi.PluralAttributeMapKeySourceBasic) $r27;	$r46 = new org.hibernate.mapping.SimpleValue;	$r29 = virtualinvoke r8.<org.hibernate.mapping.Map: org.hibernate.mapping.Table getCollectionTable()>();	specialinvoke $r46.<org.hibernate.mapping.SimpleValue: void <init>(org.hibernate.boot.spi.MetadataBuildingContext,org.hibernate.mapping.Table)>(r7, $r29);	$r30 = interfaceinvoke r42.<org.hibernate.boot.model.source.spi.PluralAttributeMapKeySourceBasic: org.hibernate.boot.model.source.spi.HibernateTypeSource getTypeInformation()>();	staticinvoke <org.hibernate.boot.model.source.internal.hbm.ModelBinder: void bindSimpleValueType(org.hibernate.boot.model.source.internal.hbm.MappingDocument,org.hibernate.boot.model.source.spi.HibernateTypeSource,org.hibernate.mapping.SimpleValue)>(r7, $r30, $r46);	$z4 = virtualinvoke $r46.<org.hibernate.mapping.SimpleValue: boolean isTypeSpecified()>();	if $z4 != 0 goto $r31 = r10.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.source.internal.hbm.RelationalObjectBinder relationalObjectBinder>;	$r48 = new org.hibernate.boot.MappingException;	$r47 = new java.lang.StringBuilder;	specialinvoke $r47.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("map index element must specify a type: ");	$r36 = interfaceinvoke r0.<org.hibernate.boot.model.source.internal.hbm.IndexedPluralAttributeSource: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRole()>();	$r37 = virtualinvoke $r36.<org.hibernate.boot.model.source.spi.AttributeRole: java.lang.String getFullPath()>();	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r37);	$r41 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	$r40 = virtualinvoke r7.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>();	specialinvoke $r48.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r41, $r40);	$r54 = (java.lang.Throwable) $r48;	throw $r54
;block_num 3