(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3391 0)
(declare-sort var1709 0)
(declare-sort var2731 0)
(declare-sort var2206 0)
(declare-sort var2803 0)
(declare-sort var2300 0)
(declare-sort var2199 0)
(declare-sort var3222 0)
(declare-sort var661 0)
(declare-sort var98 0)
(declare-sort var2274 0)
(declare-sort var670 0)
(declare-sort var1887 0)
(declare-sort var1829 0)
(declare-sort var76 0)
(declare-sort var3336 0)
(declare-sort var1237 0)
(declare-sort var642 0)
(declare-sort var3897 0)
(declare-sort var333 0)
(declare-sort var3308 0)
(declare-sort var1224 0)
(declare-sort var3250 0)
(declare-sort var1671 0)
(declare-sort var3662 0)
(declare-sort var1947 0)
(declare-sort var2668 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3222!class ClassObject)
(declare-const var661!class ClassObject)
(declare-const var333!class ClassObject)
(declare-const String!class ClassObject)
(declare-const var1671!class ClassObject)
(declare-const var2668!class ClassObject)
(declare-fun <init>/-279557996 (var2731) void)
(declare-fun cast-from-var3391-to-var2731 (var3391) var2731)
(declare-fun var2206-init () var2206)
(declare-fun <init>/-325640736 (var2206) void)
(declare-fun basicTypeRegistrations/1175689288 (var3391) var2206)
(declare-fun var2803-init () var2803)
(declare-fun <init>/-2021892866 (var2803) void)
(declare-fun idGenerationTypeInterpreter/1175689288 (var3391) var2803)
(declare-fun serviceRegistry/1175689288 (var3391) var1709)
(declare-fun var2199_getService/-972330729 (var2199 ClassObject) var2300)
(declare-fun cast-from-var1709-to-var2199 (var1709) var2199)
(declare-fun cast-from-var2300-to-var3222 (var2300) var3222)
(declare-fun cast-from-var2300-to-var661 (var2300) var661)
(declare-fun var98-init () var98)
(declare-fun <init>/690337262 (var98 var1709) void)
(declare-fun mappingDefaults/1175689288 (var3391) var98)
(declare-fun var661_getSettings/2034258353 (var661) var2274)
(declare-fun var670_determineMultiTenancyStrategy/-92423624 (var2274) var670)
(declare-fun multiTenancyStrategy/1175689288 (var3391) var670)
(declare-fun var76_valueOf/1602327315 (Bool) var76)
(declare-fun var661_getSetting/183454356 (var661 String var1887 var2731) var2731)
(declare-fun cast-from-var76-to-var2731 (var76) var2731)
(declare-fun cast-from-var2731-to-var76 (var2731) var76)
(declare-fun booleanValue/-1820462562 (var76) Bool)
(declare-fun xmlMappingEnabled/1175689288 (var3391) Bool)
(declare-fun implicitDiscriminatorsForJoinedInheritanceSupported/1175689288 (var3391) Bool)
(declare-fun explicitDiscriminatorsForJoinedInheritanceSupported/1175689288 (var3391) Bool)
(declare-fun implicitlyForceDiscriminatorInSelect/1175689288 (var3391) Bool)
(declare-fun var3336-init () var3336)
(declare-fun <init>/291849780 (var3336 var3391) void)
(declare-fun var1237-init () var1237)
(declare-fun <init>/277599635 (var1237 var3391) void)
(declare-fun cast-from-var1237-to-var1887 (var1237) var1887)
(declare-fun cast-from-var642-to-var2731 (var642) var2731)
(declare-fun cast-from-var2731-to-var642 (var2731) var642)
(declare-fun cast-from-var3336-to-var1887 (var3336) var1887)
(declare-fun sharedCacheMode/1175689288 (var3391) var642)
(declare-fun var3897-init () var3897)
(declare-fun <init>/263349490 (var3897 var3391) void)
(declare-fun cast-from-var2300-to-var333 (var2300) var333)
(declare-fun var333_getDefaultAccessType/486354524 (var333) var3308)
(declare-fun cast-from-var3897-to-var1887 (var3897) var1887)
(declare-fun cast-from-var3308-to-var2731 (var3308) var2731)
(declare-fun cast-from-var2731-to-var3308 (var2731) var3308)
(declare-fun defaultCacheAccessType/1175689288 (var3391) var3308)
(declare-fun specjProprietarySyntaxEnabled/1175689288 (var3391) Bool)
(declare-fun name/-1552687968 (var1224) String)
(declare-fun var661_getSetting/617429165 (var661 String ClassObject var2731) var2731)
(declare-fun cast-from-var2731-to-String (var2731) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun noConstraintByDefault/1175689288 (var3391) Bool)
(declare-fun var2274_get/1088891777 (var2274 var2731) var2731)
(declare-fun cast-from-String-to-var2731 (String) var2731)
(declare-fun var3250-init () var3250)
(declare-fun <init>/804750413 (var3250 var3391 var3222) void)
(declare-fun var3222_resolveDefaultableStrategy/799268158 (var3222 ClassObject var2731 var3662) var2731)
(declare-fun cast-from-var3250-to-var3662 (var3250) var3662)
(declare-fun cast-from-var2731-to-var1671 (var2731) var1671)
(declare-fun implicitNamingStrategy/1175689288 (var3391) var1671)
(declare-fun var3222_resolveDefaultableStrategy/-420100722 (var3222 ClassObject var2731 var2731) var2731)
(declare-fun cast-from-var1947-to-var2731 (var1947) var2731)
(declare-fun cast-from-var2731-to-var2668 (var2731) var2668)
(declare-fun physicalNamingStrategy/1175689288 (var3391) var2668)
(declare-fun resolveInitialSourceProcessOrdering/-148199121 (var3391 var661) var2206)
(declare-fun sourceProcessOrdering/1175689288 (var3391) var2206)
(declare-fun enableLegacyFallback/1863119490 (var2803) void)
(declare-fun useNationalizedCharacterData/1175689288 (var3391) Bool)
(declare-fun schemaCharset/1175689288 (var3391) String)
(declare-const null-var3391 var3391)
(declare-const null-var1709 var1709)
(declare-const var1829-BOOLEAN var1887)
(declare-const var642-UNSPECIFIED var642)
(declare-const null-var2300 var2300)
(declare-const var1224-NO_CONSTRAINT var1224)
(declare-const null-var2731 var2731)
(declare-const var1947-INSTANCE var1947)
(declare-const var2476 var3391) ; Statement: r0 := @this: org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl 
(assert (not (= var2476 null-var3391)))
(declare-const var2459 var1709) ; Statement: r3 := @parameter0: org.hibernate.boot.registry.StandardServiceRegistry 
(assert (not (= var2459 null-var1709)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3391-to-var2731 var2476))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2476!1 var3391)
(define-const var3522 var2206 var2206-init) ; Statement: $r1 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3522)) ; Statement: specialinvoke $r1.<java.util.ArrayList: void <init>()>() 

