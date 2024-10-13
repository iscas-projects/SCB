(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1141 0)
(declare-sort var2490 0)
(declare-sort var3121 0)
(declare-sort var2190 0)
(declare-sort var3537 0)
(declare-sort var1664 0)
(declare-sort var710 0)
(declare-sort var1915 0)
(declare-sort var3338 0)
(declare-sort var42 0)
(declare-sort var740 0)
(declare-sort var3396 0)
(declare-sort var1625 0)
(declare-sort var3638 0)
(declare-sort var3977 0)
(declare-sort var3653 0)
(declare-sort var3606 0)
(declare-sort var3565 0)
(declare-sort var947 0)
(declare-sort var3218 0)
(declare-sort var871 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-238456656 (var3537 var2490) void)
(declare-fun cast-from-var1141-to-var3537 (var1141) var3537)
(declare-fun timestampElement/586723221 (var1141) var2190)
(declare-fun var1664-init () var1664)
(declare-fun getSource/-1920623184 (var2190) var710)
(declare-fun value/243550769 (var710) String)
(declare-fun <init>/-1594225575 (var1664 String) void)
(declare-fun typeSource/586723221 (var1141) var1664)
(declare-fun var1915-init () var1915)
(declare-fun <init>/-1333246060 (var1915 var1141) void)
(declare-fun var42_buildColumnSource/1614518831 (var2490 String var3396) var3338)
(declare-fun cast-from-var1915-to-var3396 (var1915) var3396)
(declare-fun var3638_singletonList/684126186 (var3977) var1625)
(declare-fun cast-from-var3338-to-var3977 (var3338) var3977)
(declare-fun relationalValueSources/586723221 (var1141) var1625)
(declare-fun getAttributePathBase/7353226 (var3606) var3653)
(declare-fun cast-from-var3121-to-var3606 (var3121) var3606)
(declare-fun getName/957761080 (var1141) String)
(declare-fun append/512614398 (var3653 String) var3653)
(declare-fun attributePath/586723221 (var1141) var3653)
(declare-fun getAttributeRoleBase/355222378 (var3606) var3565)
(declare-fun append/-1883144098 (var3565 String) var3565)
(declare-fun attributeRole/586723221 (var1141) var3565)
(declare-fun getToolingHintContext/-1993754541 (var3606) var947)
(declare-fun var3218_collectToolingHints/-1643529099 (var947 var871) var947)
(declare-fun cast-from-var2190-to-var871 (var2190) var871)
(declare-fun toolingHintContext/586723221 (var1141) var947)
(declare-const null-var1141 var1141)
(declare-const null-var2490 var2490)
(declare-const null-var3121 var3121)
(declare-const null-var2190 var2190)
(declare-const null-String String)
(declare-const var2344 var1141) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl 
(assert (not (= var2344 null-var1141)))
(declare-const var2833 var2490) ; Statement: r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var2833 null-var2490)))
(declare-const var957 var3121) ; Statement: r9 := @parameter1: org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl 
(assert (not (= var957 null-var3121)))
(declare-const var1384 var2190) ; Statement: r2 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampAttributeType 
(assert (not (= var1384 null-var2190)))
(assert true)
;(assert (<init>/-238456656 (cast-from-var1141-to-var3537 var2344) var2833)) ; Statement: specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode: void <init>(org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r1) 

