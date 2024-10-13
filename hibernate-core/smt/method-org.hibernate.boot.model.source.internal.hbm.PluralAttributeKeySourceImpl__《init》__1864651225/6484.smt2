(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3231 0)
(declare-sort var3148 0)
(declare-sort var3293 0)
(declare-sort var2592 0)
(declare-sort var1612 0)
(declare-sort var3131 0)
(declare-sort var3715 0)
(declare-sort var3423 0)
(declare-sort var3487 0)
(declare-sort var3433 0)
(declare-sort var1297 0)
(declare-sort var1814 0)
(declare-sort var1669 0)
(declare-sort var3247 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-238456656 (var3131 var3148) void)
(declare-fun cast-from-var3231-to-var3131 (var3231) var3131)
(declare-fun getForeignKey/1302170125 (var2592) String)
(declare-fun var3715_nullIfEmpty/260894482 (String) String)
(declare-fun explicitFkName/1616202742 (var3231) String)
(declare-fun getPropertyRef/-1341367292 (var2592) String)
(declare-fun referencedPropertyName/1616202742 (var3231) String)
(declare-fun getOnDelete/-485008623 (var3293) var3423)
(declare-fun value/-1362515340 (var3423) String)
(declare-fun cascadeDeletesAtFkLevel/1616202742 (var3231) Bool)
(declare-fun isNotNull/1615122614 (var3293) var3487)
(declare-fun booleanValue/-1820462562 (var3487) Bool)
(declare-fun nullable/1616202742 (var3231) Bool)
(declare-fun isUpdate/1809420545 (var3293) var3487)
(declare-fun isUpdate/403804488 (var2592) Bool)
(declare-fun updateable/1616202742 (var3231) Bool)
(declare-fun sourceMappingDocument/1507685790 (var3131) var3148)
(declare-fun var3433-init () var3433)
(declare-fun <init>/536588254 (var3433 var3231 var3293) void)
(declare-fun var1814_buildValueSources/1952860664 (var3148 String var3247) var1297)
(declare-fun cast-from-var3433-to-var3247 (var3433) var3247)
(declare-fun valueSources/1616202742 (var3231) var1297)
(declare-const null-var3231 var3231)
(declare-const null-var3148 var3148)
(declare-const null-var3293 var3293)
(declare-const null-var2592 var2592)
(declare-const null-var1612 var1612)
(declare-const null-var3423 var3423)
(declare-const null-var3487 var3487)
(declare-const null-String String)
(declare-const var2552 var3231) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl 
(assert (not (= var2552 null-var3231)))
(declare-const var290 var3148) ; Statement: r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var290 null-var3148)))
(declare-const var746 var3293) ; Statement: r7 := @parameter1: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType 
(assert (not (= var746 null-var3293)))
(declare-const var2411 var2592) ; Statement: r2 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType 
(assert (not (= var2411 null-var2592)))
(declare-const var3731 var1612) ; Statement: r24 := @parameter3: org.hibernate.boot.model.source.spi.AttributeSourceContainer 
(assert (not (= var3731 null-var1612)))
(assert true)
;(assert (<init>/-238456656 (cast-from-var3231-to-var3131 var2552) var290)) ; Statement: specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode: void <init>(org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r1) 

