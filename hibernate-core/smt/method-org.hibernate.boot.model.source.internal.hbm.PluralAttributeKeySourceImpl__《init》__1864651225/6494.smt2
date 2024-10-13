(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3069 0)
(declare-sort var1185 0)
(declare-sort var1007 0)
(declare-sort var1674 0)
(declare-sort var1624 0)
(declare-sort var3104 0)
(declare-sort var10 0)
(declare-sort var122 0)
(declare-sort var2749 0)
(declare-sort var1054 0)
(declare-sort var849 0)
(declare-sort var1829 0)
(declare-sort var295 0)
(declare-sort var2413 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-238456656 (var3104 var1185) void)
(declare-fun cast-from-var3069-to-var3104 (var3069) var3104)
(declare-fun getForeignKey/1302170125 (var1674) String)
(declare-fun var10_nullIfEmpty/260894482 (String) String)
(declare-fun explicitFkName/1616202742 (var3069) String)
(declare-fun getPropertyRef/-1341367292 (var1674) String)
(declare-fun referencedPropertyName/1616202742 (var3069) String)
(declare-fun getOnDelete/-485008623 (var1007) var122)
(declare-fun value/-1362515340 (var122) String)
(declare-fun cascadeDeletesAtFkLevel/1616202742 (var3069) Bool)
(declare-fun isNotNull/1615122614 (var1007) var2749)
(declare-fun booleanValue/-1820462562 (var2749) Bool)
(declare-fun nullable/1616202742 (var3069) Bool)
(declare-fun isUpdate/1809420545 (var1007) var2749)
(declare-fun updateable/1616202742 (var3069) Bool)
(declare-fun sourceMappingDocument/1507685790 (var3104) var1185)
(declare-fun var1054-init () var1054)
(declare-fun <init>/536588254 (var1054 var3069 var1007) void)
(declare-fun var1829_buildValueSources/1952860664 (var1185 String var2413) var849)
(declare-fun cast-from-var1054-to-var2413 (var1054) var2413)
(declare-fun valueSources/1616202742 (var3069) var849)
(declare-const null-var3069 var3069)
(declare-const null-var1185 var1185)
(declare-const null-var1007 var1007)
(declare-const null-var1674 var1674)
(declare-const null-var1624 var1624)
(declare-const null-var122 var122)
(declare-const null-var2749 var2749)
(declare-const null-String String)
(declare-const var2448 var3069) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl 
(assert (not (= var2448 null-var3069)))
(declare-const var3216 var1185) ; Statement: r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var3216 null-var1185)))
(declare-const var503 var1007) ; Statement: r7 := @parameter1: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType 
(assert (not (= var503 null-var1007)))
(declare-const var855 var1674) ; Statement: r2 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType 
(assert (not (= var855 null-var1674)))
(declare-const var3757 var1624) ; Statement: r24 := @parameter3: org.hibernate.boot.model.source.spi.AttributeSourceContainer 
(assert (not (= var3757 null-var1624)))
(assert true)
;(assert (<init>/-238456656 (cast-from-var3069-to-var3104 var2448) var3216)) ; Statement: specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode: void <init>(org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r1) 