(declare-const var2344!1 var1141)
(declare-const var2833!1 var2490)
(declare-const var2344!2 var1141)
(assert (not (= var2344!2 null-var1141)))
(assert (= (timestampElement/586723221 var2344!2) var1384)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampAttributeType timestampElement> = r2 
(define-const var1715 var1664 var1664-init) ; Statement: $r3 = new org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl 
(define-const var1409 String "db") ; Statement: $r6 = "db" 
(assert true)
(define-const var1161 var710 (getSource/-1920623184 var1384)) ; Statement: $r4 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampAttributeType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampSourceEnum getSource()>() 
(assert true)
(define-const var2251 String (value/243550769 var1161)) ; Statement: $r5 = virtualinvoke $r4.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampSourceEnum: java.lang.String value()>() 
(assert true)
(define-const var236 Bool (= var1409 var2251)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>($r5) 
 ; Statement: if $z0 == 0 goto $r19 = "timestamp" 
(assert (not (= (ite var236 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1060 String "dbtimestamp") ; Statement: $r19 = "dbtimestamp" 
 ; Statement: goto [?= specialinvoke $r3.<org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl: void <init>(java.lang.String)>($r19)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1594225575 var1715 var1060)) ; Statement: specialinvoke $r3.<org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl: void <init>(java.lang.String)>($r19) 

(declare-const var1715!1 var1664)
(declare-const var1060!1 String)
(declare-const var2344!3 var1141)
(assert (not (= var2344!3 null-var1141)))
(assert (= (typeSource/586723221 var2344!3) var1715!1)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl typeSource> = $r3 
(define-const var2875 var1915 var1915-init) ; Statement: $r7 = new org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl$1 
(assert true)
;(assert (<init>/-1333246060 var2875 var2344!3)) ; Statement: specialinvoke $r7.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl$1: void <init>(org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl)>(r0) 

(declare-const var2875!1 var1915)
(declare-const var2344!4 var1141)
(define-const var1131 var3338 (var42_buildColumnSource/1614518831 var2833!1 null-String (cast-from-var1915-to-var3396 var2875!1))) ; Statement: $r18 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: org.hibernate.boot.model.source.spi.ColumnSource buildColumnSource(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>(r1, null, $r7) 
(define-const var587 var1625 (var3638_singletonList/684126186 (cast-from-var3338-to-var3977 var1131))) ; Statement: $r8 = staticinvoke <java.util.Collections: java.util.List singletonList(java.lang.Object)>($r18) 
(declare-const var2344!5 var1141)
(assert (not (= var2344!5 null-var1141)))
(assert (= (relationalValueSources/586723221 var2344!5) var587)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: java.util.List relationalValueSources> = $r8 
(assert true)
(define-const var3243 var3653 (getAttributePathBase/7353226 (cast-from-var3121-to-var3606 var957))) ; Statement: $r11 = virtualinvoke r9.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.model.source.spi.AttributePath getAttributePathBase()>() 
(assert true)
(define-const var285 String (getName/957761080 var2344!5)) ; Statement: $r10 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: java.lang.String getName()>() 
(assert true)
(define-const var2464 var3653 (append/512614398 var3243 var285)) ; Statement: $r12 = virtualinvoke $r11.<org.hibernate.boot.model.source.spi.AttributePath: org.hibernate.boot.model.source.spi.AttributePath append(java.lang.String)>($r10) 
(declare-const var2344!6 var1141)
(assert (not (= var2344!6 null-var1141)))
(assert (= (attributePath/586723221 var2344!6) var2464)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: org.hibernate.boot.model.source.spi.AttributePath attributePath> = $r12 
(assert true)
(define-const var1382 var3565 (getAttributeRoleBase/355222378 (cast-from-var3121-to-var3606 var957))) ; Statement: $r14 = virtualinvoke r9.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRoleBase()>() 
(assert true)
(define-const var3164 String (getName/957761080 var2344!6)) ; Statement: $r13 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: java.lang.String getName()>() 
(assert true)
(define-const var1572 var3565 (append/-1883144098 var1382 var3164)) ; Statement: $r15 = virtualinvoke $r14.<org.hibernate.boot.model.source.spi.AttributeRole: org.hibernate.boot.model.source.spi.AttributeRole append(java.lang.String)>($r13) 
(declare-const var2344!7 var1141)
(assert (not (= var2344!7 null-var1141)))
(assert (= (attributeRole/586723221 var2344!7) var1572)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: org.hibernate.boot.model.source.spi.AttributeRole attributeRole> = $r15 
(assert true)
(define-const var86 var947 (getToolingHintContext/-1993754541 (cast-from-var3121-to-var3606 var957))) ; Statement: $r16 = virtualinvoke r9.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.model.source.spi.ToolingHintContext getToolingHintContext()>() 
(define-const var808 var947 (var3218_collectToolingHints/-1643529099 var86 (cast-from-var2190-to-var871 var1384))) ; Statement: $r17 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.Helper: org.hibernate.boot.model.source.spi.ToolingHintContext collectToolingHints(org.hibernate.boot.model.source.spi.ToolingHintContext,org.hibernate.boot.jaxb.hbm.spi.ToolingHintContainer)>($r16, r2) 
(declare-const var2344!8 var1141)
(assert (not (= var2344!8 null-var1141)))
(assert (= (toolingHintContext/586723221 var2344!8) var808)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: org.hibernate.boot.model.source.spi.ToolingHintContext toolingHintContext> = $r17 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-238456656=([org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode, org.hibernate.boot.model.source.internal.hbm.MappingDocument], void), cast-from-var1141-to-var3537=([org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl], org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode), timestampElement/586723221=([org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampAttributeType), var1664-init=([], org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl), getSource/-1920623184=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampAttributeType], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampSourceEnum), value/243550769=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampSourceEnum], java.lang.String), <init>/-1594225575=([org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl, java.lang.String], void), typeSource/586723221=([org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl], org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl), var1915-init=([], org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl$1), <init>/-1333246060=([org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl$1, org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl], void), var42_buildColumnSource/1614518831=([org.hibernate.boot.model.source.internal.hbm.MappingDocument, java.lang.String, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource], org.hibernate.boot.model.source.spi.ColumnSource), cast-from-var1915-to-var3396=([org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl$1], org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource), var3638_singletonList/684126186=([java.lang.Object], java.util.List), cast-from-var3338-to-var3977=([org.hibernate.boot.model.source.spi.ColumnSource], java.lang.Object), relationalValueSources/586723221=([org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl], java.util.List), getAttributePathBase/7353226=([org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl], org.hibernate.boot.model.source.spi.AttributePath), cast-from-var3121-to-var3606=([org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl], org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl), getName/957761080=([org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl], java.lang.String), append/512614398=([org.hibernate.boot.model.source.spi.AttributePath, java.lang.String], org.hibernate.boot.model.source.spi.AttributePath), attributePath/586723221=([org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl], org.hibernate.boot.model.source.spi.AttributePath), getAttributeRoleBase/355222378=([org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl], org.hibernate.boot.model.source.spi.AttributeRole), append/-1883144098=([org.hibernate.boot.model.source.spi.AttributeRole, java.lang.String], org.hibernate.boot.model.source.spi.AttributeRole), attributeRole/586723221=([org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl], org.hibernate.boot.model.source.spi.AttributeRole), getToolingHintContext/-1993754541=([org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl], org.hibernate.boot.model.source.spi.ToolingHintContext), var3218_collectToolingHints/-1643529099=([org.hibernate.boot.model.source.spi.ToolingHintContext, org.hibernate.boot.jaxb.hbm.spi.ToolingHintContainer], org.hibernate.boot.model.source.spi.ToolingHintContext), cast-from-var2190-to-var871=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampAttributeType], org.hibernate.boot.jaxb.hbm.spi.ToolingHintContainer), toolingHintContext/586723221=([org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl], org.hibernate.boot.model.source.spi.ToolingHintContext)}
; {var1141=org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl, var2344=r0, var2490=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var2833=r1, var3121=org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl, var957=r9, var2190=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampAttributeType, var1384=r2, var3537=org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode, var1664=org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl, var1715=$r3, var1409=$r6, var710=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampSourceEnum, var1161=$r4, var2251=$r5, var236=$z0, var1060=$r19, var1915=org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl$1, var2875=$r7, var3338=org.hibernate.boot.model.source.spi.ColumnSource, var42=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper, var740=null_type, var3396=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource, var1131=$r18, var1625=java.util.List, var3638=java.util.Collections, var3977=java.lang.Object, var587=$r8, var3653=org.hibernate.boot.model.source.spi.AttributePath, var3606=org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl, var3243=$r11, var285=$r10, var2464=$r12, var3565=org.hibernate.boot.model.source.spi.AttributeRole, var1382=$r14, var3164=$r13, var1572=$r15, var947=org.hibernate.boot.model.source.spi.ToolingHintContext, var86=$r16, var3218=org.hibernate.boot.model.source.internal.hbm.Helper, var871=org.hibernate.boot.jaxb.hbm.spi.ToolingHintContainer, var808=$r17}
; {org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl=var1141, r0=var2344, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var2490, r1=var2833, org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl=var3121, r9=var957, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampAttributeType=var2190, r2=var1384, org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode=var3537, org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl=var1664, $r3=var1715, $r6=var1409, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampSourceEnum=var710, $r4=var1161, $r5=var2251, $z0=var236, $r19=var1060, org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl$1=var1915, $r7=var2875, org.hibernate.boot.model.source.spi.ColumnSource=var3338, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper=var42, null_type=var740, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource=var3396, $r18=var1131, java.util.List=var1625, java.util.Collections=var3638, java.lang.Object=var3977, $r8=var587, org.hibernate.boot.model.source.spi.AttributePath=var3653, org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl=var3606, $r11=var3243, $r10=var285, $r12=var2464, org.hibernate.boot.model.source.spi.AttributeRole=var3565, $r14=var1382, $r13=var3164, $r15=var1572, org.hibernate.boot.model.source.spi.ToolingHintContext=var947, $r16=var86, org.hibernate.boot.model.source.internal.hbm.Helper=var3218, org.hibernate.boot.jaxb.hbm.spi.ToolingHintContainer=var871, $r17=var808}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl;	r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r9 := @parameter1: org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl;	r2 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampAttributeType;	specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode: void <init>(org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r1);	r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampAttributeType timestampElement> = r2;	$r3 = new org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl;	$r6 = "db";	$r4 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampAttributeType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampSourceEnum getSource()>();	$r5 = virtualinvoke $r4.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampSourceEnum: java.lang.String value()>();	$z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>($r5);	if $z0 == 0 goto $r19 = "timestamp";	$r19 = "dbtimestamp";	goto [?= specialinvoke $r3.<org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl: void <init>(java.lang.String)>($r19)];	specialinvoke $r3.<org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl: void <init>(java.lang.String)>($r19);	r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl typeSource> = $r3;	$r7 = new org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl$1;	specialinvoke $r7.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl$1: void <init>(org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl)>(r0);	$r18 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: org.hibernate.boot.model.source.spi.ColumnSource buildColumnSource(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>(r1, null, $r7);	$r8 = staticinvoke <java.util.Collections: java.util.List singletonList(java.lang.Object)>($r18);	r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: java.util.List relationalValueSources> = $r8;	$r11 = virtualinvoke r9.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.model.source.spi.AttributePath getAttributePathBase()>();	$r10 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: java.lang.String getName()>();	$r12 = virtualinvoke $r11.<org.hibernate.boot.model.source.spi.AttributePath: org.hibernate.boot.model.source.spi.AttributePath append(java.lang.String)>($r10);	r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: org.hibernate.boot.model.source.spi.AttributePath attributePath> = $r12;	$r14 = virtualinvoke r9.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRoleBase()>();	$r13 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: java.lang.String getName()>();	$r15 = virtualinvoke $r14.<org.hibernate.boot.model.source.spi.AttributeRole: org.hibernate.boot.model.source.spi.AttributeRole append(java.lang.String)>($r13);	r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: org.hibernate.boot.model.source.spi.AttributeRole attributeRole> = $r15;	$r16 = virtualinvoke r9.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.model.source.spi.ToolingHintContext getToolingHintContext()>();	$r17 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.Helper: org.hibernate.boot.model.source.spi.ToolingHintContext collectToolingHints(org.hibernate.boot.model.source.spi.ToolingHintContext,org.hibernate.boot.jaxb.hbm.spi.ToolingHintContainer)>($r16, r2);	r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: org.hibernate.boot.model.source.spi.ToolingHintContext toolingHintContext> = $r17;	return
;block_num 3