(declare-const var2552!1 var3231)
(declare-const var290!1 var3148)
(assert true)
(define-const var1283 String (getForeignKey/1302170125 var2411)) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.String getForeignKey()>() 
(define-const var2797 String (var3715_nullIfEmpty/260894482 var1283)) ; Statement: $r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r3) 
(declare-const var2552!2 var3231)
(assert (not (= var2552!2 null-var3231)))
(assert (= (explicitFkName/1616202742 var2552!2) var2797)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.lang.String explicitFkName> = $r4 
(assert true)
(define-const var1540 String (getPropertyRef/-1341367292 var2411)) ; Statement: $r5 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.String getPropertyRef()>() 
(define-const var503 String (var3715_nullIfEmpty/260894482 var1540)) ; Statement: $r6 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r5) 
(declare-const var2552!3 var3231)
(assert (not (= var2552!3 null-var3231)))
(assert (= (referencedPropertyName/1616202742 var2552!3) var503)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.lang.String referencedPropertyName> = $r6 
(assert true)
(define-const var2540 var3423 (getOnDelete/-485008623 var746)) ; Statement: $r8 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum getOnDelete()>() 
 ; Statement: if $r8 != null goto $r11 = "cascade" 
(assert (not (= var2540 null-var3423))) ; Cond: $r8 != null 
(define-const var1008 String "cascade") ; Statement: $r11 = "cascade" 
(assert true)
(define-const var3337 var3423 (getOnDelete/-485008623 var746)) ; Statement: $r9 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum getOnDelete()>() 
(assert true)
(define-const var684 String (value/-1362515340 var3337)) ; Statement: $r10 = virtualinvoke $r9.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum: java.lang.String value()>() 
(assert true)
(define-const var2372 Bool (= var1008 var684)) ; Statement: $z0 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>($r10) 
(declare-const var2552!4 var3231)
(assert (not (= var2552!4 null-var3231)))
(assert (= (cascadeDeletesAtFkLevel/1616202742 var2552!4) var2372)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean cascadeDeletesAtFkLevel> = $z0 
(assert true) ; Non Conditional
(assert true)
(define-const var2594 var3487 (isNotNull/1615122614 var746)) ; Statement: $r12 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>() 
 ; Statement: if $r12 != null goto $r13 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>() 
(assert (not (= var2594 null-var3487))) ; Cond: $r12 != null 
(assert true)
(define-const var3144 var3487 (isNotNull/1615122614 var746)) ; Statement: $r13 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>() 
(assert true)
(define-const var3161 Bool (booleanValue/-1820462562 var3144)) ; Statement: $z1 = virtualinvoke $r13.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z1 != 0 goto $z8 = 0 
(assert (not (not (= (ite var3161 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var1410 Bool (ite (= 1 1) true false)) ; Statement: $z8 = 1 
 ; Statement: goto [?= r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean nullable> = $z8] 
(assert true) ; Non Conditional
(declare-const var2552!5 var3231)
(assert (not (= var2552!5 null-var3231)))
(assert (= (nullable/1616202742 var2552!5) var1410)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean nullable> = $z8 
(assert true) ; Non Conditional
(assert true)
(define-const var2585 var3487 (isUpdate/1809420545 var746)) ; Statement: $r25 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>() 
 ; Statement: if $r25 != null goto $r14 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>() 
(assert (not (not (= var2585 null-var3487)))) ; Negate: Cond: $r25 != null  
(assert true)
(define-const var3205 Bool (isUpdate/403804488 var2411)) ; Statement: $z3 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: boolean isUpdate()>() 
(declare-const var2552!6 var3231)
(assert (not (= var2552!6 null-var3231)))
(assert (= (updateable/1616202742 var2552!6) var3205)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean updateable> = $z3 
 ; Statement: goto [?= $r16 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument sourceMappingDocument()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var669 var3148 (sourceMappingDocument/1507685790 (cast-from-var3231-to-var3131 var2552!6))) ; Statement: $r16 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument sourceMappingDocument()>() 
(define-const var1973 var3433 var3433-init) ; Statement: $r15 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2 
(assert true)
;(assert (<init>/536588254 var1973 var2552!6 var746)) ; Statement: specialinvoke $r15.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType)>(r0, r7) 

(declare-const var1973!1 var3433)
(declare-const var2552!7 var3231)
(declare-const var746!1 var3293)
(define-const var2333 var1297 (var1814_buildValueSources/1952860664 var669 null-String (cast-from-var3433-to-var3247 var1973!1))) ; Statement: $r17 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: java.util.List buildValueSources(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>($r16, null, $r15) 
(declare-const var2552!8 var3231)
(assert (not (= var2552!8 null-var3231)))
(assert (= (valueSources/1616202742 var2552!8) var2333)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.util.List valueSources> = $r17 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-238456656=([org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode, org.hibernate.boot.model.source.internal.hbm.MappingDocument], void), cast-from-var3231-to-var3131=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode), getForeignKey/1302170125=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType], java.lang.String), var3715_nullIfEmpty/260894482=([java.lang.String], java.lang.String), explicitFkName/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], java.lang.String), getPropertyRef/-1341367292=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType], java.lang.String), referencedPropertyName/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], java.lang.String), getOnDelete/-485008623=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum), value/-1362515340=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum], java.lang.String), cascadeDeletesAtFkLevel/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], boolean), isNotNull/1615122614=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), nullable/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], boolean), isUpdate/1809420545=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType], java.lang.Boolean), isUpdate/403804488=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType], boolean), updateable/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], boolean), sourceMappingDocument/1507685790=([org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode], org.hibernate.boot.model.source.internal.hbm.MappingDocument), var3433-init=([], org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2), <init>/536588254=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2, org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType], void), var1814_buildValueSources/1952860664=([org.hibernate.boot.model.source.internal.hbm.MappingDocument, java.lang.String, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource], java.util.List), cast-from-var3433-to-var3247=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2], org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource), valueSources/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], java.util.List)}
; {var3231=org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl, var2552=r0, var3148=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var290=r1, var3293=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType, var746=r7, var2592=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType, var2411=r2, var1612=org.hibernate.boot.model.source.spi.AttributeSourceContainer, var3731=r24, var3131=org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode, var1283=$r3, var3715=org.hibernate.internal.util.StringHelper, var2797=$r4, var1540=$r5, var503=$r6, var3423=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum, var2540=$r8, var1008=$r11, var3337=$r9, var684=$r10, var2372=$z0, var3487=java.lang.Boolean, var2594=$r12, var3144=$r13, var3161=$z1, var1410=$z8, var2585=$r25, var3205=$z3, var669=$r16, var3433=org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2, var1973=$r15, var1297=java.util.List, var1814=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper, var1669=null_type, var3247=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource, var2333=$r17}
; {org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl=var3231, r0=var2552, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var3148, r1=var290, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType=var3293, r7=var746, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType=var2592, r2=var2411, org.hibernate.boot.model.source.spi.AttributeSourceContainer=var1612, r24=var3731, org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode=var3131, $r3=var1283, org.hibernate.internal.util.StringHelper=var3715, $r4=var2797, $r5=var1540, $r6=var503, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum=var3423, $r8=var2540, $r11=var1008, $r9=var3337, $r10=var684, $z0=var2372, java.lang.Boolean=var3487, $r12=var2594, $r13=var3144, $z1=var3161, $z8=var1410, $r25=var2585, $z3=var3205, $r16=var669, org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2=var3433, $r15=var1973, java.util.List=var1297, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper=var1814, null_type=var1669, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource=var3247, $r17=var2333}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl;	r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r7 := @parameter1: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType;	r2 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType;	r24 := @parameter3: org.hibernate.boot.model.source.spi.AttributeSourceContainer;	specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode: void <init>(org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r1);	$r3 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.String getForeignKey()>();	$r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r3);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.lang.String explicitFkName> = $r4;	$r5 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.String getPropertyRef()>();	$r6 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r5);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.lang.String referencedPropertyName> = $r6;	$r8 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum getOnDelete()>();	if $r8 != null goto $r11 = "cascade";	$r11 = "cascade";	$r9 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum getOnDelete()>();	$r10 = virtualinvoke $r9.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum: java.lang.String value()>();	$z0 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>($r10);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean cascadeDeletesAtFkLevel> = $z0;	$r12 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>();	if $r12 != null goto $r13 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>();	$r13 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>();	$z1 = virtualinvoke $r13.<java.lang.Boolean: boolean booleanValue()>();	if $z1 != 0 goto $z8 = 0;	$z8 = 1;	goto [?= r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean nullable> = $z8];	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean nullable> = $z8;	$r25 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>();	if $r25 != null goto $r14 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>();	$z3 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: boolean isUpdate()>();	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean updateable> = $z3;	goto [?= $r16 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument sourceMappingDocument()>()];	$r16 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument sourceMappingDocument()>();	$r15 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2;	specialinvoke $r15.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType)>(r0, r7);	$r17 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: java.util.List buildValueSources(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>($r16, null, $r15);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.util.List valueSources> = $r17;	return
;block_num 9