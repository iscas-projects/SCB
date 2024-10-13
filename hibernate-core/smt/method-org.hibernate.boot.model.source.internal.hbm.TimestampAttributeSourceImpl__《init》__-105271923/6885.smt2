(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3023 0)
(declare-sort var2200 0)
(declare-sort var2140 0)
(declare-sort var1933 0)
(declare-sort var1742 0)
(declare-sort var1808 0)
(declare-sort var2573 0)
(declare-sort var2734 0)
(declare-sort var162 0)
(declare-sort var3541 0)
(declare-sort var2500 0)
(declare-sort var1020 0)
(declare-sort var2084 0)
(declare-sort var1217 0)
(declare-sort var3849 0)
(declare-sort var2656 0)
(declare-sort var3292 0)
(declare-sort var849 0)
(declare-sort var2737 0)
(declare-sort var3276 0)
(declare-sort var181 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-238456656 (var1742 var2200) void)
(declare-fun cast-from-var3023-to-var1742 (var3023) var1742)
(declare-fun timestampElement/586723221 (var3023) var1933)
(declare-fun var1808-init () var1808)
(declare-fun getSource/-1920623184 (var1933) var2573)
(declare-fun value/243550769 (var2573) String)
(declare-fun <init>/-1594225575 (var1808 String) void)
(declare-fun typeSource/586723221 (var3023) var1808)
(declare-fun var2734-init () var2734)
(declare-fun <init>/-1333246060 (var2734 var3023) void)
(declare-fun var3541_buildColumnSource/1614518831 (var2200 String var1020) var162)
(declare-fun cast-from-var2734-to-var1020 (var2734) var1020)
(declare-fun var1217_singletonList/684126186 (var3849) var2084)
(declare-fun cast-from-var162-to-var3849 (var162) var3849)
(declare-fun relationalValueSources/586723221 (var3023) var2084)
(declare-fun getAttributePathBase/7353226 (var3292) var2656)
(declare-fun cast-from-var2140-to-var3292 (var2140) var3292)
(declare-fun getName/957761080 (var3023) String)
(declare-fun append/512614398 (var2656 String) var2656)
(declare-fun attributePath/586723221 (var3023) var2656)
(declare-fun getAttributeRoleBase/355222378 (var3292) var849)
(declare-fun append/-1883144098 (var849 String) var849)
(declare-fun attributeRole/586723221 (var3023) var849)
(declare-fun getToolingHintContext/-1993754541 (var3292) var2737)
(declare-fun var3276_collectToolingHints/-1643529099 (var2737 var181) var2737)
(declare-fun cast-from-var1933-to-var181 (var1933) var181)
(declare-fun toolingHintContext/586723221 (var3023) var2737)
(declare-const null-var3023 var3023)
(declare-const null-var2200 var2200)
(declare-const null-var2140 var2140)
(declare-const null-var1933 var1933)
(declare-const null-String String)
(declare-const var2460 var3023) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl 
(assert (not (= var2460 null-var3023)))
(declare-const var2089 var2200) ; Statement: r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var2089 null-var2200)))
(declare-const var2583 var2140) ; Statement: r9 := @parameter1: org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl 
(assert (not (= var2583 null-var2140)))
(declare-const var647 var1933) ; Statement: r2 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampAttributeType 
(assert (not (= var647 null-var1933)))
(assert true)
;(assert (<init>/-238456656 (cast-from-var3023-to-var1742 var2460) var2089)) ; Statement: specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode: void <init>(org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r1) 

