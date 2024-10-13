(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3014 0)
(declare-sort var2490 0)
(declare-sort var171 0)
(declare-sort var164 0)
(declare-sort var1811 0)
(declare-sort var2536 0)
(declare-sort var798 0)
(declare-sort var2434 0)
(declare-sort var3725 0)
(declare-sort var3481 0)
(declare-sort var1424 0)
(declare-sort var2421 0)
(declare-sort var1937 0)
(declare-sort var135 0)
(declare-sort var444 0)
(declare-sort var2623 0)
(declare-sort var3090 0)
(declare-sort var3104 0)
(declare-sort var2231 0)
(declare-sort var2909 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1937!class ClassObject)
(declare-fun <init>/410022177 (var1811 var2490 var2536 var164) void)
(declare-fun cast-from-var3014-to-var1811 (var3014) var1811)
(declare-fun cast-from-var171-to-var2536 (var171) var2536)
(declare-fun idBagMapping/-857852114 (var3014) var171)
(declare-fun sourceMappingDocument/1507685790 (var798) var2490)
(declare-fun cast-from-var3014-to-var798 (var3014) var798)
(declare-fun var2434-init () var2434)
(declare-fun <init>/1247622825 (var2434 var3014 var171) void)
(declare-fun var3481_buildValueSource/-1376258376 (var2490 String var2421) var3725)
(declare-fun cast-from-var2434-to-var2421 (var2434) var2421)
(declare-fun isInstance/451912363 (ClassObject var135) Bool)
(declare-fun cast-from-var3725-to-var135 (var3725) var135)
(declare-fun var444-init () var444)
(declare-fun arr-var135-init () (Array Int var135))
(declare-fun var164_getAttributeRoleBase/-1304891230 (var164) var3090)
(declare-fun getFullPath/-1971906419 (var3104) String)
(declare-fun cast-from-var3090-to-var3104 (var3090) var3104)
(declare-fun cast-from-String-to-var135 (String) var135)
(declare-fun getName/-101920146 (var171) String)
(declare-fun String_format/-647569892 (var2623 String (Array Int var135)) String)
(declare-fun getOrigin/1285793805 (var2490) var2231)
(declare-fun <init>/235758574 (var444 String var2231) void)
(declare-fun cast-from-var444-to-var2909 (var444) var2909)
(declare-const null-var3014 var3014)
(declare-const null-var2490 var2490)
(declare-const null-var171 var171)
(declare-const null-var164 var164)
(declare-const null-String String)
(declare-const var2623-ENGLISH var2623)
(declare-const null-__Array__Int__var135__ (Array Int var135))
(declare-const var3117 var3014) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl 
(assert (not (= var3117 null-var3014)))
(declare-const var1958 var2490) ; Statement: r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var1958 null-var2490)))
(declare-const var3839 var171) ; Statement: r2 := @parameter1: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType 
(assert (not (= var3839 null-var171)))
(declare-const var410 var164) ; Statement: r3 := @parameter2: org.hibernate.boot.model.source.spi.AttributeSourceContainer 
(assert (not (= var410 null-var164)))
(assert true)
;(assert (<init>/410022177 (cast-from-var3014-to-var1811 var3117) var1958 (cast-from-var171-to-var2536 var3839) var410)) ; Statement: specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl: void <init>(org.hibernate.boot.model.source.internal.hbm.MappingDocument,org.hibernate.boot.jaxb.hbm.spi.PluralAttributeInfo,org.hibernate.boot.model.source.spi.AttributeSourceContainer)>(r1, r2, r3) 

(declare-const var3117!1 var3014)
(declare-const var1958!1 var2490)
(declare-const var3839!1 var171)
(declare-const var410!1 var164)
(declare-const var3117!2 var3014)
(assert (not (= var3117!2 null-var3014)))
(assert (= (idBagMapping/-857852114 var3117!2) var3839!1)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType idBagMapping> = r2 
(assert true)
(define-const var3068 var2490 (sourceMappingDocument/1507685790 (cast-from-var3014-to-var798 var3117!2))) ; Statement: $r5 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument sourceMappingDocument()>() 
(define-const var899 var2434 var2434-init) ; Statement: $r29 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$1 
(assert true)
;(assert (<init>/1247622825 var899 var3117!2 var3839!1)) ; Statement: specialinvoke $r29.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$1: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType)>(r0, r2) 

