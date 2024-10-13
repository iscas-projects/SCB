(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3263 0)
(declare-sort var1021 0)
(declare-sort var913 0)
(declare-sort var835 0)
(declare-sort var2735 0)
(declare-sort var3796 0)
(declare-sort var267 0)
(declare-sort var3697 0)
(declare-sort var3299 0)
(declare-sort var1106 0)
(declare-sort var3227 0)
(declare-sort var1580 0)
(declare-sort var2009 0)
(declare-sort var3139 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-238456656 (var3796 var1021) void)
(declare-fun cast-from-var3263-to-var3796 (var3263) var3796)
(declare-fun getForeignKey/1302170125 (var835) String)
(declare-fun var267_nullIfEmpty/260894482 (String) String)
(declare-fun explicitFkName/1616202742 (var3263) String)
(declare-fun getPropertyRef/-1341367292 (var835) String)
(declare-fun referencedPropertyName/1616202742 (var3263) String)
(declare-fun getOnDelete/-485008623 (var913) var3697)
(declare-fun value/-1362515340 (var3697) String)
(declare-fun cascadeDeletesAtFkLevel/1616202742 (var3263) Bool)
(declare-fun isNotNull/1615122614 (var913) var3299)
(declare-fun booleanValue/-1820462562 (var3299) Bool)
(declare-fun nullable/1616202742 (var3263) Bool)
(declare-fun isUpdate/1809420545 (var913) var3299)
(declare-fun isUpdate/403804488 (var835) Bool)
(declare-fun updateable/1616202742 (var3263) Bool)
(declare-fun sourceMappingDocument/1507685790 (var3796) var1021)
(declare-fun var1106-init () var1106)
(declare-fun <init>/536588254 (var1106 var3263 var913) void)
(declare-fun var1580_buildValueSources/1952860664 (var1021 String var3139) var3227)
(declare-fun cast-from-var1106-to-var3139 (var1106) var3139)
(declare-fun valueSources/1616202742 (var3263) var3227)
(declare-const null-var3263 var3263)
(declare-const null-var1021 var1021)
(declare-const null-var913 var913)
(declare-const null-var835 var835)
(declare-const null-var2735 var2735)
(declare-const null-var3697 var3697)
(declare-const null-var3299 var3299)
(declare-const null-String String)
(declare-const var3671 var3263) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl 
(assert (not (= var3671 null-var3263)))
(declare-const var2383 var1021) ; Statement: r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var2383 null-var1021)))
(declare-const var1879 var913) ; Statement: r7 := @parameter1: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType 
(assert (not (= var1879 null-var913)))
(declare-const var1109 var835) ; Statement: r2 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType 
(assert (not (= var1109 null-var835)))
(declare-const var2010 var2735) ; Statement: r24 := @parameter3: org.hibernate.boot.model.source.spi.AttributeSourceContainer 
(assert (not (= var2010 null-var2735)))
(assert true)
;(assert (<init>/-238456656 (cast-from-var3263-to-var3796 var3671) var2383)) ; Statement: specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode: void <init>(org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r1) 

