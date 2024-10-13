(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1579 0)
(declare-sort var2743 0)
(declare-sort var878 0)
(declare-sort var1639 0)
(declare-sort var1906 0)
(declare-sort var1292 0)
(declare-sort var1150 0)
(declare-sort var782 0)
(declare-sort var597 0)
(declare-sort var2899 0)
(declare-sort var368 0)
(declare-sort var442 0)
(declare-sort var2776 0)
(declare-sort var2097 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-238456656 (var1292 var2743) void)
(declare-fun cast-from-var1579-to-var1292 (var1579) var1292)
(declare-fun getForeignKey/1302170125 (var1639) String)
(declare-fun var1150_nullIfEmpty/260894482 (String) String)
(declare-fun explicitFkName/1616202742 (var1579) String)
(declare-fun getPropertyRef/-1341367292 (var1639) String)
(declare-fun referencedPropertyName/1616202742 (var1579) String)
(declare-fun getOnDelete/-485008623 (var878) var782)
(declare-fun value/-1362515340 (var782) String)
(declare-fun cascadeDeletesAtFkLevel/1616202742 (var1579) Bool)
(declare-fun isNotNull/1615122614 (var878) var597)
(declare-fun isNotNull/-1025191901 (var1639) var597)
(declare-fun nullable/1616202742 (var1579) Bool)
(declare-fun isUpdate/1809420545 (var878) var597)
(declare-fun isUpdate/403804488 (var1639) Bool)
(declare-fun updateable/1616202742 (var1579) Bool)
(declare-fun sourceMappingDocument/1507685790 (var1292) var2743)
(declare-fun var2899-init () var2899)
(declare-fun <init>/536588254 (var2899 var1579 var878) void)
(declare-fun var442_buildValueSources/1952860664 (var2743 String var2097) var368)
(declare-fun cast-from-var2899-to-var2097 (var2899) var2097)
(declare-fun valueSources/1616202742 (var1579) var368)
(declare-const null-var1579 var1579)
(declare-const null-var2743 var2743)
(declare-const null-var878 var878)
(declare-const null-var1639 var1639)
(declare-const null-var1906 var1906)
(declare-const null-var782 var782)
(declare-const null-var597 var597)
(declare-const null-String String)
(declare-const var3249 var1579) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl 
(assert (not (= var3249 null-var1579)))
(declare-const var3128 var2743) ; Statement: r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var3128 null-var2743)))
(declare-const var2427 var878) ; Statement: r7 := @parameter1: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType 
(assert (not (= var2427 null-var878)))
(declare-const var3475 var1639) ; Statement: r2 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType 
(assert (not (= var3475 null-var1639)))
(declare-const var1752 var1906) ; Statement: r24 := @parameter3: org.hibernate.boot.model.source.spi.AttributeSourceContainer 
(assert (not (= var1752 null-var1906)))
(assert true)
;(assert (<init>/-238456656 (cast-from-var1579-to-var1292 var3249) var3128)) ; Statement: specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode: void <init>(org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r1) 