(declare-const var2448!1 var3069)
(declare-const var3216!1 var1185)
(assert true)
(define-const var3285 String (getForeignKey/1302170125 var855)) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.String getForeignKey()>() 
(define-const var3625 String (var10_nullIfEmpty/260894482 var3285)) ; Statement: $r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r3) 
(declare-const var2448!2 var3069)
(assert (not (= var2448!2 null-var3069)))
(assert (= (explicitFkName/1616202742 var2448!2) var3625)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.lang.String explicitFkName> = $r4 
(assert true)
(define-const var457 String (getPropertyRef/-1341367292 var855)) ; Statement: $r5 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.String getPropertyRef()>() 
(define-const var3138 String (var10_nullIfEmpty/260894482 var457)) ; Statement: $r6 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r5) 
(declare-const var2448!3 var3069)
(assert (not (= var2448!3 null-var3069)))
(assert (= (referencedPropertyName/1616202742 var2448!3) var3138)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.lang.String referencedPropertyName> = $r6 
(assert true)
(define-const var2585 var122 (getOnDelete/-485008623 var503)) ; Statement: $r8 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum getOnDelete()>() 
 ; Statement: if $r8 != null goto $r11 = "cascade" 
(assert (not (= var2585 null-var122))) ; Cond: $r8 != null 
(define-const var1001 String "cascade") ; Statement: $r11 = "cascade" 
(assert true)
(define-const var1122 var122 (getOnDelete/-485008623 var503)) ; Statement: $r9 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum getOnDelete()>() 
(assert true)
(define-const var2224 String (value/-1362515340 var1122)) ; Statement: $r10 = virtualinvoke $r9.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum: java.lang.String value()>() 
(assert true)
(define-const var214 Bool (= var1001 var2224)) ; Statement: $z0 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>($r10) 
(declare-const var2448!4 var3069)
(assert (not (= var2448!4 null-var3069)))
(assert (= (cascadeDeletesAtFkLevel/1616202742 var2448!4) var214)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean cascadeDeletesAtFkLevel> = $z0 
(assert true) ; Non Conditional
(assert true)
(define-const var1250 var2749 (isNotNull/1615122614 var503)) ; Statement: $r12 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>() 
 ; Statement: if $r12 != null goto $r13 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>() 
(assert (not (= var1250 null-var2749))) ; Cond: $r12 != null 
(assert true)
(define-const var3747 var2749 (isNotNull/1615122614 var503)) ; Statement: $r13 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>() 
(assert true)
(define-const var1998 Bool (booleanValue/-1820462562 var3747)) ; Statement: $z1 = virtualinvoke $r13.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z1 != 0 goto $z8 = 0 
(assert (not (not (= (ite var1998 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var1153 Bool (ite (= 1 1) true false)) ; Statement: $z8 = 1 
 ; Statement: goto [?= r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean nullable> = $z8] 
(assert true) ; Non Conditional
(declare-const var2448!5 var3069)
(assert (not (= var2448!5 null-var3069)))
(assert (= (nullable/1616202742 var2448!5) var1153)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean nullable> = $z8 
(assert true) ; Non Conditional
(assert true)
(define-const var3855 var2749 (isUpdate/1809420545 var503)) ; Statement: $r25 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>() 
 ; Statement: if $r25 != null goto $r14 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>() 
(assert (not (= var3855 null-var2749))) ; Cond: $r25 != null 
(assert true)
(define-const var3941 var2749 (isUpdate/1809420545 var503)) ; Statement: $r14 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>() 
(assert true)
(define-const var3817 Bool (booleanValue/-1820462562 var3941)) ; Statement: $z2 = virtualinvoke $r14.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var2448!6 var3069)
(assert (not (= var2448!6 null-var3069)))
(assert (= (updateable/1616202742 var2448!6) var3817)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean updateable> = $z2 
(assert true) ; Non Conditional
(assert true)
(define-const var1263 var1185 (sourceMappingDocument/1507685790 (cast-from-var3069-to-var3104 var2448!6))) ; Statement: $r16 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument sourceMappingDocument()>() 
(define-const var1401 var1054 var1054-init) ; Statement: $r15 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2 
(assert true)
;(assert (<init>/536588254 var1401 var2448!6 var503)) ; Statement: specialinvoke $r15.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType)>(r0, r7) 

(declare-const var1401!1 var1054)
(declare-const var2448!7 var3069)
(declare-const var503!1 var1007)
(define-const var660 var849 (var1829_buildValueSources/1952860664 var1263 null-String (cast-from-var1054-to-var2413 var1401!1))) ; Statement: $r17 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: java.util.List buildValueSources(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>($r16, null, $r15) 
(declare-const var2448!8 var3069)
(assert (not (= var2448!8 null-var3069)))
(assert (= (valueSources/1616202742 var2448!8) var660)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.util.List valueSources> = $r17 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-238456656=([org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode, org.hibernate.boot.model.source.internal.hbm.MappingDocument], void), cast-from-var3069-to-var3104=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode), getForeignKey/1302170125=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType], java.lang.String), var10_nullIfEmpty/260894482=([java.lang.String], java.lang.String), explicitFkName/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], java.lang.String), getPropertyRef/-1341367292=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType], java.lang.String), referencedPropertyName/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], java.lang.String), getOnDelete/-485008623=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum), value/-1362515340=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum], java.lang.String), cascadeDeletesAtFkLevel/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], boolean), isNotNull/1615122614=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), nullable/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], boolean), isUpdate/1809420545=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType], java.lang.Boolean), updateable/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], boolean), sourceMappingDocument/1507685790=([org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode], org.hibernate.boot.model.source.internal.hbm.MappingDocument), var1054-init=([], org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2), <init>/536588254=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2, org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType], void), var1829_buildValueSources/1952860664=([org.hibernate.boot.model.source.internal.hbm.MappingDocument, java.lang.String, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource], java.util.List), cast-from-var1054-to-var2413=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2], org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource), valueSources/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], java.util.List)}
; {var3069=org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl, var2448=r0, var1185=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var3216=r1, var1007=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType, var503=r7, var1674=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType, var855=r2, var1624=org.hibernate.boot.model.source.spi.AttributeSourceContainer, var3757=r24, var3104=org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode, var3285=$r3, var10=org.hibernate.internal.util.StringHelper, var3625=$r4, var457=$r5, var3138=$r6, var122=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum, var2585=$r8, var1001=$r11, var1122=$r9, var2224=$r10, var214=$z0, var2749=java.lang.Boolean, var1250=$r12, var3747=$r13, var1998=$z1, var1153=$z8, var3855=$r25, var3941=$r14, var3817=$z2, var1263=$r16, var1054=org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2, var1401=$r15, var849=java.util.List, var1829=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper, var295=null_type, var2413=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource, var660=$r17}
; {org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl=var3069, r0=var2448, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var1185, r1=var3216, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType=var1007, r7=var503, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType=var1674, r2=var855, org.hibernate.boot.model.source.spi.AttributeSourceContainer=var1624, r24=var3757, org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode=var3104, $r3=var3285, org.hibernate.internal.util.StringHelper=var10, $r4=var3625, $r5=var457, $r6=var3138, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum=var122, $r8=var2585, $r11=var1001, $r9=var1122, $r10=var2224, $z0=var214, java.lang.Boolean=var2749, $r12=var1250, $r13=var3747, $z1=var1998, $z8=var1153, $r25=var3855, $r14=var3941, $z2=var3817, $r16=var1263, org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2=var1054, $r15=var1401, java.util.List=var849, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper=var1829, null_type=var295, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource=var2413, $r17=var660}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl;	r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r7 := @parameter1: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType;	r2 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType;	r24 := @parameter3: org.hibernate.boot.model.source.spi.AttributeSourceContainer;	specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode: void <init>(org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r1);	$r3 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.String getForeignKey()>();	$r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r3);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.lang.String explicitFkName> = $r4;	$r5 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.String getPropertyRef()>();	$r6 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r5);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.lang.String referencedPropertyName> = $r6;	$r8 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum getOnDelete()>();	if $r8 != null goto $r11 = "cascade";	$r11 = "cascade";	$r9 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum getOnDelete()>();	$r10 = virtualinvoke $r9.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum: java.lang.String value()>();	$z0 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>($r10);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean cascadeDeletesAtFkLevel> = $z0;	$r12 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>();	if $r12 != null goto $r13 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>();	$r13 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>();	$z1 = virtualinvoke $r13.<java.lang.Boolean: boolean booleanValue()>();	if $z1 != 0 goto $z8 = 0;	$z8 = 1;	goto [?= r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean nullable> = $z8];	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean nullable> = $z8;	$r25 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>();	if $r25 != null goto $r14 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>();	$r14 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>();	$z2 = virtualinvoke $r14.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean updateable> = $z2;	$r16 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument sourceMappingDocument()>();	$r15 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2;	specialinvoke $r15.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType)>(r0, r7);	$r17 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: java.util.List buildValueSources(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>($r16, null, $r15);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.util.List valueSources> = $r17;	return
;block_num 9