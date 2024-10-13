(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2405 0)
(declare-sort var416 0)
(declare-sort var201 0)
(declare-sort var3931 0)
(declare-sort var2575 0)
(declare-sort var3786 0)
(declare-sort var1849 0)
(declare-sort var2527 0)
(declare-sort var985 0)
(declare-sort var1408 0)
(declare-sort var284 0)
(declare-sort var3074 0)
(declare-sort var2093 0)
(declare-sort var138 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-238456656 (var3786 var416) void)
(declare-fun cast-from-var2405-to-var3786 (var2405) var3786)
(declare-fun getForeignKey/1302170125 (var3931) String)
(declare-fun var1849_nullIfEmpty/260894482 (String) String)
(declare-fun explicitFkName/1616202742 (var2405) String)
(declare-fun getPropertyRef/-1341367292 (var3931) String)
(declare-fun referencedPropertyName/1616202742 (var2405) String)
(declare-fun getOnDelete/-485008623 (var201) var2527)
(declare-fun value/-1362515340 (var2527) String)
(declare-fun cascadeDeletesAtFkLevel/1616202742 (var2405) Bool)
(declare-fun isNotNull/1615122614 (var201) var985)
(declare-fun booleanValue/-1820462562 (var985) Bool)
(declare-fun nullable/1616202742 (var2405) Bool)
(declare-fun isUpdate/1809420545 (var201) var985)
(declare-fun updateable/1616202742 (var2405) Bool)
(declare-fun sourceMappingDocument/1507685790 (var3786) var416)
(declare-fun var1408-init () var1408)
(declare-fun <init>/536588254 (var1408 var2405 var201) void)
(declare-fun var3074_buildValueSources/1952860664 (var416 String var138) var284)
(declare-fun cast-from-var1408-to-var138 (var1408) var138)
(declare-fun valueSources/1616202742 (var2405) var284)
(declare-const null-var2405 var2405)
(declare-const null-var416 var416)
(declare-const null-var201 var201)
(declare-const null-var3931 var3931)
(declare-const null-var2575 var2575)
(declare-const null-var2527 var2527)
(declare-const null-var985 var985)
(declare-const null-String String)
(declare-const var858 var2405) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl 
(assert (not (= var858 null-var2405)))
(declare-const var2920 var416) ; Statement: r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var2920 null-var416)))
(declare-const var2619 var201) ; Statement: r7 := @parameter1: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType 
(assert (not (= var2619 null-var201)))
(declare-const var3075 var3931) ; Statement: r2 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType 
(assert (not (= var3075 null-var3931)))
(declare-const var53 var2575) ; Statement: r24 := @parameter3: org.hibernate.boot.model.source.spi.AttributeSourceContainer 
(assert (not (= var53 null-var2575)))
(assert true)
;(assert (<init>/-238456656 (cast-from-var2405-to-var3786 var858) var2920)) ; Statement: specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode: void <init>(org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r1) 