(declare-const var899!1 var2434)
(declare-const var3117!3 var3014)
(declare-const var3839!2 var171)
(define-const var3762 var3725 (var3481_buildValueSource/-1376258376 var3068 null-String (cast-from-var2434-to-var2421 var899!1))) ; Statement: r6 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: org.hibernate.boot.model.source.spi.RelationalValueSource buildValueSource(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>($r5, null, $r29) 
(define-const var2509 ClassObject var1937!class) ; Statement: $r7 = class "Lorg/hibernate/boot/model/source/spi/ColumnSource;" 
(assert true)
(define-const var2102 Bool (isInstance/451912363 var2509 (cast-from-var3725-to-var135 var3762))) ; Statement: $z0 = virtualinvoke $r7.<java.lang.Class: boolean isInstance(java.lang.Object)>(r6) 
 ; Statement: if $z0 != 0 goto $r32 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$CollectionIdSourceImpl 
(assert (not (not (= (ite var2102 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3487 var444 var444-init) ; Statement: $r30 = new org.hibernate.boot.MappingException 
(define-const var3699 var2623 var2623-ENGLISH) ; Statement: $r22 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var3732 (Array Int var135) arr-var135-init) ; Statement: $r21 = newarray (java.lang.Object)[2] 
(define-const var1055 var3090 (var164_getAttributeRoleBase/-1304891230 var410!1)) ; Statement: $r23 = interfaceinvoke r3.<org.hibernate.boot.model.source.spi.AttributeSourceContainer: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRoleBase()>() 
(assert true)
(define-const var1459 String (getFullPath/-1971906419 (cast-from-var3090-to-var3104 var1055))) ; Statement: $r24 = virtualinvoke $r23.<org.hibernate.boot.model.source.spi.AttributeRole: java.lang.String getFullPath()>() 
(declare-const var3732!1 (Array Int var135))
(assert (not (= var3732!1 null-__Array__Int__var135__)))
(assert (= (select var3732!1 0) (cast-from-String-to-var135 var1459))) ; Statement: $r21[0] = $r24 
(assert true)
(define-const var2794 String (getName/-101920146 var3839!2)) ; Statement: $r25 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType: java.lang.String getName()>() 
(declare-const var3732!2 (Array Int var135))
(assert (not (= var3732!2 null-__Array__Int__var135__)))
(assert (= (select var3732!2 1) (cast-from-String-to-var135 var2794))) ; Statement: $r21[1] = $r25 
(define-const var2903 String (String_format/-647569892 var3699 "Expecting column for collection id (idbag), but found formula [%s.%s]" var3732!2)) ; Statement: $r28 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r22, "Expecting column for collection id (idbag), but found formula [%s.%s]", $r21) 
(assert true)
(define-const var1702 var2490 (sourceMappingDocument/1507685790 (cast-from-var3014-to-var798 var3117!3))) ; Statement: $r26 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument sourceMappingDocument()>() 
(assert true)
(define-const var1442 var2231 (getOrigin/1285793805 var1702)) ; Statement: $r27 = virtualinvoke $r26.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>() 
(assert true)
;(assert (<init>/235758574 var3487 var2903 var1442)) ; Statement: specialinvoke $r30.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r28, $r27) 

(declare-const var3487!1 var444)
(declare-const var2903!1 String)
(declare-const var1442!1 var2231)
(define-const var3412 var2909 (cast-from-var444-to-var2909 var3487!1)) ; Statement: $r33 = (java.lang.Throwable) $r30 
 ; Statement: throw $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/410022177=([org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl, org.hibernate.boot.model.source.internal.hbm.MappingDocument, org.hibernate.boot.jaxb.hbm.spi.PluralAttributeInfo, org.hibernate.boot.model.source.spi.AttributeSourceContainer], void), cast-from-var3014-to-var1811=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl], org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl), cast-from-var171-to-var2536=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType], org.hibernate.boot.jaxb.hbm.spi.PluralAttributeInfo), idBagMapping/-857852114=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType), sourceMappingDocument/1507685790=([org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode], org.hibernate.boot.model.source.internal.hbm.MappingDocument), cast-from-var3014-to-var798=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl], org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode), var2434-init=([], org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$1), <init>/1247622825=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$1, org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType], void), var3481_buildValueSource/-1376258376=([org.hibernate.boot.model.source.internal.hbm.MappingDocument, java.lang.String, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource], org.hibernate.boot.model.source.spi.RelationalValueSource), cast-from-var2434-to-var2421=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$1], org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource), isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var3725-to-var135=([org.hibernate.boot.model.source.spi.RelationalValueSource], java.lang.Object), var444-init=([], org.hibernate.boot.MappingException), arr-var135-init=([], java.lang.Object[]), var164_getAttributeRoleBase/-1304891230=([org.hibernate.boot.model.source.spi.AttributeSourceContainer], org.hibernate.boot.model.source.spi.AttributeRole), getFullPath/-1971906419=([org.hibernate.boot.model.source.spi.AbstractAttributeKey], java.lang.String), cast-from-var3090-to-var3104=([org.hibernate.boot.model.source.spi.AttributeRole], org.hibernate.boot.model.source.spi.AbstractAttributeKey), cast-from-String-to-var135=([java.lang.String], java.lang.Object), getName/-101920146=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType], java.lang.String), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), getOrigin/1285793805=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.jaxb.Origin), <init>/235758574=([org.hibernate.boot.MappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var444-to-var2909=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var3014=org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl, var3117=r0, var2490=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var1958=r1, var171=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType, var3839=r2, var164=org.hibernate.boot.model.source.spi.AttributeSourceContainer, var410=r3, var1811=org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl, var2536=org.hibernate.boot.jaxb.hbm.spi.PluralAttributeInfo, var798=org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode, var3068=$r5, var2434=org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$1, var899=$r29, var3725=org.hibernate.boot.model.source.spi.RelationalValueSource, var3481=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper, var1424=null_type, var2421=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource, var3762=r6, var1937=org.hibernate.boot.model.source.spi.ColumnSource, var2509=$r7, var135=java.lang.Object, var2102=$z0, var444=org.hibernate.boot.MappingException, var3487=$r30, var2623=java.util.Locale, var3699=$r22, var3732=$r21, var3090=org.hibernate.boot.model.source.spi.AttributeRole, var1055=$r23, var3104=org.hibernate.boot.model.source.spi.AbstractAttributeKey, var1459=$r24, var2794=$r25, var2903=$r28, var1702=$r26, var2231=org.hibernate.boot.jaxb.Origin, var1442=$r27, var2909=java.lang.Throwable, var3412=$r33}
; {org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl=var3014, r0=var3117, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var2490, r1=var1958, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType=var171, r2=var3839, org.hibernate.boot.model.source.spi.AttributeSourceContainer=var164, r3=var410, org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl=var1811, org.hibernate.boot.jaxb.hbm.spi.PluralAttributeInfo=var2536, org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode=var798, $r5=var3068, org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$1=var2434, $r29=var899, org.hibernate.boot.model.source.spi.RelationalValueSource=var3725, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper=var3481, null_type=var1424, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource=var2421, r6=var3762, org.hibernate.boot.model.source.spi.ColumnSource=var1937, $r7=var2509, java.lang.Object=var135, $z0=var2102, org.hibernate.boot.MappingException=var444, $r30=var3487, java.util.Locale=var2623, $r22=var3699, $r21=var3732, org.hibernate.boot.model.source.spi.AttributeRole=var3090, $r23=var1055, org.hibernate.boot.model.source.spi.AbstractAttributeKey=var3104, $r24=var1459, $r25=var2794, $r28=var2903, $r26=var1702, org.hibernate.boot.jaxb.Origin=var2231, $r27=var1442, java.lang.Throwable=var2909, $r33=var3412}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl;	r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r2 := @parameter1: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType;	r3 := @parameter2: org.hibernate.boot.model.source.spi.AttributeSourceContainer;	specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl: void <init>(org.hibernate.boot.model.source.internal.hbm.MappingDocument,org.hibernate.boot.jaxb.hbm.spi.PluralAttributeInfo,org.hibernate.boot.model.source.spi.AttributeSourceContainer)>(r1, r2, r3);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType idBagMapping> = r2;	$r5 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument sourceMappingDocument()>();	$r29 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$1;	specialinvoke $r29.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$1: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType)>(r0, r2);	r6 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: org.hibernate.boot.model.source.spi.RelationalValueSource buildValueSource(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>($r5, null, $r29);	$r7 = class "Lorg/hibernate/boot/model/source/spi/ColumnSource;";	$z0 = virtualinvoke $r7.<java.lang.Class: boolean isInstance(java.lang.Object)>(r6);	if $z0 != 0 goto $r32 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl$CollectionIdSourceImpl;	$r30 = new org.hibernate.boot.MappingException;	$r22 = <java.util.Locale: java.util.Locale ENGLISH>;	$r21 = newarray (java.lang.Object)[2];	$r23 = interfaceinvoke r3.<org.hibernate.boot.model.source.spi.AttributeSourceContainer: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRoleBase()>();	$r24 = virtualinvoke $r23.<org.hibernate.boot.model.source.spi.AttributeRole: java.lang.String getFullPath()>();	$r21[0] = $r24;	$r25 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmIdBagCollectionType: java.lang.String getName()>();	$r21[1] = $r25;	$r28 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r22, "Expecting column for collection id (idbag), but found formula [%s.%s]", $r21);	$r26 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeSourceIdBagImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument sourceMappingDocument()>();	$r27 = virtualinvoke $r26.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.jaxb.Origin getOrigin()>();	specialinvoke $r30.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r28, $r27);	$r33 = (java.lang.Throwable) $r30;	throw $r33
;block_num 2