(declare-const var2460!1 var3023)
(declare-const var2089!1 var2200)
(declare-const var2460!2 var3023)
(assert (not (= var2460!2 null-var3023)))
(assert (= (timestampElement/586723221 var2460!2) var647)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampAttributeType timestampElement> = r2 
(define-const var3253 var1808 var1808-init) ; Statement: $r3 = new org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl 
(define-const var1386 String "db") ; Statement: $r6 = "db" 
(assert true)
(define-const var3969 var2573 (getSource/-1920623184 var647)) ; Statement: $r4 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampAttributeType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampSourceEnum getSource()>() 
(assert true)
(define-const var1778 String (value/243550769 var3969)) ; Statement: $r5 = virtualinvoke $r4.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampSourceEnum: java.lang.String value()>() 
(assert true)
(define-const var2159 Bool (= var1386 var1778)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>($r5) 
 ; Statement: if $z0 == 0 goto $r19 = "timestamp" 
(assert (= (ite var2159 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2942 String "timestamp") ; Statement: $r19 = "timestamp" 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1594225575 var3253 var2942)) ; Statement: specialinvoke $r3.<org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl: void <init>(java.lang.String)>($r19) 

(declare-const var3253!1 var1808)
(declare-const var2942!1 String)
(declare-const var2460!3 var3023)
(assert (not (= var2460!3 null-var3023)))
(assert (= (typeSource/586723221 var2460!3) var3253!1)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl typeSource> = $r3 
(define-const var1553 var2734 var2734-init) ; Statement: $r7 = new org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl$1 
(assert true)
;(assert (<init>/-1333246060 var1553 var2460!3)) ; Statement: specialinvoke $r7.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl$1: void <init>(org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl)>(r0) 

(declare-const var1553!1 var2734)
(declare-const var2460!4 var3023)
(define-const var3597 var162 (var3541_buildColumnSource/1614518831 var2089!1 null-String (cast-from-var2734-to-var1020 var1553!1))) ; Statement: $r18 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: org.hibernate.boot.model.source.spi.ColumnSource buildColumnSource(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>(r1, null, $r7) 
(define-const var1688 var2084 (var1217_singletonList/684126186 (cast-from-var162-to-var3849 var3597))) ; Statement: $r8 = staticinvoke <java.util.Collections: java.util.List singletonList(java.lang.Object)>($r18) 
(declare-const var2460!5 var3023)
(assert (not (= var2460!5 null-var3023)))
(assert (= (relationalValueSources/586723221 var2460!5) var1688)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: java.util.List relationalValueSources> = $r8 
(assert true)
(define-const var40 var2656 (getAttributePathBase/7353226 (cast-from-var2140-to-var3292 var2583))) ; Statement: $r11 = virtualinvoke r9.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.model.source.spi.AttributePath getAttributePathBase()>() 
(assert true)
(define-const var1779 String (getName/957761080 var2460!5)) ; Statement: $r10 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: java.lang.String getName()>() 
(assert true)
(define-const var3900 var2656 (append/512614398 var40 var1779)) ; Statement: $r12 = virtualinvoke $r11.<org.hibernate.boot.model.source.spi.AttributePath: org.hibernate.boot.model.source.spi.AttributePath append(java.lang.String)>($r10) 
(declare-const var2460!6 var3023)
(assert (not (= var2460!6 null-var3023)))
(assert (= (attributePath/586723221 var2460!6) var3900)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: org.hibernate.boot.model.source.spi.AttributePath attributePath> = $r12 
(assert true)
(define-const var1683 var849 (getAttributeRoleBase/355222378 (cast-from-var2140-to-var3292 var2583))) ; Statement: $r14 = virtualinvoke r9.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRoleBase()>() 
(assert true)
(define-const var319 String (getName/957761080 var2460!6)) ; Statement: $r13 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: java.lang.String getName()>() 
(assert true)
(define-const var2234 var849 (append/-1883144098 var1683 var319)) ; Statement: $r15 = virtualinvoke $r14.<org.hibernate.boot.model.source.spi.AttributeRole: org.hibernate.boot.model.source.spi.AttributeRole append(java.lang.String)>($r13) 
(declare-const var2460!7 var3023)
(assert (not (= var2460!7 null-var3023)))
(assert (= (attributeRole/586723221 var2460!7) var2234)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: org.hibernate.boot.model.source.spi.AttributeRole attributeRole> = $r15 
(assert true)
(define-const var3121 var2737 (getToolingHintContext/-1993754541 (cast-from-var2140-to-var3292 var2583))) ; Statement: $r16 = virtualinvoke r9.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.model.source.spi.ToolingHintContext getToolingHintContext()>() 
(define-const var1303 var2737 (var3276_collectToolingHints/-1643529099 var3121 (cast-from-var1933-to-var181 var647))) ; Statement: $r17 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.Helper: org.hibernate.boot.model.source.spi.ToolingHintContext collectToolingHints(org.hibernate.boot.model.source.spi.ToolingHintContext,org.hibernate.boot.jaxb.hbm.spi.ToolingHintContainer)>($r16, r2) 
(declare-const var2460!8 var3023)
(assert (not (= var2460!8 null-var3023)))
(assert (= (toolingHintContext/586723221 var2460!8) var1303)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: org.hibernate.boot.model.source.spi.ToolingHintContext toolingHintContext> = $r17 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-238456656=([org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode, org.hibernate.boot.model.source.internal.hbm.MappingDocument], void), cast-from-var3023-to-var1742=([org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl], org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode), timestampElement/586723221=([org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampAttributeType), var1808-init=([], org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl), getSource/-1920623184=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampAttributeType], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampSourceEnum), value/243550769=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampSourceEnum], java.lang.String), <init>/-1594225575=([org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl, java.lang.String], void), typeSource/586723221=([org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl], org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl), var2734-init=([], org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl$1), <init>/-1333246060=([org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl$1, org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl], void), var3541_buildColumnSource/1614518831=([org.hibernate.boot.model.source.internal.hbm.MappingDocument, java.lang.String, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource], org.hibernate.boot.model.source.spi.ColumnSource), cast-from-var2734-to-var1020=([org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl$1], org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource), var1217_singletonList/684126186=([java.lang.Object], java.util.List), cast-from-var162-to-var3849=([org.hibernate.boot.model.source.spi.ColumnSource], java.lang.Object), relationalValueSources/586723221=([org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl], java.util.List), getAttributePathBase/7353226=([org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl], org.hibernate.boot.model.source.spi.AttributePath), cast-from-var2140-to-var3292=([org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl], org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl), getName/957761080=([org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl], java.lang.String), append/512614398=([org.hibernate.boot.model.source.spi.AttributePath, java.lang.String], org.hibernate.boot.model.source.spi.AttributePath), attributePath/586723221=([org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl], org.hibernate.boot.model.source.spi.AttributePath), getAttributeRoleBase/355222378=([org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl], org.hibernate.boot.model.source.spi.AttributeRole), append/-1883144098=([org.hibernate.boot.model.source.spi.AttributeRole, java.lang.String], org.hibernate.boot.model.source.spi.AttributeRole), attributeRole/586723221=([org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl], org.hibernate.boot.model.source.spi.AttributeRole), getToolingHintContext/-1993754541=([org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl], org.hibernate.boot.model.source.spi.ToolingHintContext), var3276_collectToolingHints/-1643529099=([org.hibernate.boot.model.source.spi.ToolingHintContext, org.hibernate.boot.jaxb.hbm.spi.ToolingHintContainer], org.hibernate.boot.model.source.spi.ToolingHintContext), cast-from-var1933-to-var181=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampAttributeType], org.hibernate.boot.jaxb.hbm.spi.ToolingHintContainer), toolingHintContext/586723221=([org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl], org.hibernate.boot.model.source.spi.ToolingHintContext)}
; {var3023=org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl, var2460=r0, var2200=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var2089=r1, var2140=org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl, var2583=r9, var1933=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampAttributeType, var647=r2, var1742=org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode, var1808=org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl, var3253=$r3, var1386=$r6, var2573=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampSourceEnum, var3969=$r4, var1778=$r5, var2159=$z0, var2942=$r19, var2734=org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl$1, var1553=$r7, var162=org.hibernate.boot.model.source.spi.ColumnSource, var3541=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper, var2500=null_type, var1020=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource, var3597=$r18, var2084=java.util.List, var1217=java.util.Collections, var3849=java.lang.Object, var1688=$r8, var2656=org.hibernate.boot.model.source.spi.AttributePath, var3292=org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl, var40=$r11, var1779=$r10, var3900=$r12, var849=org.hibernate.boot.model.source.spi.AttributeRole, var1683=$r14, var319=$r13, var2234=$r15, var2737=org.hibernate.boot.model.source.spi.ToolingHintContext, var3121=$r16, var3276=org.hibernate.boot.model.source.internal.hbm.Helper, var181=org.hibernate.boot.jaxb.hbm.spi.ToolingHintContainer, var1303=$r17}
; {org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl=var3023, r0=var2460, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var2200, r1=var2089, org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl=var2140, r9=var2583, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampAttributeType=var1933, r2=var647, org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode=var1742, org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl=var1808, $r3=var3253, $r6=var1386, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampSourceEnum=var2573, $r4=var3969, $r5=var1778, $z0=var2159, $r19=var2942, org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl$1=var2734, $r7=var1553, org.hibernate.boot.model.source.spi.ColumnSource=var162, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper=var3541, null_type=var2500, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource=var1020, $r18=var3597, java.util.List=var2084, java.util.Collections=var1217, java.lang.Object=var3849, $r8=var1688, org.hibernate.boot.model.source.spi.AttributePath=var2656, org.hibernate.boot.model.source.internal.hbm.AbstractEntitySourceImpl=var3292, $r11=var40, $r10=var1779, $r12=var3900, org.hibernate.boot.model.source.spi.AttributeRole=var849, $r14=var1683, $r13=var319, $r15=var2234, org.hibernate.boot.model.source.spi.ToolingHintContext=var2737, $r16=var3121, org.hibernate.boot.model.source.internal.hbm.Helper=var3276, org.hibernate.boot.jaxb.hbm.spi.ToolingHintContainer=var181, $r17=var1303}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl;	r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r9 := @parameter1: org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl;	r2 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampAttributeType;	specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode: void <init>(org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r1);	r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampAttributeType timestampElement> = r2;	$r3 = new org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl;	$r6 = "db";	$r4 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampAttributeType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampSourceEnum getSource()>();	$r5 = virtualinvoke $r4.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmTimestampSourceEnum: java.lang.String value()>();	$z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>($r5);	if $z0 == 0 goto $r19 = "timestamp";	$r19 = "timestamp";	specialinvoke $r3.<org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl: void <init>(java.lang.String)>($r19);	r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl typeSource> = $r3;	$r7 = new org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl$1;	specialinvoke $r7.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl$1: void <init>(org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl)>(r0);	$r18 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: org.hibernate.boot.model.source.spi.ColumnSource buildColumnSource(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>(r1, null, $r7);	$r8 = staticinvoke <java.util.Collections: java.util.List singletonList(java.lang.Object)>($r18);	r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: java.util.List relationalValueSources> = $r8;	$r11 = virtualinvoke r9.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.model.source.spi.AttributePath getAttributePathBase()>();	$r10 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: java.lang.String getName()>();	$r12 = virtualinvoke $r11.<org.hibernate.boot.model.source.spi.AttributePath: org.hibernate.boot.model.source.spi.AttributePath append(java.lang.String)>($r10);	r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: org.hibernate.boot.model.source.spi.AttributePath attributePath> = $r12;	$r14 = virtualinvoke r9.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRoleBase()>();	$r13 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: java.lang.String getName()>();	$r15 = virtualinvoke $r14.<org.hibernate.boot.model.source.spi.AttributeRole: org.hibernate.boot.model.source.spi.AttributeRole append(java.lang.String)>($r13);	r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: org.hibernate.boot.model.source.spi.AttributeRole attributeRole> = $r15;	$r16 = virtualinvoke r9.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.model.source.spi.ToolingHintContext getToolingHintContext()>();	$r17 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.Helper: org.hibernate.boot.model.source.spi.ToolingHintContext collectToolingHints(org.hibernate.boot.model.source.spi.ToolingHintContext,org.hibernate.boot.jaxb.hbm.spi.ToolingHintContainer)>($r16, r2);	r0.<org.hibernate.boot.model.source.internal.hbm.TimestampAttributeSourceImpl: org.hibernate.boot.model.source.spi.ToolingHintContext toolingHintContext> = $r17;	return
;block_num 3