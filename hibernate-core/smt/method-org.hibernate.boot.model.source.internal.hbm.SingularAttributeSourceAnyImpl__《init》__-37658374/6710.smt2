(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2360 0)
(declare-sort var3103 0)
(declare-sort var782 0)
(declare-sort var3462 0)
(declare-sort var1208 0)
(declare-sort var1170 0)
(declare-sort var604 0)
(declare-sort var1099 0)
(declare-sort var1269 0)
(declare-sort var3523 0)
(declare-sort var1440 0)
(declare-sort var3200 0)
(declare-sort var1463 0)
(declare-sort var2967 0)
(declare-sort var3849 0)
(declare-sort var827 0)
(declare-sort var172 0)
(declare-sort var2749 0)
(declare-sort var250 0)
(declare-sort var1858 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-238456656 (var604 var3103) void)
(declare-fun cast-from-var2360-to-var604 (var2360) var604)
(declare-fun var1099-init () var1099)
(declare-fun <init>/-1594225575 (var1099 String) void)
(declare-fun cast-from-var1099-to-var1269 (var1099) var1269)
(declare-fun attributeTypeSource/-535448512 (var2360) var1269)
(declare-fun jaxbAnyMapping/-535448512 (var2360) var3462)
(declare-fun naturalIdMutability/-535448512 (var2360) var1170)
(declare-fun var782_getAttributePathBase/-1652760382 (var782) var3523)
(declare-fun getName/-2088915552 (var3462) String)
(declare-fun append/512614398 (var3523 String) var3523)
(declare-fun attributePath/-535448512 (var2360) var3523)
(declare-fun var782_getAttributeRoleBase/-1304891230 (var782) var1440)
(declare-fun append/-1883144098 (var1440 String) var1440)
(declare-fun attributeRole/-535448512 (var2360) var1440)
(declare-fun var3200-init () var3200)
(declare-fun <init>/178987701 (var3200 var2360 var3462) void)
(declare-fun var2967_buildValueSources/1952860664 (var3103 String var3849) var1463)
(declare-fun cast-from-var3200-to-var3849 (var3200) var3849)
(declare-fun var1463_size/-959786421 (var1463) Int)
(declare-fun var827-init () var827)
(declare-fun arr-var2749-init () (Array Int var2749))
(declare-fun cast-from-String-to-var2749 (String) var2749)
(declare-fun String_format/-647569892 (var172 String (Array Int var2749)) String)
(declare-fun origin/-1264989136 (var604) var250)
(declare-fun <init>/235758574 (var827 String var250) void)
(declare-fun cast-from-var827-to-var1858 (var827) var1858)
(declare-const null-var2360 var2360)
(declare-const null-var3103 var3103)
(declare-const null-var782 var782)
(declare-const null-var3462 var3462)
(declare-const null-String String)
(declare-const null-var1170 var1170)
(declare-const null-NullType var1208)
(declare-const var172-ENGLISH var172)
(declare-const null-__Array__Int__var2749__ (Array Int var2749))
(declare-const var1901 var2360) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl 
(assert (not (= var1901 null-var2360)))
(declare-const var2926 var3103) ; Statement: r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var2926 null-var3103)))
(declare-const var3204 var782) ; Statement: r5 := @parameter1: org.hibernate.boot.model.source.spi.AttributeSourceContainer 
(assert (not (= var3204 null-var782)))
(declare-const var228 var3462) ; Statement: r3 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType 
(assert (not (= var228 null-var3462)))
(declare-const var3253 String) ; Statement: r12 := @parameter3: java.lang.String 
(assert (not (= var3253 null-String)))
(declare-const var2170 var1170) ; Statement: r4 := @parameter4: org.hibernate.boot.model.source.spi.NaturalIdMutability 
(assert (not (= var2170 null-var1170)))
(assert true)
;(assert (<init>/-238456656 (cast-from-var2360-to-var604 var1901) var2926)) ; Statement: specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode: void <init>(org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r1) 

(declare-const var1901!1 var2360)
(declare-const var2926!1 var3103)
(define-const var3714 var1099 var1099-init) ; Statement: $r25 = new org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl 
(assert true)
;(assert (<init>/-1594225575 var3714 null-String)) ; Statement: specialinvoke $r25.<org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl: void <init>(java.lang.String)>(null) 

