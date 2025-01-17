(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1544 0)
(declare-sort var1023 0)
(declare-sort var1462 0)
(declare-sort var2206 0)
(declare-sort var3590 0)
(declare-sort var2441 0)
(declare-sort var385 0)
(declare-sort var841 0)
(declare-sort var2279 0)
(declare-sort var2521 0)
(declare-sort var1511 0)
(declare-sort var794 0)
(declare-sort var2992 0)
(declare-sort var1056 0)
(declare-sort var1504 0)
(declare-sort var266 0)
(declare-sort var3196 0)
(declare-sort var767 0)
(declare-sort var1794 0)
(declare-sort var1273 0)
(declare-sort var2670 0)
(declare-sort var2761 0)
(declare-sort var901 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2992!class ClassObject)
(declare-fun <init>/410022177 (var3590 var1023 var2441 var2206) void)
(declare-fun cast-from-var1544-to-var3590 (var1544) var3590)
(declare-fun cast-from-var1462-to-var2441 (var1462) var2441)
(declare-fun idBagMapping/-857852114 (var1544) var1462)
(declare-fun sourceMappingDocument/1507685790 (var385) var1023)
(declare-fun cast-from-var1544-to-var385 (var1544) var385)
(declare-fun var841-init () var841)
(declare-fun <init>/1247622825 (var841 var1544 var1462) void)
(declare-fun var2521_buildValueSource/-1376258376 (var1023 String var794) var2279)
(declare-fun cast-from-var841-to-var794 (var841) var794)
(declare-fun isInstance/451912363 (ClassObject var1056) Bool)
(declare-fun cast-from-var2279-to-var1056 (var2279) var1056)
(declare-fun var1504-init () var1504)
(declare-fun cast-from-var2279-to-var2992 (var2279) var2992)
(declare-fun var266-init () var266)
(declare-fun getCollectionId/1880159910 (var1462) var3196)
(declare-fun getType/-1263253203 (var3196) String)
(declare-fun <init>/-1594225575 (var266 String) void)
(declare-fun getGenerator/1325926605 (var3196) var767)
(declare-fun getClazz/1884262482 (var767) String)
(declare-fun getConfigParameters/246763547 (var1273) var1794)
(declare-fun cast-from-var767-to-var1273 (var767) var1273)
(declare-fun var2761_extractParameters/273732576 (var1794) var2670)
(declare-fun <init>/826965496 (var1504 var2992 var266 String var2670) void)
(declare-fun cast-from-var1504-to-var901 (var1504) var901)
(declare-fun collectionIdSource/-857852114 (var1544) var901)
(declare-const null-var1544 var1544)
(declare-const null-var1023 var1023)
(declare-const null-var1462 var1462)
(declare-const null-var2206 var2206)
(declare-const null-String String)
(declare-const var1758 var1544) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl 
(assert (not (= var1758 null-var1544)))
(declare-const var3212 var1023) ; Statement: r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var3212 null-var1023)))
(declare-const var2124 var1462) ; Statement: r2 := @parameter1: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType 
(assert (not (= var2124 null-var1462)))
(declare-const var1170 var2206) ; Statement: r3 := @parameter2: org.hibernate.boot.model.source.spi.AttributeSourceContainer 
(assert (not (= var1170 null-var2206)))
(assert true)
;(assert (<init>/410022177 (cast-from-var1544-to-var3590 var1758) var3212 (cast-from-var1462-to-var2441 var2124) var1170)) ; Statement: specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl: void <init>(org.hibernate.boot.model.source.internal.hbm.MappingDocument,org.hibernate.boot.jaxb.hbm.spi.PluralAttributeInfo,org.hibernate.boot.model.source.spi.AttributeSourceContainer)>(r1, r2, r3) 

