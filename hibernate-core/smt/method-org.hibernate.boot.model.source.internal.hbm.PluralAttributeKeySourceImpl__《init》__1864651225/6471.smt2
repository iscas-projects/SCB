(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2872 0)
(declare-sort var300 0)
(declare-sort var2345 0)
(declare-sort var3219 0)
(declare-sort var2453 0)
(declare-sort var1140 0)
(declare-sort var2246 0)
(declare-sort var1731 0)
(declare-sort var1268 0)
(declare-sort var1923 0)
(declare-sort var304 0)
(declare-sort var2231 0)
(declare-sort var1824 0)
(declare-sort var410 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-238456656 (var1140 var300) void)
(declare-fun cast-from-var2872-to-var1140 (var2872) var1140)
(declare-fun getForeignKey/1302170125 (var3219) String)
(declare-fun var2246_nullIfEmpty/260894482 (String) String)
(declare-fun explicitFkName/1616202742 (var2872) String)
(declare-fun getPropertyRef/-1341367292 (var3219) String)
(declare-fun referencedPropertyName/1616202742 (var2872) String)
(declare-fun getOnDelete/-485008623 (var2345) var1731)
(declare-fun value/-1362515340 (var1731) String)
(declare-fun cascadeDeletesAtFkLevel/1616202742 (var2872) Bool)
(declare-fun isNotNull/1615122614 (var2345) var1268)
(declare-fun isNotNull/-1025191901 (var3219) var1268)
(declare-fun nullable/1616202742 (var2872) Bool)
(declare-fun isUpdate/1809420545 (var2345) var1268)
(declare-fun booleanValue/-1820462562 (var1268) Bool)
(declare-fun updateable/1616202742 (var2872) Bool)
(declare-fun sourceMappingDocument/1507685790 (var1140) var300)
(declare-fun var1923-init () var1923)
(declare-fun <init>/536588254 (var1923 var2872 var2345) void)
(declare-fun var2231_buildValueSources/1952860664 (var300 String var410) var304)
(declare-fun cast-from-var1923-to-var410 (var1923) var410)
(declare-fun valueSources/1616202742 (var2872) var304)
(declare-const null-var2872 var2872)
(declare-const null-var300 var300)
(declare-const null-var2345 var2345)
(declare-const null-var3219 var3219)
(declare-const null-var2453 var2453)
(declare-const null-var1731 var1731)
(declare-const null-var1268 var1268)
(declare-const null-String String)
(declare-const var3766 var2872) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl 
(assert (not (= var3766 null-var2872)))
(declare-const var2723 var300) ; Statement: r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var2723 null-var300)))
(declare-const var3661 var2345) ; Statement: r7 := @parameter1: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType 
(assert (not (= var3661 null-var2345)))
(declare-const var1466 var3219) ; Statement: r2 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType 
(assert (not (= var1466 null-var3219)))
(declare-const var2261 var2453) ; Statement: r24 := @parameter3: org.hibernate.boot.model.source.spi.AttributeSourceContainer 
(assert (not (= var2261 null-var2453)))
(assert true)
;(assert (<init>/-238456656 (cast-from-var2872-to-var1140 var3766) var2723)) ; Statement: specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode: void <init>(org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r1) 