(declare-const var3249!1 var1579)
(declare-const var3128!1 var2743)
(assert true)
(define-const var130 String (getForeignKey/1302170125 var3475)) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.String getForeignKey()>() 
(define-const var232 String (var1150_nullIfEmpty/260894482 var130)) ; Statement: $r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r3) 
(declare-const var3249!2 var1579)
(assert (not (= var3249!2 null-var1579)))
(assert (= (explicitFkName/1616202742 var3249!2) var232)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.lang.String explicitFkName> = $r4 
(assert true)
(define-const var3856 String (getPropertyRef/-1341367292 var3475)) ; Statement: $r5 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.String getPropertyRef()>() 
(define-const var60 String (var1150_nullIfEmpty/260894482 var3856)) ; Statement: $r6 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r5) 
(declare-const var3249!3 var1579)
(assert (not (= var3249!3 null-var1579)))
(assert (= (referencedPropertyName/1616202742 var3249!3) var60)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.lang.String referencedPropertyName> = $r6 
(assert true)
(define-const var3647 var782 (getOnDelete/-485008623 var2427)) ; Statement: $r8 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum getOnDelete()>() 
 ; Statement: if $r8 != null goto $r11 = "cascade" 
(assert (not (= var3647 null-var782))) ; Cond: $r8 != null 
(define-const var2466 String "cascade") ; Statement: $r11 = "cascade" 
(assert true)
(define-const var3767 var782 (getOnDelete/-485008623 var2427)) ; Statement: $r9 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum getOnDelete()>() 
(assert true)
(define-const var2406 String (value/-1362515340 var3767)) ; Statement: $r10 = virtualinvoke $r9.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum: java.lang.String value()>() 
(assert true)
(define-const var1938 Bool (= var2466 var2406)) ; Statement: $z0 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>($r10) 
(declare-const var3249!4 var1579)
(assert (not (= var3249!4 null-var1579)))
(assert (= (cascadeDeletesAtFkLevel/1616202742 var3249!4) var1938)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean cascadeDeletesAtFkLevel> = $z0 
(assert true) ; Non Conditional
(assert true)
(define-const var1818 var597 (isNotNull/1615122614 var2427)) ; Statement: $r12 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>() 
 ; Statement: if $r12 != null goto $r13 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>() 
(assert (not (not (= var1818 null-var597)))) ; Negate: Cond: $r12 != null  
(assert true)
(define-const var1860 var597 (isNotNull/-1025191901 var3475)) ; Statement: $r18 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.Boolean isNotNull()>() 
 ; Statement: if $r18 == null goto $z7 = 1 
(assert (= var1860 null-var597)) ; Cond: $r18 == null 
(define-const var1204 Bool (ite (= 1 1) true false)) ; Statement: $z7 = 1 
 ; Statement: goto [?= r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean nullable> = $z7] 
(assert true) ; Non Conditional
(declare-const var3249!5 var1579)
(assert (not (= var3249!5 null-var1579)))
(assert (= (nullable/1616202742 var3249!5) var1204)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean nullable> = $z7 
 ; Statement: goto [?= $r25 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3160 var597 (isUpdate/1809420545 var2427)) ; Statement: $r25 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>() 
 ; Statement: if $r25 != null goto $r14 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>() 
(assert (not (not (= var3160 null-var597)))) ; Negate: Cond: $r25 != null  
(assert true)
(define-const var3834 Bool (isUpdate/403804488 var3475)) ; Statement: $z3 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: boolean isUpdate()>() 
(declare-const var3249!6 var1579)
(assert (not (= var3249!6 null-var1579)))
(assert (= (updateable/1616202742 var3249!6) var3834)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean updateable> = $z3 
 ; Statement: goto [?= $r16 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument sourceMappingDocument()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1160 var2743 (sourceMappingDocument/1507685790 (cast-from-var1579-to-var1292 var3249!6))) ; Statement: $r16 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument sourceMappingDocument()>() 
(define-const var2293 var2899 var2899-init) ; Statement: $r15 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2 
(assert true)
;(assert (<init>/536588254 var2293 var3249!6 var2427)) ; Statement: specialinvoke $r15.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType)>(r0, r7) 

(declare-const var2293!1 var2899)
(declare-const var3249!7 var1579)
(declare-const var2427!1 var878)
(define-const var3043 var368 (var442_buildValueSources/1952860664 var1160 null-String (cast-from-var2899-to-var2097 var2293!1))) ; Statement: $r17 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: java.util.List buildValueSources(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>($r16, null, $r15) 
(declare-const var3249!8 var1579)
(assert (not (= var3249!8 null-var1579)))
(assert (= (valueSources/1616202742 var3249!8) var3043)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.util.List valueSources> = $r17 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-238456656=([org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode, org.hibernate.boot.model.source.internal.hbm.MappingDocument], void), cast-from-var1579-to-var1292=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode), getForeignKey/1302170125=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType], java.lang.String), var1150_nullIfEmpty/260894482=([java.lang.String], java.lang.String), explicitFkName/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], java.lang.String), getPropertyRef/-1341367292=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType], java.lang.String), referencedPropertyName/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], java.lang.String), getOnDelete/-485008623=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum), value/-1362515340=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum], java.lang.String), cascadeDeletesAtFkLevel/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], boolean), isNotNull/1615122614=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType], java.lang.Boolean), isNotNull/-1025191901=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType], java.lang.Boolean), nullable/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], boolean), isUpdate/1809420545=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType], java.lang.Boolean), isUpdate/403804488=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType], boolean), updateable/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], boolean), sourceMappingDocument/1507685790=([org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode], org.hibernate.boot.model.source.internal.hbm.MappingDocument), var2899-init=([], org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2), <init>/536588254=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2, org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType], void), var442_buildValueSources/1952860664=([org.hibernate.boot.model.source.internal.hbm.MappingDocument, java.lang.String, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource], java.util.List), cast-from-var2899-to-var2097=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2], org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource), valueSources/1616202742=([org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl], java.util.List)}
; {var1579=org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl, var3249=r0, var2743=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var3128=r1, var878=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType, var2427=r7, var1639=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType, var3475=r2, var1906=org.hibernate.boot.model.source.spi.AttributeSourceContainer, var1752=r24, var1292=org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode, var130=$r3, var1150=org.hibernate.internal.util.StringHelper, var232=$r4, var3856=$r5, var60=$r6, var782=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum, var3647=$r8, var2466=$r11, var3767=$r9, var2406=$r10, var1938=$z0, var597=java.lang.Boolean, var1818=$r12, var1860=$r18, var1204=$z7, var3160=$r25, var3834=$z3, var1160=$r16, var2899=org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2, var2293=$r15, var368=java.util.List, var442=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper, var2776=null_type, var2097=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource, var3043=$r17}
; {org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl=var1579, r0=var3249, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var2743, r1=var3128, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType=var878, r7=var2427, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType=var1639, r2=var3475, org.hibernate.boot.model.source.spi.AttributeSourceContainer=var1906, r24=var1752, org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode=var1292, $r3=var130, org.hibernate.internal.util.StringHelper=var1150, $r4=var232, $r5=var3856, $r6=var60, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum=var782, $r8=var3647, $r11=var2466, $r9=var3767, $r10=var2406, $z0=var1938, java.lang.Boolean=var597, $r12=var1818, $r18=var1860, $z7=var1204, $r25=var3160, $z3=var3834, $r16=var1160, org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2=var2899, $r15=var2293, java.util.List=var368, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper=var442, null_type=var2776, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource=var2097, $r17=var3043}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl;	r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r7 := @parameter1: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType;	r2 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType;	r24 := @parameter3: org.hibernate.boot.model.source.spi.AttributeSourceContainer;	specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode: void <init>(org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r1);	$r3 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.String getForeignKey()>();	$r4 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r3);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.lang.String explicitFkName> = $r4;	$r5 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.String getPropertyRef()>();	$r6 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String nullIfEmpty(java.lang.String)>($r5);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.lang.String referencedPropertyName> = $r6;	$r8 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum getOnDelete()>();	if $r8 != null goto $r11 = "cascade";	$r11 = "cascade";	$r9 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum getOnDelete()>();	$r10 = virtualinvoke $r9.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmOnDeleteEnum: java.lang.String value()>();	$z0 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>($r10);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean cascadeDeletesAtFkLevel> = $z0;	$r12 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>();	if $r12 != null goto $r13 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isNotNull()>();	$r18 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: java.lang.Boolean isNotNull()>();	if $r18 == null goto $z7 = 1;	$z7 = 1;	goto [?= r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean nullable> = $z7];	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean nullable> = $z7;	goto [?= $r25 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>()];	$r25 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>();	if $r25 != null goto $r14 = virtualinvoke r7.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType: java.lang.Boolean isUpdate()>();	$z3 = virtualinvoke r2.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmManyToOneType: boolean isUpdate()>();	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: boolean updateable> = $z3;	goto [?= $r16 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument sourceMappingDocument()>()];	$r16 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: org.hibernate.boot.model.source.internal.hbm.MappingDocument sourceMappingDocument()>();	$r15 = new org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2;	specialinvoke $r15.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl$2: void <init>(org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmKeyType)>(r0, r7);	$r17 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: java.util.List buildValueSources(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>($r16, null, $r15);	r0.<org.hibernate.boot.model.source.internal.hbm.PluralAttributeKeySourceImpl: java.util.List valueSources> = $r17;	return
;block_num 9