(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var249 0)
(declare-sort var3427 0)
(declare-sort var3109 0)
(declare-sort var3646 0)
(declare-sort var2338 0)
(declare-sort var1305 0)
(declare-sort var346 0)
(declare-sort var237 0)
(declare-sort var1970 0)
(declare-sort var1134 0)
(declare-sort var2715 0)
(declare-sort var364 0)
(declare-sort var2001 0)
(declare-sort var496 0)
(declare-sort var1691 0)
(declare-sort var2671 0)
(declare-sort var742 0)
(declare-sort var331 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIdentifierSource/596288874 (var3109) var2338)
(declare-fun cast-from-var2338-to-var1305 (var2338) var1305)
(declare-fun var346-init () var346)
(declare-fun getTable/-1199596141 (var3646) var237)
(declare-fun <init>/429284018 (var346 var1970 var237) void)
(declare-fun cast-from-var3427-to-var1970 (var3427) var1970)
(declare-fun setIdentifier/-1590323556 (var3646 var1134) void)
(declare-fun cast-from-var346-to-var1134 (var346) var1134)
(declare-fun var1305_getIdentifierAttributeSource/1320990457 (var1305) var2715)
(declare-fun var2001_getTypeInformation/-1023980057 (var2001) var364)
(declare-fun cast-from-var2715-to-var2001 (var2715) var2001)
(declare-fun var249_bindSimpleValueType/-1268747953 (var3427 var364 var346) void)
(declare-fun var2001_getName/-1165876496 (var2001) String)
(declare-fun isTypeSpecified/1297486380 (var346) Bool)
(declare-fun var1691-init () var1691)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getEntityName/-2043384209 (var2671) String)
(declare-fun cast-from-var3646-to-var2671 (var3646) var2671)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getOrigin/1285793805 (var3427) var742)
(declare-fun <init>/235758574 (var1691 String var742) void)
(declare-fun cast-from-var1691-to-var331 (var1691) var331)
(declare-const null-var249 var249)
(declare-const null-var3427 var3427)
(declare-const null-var3109 var3109)
(declare-const null-var3646 var3646)
(declare-const null-String String)
(declare-const var3068 var249) ; Statement: r11 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder 
(assert (not (= var3068 null-var249)))
(declare-const var1510 var3427) ; Statement: r4 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var1510 null-var3427)))
(declare-const var1169 var3109) ; Statement: r0 := @parameter1: org.hibernate.boot.model.source.internal.hbm.EntityHierarchySourceImpl 
(assert (not (= var1169 null-var3109)))
(declare-const var1870 var3646) ; Statement: r5 := @parameter2: org.hibernate.mapping.RootClass 
(assert (not (= var1870 null-var3646)))
(assert true)
(define-const var2169 var2338 (getIdentifierSource/596288874 var1169)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.EntityHierarchySourceImpl: org.hibernate.boot.model.source.spi.IdentifierSource getIdentifierSource()>() 
(define-const var1703 var1305 (cast-from-var2338-to-var1305 var2169)) ; Statement: r2 = (org.hibernate.boot.model.source.spi.IdentifierSourceSimple) $r1 
(define-const var1284 var346 var346-init) ; Statement: $r29 = new org.hibernate.mapping.SimpleValue 
(assert true)
(define-const var1807 var237 (getTable/-1199596141 var1870)) ; Statement: $r6 = virtualinvoke r5.<org.hibernate.mapping.RootClass: org.hibernate.mapping.Table getTable()>() 
(assert true)
;(assert (<init>/429284018 var1284 (cast-from-var3427-to-var1970 var1510) var1807)) ; Statement: specialinvoke $r29.<org.hibernate.mapping.SimpleValue: void <init>(org.hibernate.boot.spi.MetadataBuildingContext,org.hibernate.mapping.Table)>(r4, $r6) 

(declare-const var1284!1 var346)
(declare-const var1510!1 var3427)
(declare-const var1807!1 var237)
(assert true)
;(assert (setIdentifier/-1590323556 var1870 (cast-from-var346-to-var1134 var1284!1))) ; Statement: virtualinvoke r5.<org.hibernate.mapping.RootClass: void setIdentifier(org.hibernate.mapping.KeyValue)>($r29) 

(declare-const var1870!1 var3646)
(declare-const var1284!2 var346)
(define-const var3834 var2715 (var1305_getIdentifierAttributeSource/1320990457 var1703)) ; Statement: $r7 = interfaceinvoke r2.<org.hibernate.boot.model.source.spi.IdentifierSourceSimple: org.hibernate.boot.model.source.spi.SingularAttributeSource getIdentifierAttributeSource()>() 
(define-const var1490 var364 (var2001_getTypeInformation/-1023980057 (cast-from-var2715-to-var2001 var3834))) ; Statement: $r8 = interfaceinvoke $r7.<org.hibernate.boot.model.source.spi.SingularAttributeSource: org.hibernate.boot.model.source.spi.HibernateTypeSource getTypeInformation()>() 
;(assert (var249_bindSimpleValueType/-1268747953 var1510!1 var1490 var1284!2)) ; Statement: staticinvoke <org.hibernate.boot.model.source.internal.hbm.ModelBinder: void bindSimpleValueType(org.hibernate.boot.model.source.internal.hbm.MappingDocument,org.hibernate.boot.model.source.spi.HibernateTypeSource,org.hibernate.mapping.SimpleValue)>(r4, $r8, $r29) 

(declare-const var1510!2 var3427)
(declare-const var1490!1 var364)
(declare-const var1284!3 var346)
(define-const var741 var2715 (var1305_getIdentifierAttributeSource/1320990457 var1703)) ; Statement: $r9 = interfaceinvoke r2.<org.hibernate.boot.model.source.spi.IdentifierSourceSimple: org.hibernate.boot.model.source.spi.SingularAttributeSource getIdentifierAttributeSource()>() 
(define-const var3080 String (var2001_getName/-1165876496 (cast-from-var2715-to-var2001 var741))) ; Statement: r10 = interfaceinvoke $r9.<org.hibernate.boot.model.source.spi.SingularAttributeSource: java.lang.String getName()>() 
 ; Statement: if r10 == null goto $z0 = virtualinvoke $r29.<org.hibernate.mapping.SimpleValue: boolean isTypeSpecified()>() 
(assert (= var3080 null-String)) ; Cond: r10 == null 
(assert true)
(define-const var676 Bool (isTypeSpecified/1297486380 var1284!3)) ; Statement: $z0 = virtualinvoke $r29.<org.hibernate.mapping.SimpleValue: boolean isTypeSpecified()>() 
 ; Statement: if $z0 != 0 goto $r12 = r11.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.source.internal.hbm.RelationalObjectBinder relationalObjectBinder> 
(assert (not (not (= (ite var676 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1431 var1691 var1691-init) ; Statement: $r31 = new org.hibernate.boot.MappingException 
(define-const var1519 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1519)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1519!1 String)
(assert (= var1519!1 ""))
(assert true)
(define-const var2306 String (append/672562846 var1519!1 "must specify an identifier type: ")) ; Statement: $r24 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("must specify an identifier type: ") 
(declare-const var1519!2 String)
(assert (= var1519!2 (str.++ var1519!1 "must specify an identifier type: ")))
(assert true)
(define-const var226 String (getEntityName/-2043384209 (cast-from-var3646-to-var2671 var1870!1))) ; Statement: $r23 = virtualinvoke r5.<org.hibernate.mapping.RootClass: java.lang.String getEntityName()>() 
(assert true)
(define-const var2966 String (append/672562846 var2306 var226)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var2306!1 String)
(assert (= var2306!1 (str.++ var2306 var226)))
(assert true)
(define-const var2872 String (toString/-2075883882 var2966)) ; Statement: $r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2927 var742 (getOrigin/1285793805 var1510!2)) ; Statement: $r26 = virtualinvoke r4.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>() 
(assert true)
;(assert (<init>/235758574 var1431 var2872 var2927)) ; Statement: specialinvoke $r31.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r27, $r26) 

(declare-const var1431!1 var1691)
(declare-const var2872!1 String)
(declare-const var2927!1 var742)
(define-const var1737 var331 (cast-from-var1691-to-var331 var1431!1)) ; Statement: $r34 = (java.lang.Throwable) $r31 
 ; Statement: throw $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {getIdentifierSource/596288874=([org.hibernate.boot.model.source.internal.hbm.EntityHierarchySourceImpl], org.hibernate.boot.model.source.spi.IdentifierSource), cast-from-var2338-to-var1305=([org.hibernate.boot.model.source.spi.IdentifierSource], org.hibernate.boot.model.source.spi.IdentifierSourceSimple), var346-init=([], org.hibernate.mapping.SimpleValue), getTable/-1199596141=([org.hibernate.mapping.RootClass], org.hibernate.mapping.Table), <init>/429284018=([org.hibernate.mapping.SimpleValue, org.hibernate.boot.spi.MetadataBuildingContext, org.hibernate.mapping.Table], void), cast-from-var3427-to-var1970=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.spi.MetadataBuildingContext), setIdentifier/-1590323556=([org.hibernate.mapping.RootClass, org.hibernate.mapping.KeyValue], void), cast-from-var346-to-var1134=([org.hibernate.mapping.SimpleValue], org.hibernate.mapping.KeyValue), var1305_getIdentifierAttributeSource/1320990457=([org.hibernate.boot.model.source.spi.IdentifierSourceSimple], org.hibernate.boot.model.source.spi.SingularAttributeSource), var2001_getTypeInformation/-1023980057=([org.hibernate.boot.model.source.spi.AttributeSource], org.hibernate.boot.model.source.spi.HibernateTypeSource), cast-from-var2715-to-var2001=([org.hibernate.boot.model.source.spi.SingularAttributeSource], org.hibernate.boot.model.source.spi.AttributeSource), var249_bindSimpleValueType/-1268747953=([org.hibernate.boot.model.source.internal.hbm.MappingDocument, org.hibernate.boot.model.source.spi.HibernateTypeSource, org.hibernate.mapping.SimpleValue], void), var2001_getName/-1165876496=([org.hibernate.boot.model.source.spi.AttributeSource], java.lang.String), isTypeSpecified/1297486380=([org.hibernate.mapping.SimpleValue], boolean), var1691-init=([], org.hibernate.boot.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getEntityName/-2043384209=([org.hibernate.mapping.PersistentClass], java.lang.String), cast-from-var3646-to-var2671=([org.hibernate.mapping.RootClass], org.hibernate.mapping.PersistentClass), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getOrigin/1285793805=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.jaxb.Origin), <init>/235758574=([org.hibernate.boot.MappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var1691-to-var331=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var249=org.hibernate.boot.model.source.internal.hbm.ModelBinder, var3068=r11, var3427=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var1510=r4, var3109=org.hibernate.boot.model.source.internal.hbm.EntityHierarchySourceImpl, var1169=r0, var3646=org.hibernate.mapping.RootClass, var1870=r5, var2338=org.hibernate.boot.model.source.spi.IdentifierSource, var2169=$r1, var1305=org.hibernate.boot.model.source.spi.IdentifierSourceSimple, var1703=r2, var346=org.hibernate.mapping.SimpleValue, var1284=$r29, var237=org.hibernate.mapping.Table, var1807=$r6, var1970=org.hibernate.boot.spi.MetadataBuildingContext, var1134=org.hibernate.mapping.KeyValue, var2715=org.hibernate.boot.model.source.spi.SingularAttributeSource, var3834=$r7, var364=org.hibernate.boot.model.source.spi.HibernateTypeSource, var2001=org.hibernate.boot.model.source.spi.AttributeSource, var1490=$r8, var741=$r9, var3080=r10, var496=null_type, var676=$z0, var1691=org.hibernate.boot.MappingException, var1431=$r31, var1519=$r30, var2306=$r24, var2671=org.hibernate.mapping.PersistentClass, var226=$r23, var2966=$r25, var2872=$r27, var742=org.hibernate.boot.jaxb.Origin, var2927=$r26, var331=java.lang.Throwable, var1737=$r34}
; {org.hibernate.boot.model.source.internal.hbm.ModelBinder=var249, r11=var3068, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var3427, r4=var1510, org.hibernate.boot.model.source.internal.hbm.EntityHierarchySourceImpl=var3109, r0=var1169, org.hibernate.mapping.RootClass=var3646, r5=var1870, org.hibernate.boot.model.source.spi.IdentifierSource=var2338, $r1=var2169, org.hibernate.boot.model.source.spi.IdentifierSourceSimple=var1305, r2=var1703, org.hibernate.mapping.SimpleValue=var346, $r29=var1284, org.hibernate.mapping.Table=var237, $r6=var1807, org.hibernate.boot.spi.MetadataBuildingContext=var1970, org.hibernate.mapping.KeyValue=var1134, org.hibernate.boot.model.source.spi.SingularAttributeSource=var2715, $r7=var3834, org.hibernate.boot.model.source.spi.HibernateTypeSource=var364, org.hibernate.boot.model.source.spi.AttributeSource=var2001, $r8=var1490, $r9=var741, r10=var3080, null_type=var496, $z0=var676, org.hibernate.boot.MappingException=var1691, $r31=var1431, $r30=var1519, $r24=var2306, org.hibernate.mapping.PersistentClass=var2671, $r23=var226, $r25=var2966, $r27=var2872, org.hibernate.boot.jaxb.Origin=var742, $r26=var2927, java.lang.Throwable=var331, $r34=var1737}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.hibernate.boot.model.source.internal.hbm.ModelBinder;	r4 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r0 := @parameter1: org.hibernate.boot.model.source.internal.hbm.EntityHierarchySourceImpl;	r5 := @parameter2: org.hibernate.mapping.RootClass;	$r1 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.EntityHierarchySourceImpl: org.hibernate.boot.model.source.spi.IdentifierSource getIdentifierSource()>();	r2 = (org.hibernate.boot.model.source.spi.IdentifierSourceSimple) $r1;	$r29 = new org.hibernate.mapping.SimpleValue;	$r6 = virtualinvoke r5.<org.hibernate.mapping.RootClass: org.hibernate.mapping.Table getTable()>();	specialinvoke $r29.<org.hibernate.mapping.SimpleValue: void <init>(org.hibernate.boot.spi.MetadataBuildingContext,org.hibernate.mapping.Table)>(r4, $r6);	virtualinvoke r5.<org.hibernate.mapping.RootClass: void setIdentifier(org.hibernate.mapping.KeyValue)>($r29);	$r7 = interfaceinvoke r2.<org.hibernate.boot.model.source.spi.IdentifierSourceSimple: org.hibernate.boot.model.source.spi.SingularAttributeSource getIdentifierAttributeSource()>();	$r8 = interfaceinvoke $r7.<org.hibernate.boot.model.source.spi.SingularAttributeSource: org.hibernate.boot.model.source.spi.HibernateTypeSource getTypeInformation()>();	staticinvoke <org.hibernate.boot.model.source.internal.hbm.ModelBinder: void bindSimpleValueType(org.hibernate.boot.model.source.internal.hbm.MappingDocument,org.hibernate.boot.model.source.spi.HibernateTypeSource,org.hibernate.mapping.SimpleValue)>(r4, $r8, $r29);	$r9 = interfaceinvoke r2.<org.hibernate.boot.model.source.spi.IdentifierSourceSimple: org.hibernate.boot.model.source.spi.SingularAttributeSource getIdentifierAttributeSource()>();	r10 = interfaceinvoke $r9.<org.hibernate.boot.model.source.spi.SingularAttributeSource: java.lang.String getName()>();	if r10 == null goto $z0 = virtualinvoke $r29.<org.hibernate.mapping.SimpleValue: boolean isTypeSpecified()>();	$z0 = virtualinvoke $r29.<org.hibernate.mapping.SimpleValue: boolean isTypeSpecified()>();	if $z0 != 0 goto $r12 = r11.<org.hibernate.boot.model.source.internal.hbm.ModelBinder: org.hibernate.boot.model.source.internal.hbm.RelationalObjectBinder relationalObjectBinder>;	$r31 = new org.hibernate.boot.MappingException;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("must specify an identifier type: ");	$r23 = virtualinvoke r5.<org.hibernate.mapping.RootClass: java.lang.String getEntityName()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	$r26 = virtualinvoke r4.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>();	specialinvoke $r31.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r27, $r26);	$r34 = (java.lang.Throwable) $r31;	throw $r34
;block_num 3