(declare-const var858!1 var2405)
(declare-const var2920!1 var416)
(assert true)
(define-const var1139 String (getForeignKey/1302170125 var3075)) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.String getForeignKey()>() 
(define-const var174 String (var1849_nullIfEmpty/260894482 var1139)) ; Statement: $r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r3) 
(declare-const var858!2 var2405)
(assert (not (= var858!2 null-var2405)))
(assert (= (explicitFkName/1616202742 var858!2) var174)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.lang.String explicitFkName> = $r4 
(assert true)
(define-const var2450 String (getPropertyRef/-1341367292 var3075)) ; Statement: $r5 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.String getPropertyRef()>() 
(define-const var123 String (var1849_nullIfEmpty/260894482 var2450)) ; Statement: $r6 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r5) 
(declare-const var858!3 var2405)
(assert (not (= var858!3 null-var2405)))
(assert (= (referencedPropertyName/1616202742 var858!3) var123)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.lang.String referencedPropertyName> = $r6 
(assert true)
(define-const var3653 var2527 (getOnDelete/-485008623 var2619)) ; Statement: $r8 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum getOnDelete()>() 
 ; Statement: if $r8 != null goto $r11 = "cascade" 
(assert (not (= var3653 null-var2527))) ; Cond: $r8 != null 
(define-const var1251 String "cascade") ; Statement: $r11 = "cascade" 
(assert true)
(define-const var1377 var2527 (getOnDelete/-485008623 var2619)) ; Statement: $r9 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum getOnDelete()>() 
(assert true)
(define-const var3111 String (value/-1362515340 var1377)) ; Statement: $r10 = virtualinvoke $r9.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum: java.lang.String value()>() 
(assert true)
(define-const var2818 Bool (= var1251 var3111)) ; Statement: $z0 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>($r10) 
(declare-const var858!4 var2405)
(assert (not (= var858!4 null-var2405)))
(assert (= (cascadeDeletesAtFkLevel/1616202742 var858!4) var2818)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean cascadeDeletesAtFkLevel> = $z0 
(assert true) ; Non Conditional
(assert true)
(define-const var869 var985 (isNotNull/1615122614 var2619)) ; Statement: $r12 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>() 
 ; Statement: if $r12 != null goto $r13 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>() 
(assert (not (= var869 null-var985))) ; Cond: $r12 != null 
(assert true)
(define-const var1958 var985 (isNotNull/1615122614 var2619)) ; Statement: $r13 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>() 
(assert true)
(define-const var2757 Bool (booleanValue/-1820462562 var1958)) ; Statement: $z1 = virtualinvoke $r13.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z1 != 0 goto $z8 = 0 
(assert (not (= (ite var2757 1 0) 0))) ; Cond: $z1 != 0 
(define-const var1435 Bool (ite (= 1 0) true false)) ; Statement: $z8 = 0 
(assert true) ; Non Conditional
(declare-const var858!5 var2405)
(assert (not (= var858!5 null-var2405)))
(assert (= (nullable/1616202742 var858!5) var1435)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean nullable> = $z8 
(assert true) ; Non Conditional
(assert true)
(define-const var1636 var985 (isUpdate/1809420545 var2619)) ; Statement: $r25 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>() 
 ; Statement: if $r25 != null goto $r14 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>() 
(assert (not (= var1636 null-var985))) ; Cond: $r25 != null 
(assert true)
(define-const var916 var985 (isUpdate/1809420545 var2619)) ; Statement: $r14 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>() 
(assert true)
(define-const var2989 Bool (booleanValue/-1820462562 var916)) ; Statement: $z2 = virtualinvoke $r14.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var858!6 var2405)
(assert (not (= var858!6 null-var2405)))
(assert (= (updateable/1616202742 var858!6) var2989)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean updateable> = $z2 
(assert true) ; Non Conditional
(assert true)
(define-const var779 var416 (sourceMappingDocument/1507685790 (cast-from-var2405-to-var3786 var858!6))) ; Statement: $r16 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument sourceMappingDocument()>() 
(define-const var1680 var1408 var1408-init) ; Statement: $r15 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2 
(assert true)
;(assert (<init>/536588254 var1680 var858!6 var2619)) ; Statement: specialinvoke $r15.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType)>(r0, r7) 

(declare-const var1680!1 var1408)
(declare-const var858!7 var2405)
(declare-const var2619!1 var201)
(define-const var2408 var284 (var3074_buildValueSources/1952860664 var779 null-String (cast-from-var1408-to-var138 var1680!1))) ; Statement: $r17 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: java.util.List buildValueSources(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>($r16, null, $r15) 
(declare-const var858!8 var2405)
(assert (not (= var858!8 null-var2405)))
(assert (= (valueSources/1616202742 var858!8) var2408)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.util.List valueSources> = $r17 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-238456656=([org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode, org.hibernate.boot.model.source.internal.hbm.MappingDocument], void), cast-from-var2405-to-var3786=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode), getForeignKey/1302170125=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType], java.lang.String), var1849_nullIfEmpty/260894482=([java.lang.String], java.lang.String), explicitFkName/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], java.lang.String), getPropertyRef/-1341367292=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType], java.lang.String), referencedPropertyName/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], java.lang.String), getOnDelete/-485008623=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum), value/-1362515340=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum], java.lang.String), cascadeDeletesAtFkLevel/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], boolean), isNotNull/1615122614=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), nullable/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], boolean), isUpdate/1809420545=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType], java.lang.Boolean), updateable/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], boolean), sourceMappingDocument/1507685790=([org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode], org.hibernate.boot.model.source.internal.hbm.MappingDocument), var1408-init=([], org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2), <init>/536588254=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2, org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType], void), var3074_buildValueSources/1952860664=([org.hibernate.boot.model.source.internal.hbm.MappingDocument, java.lang.String, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource], java.util.List), cast-from-var1408-to-var138=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2], org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource), valueSources/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], java.util.List)}
; {var2405=org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl, var858=r0, var416=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var2920=r1, var201=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType, var2619=r7, var3931=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType, var3075=r2, var2575=org.hibernate.boot.model.source.spi.AttributeSourceContainer, var53=r24, var3786=org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode, var1139=$r3, var1849=org.hibernate.internal.util.StringHelper, var174=$r4, var2450=$r5, var123=$r6, var2527=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum, var3653=$r8, var1251=$r11, var1377=$r9, var3111=$r10, var2818=$z0, var985=java.lang.Boolean, var869=$r12, var1958=$r13, var2757=$z1, var1435=$z8, var1636=$r25, var916=$r14, var2989=$z2, var779=$r16, var1408=org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2, var1680=$r15, var284=java.util.List, var3074=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper, var2093=null_type, var138=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource, var2408=$r17}
; {org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl=var2405, r0=var858, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var416, r1=var2920, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType=var201, r7=var2619, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType=var3931, r2=var3075, org.hibernate.boot.model.source.spi.AttributeSourceContainer=var2575, r24=var53, org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode=var3786, $r3=var1139, org.hibernate.internal.util.StringHelper=var1849, $r4=var174, $r5=var2450, $r6=var123, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum=var2527, $r8=var3653, $r11=var1251, $r9=var1377, $r10=var3111, $z0=var2818, java.lang.Boolean=var985, $r12=var869, $r13=var1958, $z1=var2757, $z8=var1435, $r25=var1636, $r14=var916, $z2=var2989, $r16=var779, org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2=var1408, $r15=var1680, java.util.List=var284, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper=var3074, null_type=var2093, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource=var138, $r17=var2408}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl;	r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r7 := @parameter1: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType;	r2 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType;	r24 := @parameter3: org.hibernate.boot.model.source.spi.AttributeSourceContainer;	specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode: void <init>(org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r1);	$r3 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.String getForeignKey()>();	$r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r3);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.lang.String explicitFkName> = $r4;	$r5 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.String getPropertyRef()>();	$r6 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r5);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.lang.String referencedPropertyName> = $r6;	$r8 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum getOnDelete()>();	if $r8 != null goto $r11 = "cascade";	$r11 = "cascade";	$r9 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum getOnDelete()>();	$r10 = virtualinvoke $r9.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum: java.lang.String value()>();	$z0 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>($r10);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean cascadeDeletesAtFkLevel> = $z0;	$r12 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>();	if $r12 != null goto $r13 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>();	$r13 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>();	$z1 = virtualinvoke $r13.<java.lang.Boolean: boolean booleanValue()>();	if $z1 != 0 goto $z8 = 0;	$z8 = 0;	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean nullable> = $z8;	$r25 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>();	if $r25 != null goto $r14 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>();	$r14 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>();	$z2 = virtualinvoke $r14.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean updateable> = $z2;	$r16 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument sourceMappingDocument()>();	$r15 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2;	specialinvoke $r15.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType)>(r0, r7);	$r17 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: java.util.List buildValueSources(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>($r16, null, $r15);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.util.List valueSources> = $r17;	return
;block_num 9