(declare-const var3522!1 var2206)
(declare-const var2476!2 var3391)
(assert (not (= var2476!2 null-var3391)))
(assert (= (basicTypeRegistrations/1175689288 var2476!2) var3522!1)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList basicTypeRegistrations> = $r1 
(define-const var3723 var2803 var2803-init) ; Statement: $r2 = new org.hibernate.boot.internal.IdGeneratorInterpreterImpl 
(assert true)
;(assert (<init>/-2021892866 var3723)) ; Statement: specialinvoke $r2.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void <init>()>() 

(declare-const var3723!1 var2803)
(declare-const var2476!3 var3391)
(assert (not (= var2476!3 null-var3391)))
(assert (= (idGenerationTypeInterpreter/1175689288 var2476!3) var3723!1)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> = $r2 
(declare-const var2476!4 var3391)
(assert (not (= var2476!4 null-var3391)))
(assert (= (serviceRegistry/1175689288 var2476!4) var2459)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.registry.StandardServiceRegistry serviceRegistry> = r3 
(define-const var2160 var2300 (var2199_getService/-972330729 (cast-from-var1709-to-var2199 var2459) var3222!class)) ; Statement: $r4 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/selector/spi/StrategySelector;") 
(define-const var2461 var3222 (cast-from-var2300-to-var3222 var2160)) ; Statement: r5 = (org.hibernate.boot.registry.selector.spi.StrategySelector) $r4 
(define-const var1479 var2300 (var2199_getService/-972330729 (cast-from-var1709-to-var2199 var2459) var661!class)) ; Statement: $r6 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;") 
(define-const var2346 var661 (cast-from-var2300-to-var661 var1479)) ; Statement: r7 = (org.hibernate.engine.config.spi.ConfigurationService) $r6 
(define-const var234 var98 var98-init) ; Statement: $r8 = new org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl 
(assert true)
;(assert (<init>/690337262 var234 var2459)) ; Statement: specialinvoke $r8.<org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl: void <init>(org.hibernate.boot.registry.StandardServiceRegistry)>(r3) 

(declare-const var234!1 var98)
(declare-const var2459!1 var1709)
(declare-const var2476!5 var3391)
(assert (not (= var2476!5 null-var3391)))
(assert (= (mappingDefaults/1175689288 var2476!5) var234!1)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl mappingDefaults> = $r8 
(define-const var1599 var2274 (var661_getSettings/2034258353 var2346)) ; Statement: $r9 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>() 
(define-const var818 var670 (var670_determineMultiTenancyStrategy/-92423624 var1599)) ; Statement: $r10 = staticinvoke <org.hibernate.MultiTenancyStrategy: org.hibernate.MultiTenancyStrategy determineMultiTenancyStrategy(java.util.Map)>($r9) 
(declare-const var2476!6 var3391)
(assert (not (= var2476!6 null-var3391)))
(assert (= (multiTenancyStrategy/1175689288 var2476!6) var818)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.MultiTenancyStrategy multiTenancyStrategy> = $r10 
(define-const var3601 var1887 var1829-BOOLEAN) ; Statement: $r11 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var3980 var76 (var76_valueOf/1602327315 (ite (= 1 1) true false))) ; Statement: $r12 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1) 
(define-const var2905 var2731 (var661_getSetting/183454356 var2346 "hibernate.xml_mapping_enabled" var3601 (cast-from-var76-to-var2731 var3980))) ; Statement: $r13 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.xml_mapping_enabled", $r11, $r12) 
(define-const var2487 var76 (cast-from-var2731-to-var76 var2905)) ; Statement: $r14 = (java.lang.Boolean) $r13 
(assert true)
(define-const var996 Bool (booleanValue/-1820462562 var2487)) ; Statement: $z0 = virtualinvoke $r14.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var2476!7 var3391)
(assert (not (= var2476!7 null-var3391)))
(assert (= (xmlMappingEnabled/1175689288 var2476!7) var996)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean xmlMappingEnabled> = $z0 
(define-const var3019 var1887 var1829-BOOLEAN) ; Statement: $r15 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var101 var76 (var76_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r16 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var1331 var2731 (var661_getSetting/183454356 var2346 "hibernate.discriminator.implicit_for_joined" var3019 (cast-from-var76-to-var2731 var101))) ; Statement: $r17 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.implicit_for_joined", $r15, $r16) 
(define-const var1881 var76 (cast-from-var2731-to-var76 var1331)) ; Statement: $r18 = (java.lang.Boolean) $r17 
(assert true)
(define-const var2357 Bool (booleanValue/-1820462562 var1881)) ; Statement: $z1 = virtualinvoke $r18.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var2476!8 var3391)
(assert (not (= var2476!8 null-var3391)))
(assert (= (implicitDiscriminatorsForJoinedInheritanceSupported/1175689288 var2476!8) var2357)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitDiscriminatorsForJoinedInheritanceSupported> = $z1 
(define-const var2698 var1887 var1829-BOOLEAN) ; Statement: $r19 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var3707 var76 (var76_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r20 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var631 var2731 (var661_getSetting/183454356 var2346 "hibernate.discriminator.ignore_explicit_for_joined" var2698 (cast-from-var76-to-var2731 var3707))) ; Statement: $r21 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.ignore_explicit_for_joined", $r19, $r20) 
(define-const var2770 var76 (cast-from-var2731-to-var76 var631)) ; Statement: $r22 = (java.lang.Boolean) $r21 
(assert true)
(define-const var699 Bool (booleanValue/-1820462562 var2770)) ; Statement: $z2 = virtualinvoke $r22.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z2 != 0 goto $z8 = 0 
(assert (not (= (ite var699 1 0) 0))) ; Cond: $z2 != 0 
(define-const var3035 Bool (ite (= 1 0) true false)) ; Statement: $z8 = 0 
(assert true) ; Non Conditional
(declare-const var2476!9 var3391)
(assert (not (= var2476!9 null-var3391)))
(assert (= (explicitDiscriminatorsForJoinedInheritanceSupported/1175689288 var2476!9) var3035)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean explicitDiscriminatorsForJoinedInheritanceSupported> = $z8 
(define-const var129 var1887 var1829-BOOLEAN) ; Statement: $r23 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var61 var76 (var76_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r24 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var3582 var2731 (var661_getSetting/183454356 var2346 "hibernate.discriminator.force_in_select" var129 (cast-from-var76-to-var2731 var61))) ; Statement: $r25 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.force_in_select", $r23, $r24) 
(define-const var1573 var76 (cast-from-var2731-to-var76 var3582)) ; Statement: $r26 = (java.lang.Boolean) $r25 
(assert true)
(define-const var1595 Bool (booleanValue/-1820462562 var1573)) ; Statement: $z3 = virtualinvoke $r26.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var2476!10 var3391)
(assert (not (= var2476!10 null-var3391)))
(assert (= (implicitlyForceDiscriminatorInSelect/1175689288 var2476!10) var1595)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitlyForceDiscriminatorInSelect> = $z3 
(define-const var3197 var3336 var3336-init) ; Statement: $r27 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1 
(assert true)
;(assert (<init>/291849780 var3197 var2476!10)) ; Statement: specialinvoke $r27.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0) 

(declare-const var3197!1 var3336)
(declare-const var2476!11 var3391)
(define-const var1991 var1237 var1237-init) ; Statement: $r28 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2 
(assert true)
;(assert (<init>/277599635 var1991 var2476!11)) ; Statement: specialinvoke $r28.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0) 

(declare-const var1991!1 var1237)
(declare-const var2476!12 var3391)
(define-const var120 var642 var642-UNSPECIFIED) ; Statement: $r29 = <javax.persistence.SharedCacheMode: javax.persistence.SharedCacheMode UNSPECIFIED> 
(define-const var1068 var2731 (var661_getSetting/183454356 var2346 "jakarta.persistence.sharedCache.mode" (cast-from-var1237-to-var1887 var1991!1) (cast-from-var642-to-var2731 var120))) ; Statement: $r30 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("jakarta.persistence.sharedCache.mode", $r28, $r29) 
(define-const var1833 var642 (cast-from-var2731-to-var642 var1068)) ; Statement: $r31 = (javax.persistence.SharedCacheMode) $r30 
(define-const var3892 var2731 (var661_getSetting/183454356 var2346 "javax.persistence.sharedCache.mode" (cast-from-var3336-to-var1887 var3197!1) (cast-from-var642-to-var2731 var1833))) ; Statement: $r32 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("javax.persistence.sharedCache.mode", $r27, $r31) 
(define-const var3191 var642 (cast-from-var2731-to-var642 var3892)) ; Statement: $r33 = (javax.persistence.SharedCacheMode) $r32 
(declare-const var2476!13 var3391)
(assert (not (= var2476!13 null-var3391)))
(assert (= (sharedCacheMode/1175689288 var2476!13) var3191)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: javax.persistence.SharedCacheMode sharedCacheMode> = $r33 
(define-const var1266 var3897 var3897-init) ; Statement: $r34 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3 
(assert true)
;(assert (<init>/263349490 var1266 var2476!13)) ; Statement: specialinvoke $r34.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0) 

(declare-const var1266!1 var3897)
(declare-const var2476!14 var3391)
(define-const var1440 var2300 (var2199_getService/-972330729 (cast-from-var1709-to-var2199 var2459!1) var333!class)) ; Statement: $r35 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;") 
 ; Statement: if $r35 != null goto $r36 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;") 
(assert (not (= var1440 null-var2300))) ; Cond: $r35 != null 
(define-const var2711 var2300 (var2199_getService/-972330729 (cast-from-var1709-to-var2199 var2459!1) var333!class)) ; Statement: $r36 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;") 
(define-const var2759 var333 (cast-from-var2300-to-var333 var2711)) ; Statement: $r37 = (org.hibernate.cache.spi.RegionFactory) $r36 
(define-const var253 var3308 (var333_getDefaultAccessType/486354524 var2759)) ; Statement: $r71 = interfaceinvoke $r37.<org.hibernate.cache.spi.RegionFactory: org.hibernate.cache.spi.access.AccessType getDefaultAccessType()>() 
(assert true) ; Non Conditional
(define-const var1229 var2731 (var661_getSetting/183454356 var2346 "hibernate.cache.default_cache_concurrency_strategy" (cast-from-var3897-to-var1887 var1266!1) (cast-from-var3308-to-var2731 var253))) ; Statement: $r38 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.cache.default_cache_concurrency_strategy", $r34, $r71) 
(define-const var528 var3308 (cast-from-var2731-to-var3308 var1229)) ; Statement: $r39 = (org.hibernate.cache.spi.access.AccessType) $r38 
(declare-const var2476!15 var3391)
(assert (not (= var2476!15 null-var3391)))
(assert (= (defaultCacheAccessType/1175689288 var2476!15) var528)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.cache.spi.access.AccessType defaultCacheAccessType> = $r39 
(define-const var2635 var1887 var1829-BOOLEAN) ; Statement: $r40 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var1374 var76 (var76_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r41 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var3381 var2731 (var661_getSetting/183454356 var2346 "hibernate.enable_specj_proprietary_syntax" var2635 (cast-from-var76-to-var2731 var1374))) ; Statement: $r42 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.enable_specj_proprietary_syntax", $r40, $r41) 
(define-const var3565 var76 (cast-from-var2731-to-var76 var3381)) ; Statement: $r43 = (java.lang.Boolean) $r42 
(assert true)
(define-const var673 Bool (booleanValue/-1820462562 var3565)) ; Statement: $z4 = virtualinvoke $r43.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var2476!16 var3391)
(assert (not (= var2476!16 null-var3391)))
(assert (= (specjProprietarySyntaxEnabled/1175689288 var2476!16) var673)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean specjProprietarySyntaxEnabled> = $z4 
(define-const var2654 var1224 var1224-NO_CONSTRAINT) ; Statement: $r44 = <javax.persistence.ConstraintMode: javax.persistence.ConstraintMode NO_CONSTRAINT> 
(assert true)
(define-const var3125 String (name/-1552687968 var2654)) ; Statement: $r47 = virtualinvoke $r44.<javax.persistence.ConstraintMode: java.lang.String name()>() 
(define-const var3970 var2731 (var661_getSetting/617429165 var2346 "hibernate.hbm2ddl.default_constraint_mode" String!class null-var2731)) ; Statement: $r45 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.default_constraint_mode", class "Ljava/lang/String;", null) 
(define-const var11 String (cast-from-var2731-to-String var3970)) ; Statement: $r46 = (java.lang.String) $r45 
(assert true)
(define-const var2672 Bool (equalsIgnoreCase/-92311102 var3125 var11)) ; Statement: $z5 = virtualinvoke $r47.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r46) 
(declare-const var2476!17 var3391)
(assert (not (= var2476!17 null-var3391)))
(assert (= (noConstraintByDefault/1175689288 var2476!17) var2672)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean noConstraintByDefault> = $z5 
(define-const var571 var2274 (var661_getSettings/2034258353 var2346)) ; Statement: $r48 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>() 
(define-const var2388 var2731 (var2274_get/1088891777 var571 (cast-from-String-to-var2731 "hibernate.implicit_naming_strategy"))) ; Statement: $r50 = interfaceinvoke $r48.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.implicit_naming_strategy") 
(define-const var939 var3250 var3250-init) ; Statement: $r49 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4 
(assert true)
;(assert (<init>/804750413 var939 var2476!17 var2461)) ; Statement: specialinvoke $r49.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl,org.hibernate.boot.registry.selector.spi.StrategySelector)>(r0, r5) 

(declare-const var939!1 var3250)
(declare-const var2476!18 var3391)
(declare-const var2461!1 var3222)
(define-const var1557 var2731 (var3222_resolveDefaultableStrategy/799268158 var2461!1 var1671!class var2388 (cast-from-var3250-to-var3662 var939!1))) ; Statement: $r51 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.util.concurrent.Callable)>(class "Lorg/hibernate/boot/model/naming/ImplicitNamingStrategy;", $r50, $r49) 
(define-const var304 var1671 (cast-from-var2731-to-var1671 var1557)) ; Statement: $r52 = (org.hibernate.boot.model.naming.ImplicitNamingStrategy) $r51 
(declare-const var2476!19 var3391)
(assert (not (= var2476!19 null-var3391)))
(assert (= (implicitNamingStrategy/1175689288 var2476!19) var304)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.ImplicitNamingStrategy implicitNamingStrategy> = $r52 
(define-const var2767 var2274 (var661_getSettings/2034258353 var2346)) ; Statement: $r53 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>() 
(define-const var1606 var2731 (var2274_get/1088891777 var2767 (cast-from-String-to-var2731 "hibernate.physical_naming_strategy"))) ; Statement: $r55 = interfaceinvoke $r53.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.physical_naming_strategy") 
(define-const var1511 var1947 var1947-INSTANCE) ; Statement: $r54 = <org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl INSTANCE> 
(define-const var515 var2731 (var3222_resolveDefaultableStrategy/-420100722 var2461!1 var2668!class var1606 (cast-from-var1947-to-var2731 var1511))) ; Statement: $r56 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.lang.Object)>(class "Lorg/hibernate/boot/model/naming/PhysicalNamingStrategy;", $r55, $r54) 
(define-const var2404 var2668 (cast-from-var2731-to-var2668 var515)) ; Statement: $r57 = (org.hibernate.boot.model.naming.PhysicalNamingStrategy) $r56 
(declare-const var2476!20 var3391)
(assert (not (= var2476!20 null-var3391)))
(assert (= (physicalNamingStrategy/1175689288 var2476!20) var2404)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategy physicalNamingStrategy> = $r57 
(assert true)
(define-const var3103 var2206 (resolveInitialSourceProcessOrdering/-148199121 var2476!20 var2346)) ; Statement: $r58 = specialinvoke r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList resolveInitialSourceProcessOrdering(org.hibernate.engine.config.spi.ConfigurationService)>(r7) 
(declare-const var2476!21 var3391)
(assert (not (= var2476!21 null-var3391)))
(assert (= (sourceProcessOrdering/1175689288 var2476!21) var3103)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList sourceProcessOrdering> = $r58 
(define-const var3682 var1887 var1829-BOOLEAN) ; Statement: $r59 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var765 var76 (var76_valueOf/1602327315 (ite (= 1 1) true false))) ; Statement: $r60 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1) 
(define-const var3082 var2731 (var661_getSetting/183454356 var2346 "hibernate.id.new_generator_mappings" var3682 (cast-from-var76-to-var2731 var765))) ; Statement: $r61 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.id.new_generator_mappings", $r59, $r60) 
(define-const var3978 var76 (cast-from-var2731-to-var76 var3082)) ; Statement: $r62 = (java.lang.Boolean) $r61 
(assert true)
(define-const var3909 Bool (booleanValue/-1820462562 var3978)) ; Statement: $z7 = virtualinvoke $r62.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z7 == 0 goto $r63 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> 
(assert (= (ite var3909 1 0) 0)) ; Cond: $z7 == 0 
(define-const var3252 var2803 (idGenerationTypeInterpreter/1175689288 var2476!21)) ; Statement: $r63 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> 
(assert true)
;(assert (enableLegacyFallback/1863119490 var3252)) ; Statement: virtualinvoke $r63.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void enableLegacyFallback()>() 

(declare-const var3252!1 var2803)
(assert true) ; Non Conditional
(define-const var277 var1887 var1829-BOOLEAN) ; Statement: $r64 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var1065 var76 (var76_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r65 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var2719 var2731 (var661_getSetting/183454356 var2346 "hibernate.use_nationalized_character_data" var277 (cast-from-var76-to-var2731 var1065))) ; Statement: $r66 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.use_nationalized_character_data", $r64, $r65) 
(define-const var995 var76 (cast-from-var2731-to-var76 var2719)) ; Statement: $r67 = (java.lang.Boolean) $r66 
(assert true)
(define-const var1172 Bool (booleanValue/-1820462562 var995)) ; Statement: $z6 = virtualinvoke $r67.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var2476!22 var3391)
(assert (not (= var2476!22 null-var3391)))
(assert (= (useNationalizedCharacterData/1175689288 var2476!22) var1172)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean useNationalizedCharacterData> = $z6 
(define-const var3865 var2731 (var661_getSetting/617429165 var2346 "hibernate.hbm2ddl.charset_name" String!class null-var2731)) ; Statement: $r68 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.charset_name", class "Ljava/lang/String;", null) 
(define-const var2286 String (cast-from-var2731-to-String var3865)) ; Statement: $r69 = (java.lang.String) $r68 
(declare-const var2476!23 var3391)
(assert (not (= var2476!23 null-var3391)))
(assert (= (schemaCharset/1175689288 var2476!23) var2286)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.lang.String schemaCharset> = $r69 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3391-to-var2731=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.lang.Object), var2206-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), basicTypeRegistrations/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.util.ArrayList), var2803-init=([], org.hibernate.boot.internal.IdGeneratorInterpreterImpl), <init>/-2021892866=([org.hibernate.boot.internal.IdGeneratorInterpreterImpl], void), idGenerationTypeInterpreter/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.internal.IdGeneratorInterpreterImpl), serviceRegistry/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.registry.StandardServiceRegistry), var2199_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var1709-to-var2199=([org.hibernate.boot.registry.StandardServiceRegistry], org.hibernate.service.ServiceRegistry), cast-from-var2300-to-var3222=([org.hibernate.service.Service], org.hibernate.boot.registry.selector.spi.StrategySelector), cast-from-var2300-to-var661=([org.hibernate.service.Service], org.hibernate.engine.config.spi.ConfigurationService), var98-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl), <init>/690337262=([org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl, org.hibernate.boot.registry.StandardServiceRegistry], void), mappingDefaults/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl), var661_getSettings/2034258353=([org.hibernate.engine.config.spi.ConfigurationService], java.util.Map), var670_determineMultiTenancyStrategy/-92423624=([java.util.Map], org.hibernate.MultiTenancyStrategy), multiTenancyStrategy/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.MultiTenancyStrategy), var76_valueOf/1602327315=([boolean], java.lang.Boolean), var661_getSetting/183454356=([org.hibernate.engine.config.spi.ConfigurationService, java.lang.String, org.hibernate.engine.config.spi.ConfigurationService$Converter, java.lang.Object], java.lang.Object), cast-from-var76-to-var2731=([java.lang.Boolean], java.lang.Object), cast-from-var2731-to-var76=([java.lang.Object], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), xmlMappingEnabled/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), implicitDiscriminatorsForJoinedInheritanceSupported/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), explicitDiscriminatorsForJoinedInheritanceSupported/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), implicitlyForceDiscriminatorInSelect/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), var3336-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1), <init>/291849780=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], void), var1237-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2), <init>/277599635=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], void), cast-from-var1237-to-var1887=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2], org.hibernate.engine.config.spi.ConfigurationService$Converter), cast-from-var642-to-var2731=([javax.persistence.SharedCacheMode], java.lang.Object), cast-from-var2731-to-var642=([java.lang.Object], javax.persistence.SharedCacheMode), cast-from-var3336-to-var1887=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1], org.hibernate.engine.config.spi.ConfigurationService$Converter), sharedCacheMode/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], javax.persistence.SharedCacheMode), var3897-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3), <init>/263349490=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], void), cast-from-var2300-to-var333=([org.hibernate.service.Service], org.hibernate.cache.spi.RegionFactory), var333_getDefaultAccessType/486354524=([org.hibernate.cache.spi.RegionFactory], org.hibernate.cache.spi.access.AccessType), cast-from-var3897-to-var1887=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3], org.hibernate.engine.config.spi.ConfigurationService$Converter), cast-from-var3308-to-var2731=([org.hibernate.cache.spi.access.AccessType], java.lang.Object), cast-from-var2731-to-var3308=([java.lang.Object], org.hibernate.cache.spi.access.AccessType), defaultCacheAccessType/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.cache.spi.access.AccessType), specjProprietarySyntaxEnabled/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), name/-1552687968=([javax.persistence.ConstraintMode], java.lang.String), var661_getSetting/617429165=([org.hibernate.engine.config.spi.ConfigurationService, java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object), cast-from-var2731-to-String=([java.lang.Object], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), noConstraintByDefault/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), var2274_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2731=([java.lang.String], java.lang.Object), var3250-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4), <init>/804750413=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl, org.hibernate.boot.registry.selector.spi.StrategySelector], void), var3222_resolveDefaultableStrategy/799268158=([org.hibernate.boot.registry.selector.spi.StrategySelector, java.lang.Class, java.lang.Object, java.util.concurrent.Callable], java.lang.Object), cast-from-var3250-to-var3662=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4], java.util.concurrent.Callable), cast-from-var2731-to-var1671=([java.lang.Object], org.hibernate.boot.model.naming.ImplicitNamingStrategy), implicitNamingStrategy/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.model.naming.ImplicitNamingStrategy), var3222_resolveDefaultableStrategy/-420100722=([org.hibernate.boot.registry.selector.spi.StrategySelector, java.lang.Class, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var1947-to-var2731=([org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl], java.lang.Object), cast-from-var2731-to-var2668=([java.lang.Object], org.hibernate.boot.model.naming.PhysicalNamingStrategy), physicalNamingStrategy/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.model.naming.PhysicalNamingStrategy), resolveInitialSourceProcessOrdering/-148199121=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl, org.hibernate.engine.config.spi.ConfigurationService], java.util.ArrayList), sourceProcessOrdering/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.util.ArrayList), enableLegacyFallback/1863119490=([org.hibernate.boot.internal.IdGeneratorInterpreterImpl], void), useNationalizedCharacterData/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), schemaCharset/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.lang.String)}
; {var3391=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl, var2476=r0, var1709=org.hibernate.boot.registry.StandardServiceRegistry, var2459=r3, var2731=java.lang.Object, var2206=java.util.ArrayList, var3522=$r1, var2803=org.hibernate.boot.internal.IdGeneratorInterpreterImpl, var3723=$r2, var2300=org.hibernate.service.Service, var2199=org.hibernate.service.ServiceRegistry, var3222=org.hibernate.boot.registry.selector.spi.StrategySelector, var2160=$r4, var2461=r5, var661=org.hibernate.engine.config.spi.ConfigurationService, var1479=$r6, var2346=r7, var98=org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl, var234=$r8, var2274=java.util.Map, var1599=$r9, var670=org.hibernate.MultiTenancyStrategy, var818=$r10, var1887=org.hibernate.engine.config.spi.ConfigurationService$Converter, var1829=org.hibernate.engine.config.spi.StandardConverters, var3601=$r11, var76=java.lang.Boolean, var3980=$r12, var2905=$r13, var2487=$r14, var996=$z0, var3019=$r15, var101=$r16, var1331=$r17, var1881=$r18, var2357=$z1, var2698=$r19, var3707=$r20, var631=$r21, var2770=$r22, var699=$z2, var3035=$z8, var129=$r23, var61=$r24, var3582=$r25, var1573=$r26, var1595=$z3, var3336=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1, var3197=$r27, var1237=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2, var1991=$r28, var642=javax.persistence.SharedCacheMode, var120=$r29, var1068=$r30, var1833=$r31, var3892=$r32, var3191=$r33, var3897=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3, var1266=$r34, var333=org.hibernate.cache.spi.RegionFactory, var1440=$r35, var2711=$r36, var2759=$r37, var3308=org.hibernate.cache.spi.access.AccessType, var253=$r71, var1229=$r38, var528=$r39, var2635=$r40, var1374=$r41, var3381=$r42, var3565=$r43, var673=$z4, var1224=javax.persistence.ConstraintMode, var2654=$r44, var3125=$r47, var3970=$r45, var11=$r46, var2672=$z5, var571=$r48, var2388=$r50, var3250=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4, var939=$r49, var1671=org.hibernate.boot.model.naming.ImplicitNamingStrategy, var3662=java.util.concurrent.Callable, var1557=$r51, var304=$r52, var2767=$r53, var1606=$r55, var1947=org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl, var1511=$r54, var2668=org.hibernate.boot.model.naming.PhysicalNamingStrategy, var515=$r56, var2404=$r57, var3103=$r58, var3682=$r59, var765=$r60, var3082=$r61, var3978=$r62, var3909=$z7, var3252=$r63, var277=$r64, var1065=$r65, var2719=$r66, var995=$r67, var1172=$z6, var3865=$r68, var2286=$r69}
; {org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl=var3391, r0=var2476, org.hibernate.boot.registry.StandardServiceRegistry=var1709, r3=var2459, java.lang.Object=var2731, java.util.ArrayList=var2206, $r1=var3522, org.hibernate.boot.internal.IdGeneratorInterpreterImpl=var2803, $r2=var3723, org.hibernate.service.Service=var2300, org.hibernate.service.ServiceRegistry=var2199, org.hibernate.boot.registry.selector.spi.StrategySelector=var3222, $r4=var2160, r5=var2461, org.hibernate.engine.config.spi.ConfigurationService=var661, $r6=var1479, r7=var2346, org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl=var98, $r8=var234, java.util.Map=var2274, $r9=var1599, org.hibernate.MultiTenancyStrategy=var670, $r10=var818, org.hibernate.engine.config.spi.ConfigurationService$Converter=var1887, org.hibernate.engine.config.spi.StandardConverters=var1829, $r11=var3601, java.lang.Boolean=var76, $r12=var3980, $r13=var2905, $r14=var2487, $z0=var996, $r15=var3019, $r16=var101, $r17=var1331, $r18=var1881, $z1=var2357, $r19=var2698, $r20=var3707, $r21=var631, $r22=var2770, $z2=var699, $z8=var3035, $r23=var129, $r24=var61, $r25=var3582, $r26=var1573, $z3=var1595, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1=var3336, $r27=var3197, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2=var1237, $r28=var1991, javax.persistence.SharedCacheMode=var642, $r29=var120, $r30=var1068, $r31=var1833, $r32=var3892, $r33=var3191, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3=var3897, $r34=var1266, org.hibernate.cache.spi.RegionFactory=var333, $r35=var1440, $r36=var2711, $r37=var2759, org.hibernate.cache.spi.access.AccessType=var3308, $r71=var253, $r38=var1229, $r39=var528, $r40=var2635, $r41=var1374, $r42=var3381, $r43=var3565, $z4=var673, javax.persistence.ConstraintMode=var1224, $r44=var2654, $r47=var3125, $r45=var3970, $r46=var11, $z5=var2672, $r48=var571, $r50=var2388, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4=var3250, $r49=var939, org.hibernate.boot.model.naming.ImplicitNamingStrategy=var1671, java.util.concurrent.Callable=var3662, $r51=var1557, $r52=var304, $r53=var2767, $r55=var1606, org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl=var1947, $r54=var1511, org.hibernate.boot.model.naming.PhysicalNamingStrategy=var2668, $r56=var515, $r57=var2404, $r58=var3103, $r59=var3682, $r60=var765, $r61=var3082, $r62=var3978, $z7=var3909, $r63=var3252, $r64=var277, $r65=var1065, $r66=var2719, $r67=var995, $z6=var1172, $r68=var3865, $r69=var2286}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl;	r3 := @parameter0: org.hibernate.boot.registry.StandardServiceRegistry;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.ArrayList;	specialinvoke $r1.<java.util.ArrayList: void <init>()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList basicTypeRegistrations> = $r1;	$r2 = new org.hibernate.boot.internal.IdGeneratorInterpreterImpl;	specialinvoke $r2.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void <init>()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> = $r2;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.registry.StandardServiceRegistry serviceRegistry> = r3;	$r4 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/selector/spi/StrategySelector;");	r5 = (org.hibernate.boot.registry.selector.spi.StrategySelector) $r4;	$r6 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;");	r7 = (org.hibernate.engine.config.spi.ConfigurationService) $r6;	$r8 = new org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl;	specialinvoke $r8.<org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl: void <init>(org.hibernate.boot.registry.StandardServiceRegistry)>(r3);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl mappingDefaults> = $r8;	$r9 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>();	$r10 = staticinvoke <org.hibernate.MultiTenancyStrategy: org.hibernate.MultiTenancyStrategy determineMultiTenancyStrategy(java.util.Map)>($r9);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.MultiTenancyStrategy multiTenancyStrategy> = $r10;	$r11 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r12 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1);	$r13 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.xml_mapping_enabled", $r11, $r12);	$r14 = (java.lang.Boolean) $r13;	$z0 = virtualinvoke $r14.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean xmlMappingEnabled> = $z0;	$r15 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r16 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r17 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.implicit_for_joined", $r15, $r16);	$r18 = (java.lang.Boolean) $r17;	$z1 = virtualinvoke $r18.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitDiscriminatorsForJoinedInheritanceSupported> = $z1;	$r19 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r20 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r21 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.ignore_explicit_for_joined", $r19, $r20);	$r22 = (java.lang.Boolean) $r21;	$z2 = virtualinvoke $r22.<java.lang.Boolean: boolean booleanValue()>();	if $z2 != 0 goto $z8 = 0;	$z8 = 0;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean explicitDiscriminatorsForJoinedInheritanceSupported> = $z8;	$r23 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r24 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r25 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.force_in_select", $r23, $r24);	$r26 = (java.lang.Boolean) $r25;	$z3 = virtualinvoke $r26.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitlyForceDiscriminatorInSelect> = $z3;	$r27 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1;	specialinvoke $r27.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0);	$r28 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2;	specialinvoke $r28.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0);	$r29 = <javax.persistence.SharedCacheMode: javax.persistence.SharedCacheMode UNSPECIFIED>;	$r30 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("jakarta.persistence.sharedCache.mode", $r28, $r29);	$r31 = (javax.persistence.SharedCacheMode) $r30;	$r32 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("javax.persistence.sharedCache.mode", $r27, $r31);	$r33 = (javax.persistence.SharedCacheMode) $r32;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: javax.persistence.SharedCacheMode sharedCacheMode> = $r33;	$r34 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3;	specialinvoke $r34.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0);	$r35 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;");	if $r35 != null goto $r36 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;");	$r36 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;");	$r37 = (org.hibernate.cache.spi.RegionFactory) $r36;	$r71 = interfaceinvoke $r37.<org.hibernate.cache.spi.RegionFactory: org.hibernate.cache.spi.access.AccessType getDefaultAccessType()>();	$r38 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.cache.default_cache_concurrency_strategy", $r34, $r71);	$r39 = (org.hibernate.cache.spi.access.AccessType) $r38;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.cache.spi.access.AccessType defaultCacheAccessType> = $r39;	$r40 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r41 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r42 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.enable_specj_proprietary_syntax", $r40, $r41);	$r43 = (java.lang.Boolean) $r42;	$z4 = virtualinvoke $r43.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean specjProprietarySyntaxEnabled> = $z4;	$r44 = <javax.persistence.ConstraintMode: javax.persistence.ConstraintMode NO_CONSTRAINT>;	$r47 = virtualinvoke $r44.<javax.persistence.ConstraintMode: java.lang.String name()>();	$r45 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.default_constraint_mode", class "Ljava/lang/String;", null);	$r46 = (java.lang.String) $r45;	$z5 = virtualinvoke $r47.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r46);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean noConstraintByDefault> = $z5;	$r48 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>();	$r50 = interfaceinvoke $r48.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.implicit_naming_strategy");	$r49 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4;	specialinvoke $r49.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl,org.hibernate.boot.registry.selector.spi.StrategySelector)>(r0, r5);	$r51 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.util.concurrent.Callable)>(class "Lorg/hibernate/boot/model/naming/ImplicitNamingStrategy;", $r50, $r49);	$r52 = (org.hibernate.boot.model.naming.ImplicitNamingStrategy) $r51;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.ImplicitNamingStrategy implicitNamingStrategy> = $r52;	$r53 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>();	$r55 = interfaceinvoke $r53.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.physical_naming_strategy");	$r54 = <org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl INSTANCE>;	$r56 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.lang.Object)>(class "Lorg/hibernate/boot/model/naming/PhysicalNamingStrategy;", $r55, $r54);	$r57 = (org.hibernate.boot.model.naming.PhysicalNamingStrategy) $r56;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategy physicalNamingStrategy> = $r57;	$r58 = specialinvoke r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList resolveInitialSourceProcessOrdering(org.hibernate.engine.config.spi.ConfigurationService)>(r7);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList sourceProcessOrdering> = $r58;	$r59 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r60 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1);	$r61 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.id.new_generator_mappings", $r59, $r60);	$r62 = (java.lang.Boolean) $r61;	$z7 = virtualinvoke $r62.<java.lang.Boolean: boolean booleanValue()>();	if $z7 == 0 goto $r63 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter>;	$r63 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter>;	virtualinvoke $r63.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void enableLegacyFallback()>();	$r64 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r65 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r66 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.use_nationalized_character_data", $r64, $r65);	$r67 = (java.lang.Boolean) $r66;	$z6 = virtualinvoke $r67.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean useNationalizedCharacterData> = $z6;	$r68 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.charset_name", class "Ljava/lang/String;", null);	$r69 = (java.lang.String) $r68;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.lang.String schemaCharset> = $r69;	return
;block_num 7