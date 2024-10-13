(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1343 0)
(declare-sort var2859 0)
(declare-sort var2082 0)
(declare-sort var2935 0)
(declare-sort var560 0)
(declare-sort var813 0)
(declare-sort var670 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const String!class ClassObject)
(declare-const var813!class ClassObject)
(declare-fun isInstance/451912363 (ClassObject var1343) Bool)
(declare-fun cast-from-var1343-to-var813 (var1343) var813)
(declare-fun getValue/206297552 (var813) var1343)
(declare-fun var670_processNamedQueryContentItem/1055054659 (var1343 var2859 var2082 var2935 var560) Bool)
(declare-const null-var1343 var1343)
(declare-const null-var2859 var2859)
(declare-const null-var2082 var2082)
(declare-const null-var2935 var2935)
(declare-const null-var560 var560)
(declare-const var1881 var1343) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1881 null-var1343)))
(declare-const var1993 var2859) ; Statement: r25 := @parameter1: org.hibernate.engine.spi.NamedSQLQueryDefinitionBuilder 
(assert (not (= var1993 null-var2859)))
(declare-const var3818 var2082) ; Statement: r20 := @parameter2: org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder 
(assert (not (= var3818 null-var2082)))
(declare-const var633 var2935) ; Statement: r14 := @parameter3: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNamedNativeQueryType 
(assert (not (= var633 null-var2935)))
(declare-const var1768 var560) ; Statement: r17 := @parameter4: org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext 
(assert (not (= var1768 null-var560)))
(define-const var3360 ClassObject String!class) ; Statement: $r1 = class "Ljava/lang/String;" 
(assert true)
(define-const var2238 Bool (isInstance/451912363 var3360 var1881)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = class "Ljavax/xml/bind/JAXBElement;" 
(assert (= (ite var2238 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3573 ClassObject var813!class) ; Statement: $r2 = class "Ljavax/xml/bind/JAXBElement;" 
(assert true)
(define-const var78 Bool (isInstance/451912363 var3573 var1881)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0) 
 ; Statement: if $z1 == 0 goto $r3 = class "Lorg/hibernate/boot/jaxb/hbm/spi/JaxbHbmQueryParamType;" 
(assert (not (= (ite var78 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1062 var813 (cast-from-var1343-to-var813 var1881)) ; Statement: $r29 = (javax.xml.bind.JAXBElement) r0 
(assert true)
(define-const var1879 var1343 (getValue/206297552 var1062)) ; Statement: $r30 = virtualinvoke $r29.<javax.xml.bind.JAXBElement: java.lang.Object getValue()>() 
(define-const var3506 Bool (var670_processNamedQueryContentItem/1055054659 var1879 var1993 var3818 var633 var1768)) ; Statement: $z8 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.NamedQueryBinder: boolean processNamedQueryContentItem(java.lang.Object,org.hibernate.engine.spi.NamedSQLQueryDefinitionBuilder,org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNamedNativeQueryType,org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext)>($r30, r25, r20, r14, r17) 
 ; Statement: return $z8 
(check-sat)
(get-model)
(get-unsat-core)
; {isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var1343-to-var813=([java.lang.Object], javax.xml.bind.JAXBElement), getValue/206297552=([javax.xml.bind.JAXBElement], java.lang.Object), var670_processNamedQueryContentItem/1055054659=([java.lang.Object, org.hibernate.engine.spi.NamedSQLQueryDefinitionBuilder, org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNamedNativeQueryType, org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext], boolean)}
; {var1343=java.lang.Object, var1881=r0, var2859=org.hibernate.engine.spi.NamedSQLQueryDefinitionBuilder, var1993=r25, var2082=org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder, var3818=r20, var2935=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNamedNativeQueryType, var633=r14, var560=org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext, var1768=r17, var3360=$r1, var2238=$z0, var813=javax.xml.bind.JAXBElement, var3573=$r2, var78=$z1, var1062=$r29, var1879=$r30, var670=org.hibernate.boot.model.source.internal.hbm.NamedQueryBinder, var3506=$z8}
; {java.lang.Object=var1343, r0=var1881, org.hibernate.engine.spi.NamedSQLQueryDefinitionBuilder=var2859, r25=var1993, org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder=var2082, r20=var3818, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNamedNativeQueryType=var2935, r14=var633, org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext=var560, r17=var1768, $r1=var3360, $z0=var2238, javax.xml.bind.JAXBElement=var813, $r2=var3573, $z1=var78, $r29=var1062, $r30=var1879, org.hibernate.boot.model.source.internal.hbm.NamedQueryBinder=var670, $z8=var3506}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Object;	r25 := @parameter1: org.hibernate.engine.spi.NamedSQLQueryDefinitionBuilder;	r20 := @parameter2: org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder;	r14 := @parameter3: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNamedNativeQueryType;	r17 := @parameter4: org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext;	$r1 = class "Ljava/lang/String;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = class "Ljavax/xml/bind/JAXBElement;";	$r2 = class "Ljavax/xml/bind/JAXBElement;";	$z1 = virtualinvoke $r2.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0);	if $z1 == 0 goto $r3 = class "Lorg/hibernate/boot/jaxb/hbm/spi/JaxbHbmQueryParamType;";	$r29 = (javax.xml.bind.JAXBElement) r0;	$r30 = virtualinvoke $r29.<javax.xml.bind.JAXBElement: java.lang.Object getValue()>();	$z8 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.NamedQueryBinder: boolean processNamedQueryContentItem(java.lang.Object,org.hibernate.engine.spi.NamedSQLQueryDefinitionBuilder,org.hibernate.boot.jaxb.hbm.internal.ImplicitResultSetMappingDefinition$Builder,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmNamedNativeQueryType,org.hibernate.boot.model.source.internal.hbm.HbmLocalMetadataBuildingContext)>($r30, r25, r20, r14, r17);	return $z8
;block_num 3