(declare-const var3714!1 var1099)
(declare-const var1769 var1208)
(declare-const var1901!2 var2360)
(assert (not (= var1901!2 null-var2360)))
(assert (= (attributeTypeSource/-535448512 var1901!2) (cast-from-var1099-to-var1269 var3714!1))) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.model.source.spi.HibernateTypeSource attributeTypeSource> = $r25 
(declare-const var1901!3 var2360)
(assert (not (= var1901!3 null-var2360)))
(assert (= (jaxbAnyMapping/-535448512 var1901!3) var228)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType jaxbAnyMapping> = r3 
(declare-const var1901!4 var2360)
(assert (not (= var1901!4 null-var2360)))
(assert (= (naturalIdMutability/-535448512 var1901!4) var2170)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.model.source.spi.NaturalIdMutability naturalIdMutability> = r4 
(define-const var2719 var3523 (var782_getAttributePathBase/-1652760382 var3204)) ; Statement: $r7 = interfaceinvoke r5.<org.hibernate.boot.model.source.spi.AttributeSourceContainer: org.hibernate.boot.model.source.spi.AttributePath getAttributePathBase()>() 
(assert true)
(define-const var1497 String (getName/-2088915552 var228)) ; Statement: $r6 = virtualinvoke r3.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType: java.lang.String getName()>() 
(assert true)
(define-const var510 var3523 (append/512614398 var2719 var1497)) ; Statement: $r8 = virtualinvoke $r7.<org.hibernate.boot.model.source.spi.AttributePath: org.hibernate.boot.model.source.spi.AttributePath append(java.lang.String)>($r6) 
(declare-const var1901!5 var2360)
(assert (not (= var1901!5 null-var2360)))
(assert (= (attributePath/-535448512 var1901!5) var510)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.model.source.spi.AttributePath attributePath> = $r8 
(define-const var1220 var1440 (var782_getAttributeRoleBase/-1304891230 var3204)) ; Statement: $r10 = interfaceinvoke r5.<org.hibernate.boot.model.source.spi.AttributeSourceContainer: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRoleBase()>() 
(assert true)
(define-const var2707 String (getName/-2088915552 var228)) ; Statement: $r9 = virtualinvoke r3.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType: java.lang.String getName()>() 
(assert true)
(define-const var1199 var1440 (append/-1883144098 var1220 var2707)) ; Statement: $r11 = virtualinvoke $r10.<org.hibernate.boot.model.source.spi.AttributeRole: org.hibernate.boot.model.source.spi.AttributeRole append(java.lang.String)>($r9) 
(declare-const var1901!6 var2360)
(assert (not (= var1901!6 null-var2360)))
(assert (= (attributeRole/-535448512 var1901!6) var1199)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.model.source.spi.AttributeRole attributeRole> = $r11 
(define-const var2468 var3200 var3200-init) ; Statement: $r26 = new org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$1 
(assert true)
;(assert (<init>/178987701 var2468 var1901!6 var228)) ; Statement: specialinvoke $r26.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$1: void <init>(org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType)>(r0, r3) 

(declare-const var2468!1 var3200)
(declare-const var1901!7 var2360)
(declare-const var228!1 var3462)
(define-const var2452 var1463 (var2967_buildValueSources/1952860664 var2926!1 var3253 (cast-from-var3200-to-var3849 var2468!1))) ; Statement: r14 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: java.util.List buildValueSources(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>(r1, r12, $r26) 
(define-const var2375 Int (var1463_size/-959786421 var2452)) ; Statement: $i0 = interfaceinvoke r14.<java.util.List: int size()>() 
 ; Statement: if $i0 >= 2 goto $r28 = new org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$2 
(assert (not (>= var2375 2))) ; Negate: Cond: $i0 >= 2  
(define-const var2660 var827 var827-init) ; Statement: $r27 = new org.hibernate.boot.MappingException 
(define-const var48 var172 var172-ENGLISH) ; Statement: $r21 = <java.util.Locale: java.util.Locale ENGLISH> 
(define-const var1883 (Array Int var2749) arr-var2749-init) ; Statement: $r20 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var1659 String (getName/-2088915552 var228!1)) ; Statement: $r22 = virtualinvoke r3.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType: java.lang.String getName()>() 
(declare-const var1883!1 (Array Int var2749))
(assert (not (= var1883!1 null-__Array__Int__var2749__)))
(assert (= (select var1883!1 0) (cast-from-String-to-var2749 var1659))) ; Statement: $r20[0] = $r22 
(define-const var2876 String (String_format/-647569892 var48 "<any name=\u0022%s\u0022 /> mapping needs to specify 2 or more columns" var1883!1)) ; Statement: $r24 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r21, "<any name=\"%s\" /> mapping needs to specify 2 or more columns", $r20) 
(assert true)
(define-const var3974 var250 (origin/-1264989136 (cast-from-var2360-to-var604 var1901!7))) ; Statement: $r23 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.jaxb.Origin origin()>() 
(assert true)
;(assert (<init>/235758574 var2660 var2876 var3974)) ; Statement: specialinvoke $r27.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r24, $r23) 

(declare-const var2660!1 var827)
(declare-const var2876!1 String)
(declare-const var3974!1 var250)
(define-const var2177 var1858 (cast-from-var827-to-var1858 var2660!1)) ; Statement: $r30 = (java.lang.Throwable) $r27 
 ; Statement: throw $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-238456656=([org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode, org.hibernate.boot.model.source.internal.hbm.MappingDocument], void), cast-from-var2360-to-var604=([org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl], org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode), var1099-init=([], org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl), <init>/-1594225575=([org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl, java.lang.String], void), cast-from-var1099-to-var1269=([org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl], org.hibernate.boot.model.source.spi.HibernateTypeSource), attributeTypeSource/-535448512=([org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl], org.hibernate.boot.model.source.spi.HibernateTypeSource), jaxbAnyMapping/-535448512=([org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType), naturalIdMutability/-535448512=([org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl], org.hibernate.boot.model.source.spi.NaturalIdMutability), var782_getAttributePathBase/-1652760382=([org.hibernate.boot.model.source.spi.AttributeSourceContainer], org.hibernate.boot.model.source.spi.AttributePath), getName/-2088915552=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType], java.lang.String), append/512614398=([org.hibernate.boot.model.source.spi.AttributePath, java.lang.String], org.hibernate.boot.model.source.spi.AttributePath), attributePath/-535448512=([org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl], org.hibernate.boot.model.source.spi.AttributePath), var782_getAttributeRoleBase/-1304891230=([org.hibernate.boot.model.source.spi.AttributeSourceContainer], org.hibernate.boot.model.source.spi.AttributeRole), append/-1883144098=([org.hibernate.boot.model.source.spi.AttributeRole, java.lang.String], org.hibernate.boot.model.source.spi.AttributeRole), attributeRole/-535448512=([org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl], org.hibernate.boot.model.source.spi.AttributeRole), var3200-init=([], org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$1), <init>/178987701=([org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$1, org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType], void), var2967_buildValueSources/1952860664=([org.hibernate.boot.model.source.internal.hbm.MappingDocument, java.lang.String, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource], java.util.List), cast-from-var3200-to-var3849=([org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$1], org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource), var1463_size/-959786421=([java.util.List], int), var827-init=([], org.hibernate.boot.MappingException), arr-var2749-init=([], java.lang.Object[]), cast-from-String-to-var2749=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), origin/-1264989136=([org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode], org.hibernate.boot.jaxb.Origin), <init>/235758574=([org.hibernate.boot.MappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var827-to-var1858=([org.hibernate.boot.MappingException], java.lang.Throwable)}
; {var2360=org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl, var1901=r0, var3103=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var2926=r1, var782=org.hibernate.boot.model.source.spi.AttributeSourceContainer, var3204=r5, var3462=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType, var228=r3, var3253=r12, var1208=null_type, var1170=org.hibernate.boot.model.source.spi.NaturalIdMutability, var2170=r4, var604=org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode, var1099=org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl, var3714=$r25, var1769=null, var1269=org.hibernate.boot.model.source.spi.HibernateTypeSource, var3523=org.hibernate.boot.model.source.spi.AttributePath, var2719=$r7, var1497=$r6, var510=$r8, var1440=org.hibernate.boot.model.source.spi.AttributeRole, var1220=$r10, var2707=$r9, var1199=$r11, var3200=org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$1, var2468=$r26, var1463=java.util.List, var2967=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper, var3849=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource, var2452=r14, var2375=$i0, var827=org.hibernate.boot.MappingException, var2660=$r27, var172=java.util.Locale, var48=$r21, var2749=java.lang.Object, var1883=$r20, var1659=$r22, var2876=$r24, var250=org.hibernate.boot.jaxb.Origin, var3974=$r23, var1858=java.lang.Throwable, var2177=$r30}
; {org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl=var2360, r0=var1901, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var3103, r1=var2926, org.hibernate.boot.model.source.spi.AttributeSourceContainer=var782, r5=var3204, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType=var3462, r3=var228, r12=var3253, null_type=var1208, org.hibernate.boot.model.source.spi.NaturalIdMutability=var1170, r4=var2170, org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode=var604, org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl=var1099, $r25=var3714, null=var1769, org.hibernate.boot.model.source.spi.HibernateTypeSource=var1269, org.hibernate.boot.model.source.spi.AttributePath=var3523, $r7=var2719, $r6=var1497, $r8=var510, org.hibernate.boot.model.source.spi.AttributeRole=var1440, $r10=var1220, $r9=var2707, $r11=var1199, org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$1=var3200, $r26=var2468, java.util.List=var1463, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper=var2967, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource=var3849, r14=var2452, $i0=var2375, org.hibernate.boot.MappingException=var827, $r27=var2660, java.util.Locale=var172, $r21=var48, java.lang.Object=var2749, $r20=var1883, $r22=var1659, $r24=var2876, org.hibernate.boot.jaxb.Origin=var250, $r23=var3974, java.lang.Throwable=var1858, $r30=var2177}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl;	r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r5 := @parameter1: org.hibernate.boot.model.source.spi.AttributeSourceContainer;	r3 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType;	r12 := @parameter3: java.lang.String;	r4 := @parameter4: org.hibernate.boot.model.source.spi.NaturalIdMutability;	specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode: void <init>(org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r1);	$r25 = new org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl;	specialinvoke $r25.<org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl: void <init>(java.lang.String)>(null);	r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.model.source.spi.HibernateTypeSource attributeTypeSource> = $r25;	r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType jaxbAnyMapping> = r3;	r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.model.source.spi.NaturalIdMutability naturalIdMutability> = r4;	$r7 = interfaceinvoke r5.<org.hibernate.boot.model.source.spi.AttributeSourceContainer: org.hibernate.boot.model.source.spi.AttributePath getAttributePathBase()>();	$r6 = virtualinvoke r3.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<org.hibernate.boot.model.source.spi.AttributePath: org.hibernate.boot.model.source.spi.AttributePath append(java.lang.String)>($r6);	r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.model.source.spi.AttributePath attributePath> = $r8;	$r10 = interfaceinvoke r5.<org.hibernate.boot.model.source.spi.AttributeSourceContainer: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRoleBase()>();	$r9 = virtualinvoke r3.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<org.hibernate.boot.model.source.spi.AttributeRole: org.hibernate.boot.model.source.spi.AttributeRole append(java.lang.String)>($r9);	r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.model.source.spi.AttributeRole attributeRole> = $r11;	$r26 = new org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$1;	specialinvoke $r26.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$1: void <init>(org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType)>(r0, r3);	r14 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: java.util.List buildValueSources(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>(r1, r12, $r26);	$i0 = interfaceinvoke r14.<java.util.List: int size()>();	if $i0 >= 2 goto $r28 = new org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$2;	$r27 = new org.hibernate.boot.MappingException;	$r21 = <java.util.Locale: java.util.Locale ENGLISH>;	$r20 = newarray (java.lang.Object)[1];	$r22 = virtualinvoke r3.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType: java.lang.String getName()>();	$r20[0] = $r22;	$r24 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r21, "<any name=\"%s\" /> mapping needs to specify 2 or more columns", $r20);	$r23 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.jaxb.Origin origin()>();	specialinvoke $r27.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r24, $r23);	$r30 = (java.lang.Throwable) $r27;	throw $r30
;block_num 2