(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2670 0)
(declare-sort var2680 0)
(declare-sort var2641 0)
(declare-sort var1911 0)
(declare-sort var1899 0)
(declare-sort var2111 0)
(declare-sort var1456 0)
(declare-sort var3580 0)
(declare-sort var2973 0)
(declare-sort var3581 0)
(declare-sort var2792 0)
(declare-sort var2268 0)
(declare-sort var3048 0)
(declare-sort var3162 0)
(declare-sort var2325 0)
(declare-sort var2344 0)
(declare-sort var1151 0)
(declare-sort var2697 0)
(declare-sort var1186 0)
(declare-sort var2372 0)
(declare-sort var3809 0)
(declare-sort var1129 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-238456656 (var1456 var2680) void)
(declare-fun cast-from-var2670-to-var1456 (var2670) var1456)
(declare-fun var3580-init () var3580)
(declare-fun <init>/-1594225575 (var3580 String) void)
(declare-fun cast-from-var3580-to-var2973 (var3580) var2973)
(declare-fun attributeTypeSource/-535448512 (var2670) var2973)
(declare-fun jaxbAnyMapping/-535448512 (var2670) var1911)
(declare-fun naturalIdMutability/-535448512 (var2670) var2111)
(declare-fun var2641_getAttributePathBase/-1652760382 (var2641) var3581)
(declare-fun getName/-2088915552 (var1911) String)
(declare-fun append/512614398 (var3581 String) var3581)
(declare-fun attributePath/-535448512 (var2670) var3581)
(declare-fun var2641_getAttributeRoleBase/-1304891230 (var2641) var2792)
(declare-fun append/-1883144098 (var2792 String) var2792)
(declare-fun attributeRole/-535448512 (var2670) var2792)
(declare-fun var2268-init () var2268)
(declare-fun <init>/178987701 (var2268 var2670 var1911) void)
(declare-fun var3162_buildValueSources/1952860664 (var2680 String var2325) var3048)
(declare-fun cast-from-var2268-to-var2325 (var2268) var2325)
(declare-fun var3048_size/-959786421 (var3048) Int)
(declare-fun var2344-init () var2344)
(declare-fun <init>/-895783541 (var2344 var2670 var1911 var3048 var2680) void)
(declare-fun cast-from-var2344-to-var1151 (var2344) var1151)
(declare-fun discriminatorSource/-535448512 (var2670) var1151)
(declare-fun var2697-init () var2697)
(declare-fun <init>/-450246230 (var2697 var2670 var1911 var3048 var2680) void)
(declare-fun cast-from-var2697-to-var1186 (var2697) var1186)
(declare-fun keySource/-535448512 (var2670) var1186)
(declare-fun getToolingHintContext/-1990922182 (var2680) var2372)
(declare-fun var3809_collectToolingHints/-1643529099 (var2372 var1129) var2372)
(declare-fun cast-from-var1911-to-var1129 (var1911) var1129)
(declare-fun toolingHintContext/-535448512 (var2670) var2372)
(declare-const null-var2670 var2670)
(declare-const null-var2680 var2680)
(declare-const null-var2641 var2641)
(declare-const null-var1911 var1911)
(declare-const null-String String)
(declare-const null-var2111 var2111)
(declare-const null-NullType var1899)
(declare-const var3800 var2670) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl 
(assert (not (= var3800 null-var2670)))
(declare-const var1032 var2680) ; Statement: r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument 
(assert (not (= var1032 null-var2680)))
(declare-const var841 var2641) ; Statement: r5 := @parameter1: org.hibernate.boot.model.source.spi.AttributeSourceContainer 
(assert (not (= var841 null-var2641)))
(declare-const var3696 var1911) ; Statement: r3 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType 
(assert (not (= var3696 null-var1911)))
(declare-const var1125 String) ; Statement: r12 := @parameter3: java.lang.String 
(assert (not (= var1125 null-String)))
(declare-const var102 var2111) ; Statement: r4 := @parameter4: org.hibernate.boot.model.source.spi.NaturalIdMutability 
(assert (not (= var102 null-var2111)))
(assert true)
;(assert (<init>/-238456656 (cast-from-var2670-to-var1456 var3800) var1032)) ; Statement: specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode: void <init>(org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r1) 