(declare-const var3671!1 var3263)
(declare-const var2383!1 var1021)
(assert true)
(define-const var1037 String (getForeignKey/1302170125 var1109)) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.String getForeignKey()>() 
(define-const var1826 String (var267_nullIfEmpty/260894482 var1037)) ; Statement: $r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r3) 
(declare-const var3671!2 var3263)
(assert (not (= var3671!2 null-var3263)))
(assert (= (explicitFkName/1616202742 var3671!2) var1826)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.lang.String explicitFkName> = $r4 
(assert true)
(define-const var488 String (getPropertyRef/-1341367292 var1109)) ; Statement: $r5 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.String getPropertyRef()>() 
(define-const var400 String (var267_nullIfEmpty/260894482 var488)) ; Statement: $r6 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r5) 
(declare-const var3671!3 var3263)
(assert (not (= var3671!3 null-var3263)))
(assert (= (referencedPropertyName/1616202742 var3671!3) var400)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.lang.String referencedPropertyName> = $r6 
(assert true)
(define-const var1696 var3697 (getOnDelete/-485008623 var1879)) ; Statement: $r8 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum getOnDelete()>() 
 ; Statement: if $r8 != null goto $r11 = "cascade" 
(assert (not (= var1696 null-var3697))) ; Cond: $r8 != null 
(define-const var45 String "cascade") ; Statement: $r11 = "cascade" 
(assert true)
(define-const var1820 var3697 (getOnDelete/-485008623 var1879)) ; Statement: $r9 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum getOnDelete()>() 
(assert true)
(define-const var1860 String (value/-1362515340 var1820)) ; Statement: $r10 = virtualinvoke $r9.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum: java.lang.String value()>() 
(assert true)
(define-const var1120 Bool (= var45 var1860)) ; Statement: $z0 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>($r10) 
(declare-const var3671!4 var3263)
(assert (not (= var3671!4 null-var3263)))
(assert (= (cascadeDeletesAtFkLevel/1616202742 var3671!4) var1120)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean cascadeDeletesAtFkLevel> = $z0 
(assert true) ; Non Conditional
(assert true)
(define-const var3520 var3299 (isNotNull/1615122614 var1879)) ; Statement: $r12 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>() 
 ; Statement: if $r12 != null goto $r13 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>() 
(assert (not (= var3520 null-var3299))) ; Cond: $r12 != null 
(assert true)
(define-const var2157 var3299 (isNotNull/1615122614 var1879)) ; Statement: $r13 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>() 
(assert true)
(define-const var3522 Bool (booleanValue/-1820462562 var2157)) ; Statement: $z1 = virtualinvoke $r13.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z1 != 0 goto $z8 = 0 
(assert (not (= (ite var3522 1 0) 0))) ; Cond: $z1 != 0 
(define-const var2540 Bool (ite (= 1 0) true false)) ; Statement: $z8 = 0 
(assert true) ; Non Conditional
(declare-const var3671!5 var3263)
(assert (not (= var3671!5 null-var3263)))
(assert (= (nullable/1616202742 var3671!5) var2540)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean nullable> = $z8 
(assert true) ; Non Conditional
(assert true)
(define-const var3663 var3299 (isUpdate/1809420545 var1879)) ; Statement: $r25 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>() 
 ; Statement: if $r25 != null goto $r14 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>() 
(assert (not (not (= var3663 null-var3299)))) ; Negate: Cond: $r25 != null  
(assert true)
(define-const var3680 Bool (isUpdate/403804488 var1109)) ; Statement: $z3 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: boolean isUpdate()>() 
(declare-const var3671!6 var3263)
(assert (not (= var3671!6 null-var3263)))
(assert (= (updateable/1616202742 var3671!6) var3680)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean updateable> = $z3 
 ; Statement: goto [?= $r16 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument sourceMappingDocument()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2974 var1021 (sourceMappingDocument/1507685790 (cast-from-var3263-to-var3796 var3671!6))) ; Statement: $r16 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument sourceMappingDocument()>() 
(define-const var2129 var1106 var1106-init) ; Statement: $r15 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2 
(assert true)
;(assert (<init>/536588254 var2129 var3671!6 var1879)) ; Statement: specialinvoke $r15.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType)>(r0, r7) 

(declare-const var2129!1 var1106)
(declare-const var3671!7 var3263)
(declare-const var1879!1 var913)
(define-const var436 var3227 (var1580_buildValueSources/1952860664 var2974 null-String (cast-from-var1106-to-var3139 var2129!1))) ; Statement: $r17 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: java.util.List buildValueSources(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>($r16, null, $r15) 
(declare-const var3671!8 var3263)
(assert (not (= var3671!8 null-var3263)))
(assert (= (valueSources/1616202742 var3671!8) var436)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.util.List valueSources> = $r17 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-238456656=([org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode, org.hibernate.boot.model.source.internal.hbm.MappingDocument], void), cast-from-var3263-to-var3796=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode), getForeignKey/1302170125=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType], java.lang.String), var267_nullIfEmpty/260894482=([java.lang.String], java.lang.String), explicitFkName/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], java.lang.String), getPropertyRef/-1341367292=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType], java.lang.String), referencedPropertyName/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], java.lang.String), getOnDelete/-485008623=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum), value/-1362515340=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum], java.lang.String), cascadeDeletesAtFkLevel/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], boolean), isNotNull/1615122614=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), nullable/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], boolean), isUpdate/1809420545=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType], java.lang.Boolean), isUpdate/403804488=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType], boolean), updateable/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], boolean), sourceMappingDocument/1507685790=([org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode], org.hibernate.boot.model.source.internal.hbm.MappingDocument), var1106-init=([], org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2), <init>/536588254=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2, org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType], void), var1580_buildValueSources/1952860664=([org.hibernate.boot.model.source.internal.hbm.MappingDocument, java.lang.String, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource], java.util.List), cast-from-var1106-to-var3139=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2], org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource), valueSources/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], java.util.List)}
; {var3263=org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl, var3671=r0, var1021=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var2383=r1, var913=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType, var1879=r7, var835=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType, var1109=r2, var2735=org.hibernate.boot.model.source.spi.AttributeSourceContainer, var2010=r24, var3796=org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode, var1037=$r3, var267=org.hibernate.internal.util.StringHelper, var1826=$r4, var488=$r5, var400=$r6, var3697=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum, var1696=$r8, var45=$r11, var1820=$r9, var1860=$r10, var1120=$z0, var3299=java.lang.Boolean, var3520=$r12, var2157=$r13, var3522=$z1, var2540=$z8, var3663=$r25, var3680=$z3, var2974=$r16, var1106=org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2, var2129=$r15, var3227=java.util.List, var1580=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper, var2009=null_type, var3139=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource, var436=$r17}
; {org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl=var3263, r0=var3671, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var1021, r1=var2383, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType=var913, r7=var1879, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType=var835, r2=var1109, org.hibernate.boot.model.source.spi.AttributeSourceContainer=var2735, r24=var2010, org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode=var3796, $r3=var1037, org.hibernate.internal.util.StringHelper=var267, $r4=var1826, $r5=var488, $r6=var400, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum=var3697, $r8=var1696, $r11=var45, $r9=var1820, $r10=var1860, $z0=var1120, java.lang.Boolean=var3299, $r12=var3520, $r13=var2157, $z1=var3522, $z8=var2540, $r25=var3663, $z3=var3680, $r16=var2974, org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2=var1106, $r15=var2129, java.util.List=var3227, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper=var1580, null_type=var2009, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource=var3139, $r17=var436}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl;	r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r7 := @parameter1: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType;	r2 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType;	r24 := @parameter3: org.hibernate.boot.model.source.spi.AttributeSourceContainer;	specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode: void <init>(org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r1);	$r3 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.String getForeignKey()>();	$r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r3);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.lang.String explicitFkName> = $r4;	$r5 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.String getPropertyRef()>();	$r6 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r5);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.lang.String referencedPropertyName> = $r6;	$r8 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum getOnDelete()>();	if $r8 != null goto $r11 = "cascade";	$r11 = "cascade";	$r9 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum getOnDelete()>();	$r10 = virtualinvoke $r9.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum: java.lang.String value()>();	$z0 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>($r10);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean cascadeDeletesAtFkLevel> = $z0;	$r12 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>();	if $r12 != null goto $r13 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>();	$r13 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>();	$z1 = virtualinvoke $r13.<java.lang.Boolean: boolean booleanValue()>();	if $z1 != 0 goto $z8 = 0;	$z8 = 0;	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean nullable> = $z8;	$r25 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>();	if $r25 != null goto $r14 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>();	$z3 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: boolean isUpdate()>();	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean updateable> = $z3;	goto [?= $r16 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument sourceMappingDocument()>()];	$r16 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument sourceMappingDocument()>();	$r15 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2;	specialinvoke $r15.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType)>(r0, r7);	$r17 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: java.util.List buildValueSources(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>($r16, null, $r15);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.util.List valueSources> = $r17;	return
;block_num 9