(declare-const var1758!1 var1544)
(declare-const var3212!1 var1023)
(declare-const var2124!1 var1462)
(declare-const var1170!1 var2206)
(declare-const var1758!2 var1544)
(assert (not (= var1758!2 null-var1544)))
(assert (= (idBagMapping/-857852114 var1758!2) var2124!1)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType idBagMapping> = r2 
(assert true)
(define-const var220 var1023 (sourceMappingDocument/1507685790 (cast-from-var1544-to-var385 var1758!2))) ; Statement: $r5 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument sourceMappingDocument()>() 
(define-const var1483 var841 var841-init) ; Statement: $r29 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$1 
(assert true)
;(assert (<init>/1247622825 var1483 var1758!2 var2124!1)) ; Statement: specialinvoke $r29.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$1: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType)>(r0, r2) 

(declare-const var1483!1 var841)
(declare-const var1758!3 var1544)
(declare-const var2124!2 var1462)
(define-const var2456 var2279 (var2521_buildValueSource/-1376258376 var220 null-String (cast-from-var841-to-var794 var1483!1))) ; Statement: r6 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: org.hibernate.boot.model.source.spi.RelationalValueSource buildValueSource(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>($r5, null, $r29) 
(define-const var3343 ClassObject var2992!class) ; Statement: $r7 = class "Lorg/hibernate/boot/model/source/spi/ColumnSource;" 
(assert true)
(define-const var2648 Bool (isInstance/451912363 var3343 (cast-from-var2279-to-var1056 var2456))) ; Statement: $z0 = virtualinvoke $r7.<java.lang.Class: boolean isInstance(java.lang.Object)>(r6) 
 ; Statement: if $z0 != 0 goto $r32 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$CollectionIdSourceImpl 
(assert (not (= (ite var2648 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3554 var1504 var1504-init) ; Statement: $r32 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$CollectionIdSourceImpl 
(define-const var750 var2992 (cast-from-var2279-to-var2992 var2456)) ; Statement: $r19 = (org.hibernate.boot.model.source.spi.ColumnSource) r6 
(define-const var1221 var266 var266-init) ; Statement: $r31 = new org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl 
(assert true)
(define-const var14 var3196 (getCollectionId/1880159910 var2124!2)) ; Statement: $r10 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCollectionIdType getCollectionId()>() 
(assert true)
(define-const var961 String (getType/-1263253203 var14)) ; Statement: $r11 = virtualinvoke $r10.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCollectionIdType: java.lang.String getType()>() 
(assert true)
;(assert (<init>/-1594225575 var1221 var961)) ; Statement: specialinvoke $r31.<org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl: void <init>(java.lang.String)>($r11) 

(declare-const var1221!1 var266)
(declare-const var961!1 String)
(assert true)
(define-const var1679 var3196 (getCollectionId/1880159910 var2124!2)) ; Statement: $r12 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCollectionIdType getCollectionId()>() 
(assert true)
(define-const var2810 var767 (getGenerator/1325926605 var1679)) ; Statement: $r13 = virtualinvoke $r12.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCollectionIdType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmGeneratorSpecificationType getGenerator()>() 
(assert true)
(define-const var2233 String (getClazz/1884262482 var2810)) ; Statement: $r18 = virtualinvoke $r13.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmGeneratorSpecificationType: java.lang.String getClazz()>() 
(assert true)
(define-const var3486 var3196 (getCollectionId/1880159910 var2124!2)) ; Statement: $r14 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCollectionIdType getCollectionId()>() 
(assert true)
(define-const var2640 var767 (getGenerator/1325926605 var3486)) ; Statement: $r15 = virtualinvoke $r14.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCollectionIdType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmGeneratorSpecificationType getGenerator()>() 
(assert true)
(define-const var882 var1794 (getConfigParameters/246763547 (cast-from-var767-to-var1273 var2640))) ; Statement: $r16 = virtualinvoke $r15.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmGeneratorSpecificationType: java.util.List getConfigParameters()>() 
(define-const var586 var2670 (var2761_extractParameters/273732576 var882)) ; Statement: $r17 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.Helper: java.util.Map extractParameters(java.util.List)>($r16) 
(assert true)
;(assert (<init>/826965496 var3554 var750 var1221!1 var2233 var586)) ; Statement: specialinvoke $r32.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$CollectionIdSourceImpl: void <init>(org.hibernate.boot.model.source.spi.ColumnSource,org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl,java.lang.String,java.util.Map)>($r19, $r31, $r18, $r17) 

(declare-const var3554!1 var1504)
(declare-const var750!1 var2992)
(declare-const var1221!2 var266)
(declare-const var2233!1 String)
(declare-const var586!1 var2670)
(declare-const var1758!4 var1544)
(assert (not (= var1758!4 null-var1544)))
(assert (= (collectionIdSource/-857852114 var1758!4) (cast-from-var1504-to-var901 var3554!1))) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl: org.hibernate.boot.model.source.spi.CollectionIdSource collectionIdSource> = $r32 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/410022177=([org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl, org.hibernate.boot.model.source.internal.hbm.MappingDocument, org.hibernate.boot.jaxb.hbm.spi.PluralAttributeInfo, org.hibernate.boot.model.source.spi.AttributeSourceContainer], void), cast-from-var1544-to-var3590=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl], org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl), cast-from-var1462-to-var2441=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType], org.hibernate.boot.jaxb.hbm.spi.PluralAttributeInfo), idBagMapping/-857852114=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType), sourceMappingDocument/1507685790=([org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode], org.hibernate.boot.model.source.internal.hbm.MappingDocument), cast-from-var1544-to-var385=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl], org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode), var841-init=([], org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$1), <init>/1247622825=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$1, org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType], void), var2521_buildValueSource/-1376258376=([org.hibernate.boot.model.source.internal.hbm.MappingDocument, java.lang.String, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource], org.hibernate.boot.model.source.spi.RelationalValueSource), cast-from-var841-to-var794=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$1], org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource), isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var2279-to-var1056=([org.hibernate.boot.model.source.spi.RelationalValueSource], java.lang.Object), var1504-init=([], org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$CollectionIdSourceImpl), cast-from-var2279-to-var2992=([org.hibernate.boot.model.source.spi.RelationalValueSource], org.hibernate.boot.model.source.spi.ColumnSource), var266-init=([], org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl), getCollectionId/1880159910=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCollectionIdType), getType/-1263253203=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCollectionIdType], java.lang.String), <init>/-1594225575=([org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl, java.lang.String], void), getGenerator/1325926605=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCollectionIdType], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmGeneratorSpecificationType), getClazz/1884262482=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmGeneratorSpecificationType], java.lang.String), getConfigParameters/246763547=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmConfigParameterContainer], java.util.List), cast-from-var767-to-var1273=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmGeneratorSpecificationType], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmConfigParameterContainer), var2761_extractParameters/273732576=([java.util.List], java.util.Map), <init>/826965496=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$CollectionIdSourceImpl, org.hibernate.boot.model.source.spi.ColumnSource, org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl, java.lang.String, java.util.Map], void), cast-from-var1504-to-var901=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$CollectionIdSourceImpl], org.hibernate.boot.model.source.spi.CollectionIdSource), collectionIdSource/-857852114=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl], org.hibernate.boot.model.source.spi.CollectionIdSource)}
; {var1544=org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl, var1758=r0, var1023=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var3212=r1, var1462=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType, var2124=r2, var2206=org.hibernate.boot.model.source.spi.AttributeSourceContainer, var1170=r3, var3590=org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl, var2441=org.hibernate.boot.jaxb.hbm.spi.PluralAttributeInfo, var385=org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode, var220=$r5, var841=org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$1, var1483=$r29, var2279=org.hibernate.boot.model.source.spi.RelationalValueSource, var2521=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper, var1511=null_type, var794=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource, var2456=r6, var2992=org.hibernate.boot.model.source.spi.ColumnSource, var3343=$r7, var1056=java.lang.Object, var2648=$z0, var1504=org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$CollectionIdSourceImpl, var3554=$r32, var750=$r19, var266=org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl, var1221=$r31, var3196=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCollectionIdType, var14=$r10, var961=$r11, var1679=$r12, var767=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmGeneratorSpecificationType, var2810=$r13, var2233=$r18, var3486=$r14, var2640=$r15, var1794=java.util.List, var1273=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmConfigParameterContainer, var882=$r16, var2670=java.util.Map, var2761=org.hibernate.boot.model.source.internal.hbm.Helper, var586=$r17, var901=org.hibernate.boot.model.source.spi.CollectionIdSource}
; {org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl=var1544, r0=var1758, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var1023, r1=var3212, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType=var1462, r2=var2124, org.hibernate.boot.model.source.spi.AttributeSourceContainer=var2206, r3=var1170, org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl=var3590, org.hibernate.boot.jaxb.hbm.spi.PluralAttributeInfo=var2441, org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode=var385, $r5=var220, org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$1=var841, $r29=var1483, org.hibernate.boot.model.source.spi.RelationalValueSource=var2279, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper=var2521, null_type=var1511, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource=var794, r6=var2456, org.hibernate.boot.model.source.spi.ColumnSource=var2992, $r7=var3343, java.lang.Object=var1056, $z0=var2648, org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$CollectionIdSourceImpl=var1504, $r32=var3554, $r19=var750, org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl=var266, $r31=var1221, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCollectionIdType=var3196, $r10=var14, $r11=var961, $r12=var1679, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmGeneratorSpecificationType=var767, $r13=var2810, $r18=var2233, $r14=var3486, $r15=var2640, java.util.List=var1794, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmConfigParameterContainer=var1273, $r16=var882, java.util.Map=var2670, org.hibernate.boot.model.source.internal.hbm.Helper=var2761, $r17=var586, org.hibernate.boot.model.source.spi.CollectionIdSource=var901}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl;	r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r2 := @parameter1: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType;	r3 := @parameter2: org.hibernate.boot.model.source.spi.AttributeSourceContainer;	specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl: void <init>(org.hibernate.boot.model.source.internal.hbm.MappingDocument,org.hibernate.boot.jaxb.hbm.spi.PluralAttributeInfo,org.hibernate.boot.model.source.spi.AttributeSourceContainer)>(r1, r2, r3);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType idBagMapping> = r2;	$r5 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument sourceMappingDocument()>();	$r29 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$1;	specialinvoke $r29.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$1: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType)>(r0, r2);	r6 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: org.hibernate.boot.model.source.spi.RelationalValueSource buildValueSource(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>($r5, null, $r29);	$r7 = class "Lorg/hibernate/boot/model/source/spi/ColumnSource;";	$z0 = virtualinvoke $r7.<java.lang.Class: boolean isInstance(java.lang.Object)>(r6);	if $z0 != 0 goto $r32 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$CollectionIdSourceImpl;	$r32 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$CollectionIdSourceImpl;	$r19 = (org.hibernate.boot.model.source.spi.ColumnSource) r6;	$r31 = new org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl;	$r10 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCollectionIdType getCollectionId()>();	$r11 = virtualinvoke $r10.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCollectionIdType: java.lang.String getType()>();	specialinvoke $r31.<org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl: void <init>(java.lang.String)>($r11);	$r12 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCollectionIdType getCollectionId()>();	$r13 = virtualinvoke $r12.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCollectionIdType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmGeneratorSpecificationType getGenerator()>();	$r18 = virtualinvoke $r13.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmGeneratorSpecificationType: java.lang.String getClazz()>();	$r14 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCollectionIdType getCollectionId()>();	$r15 = virtualinvoke $r14.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmCollectionIdType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmGeneratorSpecificationType getGenerator()>();	$r16 = virtualinvoke $r15.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmGeneratorSpecificationType: java.util.List getConfigParameters()>();	$r17 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.Helper: java.util.Map extractParameters(java.util.List)>($r16);	specialinvoke $r32.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$CollectionIdSourceImpl: void <init>(org.hibernate.boot.model.source.spi.ColumnSource,org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl,java.lang.String,java.util.Map)>($r19, $r31, $r18, $r17);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl: org.hibernate.boot.model.source.spi.CollectionIdSource collectionIdSource> = $r32;	return
;block_num 2