(declare-const var3766!1 var2872)
(declare-const var2723!1 var300)
(assert true)
(define-const var1725 String (getForeignKey/1302170125 var1466)) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.String getForeignKey()>() 
(define-const var73 String (var2246_nullIfEmpty/260894482 var1725)) ; Statement: $r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r3) 
(declare-const var3766!2 var2872)
(assert (not (= var3766!2 null-var2872)))
(assert (= (explicitFkName/1616202742 var3766!2) var73)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.lang.String explicitFkName> = $r4 
(assert true)
(define-const var2567 String (getPropertyRef/-1341367292 var1466)) ; Statement: $r5 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.String getPropertyRef()>() 
(define-const var1703 String (var2246_nullIfEmpty/260894482 var2567)) ; Statement: $r6 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r5) 
(declare-const var3766!3 var2872)
(assert (not (= var3766!3 null-var2872)))
(assert (= (referencedPropertyName/1616202742 var3766!3) var1703)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.lang.String referencedPropertyName> = $r6 
(assert true)
(define-const var974 var1731 (getOnDelete/-485008623 var3661)) ; Statement: $r8 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum getOnDelete()>() 
 ; Statement: if $r8 != null goto $r11 = "cascade" 
(assert (not (= var974 null-var1731))) ; Cond: $r8 != null 
(define-const var173 String "cascade") ; Statement: $r11 = "cascade" 
(assert true)
(define-const var1710 var1731 (getOnDelete/-485008623 var3661)) ; Statement: $r9 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum getOnDelete()>() 
(assert true)
(define-const var3474 String (value/-1362515340 var1710)) ; Statement: $r10 = virtualinvoke $r9.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum: java.lang.String value()>() 
(assert true)
(define-const var2157 Bool (= var173 var3474)) ; Statement: $z0 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>($r10) 
(declare-const var3766!4 var2872)
(assert (not (= var3766!4 null-var2872)))
(assert (= (cascadeDeletesAtFkLevel/1616202742 var3766!4) var2157)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean cascadeDeletesAtFkLevel> = $z0 
(assert true) ; Non Conditional
(assert true)
(define-const var2954 var1268 (isNotNull/1615122614 var3661)) ; Statement: $r12 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>() 
 ; Statement: if $r12 != null goto $r13 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>() 
(assert (not (not (= var2954 null-var1268)))) ; Negate: Cond: $r12 != null  
(assert true)
(define-const var531 var1268 (isNotNull/-1025191901 var1466)) ; Statement: $r18 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.Boolean isNotNull()>() 
 ; Statement: if $r18 == null goto $z7 = 1 
(assert (= var531 null-var1268)) ; Cond: $r18 == null 
(define-const var2673 Bool (ite (= 1 1) true false)) ; Statement: $z7 = 1 
 ; Statement: goto [?= r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean nullable> = $z7] 
(assert true) ; Non Conditional
(declare-const var3766!5 var2872)
(assert (not (= var3766!5 null-var2872)))
(assert (= (nullable/1616202742 var3766!5) var2673)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean nullable> = $z7 
 ; Statement: goto [?= $r25 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2945 var1268 (isUpdate/1809420545 var3661)) ; Statement: $r25 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>() 
 ; Statement: if $r25 != null goto $r14 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>() 
(assert (not (= var2945 null-var1268))) ; Cond: $r25 != null 
(assert true)
(define-const var1386 var1268 (isUpdate/1809420545 var3661)) ; Statement: $r14 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>() 
(assert true)
(define-const var770 Bool (booleanValue/-1820462562 var1386)) ; Statement: $z2 = virtualinvoke $r14.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var3766!6 var2872)
(assert (not (= var3766!6 null-var2872)))
(assert (= (updateable/1616202742 var3766!6) var770)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean updateable> = $z2 
(assert true) ; Non Conditional
(assert true)
(define-const var3190 var300 (sourceMappingDocument/1507685790 (cast-from-var2872-to-var1140 var3766!6))) ; Statement: $r16 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument sourceMappingDocument()>() 
(define-const var1532 var1923 var1923-init) ; Statement: $r15 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2 
(assert true)
;(assert (<init>/536588254 var1532 var3766!6 var3661)) ; Statement: specialinvoke $r15.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType)>(r0, r7) 

(declare-const var1532!1 var1923)
(declare-const var3766!7 var2872)
(declare-const var3661!1 var2345)
(define-const var2600 var304 (var2231_buildValueSources/1952860664 var3190 null-String (cast-from-var1923-to-var410 var1532!1))) ; Statement: $r17 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: java.util.List buildValueSources(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>($r16, null, $r15) 
(declare-const var3766!8 var2872)
(assert (not (= var3766!8 null-var2872)))
(assert (= (valueSources/1616202742 var3766!8) var2600)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.util.List valueSources> = $r17 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-238456656=([org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode, org.hibernate.boot.model.source.internal.hbm.MappingDocument], void), cast-from-var2872-to-var1140=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode), getForeignKey/1302170125=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType], java.lang.String), var2246_nullIfEmpty/260894482=([java.lang.String], java.lang.String), explicitFkName/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], java.lang.String), getPropertyRef/-1341367292=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType], java.lang.String), referencedPropertyName/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], java.lang.String), getOnDelete/-485008623=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum), value/-1362515340=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum], java.lang.String), cascadeDeletesAtFkLevel/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], boolean), isNotNull/1615122614=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType], java.lang.Boolean), isNotNull/-1025191901=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType], java.lang.Boolean), nullable/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], boolean), isUpdate/1809420545=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), updateable/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], boolean), sourceMappingDocument/1507685790=([org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode], org.hibernate.boot.model.source.internal.hbm.MappingDocument), var1923-init=([], org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2), <init>/536588254=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2, org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType], void), var2231_buildValueSources/1952860664=([org.hibernate.boot.model.source.internal.hbm.MappingDocument, java.lang.String, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource], java.util.List), cast-from-var1923-to-var410=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2], org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource), valueSources/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], java.util.List)}
; {var2872=org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl, var3766=r0, var300=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var2723=r1, var2345=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType, var3661=r7, var3219=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType, var1466=r2, var2453=org.hibernate.boot.model.source.spi.AttributeSourceContainer, var2261=r24, var1140=org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode, var1725=$r3, var2246=org.hibernate.internal.util.StringHelper, var73=$r4, var2567=$r5, var1703=$r6, var1731=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum, var974=$r8, var173=$r11, var1710=$r9, var3474=$r10, var2157=$z0, var1268=java.lang.Boolean, var2954=$r12, var531=$r18, var2673=$z7, var2945=$r25, var1386=$r14, var770=$z2, var3190=$r16, var1923=org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2, var1532=$r15, var304=java.util.List, var2231=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper, var1824=null_type, var410=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource, var2600=$r17}
; {org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl=var2872, r0=var3766, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var300, r1=var2723, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType=var2345, r7=var3661, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType=var3219, r2=var1466, org.hibernate.boot.model.source.spi.AttributeSourceContainer=var2453, r24=var2261, org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode=var1140, $r3=var1725, org.hibernate.internal.util.StringHelper=var2246, $r4=var73, $r5=var2567, $r6=var1703, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum=var1731, $r8=var974, $r11=var173, $r9=var1710, $r10=var3474, $z0=var2157, java.lang.Boolean=var1268, $r12=var2954, $r18=var531, $z7=var2673, $r25=var2945, $r14=var1386, $z2=var770, $r16=var3190, org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2=var1923, $r15=var1532, java.util.List=var304, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper=var2231, null_type=var1824, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource=var410, $r17=var2600}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl;	r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r7 := @parameter1: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType;	r2 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType;	r24 := @parameter3: org.hibernate.boot.model.source.spi.AttributeSourceContainer;	specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode: void <init>(org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r1);	$r3 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.String getForeignKey()>();	$r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r3);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.lang.String explicitFkName> = $r4;	$r5 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.String getPropertyRef()>();	$r6 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r5);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.lang.String referencedPropertyName> = $r6;	$r8 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum getOnDelete()>();	if $r8 != null goto $r11 = "cascade";	$r11 = "cascade";	$r9 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum getOnDelete()>();	$r10 = virtualinvoke $r9.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum: java.lang.String value()>();	$z0 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>($r10);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean cascadeDeletesAtFkLevel> = $z0;	$r12 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>();	if $r12 != null goto $r13 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>();	$r18 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.Boolean isNotNull()>();	if $r18 == null goto $z7 = 1;	$z7 = 1;	goto [?= r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean nullable> = $z7];	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean nullable> = $z7;	goto [?= $r25 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>()];	$r25 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>();	if $r25 != null goto $r14 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>();	$r14 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>();	$z2 = virtualinvoke $r14.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean updateable> = $z2;	$r16 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument sourceMappingDocument()>();	$r15 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2;	specialinvoke $r15.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType)>(r0, r7);	$r17 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: java.util.List buildValueSources(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>($r16, null, $r15);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.util.List valueSources> = $r17;	return
;block_num 9