(declare-const var3800!1 var2670)
(declare-const var1032!1 var2680)
(define-const var1260 var3580 var3580-init) ; Statement: $r25 = new org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl 
(assert true)
;(assert (<init>/-1594225575 var1260 null-String)) ; Statement: specialinvoke $r25.<org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl: void <init>(java.lang.String)>(null) 

(declare-const var1260!1 var3580)
(declare-const var682 var1899)
(declare-const var3800!2 var2670)
(assert (not (= var3800!2 null-var2670)))
(assert (= (attributeTypeSource/-535448512 var3800!2) (cast-from-var3580-to-var2973 var1260!1))) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.model.source.spi.HibernateTypeSource attributeTypeSource> = $r25 
(declare-const var3800!3 var2670)
(assert (not (= var3800!3 null-var2670)))
(assert (= (jaxbAnyMapping/-535448512 var3800!3) var3696)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType jaxbAnyMapping> = r3 
(declare-const var3800!4 var2670)
(assert (not (= var3800!4 null-var2670)))
(assert (= (naturalIdMutability/-535448512 var3800!4) var102)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.model.source.spi.NaturalIdMutability naturalIdMutability> = r4 
(define-const var1592 var3581 (var2641_getAttributePathBase/-1652760382 var841)) ; Statement: $r7 = interfaceinvoke r5.<org.hibernate.boot.model.source.spi.AttributeSourceContainer: org.hibernate.boot.model.source.spi.AttributePath getAttributePathBase()>() 
(assert true)
(define-const var666 String (getName/-2088915552 var3696)) ; Statement: $r6 = virtualinvoke r3.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType: java.lang.String getName()>() 
(assert true)
(define-const var2116 var3581 (append/512614398 var1592 var666)) ; Statement: $r8 = virtualinvoke $r7.<org.hibernate.boot.model.source.spi.AttributePath: org.hibernate.boot.model.source.spi.AttributePath append(java.lang.String)>($r6) 
(declare-const var3800!5 var2670)
(assert (not (= var3800!5 null-var2670)))
(assert (= (attributePath/-535448512 var3800!5) var2116)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.model.source.spi.AttributePath attributePath> = $r8 
(define-const var1956 var2792 (var2641_getAttributeRoleBase/-1304891230 var841)) ; Statement: $r10 = interfaceinvoke r5.<org.hibernate.boot.model.source.spi.AttributeSourceContainer: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRoleBase()>() 
(assert true)
(define-const var3986 String (getName/-2088915552 var3696)) ; Statement: $r9 = virtualinvoke r3.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType: java.lang.String getName()>() 
(assert true)
(define-const var2266 var2792 (append/-1883144098 var1956 var3986)) ; Statement: $r11 = virtualinvoke $r10.<org.hibernate.boot.model.source.spi.AttributeRole: org.hibernate.boot.model.source.spi.AttributeRole append(java.lang.String)>($r9) 
(declare-const var3800!6 var2670)
(assert (not (= var3800!6 null-var2670)))
(assert (= (attributeRole/-535448512 var3800!6) var2266)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.model.source.spi.AttributeRole attributeRole> = $r11 
(define-const var1975 var2268 var2268-init) ; Statement: $r26 = new org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$1 
(assert true)
;(assert (<init>/178987701 var1975 var3800!6 var3696)) ; Statement: specialinvoke $r26.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$1: void <init>(org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType)>(r0, r3) 

(declare-const var1975!1 var2268)
(declare-const var3800!7 var2670)
(declare-const var3696!1 var1911)
(define-const var3382 var3048 (var3162_buildValueSources/1952860664 var1032!1 var1125 (cast-from-var2268-to-var2325 var1975!1))) ; Statement: r14 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: java.util.List buildValueSources(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>(r1, r12, $r26) 
(define-const var3902 Int (var3048_size/-959786421 var3382)) ; Statement: $i0 = interfaceinvoke r14.<java.util.List: int size()>() 
 ; Statement: if $i0 >= 2 goto $r28 = new org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$2 
(assert (>= var3902 2)) ; Cond: $i0 >= 2 
(define-const var3328 var2344 var2344-init) ; Statement: $r28 = new org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$2 
(assert true)
;(assert (<init>/-895783541 var3328 var3800!7 var3696!1 var3382 var1032!1)) ; Statement: specialinvoke $r28.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$2: void <init>(org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType,java.util.List,org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r0, r3, r14, r1) 

(declare-const var3328!1 var2344)
(declare-const var3800!8 var2670)
(declare-const var3696!2 var1911)
(declare-const var3382!1 var3048)
(declare-const var1032!2 var2680)
(declare-const var3800!9 var2670)
(assert (not (= var3800!9 null-var2670)))
(assert (= (discriminatorSource/-535448512 var3800!9) (cast-from-var2344-to-var1151 var3328!1))) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.model.source.spi.AnyDiscriminatorSource discriminatorSource> = $r28 
(define-const var2920 var2697 var2697-init) ; Statement: $r29 = new org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$3 
(assert true)
;(assert (<init>/-450246230 var2920 var3800!9 var3696!2 var3382!1 var1032!2)) ; Statement: specialinvoke $r29.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$3: void <init>(org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType,java.util.List,org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r0, r3, r14, r1) 

(declare-const var2920!1 var2697)
(declare-const var3800!10 var2670)
(declare-const var3696!3 var1911)
(declare-const var3382!2 var3048)
(declare-const var1032!3 var2680)
(declare-const var3800!11 var2670)
(assert (not (= var3800!11 null-var2670)))
(assert (= (keySource/-535448512 var3800!11) (cast-from-var2697-to-var1186 var2920!1))) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.model.source.spi.AnyKeySource keySource> = $r29 
(assert true)
(define-const var2840 var2372 (getToolingHintContext/-1990922182 var1032!3)) ; Statement: $r17 = virtualinvoke r1.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.model.source.spi.ToolingHintContext getToolingHintContext()>() 
(define-const var2284 var2372 (var3809_collectToolingHints/-1643529099 var2840 (cast-from-var1911-to-var1129 var3696!3))) ; Statement: $r18 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.Helper: org.hibernate.boot.model.source.spi.ToolingHintContext collectToolingHints(org.hibernate.boot.model.source.spi.ToolingHintContext,org.hibernate.boot.jaxb.hbm.spi.ToolingHintContainer)>($r17, r3) 
(declare-const var3800!12 var2670)
(assert (not (= var3800!12 null-var2670)))
(assert (= (toolingHintContext/-535448512 var3800!12) var2284)) ; Statement: r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.model.source.spi.ToolingHintContext toolingHintContext> = $r18 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-238456656=([org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode, org.hibernate.boot.model.source.internal.hbm.MappingDocument], void), cast-from-var2670-to-var1456=([org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl], org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode), var3580-init=([], org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl), <init>/-1594225575=([org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl, java.lang.String], void), cast-from-var3580-to-var2973=([org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl], org.hibernate.boot.model.source.spi.HibernateTypeSource), attributeTypeSource/-535448512=([org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl], org.hibernate.boot.model.source.spi.HibernateTypeSource), jaxbAnyMapping/-535448512=([org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType), naturalIdMutability/-535448512=([org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl], org.hibernate.boot.model.source.spi.NaturalIdMutability), var2641_getAttributePathBase/-1652760382=([org.hibernate.boot.model.source.spi.AttributeSourceContainer], org.hibernate.boot.model.source.spi.AttributePath), getName/-2088915552=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType], java.lang.String), append/512614398=([org.hibernate.boot.model.source.spi.AttributePath, java.lang.String], org.hibernate.boot.model.source.spi.AttributePath), attributePath/-535448512=([org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl], org.hibernate.boot.model.source.spi.AttributePath), var2641_getAttributeRoleBase/-1304891230=([org.hibernate.boot.model.source.spi.AttributeSourceContainer], org.hibernate.boot.model.source.spi.AttributeRole), append/-1883144098=([org.hibernate.boot.model.source.spi.AttributeRole, java.lang.String], org.hibernate.boot.model.source.spi.AttributeRole), attributeRole/-535448512=([org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl], org.hibernate.boot.model.source.spi.AttributeRole), var2268-init=([], org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$1), <init>/178987701=([org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$1, org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType], void), var3162_buildValueSources/1952860664=([org.hibernate.boot.model.source.internal.hbm.MappingDocument, java.lang.String, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource], java.util.List), cast-from-var2268-to-var2325=([org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$1], org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource), var3048_size/-959786421=([java.util.List], int), var2344-init=([], org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$2), <init>/-895783541=([org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$2, org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType, java.util.List, org.hibernate.boot.model.source.internal.hbm.MappingDocument], void), cast-from-var2344-to-var1151=([org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$2], org.hibernate.boot.model.source.spi.AnyDiscriminatorSource), discriminatorSource/-535448512=([org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl], org.hibernate.boot.model.source.spi.AnyDiscriminatorSource), var2697-init=([], org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$3), <init>/-450246230=([org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$3, org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType, java.util.List, org.hibernate.boot.model.source.internal.hbm.MappingDocument], void), cast-from-var2697-to-var1186=([org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$3], org.hibernate.boot.model.source.spi.AnyKeySource), keySource/-535448512=([org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl], org.hibernate.boot.model.source.spi.AnyKeySource), getToolingHintContext/-1990922182=([org.hibernate.boot.model.source.internal.hbm.MappingDocument], org.hibernate.boot.model.source.spi.ToolingHintContext), var3809_collectToolingHints/-1643529099=([org.hibernate.boot.model.source.spi.ToolingHintContext, org.hibernate.boot.jaxb.hbm.spi.ToolingHintContainer], org.hibernate.boot.model.source.spi.ToolingHintContext), cast-from-var1911-to-var1129=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType], org.hibernate.boot.jaxb.hbm.spi.ToolingHintContainer), toolingHintContext/-535448512=([org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl], org.hibernate.boot.model.source.spi.ToolingHintContext)}
; {var2670=org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl, var3800=r0, var2680=org.hibernate.boot.model.source.internal.hbm.MappingDocument, var1032=r1, var2641=org.hibernate.boot.model.source.spi.AttributeSourceContainer, var841=r5, var1911=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType, var3696=r3, var1125=r12, var1899=null_type, var2111=org.hibernate.boot.model.source.spi.NaturalIdMutability, var102=r4, var1456=org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode, var3580=org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl, var1260=$r25, var682=null, var2973=org.hibernate.boot.model.source.spi.HibernateTypeSource, var3581=org.hibernate.boot.model.source.spi.AttributePath, var1592=$r7, var666=$r6, var2116=$r8, var2792=org.hibernate.boot.model.source.spi.AttributeRole, var1956=$r10, var3986=$r9, var2266=$r11, var2268=org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$1, var1975=$r26, var3048=java.util.List, var3162=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper, var2325=org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource, var3382=r14, var3902=$i0, var2344=org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$2, var3328=$r28, var1151=org.hibernate.boot.model.source.spi.AnyDiscriminatorSource, var2697=org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$3, var2920=$r29, var1186=org.hibernate.boot.model.source.spi.AnyKeySource, var2372=org.hibernate.boot.model.source.spi.ToolingHintContext, var2840=$r17, var3809=org.hibernate.boot.model.source.internal.hbm.Helper, var1129=org.hibernate.boot.jaxb.hbm.spi.ToolingHintContainer, var2284=$r18}
; {org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl=var2670, r0=var3800, org.hibernate.boot.model.source.internal.hbm.MappingDocument=var2680, r1=var1032, org.hibernate.boot.model.source.spi.AttributeSourceContainer=var2641, r5=var841, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType=var1911, r3=var3696, r12=var1125, null_type=var1899, org.hibernate.boot.model.source.spi.NaturalIdMutability=var2111, r4=var102, org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode=var1456, org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl=var3580, $r25=var1260, null=var682, org.hibernate.boot.model.source.spi.HibernateTypeSource=var2973, org.hibernate.boot.model.source.spi.AttributePath=var3581, $r7=var1592, $r6=var666, $r8=var2116, org.hibernate.boot.model.source.spi.AttributeRole=var2792, $r10=var1956, $r9=var3986, $r11=var2266, org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$1=var2268, $r26=var1975, java.util.List=var3048, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper=var3162, org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource=var2325, r14=var3382, $i0=var3902, org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$2=var2344, $r28=var3328, org.hibernate.boot.model.source.spi.AnyDiscriminatorSource=var1151, org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$3=var2697, $r29=var2920, org.hibernate.boot.model.source.spi.AnyKeySource=var1186, org.hibernate.boot.model.source.spi.ToolingHintContext=var2372, $r17=var2840, org.hibernate.boot.model.source.internal.hbm.Helper=var3809, org.hibernate.boot.jaxb.hbm.spi.ToolingHintContainer=var1129, $r18=var2284}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl;	r1 := @parameter0: org.hibernate.boot.model.source.internal.hbm.MappingDocument;	r5 := @parameter1: org.hibernate.boot.model.source.spi.AttributeSourceContainer;	r3 := @parameter2: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType;	r12 := @parameter3: java.lang.String;	r4 := @parameter4: org.hibernate.boot.model.source.spi.NaturalIdMutability;	specialinvoke r0.<org.hibernate.boot.model.source.internal.hbm.AbstractHbmSourceNode: void <init>(org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r1);	$r25 = new org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl;	specialinvoke $r25.<org.hibernate.boot.model.source.internal.hbm.HibernateTypeSourceImpl: void <init>(java.lang.String)>(null);	r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.model.source.spi.HibernateTypeSource attributeTypeSource> = $r25;	r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType jaxbAnyMapping> = r3;	r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.model.source.spi.NaturalIdMutability naturalIdMutability> = r4;	$r7 = interfaceinvoke r5.<org.hibernate.boot.model.source.spi.AttributeSourceContainer: org.hibernate.boot.model.source.spi.AttributePath getAttributePathBase()>();	$r6 = virtualinvoke r3.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<org.hibernate.boot.model.source.spi.AttributePath: org.hibernate.boot.model.source.spi.AttributePath append(java.lang.String)>($r6);	r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.model.source.spi.AttributePath attributePath> = $r8;	$r10 = interfaceinvoke r5.<org.hibernate.boot.model.source.spi.AttributeSourceContainer: org.hibernate.boot.model.source.spi.AttributeRole getAttributeRoleBase()>();	$r9 = virtualinvoke r3.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<org.hibernate.boot.model.source.spi.AttributeRole: org.hibernate.boot.model.source.spi.AttributeRole append(java.lang.String)>($r9);	r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.model.source.spi.AttributeRole attributeRole> = $r11;	$r26 = new org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$1;	specialinvoke $r26.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$1: void <init>(org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType)>(r0, r3);	r14 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper: java.util.List buildValueSources(org.hibernate.boot.model.source.internal.hbm.MappingDocument,java.lang.String,org.hibernate.boot.model.source.internal.hbm.RelationalValueSourceHelper$ColumnsAndFormulasSource)>(r1, r12, $r26);	$i0 = interfaceinvoke r14.<java.util.List: int size()>();	if $i0 >= 2 goto $r28 = new org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$2;	$r28 = new org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$2;	specialinvoke $r28.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$2: void <init>(org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType,java.util.List,org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r0, r3, r14, r1);	r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.model.source.spi.AnyDiscriminatorSource discriminatorSource> = $r28;	$r29 = new org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$3;	specialinvoke $r29.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl$3: void <init>(org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl,org.hibernate.boot.jaxb.hbm.spi.JaxbHbmAnyAssociationType,java.util.List,org.hibernate.boot.model.source.internal.hbm.MappingDocument)>(r0, r3, r14, r1);	r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.model.source.spi.AnyKeySource keySource> = $r29;	$r17 = virtualinvoke r1.<org.hibernate.boot.model.source.internal.hbm.MappingDocument: org.hibernate.boot.model.source.spi.ToolingHintContext getToolingHintContext()>();	$r18 = staticinvoke <org.hibernate.boot.model.source.internal.hbm.Helper: org.hibernate.boot.model.source.spi.ToolingHintContext collectToolingHints(org.hibernate.boot.model.source.spi.ToolingHintContext,org.hibernate.boot.jaxb.hbm.spi.ToolingHintContainer)>($r17, r3);	r0.<org.hibernate.boot.model.source.internal.hbm.SingularAttributeSourceAnyImpl: org.hibernate.boot.model.source.spi.ToolingHintContext toolingHintContext> = $r18;	return
;block_num 2