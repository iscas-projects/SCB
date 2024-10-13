(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1471 0)
(declare-sort var1359 0)
(declare-sort var3166 0)
(declare-sort var518 0)
(declare-sort var1791 0)
(declare-sort var2257 0)
(declare-sort var756 0)
(declare-sort var1892 0)
(declare-sort var848 0)
(declare-sort var134 0)
(declare-sort var3308 0)
(declare-sort var3786 0)
(declare-sort var488 0)
(declare-sort var3420 0)
(declare-sort var618 0)
(declare-sort var260 0)
(declare-sort var2094 0)
(declare-sort var560 0)
(declare-sort var1337 0)
(declare-sort var1117 0)
(declare-sort var1063 0)
(declare-sort var2491 0)
(declare-sort var1199 0)
(declare-sort var3243 0)
(declare-sort var1335 0)
(declare-sort var1984 0)
(declare-sort var2684 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1892!class ClassObject)
(declare-const var848!class ClassObject)
(declare-const var1117!class ClassObject)
(declare-const String!class ClassObject)
(declare-const var3243!class ClassObject)
(declare-const var2684!class ClassObject)
(declare-fun <init>/-279557996 (var3166) void)
(declare-fun cast-from-var1471-to-var3166 (var1471) var3166)
(declare-fun var518-init () var518)
(declare-fun <init>/-325640736 (var518) void)
(declare-fun basicTypeRegistrations/1175689288 (var1471) var518)
(declare-fun var1791-init () var1791)
(declare-fun <init>/-2021892866 (var1791) void)
(declare-fun idGenerationTypeInterpreter/1175689288 (var1471) var1791)
(declare-fun serviceRegistry/1175689288 (var1471) var1359)
(declare-fun var756_getService/-972330729 (var756 ClassObject) var2257)
(declare-fun cast-from-var1359-to-var756 (var1359) var756)
(declare-fun cast-from-var2257-to-var1892 (var2257) var1892)
(declare-fun cast-from-var2257-to-var848 (var2257) var848)
(declare-fun var134-init () var134)
(declare-fun <init>/690337262 (var134 var1359) void)
(declare-fun mappingDefaults/1175689288 (var1471) var134)
(declare-fun var848_getSettings/2034258353 (var848) var3308)
(declare-fun var3786_determineMultiTenancyStrategy/-92423624 (var3308) var3786)
(declare-fun multiTenancyStrategy/1175689288 (var1471) var3786)
(declare-fun var618_valueOf/1602327315 (Bool) var618)
(declare-fun var848_getSetting/183454356 (var848 String var488 var3166) var3166)
(declare-fun cast-from-var618-to-var3166 (var618) var3166)
(declare-fun cast-from-var3166-to-var618 (var3166) var618)
(declare-fun booleanValue/-1820462562 (var618) Bool)
(declare-fun xmlMappingEnabled/1175689288 (var1471) Bool)
(declare-fun implicitDiscriminatorsForJoinedInheritanceSupported/1175689288 (var1471) Bool)
(declare-fun explicitDiscriminatorsForJoinedInheritanceSupported/1175689288 (var1471) Bool)
(declare-fun implicitlyForceDiscriminatorInSelect/1175689288 (var1471) Bool)
(declare-fun var260-init () var260)
(declare-fun <init>/291849780 (var260 var1471) void)
(declare-fun var2094-init () var2094)
(declare-fun <init>/277599635 (var2094 var1471) void)
(declare-fun cast-from-var2094-to-var488 (var2094) var488)
(declare-fun cast-from-var560-to-var3166 (var560) var3166)
(declare-fun cast-from-var3166-to-var560 (var3166) var560)
(declare-fun cast-from-var260-to-var488 (var260) var488)
(declare-fun sharedCacheMode/1175689288 (var1471) var560)
(declare-fun var1337-init () var1337)
(declare-fun <init>/263349490 (var1337 var1471) void)
(declare-fun cast-from-var1337-to-var488 (var1337) var488)
(declare-fun cast-from-var1063-to-var3166 (var1063) var3166)
(declare-fun cast-from-var3166-to-var1063 (var3166) var1063)
(declare-fun defaultCacheAccessType/1175689288 (var1471) var1063)
(declare-fun specjProprietarySyntaxEnabled/1175689288 (var1471) Bool)
(declare-fun name/-1552687968 (var2491) String)
(declare-fun var848_getSetting/617429165 (var848 String ClassObject var3166) var3166)
(declare-fun cast-from-var3166-to-String (var3166) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun noConstraintByDefault/1175689288 (var1471) Bool)
(declare-fun var3308_get/1088891777 (var3308 var3166) var3166)
(declare-fun cast-from-String-to-var3166 (String) var3166)
(declare-fun var1199-init () var1199)
(declare-fun <init>/804750413 (var1199 var1471 var1892) void)
(declare-fun var1892_resolveDefaultableStrategy/799268158 (var1892 ClassObject var3166 var1335) var3166)
(declare-fun cast-from-var1199-to-var1335 (var1199) var1335)
(declare-fun cast-from-var3166-to-var3243 (var3166) var3243)
(declare-fun implicitNamingStrategy/1175689288 (var1471) var3243)
(declare-fun var1892_resolveDefaultableStrategy/-420100722 (var1892 ClassObject var3166 var3166) var3166)
(declare-fun cast-from-var1984-to-var3166 (var1984) var3166)
(declare-fun cast-from-var3166-to-var2684 (var3166) var2684)
(declare-fun physicalNamingStrategy/1175689288 (var1471) var2684)
(declare-fun resolveInitialSourceProcessOrdering/-148199121 (var1471 var848) var518)
(declare-fun sourceProcessOrdering/1175689288 (var1471) var518)
(declare-fun enableLegacyFallback/1863119490 (var1791) void)
(declare-fun useNationalizedCharacterData/1175689288 (var1471) Bool)
(declare-fun schemaCharset/1175689288 (var1471) String)
(declare-const null-var1471 var1471)
(declare-const null-var1359 var1359)
(declare-const var3420-BOOLEAN var488)
(declare-const var560-UNSPECIFIED var560)
(declare-const null-var2257 var2257)
(declare-const null-var1063 var1063)
(declare-const var2491-NO_CONSTRAINT var2491)
(declare-const null-var3166 var3166)
(declare-const var1984-INSTANCE var1984)
(declare-const var120 var1471) ; Statement: r0 := @this: org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl 
(assert (not (= var120 null-var1471)))
(declare-const var3945 var1359) ; Statement: r3 := @parameter0: org.hibernate.boot.registry.StandardServiceRegistry 
(assert (not (= var3945 null-var1359)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1471-to-var3166 var120))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var120!1 var1471)
(define-const var1413 var518 var518-init) ; Statement: $r1 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1413)) ; Statement: specialinvoke $r1.<java.util.ArrayList: void <init>()>() 

(declare-const var1413!1 var518)
(declare-const var120!2 var1471)
(assert (not (= var120!2 null-var1471)))
(assert (= (basicTypeRegistrations/1175689288 var120!2) var1413!1)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList basicTypeRegistrations> = $r1 
(define-const var1772 var1791 var1791-init) ; Statement: $r2 = new org.hibernate.boot.internal.IdGeneratorInterpreterImpl 
(assert true)
;(assert (<init>/-2021892866 var1772)) ; Statement: specialinvoke $r2.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void <init>()>() 

(declare-const var1772!1 var1791)
(declare-const var120!3 var1471)
(assert (not (= var120!3 null-var1471)))
(assert (= (idGenerationTypeInterpreter/1175689288 var120!3) var1772!1)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> = $r2 
(declare-const var120!4 var1471)
(assert (not (= var120!4 null-var1471)))
(assert (= (serviceRegistry/1175689288 var120!4) var3945)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.registry.StandardServiceRegistry serviceRegistry> = r3 
(define-const var2835 var2257 (var756_getService/-972330729 (cast-from-var1359-to-var756 var3945) var1892!class)) ; Statement: $r4 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/selector/spi/StrategySelector;") 
(define-const var2464 var1892 (cast-from-var2257-to-var1892 var2835)) ; Statement: r5 = (org.hibernate.boot.registry.selector.spi.StrategySelector) $r4 
(define-const var2875 var2257 (var756_getService/-972330729 (cast-from-var1359-to-var756 var3945) var848!class)) ; Statement: $r6 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;") 
(define-const var534 var848 (cast-from-var2257-to-var848 var2875)) ; Statement: r7 = (org.hibernate.engine.config.spi.ConfigurationService) $r6 
(define-const var2445 var134 var134-init) ; Statement: $r8 = new org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl 
(assert true)
;(assert (<init>/690337262 var2445 var3945)) ; Statement: specialinvoke $r8.<org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl: void <init>(org.hibernate.boot.registry.StandardServiceRegistry)>(r3) 

(declare-const var2445!1 var134)
(declare-const var3945!1 var1359)
(declare-const var120!5 var1471)
(assert (not (= var120!5 null-var1471)))
(assert (= (mappingDefaults/1175689288 var120!5) var2445!1)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl mappingDefaults> = $r8 
(define-const var1744 var3308 (var848_getSettings/2034258353 var534)) ; Statement: $r9 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>() 
(define-const var1078 var3786 (var3786_determineMultiTenancyStrategy/-92423624 var1744)) ; Statement: $r10 = staticinvoke <org.hibernate.MultiTenancyStrategy: org.hibernate.MultiTenancyStrategy determineMultiTenancyStrategy(java.util.Map)>($r9) 
(declare-const var120!6 var1471)
(assert (not (= var120!6 null-var1471)))
(assert (= (multiTenancyStrategy/1175689288 var120!6) var1078)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.MultiTenancyStrategy multiTenancyStrategy> = $r10 
(define-const var3792 var488 var3420-BOOLEAN) ; Statement: $r11 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var1804 var618 (var618_valueOf/1602327315 (ite (= 1 1) true false))) ; Statement: $r12 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1) 
(define-const var2868 var3166 (var848_getSetting/183454356 var534 "hibernate.xml_mapping_enabled" var3792 (cast-from-var618-to-var3166 var1804))) ; Statement: $r13 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.xml_mapping_enabled", $r11, $r12) 
(define-const var2456 var618 (cast-from-var3166-to-var618 var2868)) ; Statement: $r14 = (java.lang.Boolean) $r13 
(assert true)
(define-const var2003 Bool (booleanValue/-1820462562 var2456)) ; Statement: $z0 = virtualinvoke $r14.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var120!7 var1471)
(assert (not (= var120!7 null-var1471)))
(assert (= (xmlMappingEnabled/1175689288 var120!7) var2003)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean xmlMappingEnabled> = $z0 
(define-const var3788 var488 var3420-BOOLEAN) ; Statement: $r15 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var3590 var618 (var618_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r16 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var1821 var3166 (var848_getSetting/183454356 var534 "hibernate.discriminator.implicit_for_joined" var3788 (cast-from-var618-to-var3166 var3590))) ; Statement: $r17 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.implicit_for_joined", $r15, $r16) 
(define-const var459 var618 (cast-from-var3166-to-var618 var1821)) ; Statement: $r18 = (java.lang.Boolean) $r17 
(assert true)
(define-const var3132 Bool (booleanValue/-1820462562 var459)) ; Statement: $z1 = virtualinvoke $r18.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var120!8 var1471)
(assert (not (= var120!8 null-var1471)))
(assert (= (implicitDiscriminatorsForJoinedInheritanceSupported/1175689288 var120!8) var3132)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitDiscriminatorsForJoinedInheritanceSupported> = $z1 
(define-const var2941 var488 var3420-BOOLEAN) ; Statement: $r19 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var2478 var618 (var618_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r20 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var76 var3166 (var848_getSetting/183454356 var534 "hibernate.discriminator.ignore_explicit_for_joined" var2941 (cast-from-var618-to-var3166 var2478))) ; Statement: $r21 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.ignore_explicit_for_joined", $r19, $r20) 
(define-const var3079 var618 (cast-from-var3166-to-var618 var76)) ; Statement: $r22 = (java.lang.Boolean) $r21 
(assert true)
(define-const var14 Bool (booleanValue/-1820462562 var3079)) ; Statement: $z2 = virtualinvoke $r22.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z2 != 0 goto $z8 = 0 
(assert (not (not (= (ite var14 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var3385 Bool (ite (= 1 1) true false)) ; Statement: $z8 = 1 
 ; Statement: goto [?= r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean explicitDiscriminatorsForJoinedInheritanceSupported> = $z8] 
(assert true) ; Non Conditional
(declare-const var120!9 var1471)
(assert (not (= var120!9 null-var1471)))
(assert (= (explicitDiscriminatorsForJoinedInheritanceSupported/1175689288 var120!9) var3385)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean explicitDiscriminatorsForJoinedInheritanceSupported> = $z8 
(define-const var2351 var488 var3420-BOOLEAN) ; Statement: $r23 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var1494 var618 (var618_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r24 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var3068 var3166 (var848_getSetting/183454356 var534 "hibernate.discriminator.force_in_select" var2351 (cast-from-var618-to-var3166 var1494))) ; Statement: $r25 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.force_in_select", $r23, $r24) 
(define-const var912 var618 (cast-from-var3166-to-var618 var3068)) ; Statement: $r26 = (java.lang.Boolean) $r25 
(assert true)
(define-const var3611 Bool (booleanValue/-1820462562 var912)) ; Statement: $z3 = virtualinvoke $r26.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var120!10 var1471)
(assert (not (= var120!10 null-var1471)))
(assert (= (implicitlyForceDiscriminatorInSelect/1175689288 var120!10) var3611)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitlyForceDiscriminatorInSelect> = $z3 
(define-const var686 var260 var260-init) ; Statement: $r27 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1 
(assert true)
;(assert (<init>/291849780 var686 var120!10)) ; Statement: specialinvoke $r27.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0) 

(declare-const var686!1 var260)
(declare-const var120!11 var1471)
(define-const var10 var2094 var2094-init) ; Statement: $r28 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2 
(assert true)
;(assert (<init>/277599635 var10 var120!11)) ; Statement: specialinvoke $r28.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0) 

(declare-const var10!1 var2094)
(declare-const var120!12 var1471)
(define-const var2977 var560 var560-UNSPECIFIED) ; Statement: $r29 = <javax.persistence.SharedCacheMode: javax.persistence.SharedCacheMode UNSPECIFIED> 
(define-const var2463 var3166 (var848_getSetting/183454356 var534 "jakarta.persistence.sharedCache.mode" (cast-from-var2094-to-var488 var10!1) (cast-from-var560-to-var3166 var2977))) ; Statement: $r30 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("jakarta.persistence.sharedCache.mode", $r28, $r29) 
(define-const var3586 var560 (cast-from-var3166-to-var560 var2463)) ; Statement: $r31 = (javax.persistence.SharedCacheMode) $r30 
(define-const var996 var3166 (var848_getSetting/183454356 var534 "javax.persistence.sharedCache.mode" (cast-from-var260-to-var488 var686!1) (cast-from-var560-to-var3166 var3586))) ; Statement: $r32 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("javax.persistence.sharedCache.mode", $r27, $r31) 
(define-const var3518 var560 (cast-from-var3166-to-var560 var996)) ; Statement: $r33 = (javax.persistence.SharedCacheMode) $r32 
(declare-const var120!13 var1471)
(assert (not (= var120!13 null-var1471)))
(assert (= (sharedCacheMode/1175689288 var120!13) var3518)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: javax.persistence.SharedCacheMode sharedCacheMode> = $r33 
(define-const var1761 var1337 var1337-init) ; Statement: $r34 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3 
(assert true)
;(assert (<init>/263349490 var1761 var120!13)) ; Statement: specialinvoke $r34.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0) 

(declare-const var1761!1 var1337)
(declare-const var120!14 var1471)
(define-const var3151 var2257 (var756_getService/-972330729 (cast-from-var1359-to-var756 var3945!1) var1117!class)) ; Statement: $r35 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;") 
 ; Statement: if $r35 != null goto $r36 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;") 
(assert (not (not (= var3151 null-var2257)))) ; Negate: Cond: $r35 != null  
(define-const var1730 var1063 null-var1063) ; Statement: $r71 = null 
 ; Statement: goto [?= $r38 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.cache.default_cache_concurrency_strategy", $r34, $r71)] 
(assert true) ; Non Conditional
(define-const var3583 var3166 (var848_getSetting/183454356 var534 "hibernate.cache.default_cache_concurrency_strategy" (cast-from-var1337-to-var488 var1761!1) (cast-from-var1063-to-var3166 var1730))) ; Statement: $r38 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.cache.default_cache_concurrency_strategy", $r34, $r71) 
(define-const var1406 var1063 (cast-from-var3166-to-var1063 var3583)) ; Statement: $r39 = (org.hibernate.cache.spi.access.AccessType) $r38 
(declare-const var120!15 var1471)
(assert (not (= var120!15 null-var1471)))
(assert (= (defaultCacheAccessType/1175689288 var120!15) var1406)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.cache.spi.access.AccessType defaultCacheAccessType> = $r39 
(define-const var1465 var488 var3420-BOOLEAN) ; Statement: $r40 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var2299 var618 (var618_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r41 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var6 var3166 (var848_getSetting/183454356 var534 "hibernate.enable_specj_proprietary_syntax" var1465 (cast-from-var618-to-var3166 var2299))) ; Statement: $r42 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.enable_specj_proprietary_syntax", $r40, $r41) 
(define-const var3990 var618 (cast-from-var3166-to-var618 var6)) ; Statement: $r43 = (java.lang.Boolean) $r42 
(assert true)
(define-const var637 Bool (booleanValue/-1820462562 var3990)) ; Statement: $z4 = virtualinvoke $r43.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var120!16 var1471)
(assert (not (= var120!16 null-var1471)))
(assert (= (specjProprietarySyntaxEnabled/1175689288 var120!16) var637)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean specjProprietarySyntaxEnabled> = $z4 
(define-const var3674 var2491 var2491-NO_CONSTRAINT) ; Statement: $r44 = <javax.persistence.ConstraintMode: javax.persistence.ConstraintMode NO_CONSTRAINT> 
(assert true)
(define-const var215 String (name/-1552687968 var3674)) ; Statement: $r47 = virtualinvoke $r44.<javax.persistence.ConstraintMode: java.lang.String name()>() 
(define-const var2287 var3166 (var848_getSetting/617429165 var534 "hibernate.hbm2ddl.default_constraint_mode" String!class null-var3166)) ; Statement: $r45 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.default_constraint_mode", class "Ljava/lang/String;", null) 
(define-const var914 String (cast-from-var3166-to-String var2287)) ; Statement: $r46 = (java.lang.String) $r45 
(assert true)
(define-const var2853 Bool (equalsIgnoreCase/-92311102 var215 var914)) ; Statement: $z5 = virtualinvoke $r47.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r46) 
(declare-const var120!17 var1471)
(assert (not (= var120!17 null-var1471)))
(assert (= (noConstraintByDefault/1175689288 var120!17) var2853)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean noConstraintByDefault> = $z5 
(define-const var3400 var3308 (var848_getSettings/2034258353 var534)) ; Statement: $r48 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>() 
(define-const var5 var3166 (var3308_get/1088891777 var3400 (cast-from-String-to-var3166 "hibernate.implicit_naming_strategy"))) ; Statement: $r50 = interfaceinvoke $r48.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.implicit_naming_strategy") 
(define-const var3164 var1199 var1199-init) ; Statement: $r49 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4 
(assert true)
;(assert (<init>/804750413 var3164 var120!17 var2464)) ; Statement: specialinvoke $r49.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl,org.hibernate.boot.registry.selector.spi.StrategySelector)>(r0, r5) 

(declare-const var3164!1 var1199)
(declare-const var120!18 var1471)
(declare-const var2464!1 var1892)
(define-const var173 var3166 (var1892_resolveDefaultableStrategy/799268158 var2464!1 var3243!class var5 (cast-from-var1199-to-var1335 var3164!1))) ; Statement: $r51 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.util.concurrent.Callable)>(class "Lorg/hibernate/boot/model/naming/ImplicitNamingStrategy;", $r50, $r49) 
(define-const var2764 var3243 (cast-from-var3166-to-var3243 var173)) ; Statement: $r52 = (org.hibernate.boot.model.naming.ImplicitNamingStrategy) $r51 
(declare-const var120!19 var1471)
(assert (not (= var120!19 null-var1471)))
(assert (= (implicitNamingStrategy/1175689288 var120!19) var2764)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.ImplicitNamingStrategy implicitNamingStrategy> = $r52 
(define-const var3107 var3308 (var848_getSettings/2034258353 var534)) ; Statement: $r53 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>() 
(define-const var3759 var3166 (var3308_get/1088891777 var3107 (cast-from-String-to-var3166 "hibernate.physical_naming_strategy"))) ; Statement: $r55 = interfaceinvoke $r53.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.physical_naming_strategy") 
(define-const var3233 var1984 var1984-INSTANCE) ; Statement: $r54 = <org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl INSTANCE> 
(define-const var2844 var3166 (var1892_resolveDefaultableStrategy/-420100722 var2464!1 var2684!class var3759 (cast-from-var1984-to-var3166 var3233))) ; Statement: $r56 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.lang.Object)>(class "Lorg/hibernate/boot/model/naming/PhysicalNamingStrategy;", $r55, $r54) 
(define-const var3694 var2684 (cast-from-var3166-to-var2684 var2844)) ; Statement: $r57 = (org.hibernate.boot.model.naming.PhysicalNamingStrategy) $r56 
(declare-const var120!20 var1471)
(assert (not (= var120!20 null-var1471)))
(assert (= (physicalNamingStrategy/1175689288 var120!20) var3694)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategy physicalNamingStrategy> = $r57 
(assert true)
(define-const var3514 var518 (resolveInitialSourceProcessOrdering/-148199121 var120!20 var534)) ; Statement: $r58 = specialinvoke r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList resolveInitialSourceProcessOrdering(org.hibernate.engine.config.spi.ConfigurationService)>(r7) 
(declare-const var120!21 var1471)
(assert (not (= var120!21 null-var1471)))
(assert (= (sourceProcessOrdering/1175689288 var120!21) var3514)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList sourceProcessOrdering> = $r58 
(define-const var1634 var488 var3420-BOOLEAN) ; Statement: $r59 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var513 var618 (var618_valueOf/1602327315 (ite (= 1 1) true false))) ; Statement: $r60 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1) 
(define-const var1288 var3166 (var848_getSetting/183454356 var534 "hibernate.id.new_generator_mappings" var1634 (cast-from-var618-to-var3166 var513))) ; Statement: $r61 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.id.new_generator_mappings", $r59, $r60) 
(define-const var3923 var618 (cast-from-var3166-to-var618 var1288)) ; Statement: $r62 = (java.lang.Boolean) $r61 
(assert true)
(define-const var2599 Bool (booleanValue/-1820462562 var3923)) ; Statement: $z7 = virtualinvoke $r62.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z7 == 0 goto $r63 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> 
(assert (= (ite var2599 1 0) 0)) ; Cond: $z7 == 0 
(define-const var189 var1791 (idGenerationTypeInterpreter/1175689288 var120!21)) ; Statement: $r63 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> 
(assert true)
;(assert (enableLegacyFallback/1863119490 var189)) ; Statement: virtualinvoke $r63.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void enableLegacyFallback()>() 

(declare-const var189!1 var1791)
(assert true) ; Non Conditional
(define-const var2966 var488 var3420-BOOLEAN) ; Statement: $r64 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var278 var618 (var618_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r65 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var1934 var3166 (var848_getSetting/183454356 var534 "hibernate.use_nationalized_character_data" var2966 (cast-from-var618-to-var3166 var278))) ; Statement: $r66 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.use_nationalized_character_data", $r64, $r65) 
(define-const var322 var618 (cast-from-var3166-to-var618 var1934)) ; Statement: $r67 = (java.lang.Boolean) $r66 
(assert true)
(define-const var3571 Bool (booleanValue/-1820462562 var322)) ; Statement: $z6 = virtualinvoke $r67.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var120!22 var1471)
(assert (not (= var120!22 null-var1471)))
(assert (= (useNationalizedCharacterData/1175689288 var120!22) var3571)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean useNationalizedCharacterData> = $z6 
(define-const var3227 var3166 (var848_getSetting/617429165 var534 "hibernate.hbm2ddl.charset_name" String!class null-var3166)) ; Statement: $r68 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.charset_name", class "Ljava/lang/String;", null) 
(define-const var3220 String (cast-from-var3166-to-String var3227)) ; Statement: $r69 = (java.lang.String) $r68 
(declare-const var120!23 var1471)
(assert (not (= var120!23 null-var1471)))
(assert (= (schemaCharset/1175689288 var120!23) var3220)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.lang.String schemaCharset> = $r69 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1471-to-var3166=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.lang.Object), var518-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), basicTypeRegistrations/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.util.ArrayList), var1791-init=([], org.hibernate.boot.internal.IdGeneratorInterpreterImpl), <init>/-2021892866=([org.hibernate.boot.internal.IdGeneratorInterpreterImpl], void), idGenerationTypeInterpreter/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.internal.IdGeneratorInterpreterImpl), serviceRegistry/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.registry.StandardServiceRegistry), var756_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var1359-to-var756=([org.hibernate.boot.registry.StandardServiceRegistry], org.hibernate.service.ServiceRegistry), cast-from-var2257-to-var1892=([org.hibernate.service.Service], org.hibernate.boot.registry.selector.spi.StrategySelector), cast-from-var2257-to-var848=([org.hibernate.service.Service], org.hibernate.engine.config.spi.ConfigurationService), var134-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl), <init>/690337262=([org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl, org.hibernate.boot.registry.StandardServiceRegistry], void), mappingDefaults/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl), var848_getSettings/2034258353=([org.hibernate.engine.config.spi.ConfigurationService], java.util.Map), var3786_determineMultiTenancyStrategy/-92423624=([java.util.Map], org.hibernate.MultiTenancyStrategy), multiTenancyStrategy/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.MultiTenancyStrategy), var618_valueOf/1602327315=([boolean], java.lang.Boolean), var848_getSetting/183454356=([org.hibernate.engine.config.spi.ConfigurationService, java.lang.String, org.hibernate.engine.config.spi.ConfigurationService$Converter, java.lang.Object], java.lang.Object), cast-from-var618-to-var3166=([java.lang.Boolean], java.lang.Object), cast-from-var3166-to-var618=([java.lang.Object], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), xmlMappingEnabled/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), implicitDiscriminatorsForJoinedInheritanceSupported/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), explicitDiscriminatorsForJoinedInheritanceSupported/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), implicitlyForceDiscriminatorInSelect/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), var260-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1), <init>/291849780=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], void), var2094-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2), <init>/277599635=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], void), cast-from-var2094-to-var488=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2], org.hibernate.engine.config.spi.ConfigurationService$Converter), cast-from-var560-to-var3166=([javax.persistence.SharedCacheMode], java.lang.Object), cast-from-var3166-to-var560=([java.lang.Object], javax.persistence.SharedCacheMode), cast-from-var260-to-var488=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1], org.hibernate.engine.config.spi.ConfigurationService$Converter), sharedCacheMode/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], javax.persistence.SharedCacheMode), var1337-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3), <init>/263349490=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], void), cast-from-var1337-to-var488=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3], org.hibernate.engine.config.spi.ConfigurationService$Converter), cast-from-var1063-to-var3166=([org.hibernate.cache.spi.access.AccessType], java.lang.Object), cast-from-var3166-to-var1063=([java.lang.Object], org.hibernate.cache.spi.access.AccessType), defaultCacheAccessType/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.cache.spi.access.AccessType), specjProprietarySyntaxEnabled/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), name/-1552687968=([javax.persistence.ConstraintMode], java.lang.String), var848_getSetting/617429165=([org.hibernate.engine.config.spi.ConfigurationService, java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object), cast-from-var3166-to-String=([java.lang.Object], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), noConstraintByDefault/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), var3308_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3166=([java.lang.String], java.lang.Object), var1199-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4), <init>/804750413=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl, org.hibernate.boot.registry.selector.spi.StrategySelector], void), var1892_resolveDefaultableStrategy/799268158=([org.hibernate.boot.registry.selector.spi.StrategySelector, java.lang.Class, java.lang.Object, java.util.concurrent.Callable], java.lang.Object), cast-from-var1199-to-var1335=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4], java.util.concurrent.Callable), cast-from-var3166-to-var3243=([java.lang.Object], org.hibernate.boot.model.naming.ImplicitNamingStrategy), implicitNamingStrategy/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.model.naming.ImplicitNamingStrategy), var1892_resolveDefaultableStrategy/-420100722=([org.hibernate.boot.registry.selector.spi.StrategySelector, java.lang.Class, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var1984-to-var3166=([org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl], java.lang.Object), cast-from-var3166-to-var2684=([java.lang.Object], org.hibernate.boot.model.naming.PhysicalNamingStrategy), physicalNamingStrategy/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.model.naming.PhysicalNamingStrategy), resolveInitialSourceProcessOrdering/-148199121=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl, org.hibernate.engine.config.spi.ConfigurationService], java.util.ArrayList), sourceProcessOrdering/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.util.ArrayList), enableLegacyFallback/1863119490=([org.hibernate.boot.internal.IdGeneratorInterpreterImpl], void), useNationalizedCharacterData/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), schemaCharset/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.lang.String)}
; {var1471=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl, var120=r0, var1359=org.hibernate.boot.registry.StandardServiceRegistry, var3945=r3, var3166=java.lang.Object, var518=java.util.ArrayList, var1413=$r1, var1791=org.hibernate.boot.internal.IdGeneratorInterpreterImpl, var1772=$r2, var2257=org.hibernate.service.Service, var756=org.hibernate.service.ServiceRegistry, var1892=org.hibernate.boot.registry.selector.spi.StrategySelector, var2835=$r4, var2464=r5, var848=org.hibernate.engine.config.spi.ConfigurationService, var2875=$r6, var534=r7, var134=org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl, var2445=$r8, var3308=java.util.Map, var1744=$r9, var3786=org.hibernate.MultiTenancyStrategy, var1078=$r10, var488=org.hibernate.engine.config.spi.ConfigurationService$Converter, var3420=org.hibernate.engine.config.spi.StandardConverters, var3792=$r11, var618=java.lang.Boolean, var1804=$r12, var2868=$r13, var2456=$r14, var2003=$z0, var3788=$r15, var3590=$r16, var1821=$r17, var459=$r18, var3132=$z1, var2941=$r19, var2478=$r20, var76=$r21, var3079=$r22, var14=$z2, var3385=$z8, var2351=$r23, var1494=$r24, var3068=$r25, var912=$r26, var3611=$z3, var260=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1, var686=$r27, var2094=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2, var10=$r28, var560=javax.persistence.SharedCacheMode, var2977=$r29, var2463=$r30, var3586=$r31, var996=$r32, var3518=$r33, var1337=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3, var1761=$r34, var1117=org.hibernate.cache.spi.RegionFactory, var3151=$r35, var1063=org.hibernate.cache.spi.access.AccessType, var1730=$r71, var3583=$r38, var1406=$r39, var1465=$r40, var2299=$r41, var6=$r42, var3990=$r43, var637=$z4, var2491=javax.persistence.ConstraintMode, var3674=$r44, var215=$r47, var2287=$r45, var914=$r46, var2853=$z5, var3400=$r48, var5=$r50, var1199=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4, var3164=$r49, var3243=org.hibernate.boot.model.naming.ImplicitNamingStrategy, var1335=java.util.concurrent.Callable, var173=$r51, var2764=$r52, var3107=$r53, var3759=$r55, var1984=org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl, var3233=$r54, var2684=org.hibernate.boot.model.naming.PhysicalNamingStrategy, var2844=$r56, var3694=$r57, var3514=$r58, var1634=$r59, var513=$r60, var1288=$r61, var3923=$r62, var2599=$z7, var189=$r63, var2966=$r64, var278=$r65, var1934=$r66, var322=$r67, var3571=$z6, var3227=$r68, var3220=$r69}
; {org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl=var1471, r0=var120, org.hibernate.boot.registry.StandardServiceRegistry=var1359, r3=var3945, java.lang.Object=var3166, java.util.ArrayList=var518, $r1=var1413, org.hibernate.boot.internal.IdGeneratorInterpreterImpl=var1791, $r2=var1772, org.hibernate.service.Service=var2257, org.hibernate.service.ServiceRegistry=var756, org.hibernate.boot.registry.selector.spi.StrategySelector=var1892, $r4=var2835, r5=var2464, org.hibernate.engine.config.spi.ConfigurationService=var848, $r6=var2875, r7=var534, org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl=var134, $r8=var2445, java.util.Map=var3308, $r9=var1744, org.hibernate.MultiTenancyStrategy=var3786, $r10=var1078, org.hibernate.engine.config.spi.ConfigurationService$Converter=var488, org.hibernate.engine.config.spi.StandardConverters=var3420, $r11=var3792, java.lang.Boolean=var618, $r12=var1804, $r13=var2868, $r14=var2456, $z0=var2003, $r15=var3788, $r16=var3590, $r17=var1821, $r18=var459, $z1=var3132, $r19=var2941, $r20=var2478, $r21=var76, $r22=var3079, $z2=var14, $z8=var3385, $r23=var2351, $r24=var1494, $r25=var3068, $r26=var912, $z3=var3611, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1=var260, $r27=var686, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2=var2094, $r28=var10, javax.persistence.SharedCacheMode=var560, $r29=var2977, $r30=var2463, $r31=var3586, $r32=var996, $r33=var3518, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3=var1337, $r34=var1761, org.hibernate.cache.spi.RegionFactory=var1117, $r35=var3151, org.hibernate.cache.spi.access.AccessType=var1063, $r71=var1730, $r38=var3583, $r39=var1406, $r40=var1465, $r41=var2299, $r42=var6, $r43=var3990, $z4=var637, javax.persistence.ConstraintMode=var2491, $r44=var3674, $r47=var215, $r45=var2287, $r46=var914, $z5=var2853, $r48=var3400, $r50=var5, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4=var1199, $r49=var3164, org.hibernate.boot.model.naming.ImplicitNamingStrategy=var3243, java.util.concurrent.Callable=var1335, $r51=var173, $r52=var2764, $r53=var3107, $r55=var3759, org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl=var1984, $r54=var3233, org.hibernate.boot.model.naming.PhysicalNamingStrategy=var2684, $r56=var2844, $r57=var3694, $r58=var3514, $r59=var1634, $r60=var513, $r61=var1288, $r62=var3923, $z7=var2599, $r63=var189, $r64=var2966, $r65=var278, $r66=var1934, $r67=var322, $z6=var3571, $r68=var3227, $r69=var3220}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl;	r3 := @parameter0: org.hibernate.boot.registry.StandardServiceRegistry;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.ArrayList;	specialinvoke $r1.<java.util.ArrayList: void <init>()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList basicTypeRegistrations> = $r1;	$r2 = new org.hibernate.boot.internal.IdGeneratorInterpreterImpl;	specialinvoke $r2.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void <init>()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> = $r2;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.registry.StandardServiceRegistry serviceRegistry> = r3;	$r4 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/selector/spi/StrategySelector;");	r5 = (org.hibernate.boot.registry.selector.spi.StrategySelector) $r4;	$r6 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;");	r7 = (org.hibernate.engine.config.spi.ConfigurationService) $r6;	$r8 = new org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl;	specialinvoke $r8.<org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl: void <init>(org.hibernate.boot.registry.StandardServiceRegistry)>(r3);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl mappingDefaults> = $r8;	$r9 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>();	$r10 = staticinvoke <org.hibernate.MultiTenancyStrategy: org.hibernate.MultiTenancyStrategy determineMultiTenancyStrategy(java.util.Map)>($r9);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.MultiTenancyStrategy multiTenancyStrategy> = $r10;	$r11 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r12 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1);	$r13 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.xml_mapping_enabled", $r11, $r12);	$r14 = (java.lang.Boolean) $r13;	$z0 = virtualinvoke $r14.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean xmlMappingEnabled> = $z0;	$r15 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r16 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r17 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.implicit_for_joined", $r15, $r16);	$r18 = (java.lang.Boolean) $r17;	$z1 = virtualinvoke $r18.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitDiscriminatorsForJoinedInheritanceSupported> = $z1;	$r19 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r20 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r21 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.ignore_explicit_for_joined", $r19, $r20);	$r22 = (java.lang.Boolean) $r21;	$z2 = virtualinvoke $r22.<java.lang.Boolean: boolean booleanValue()>();	if $z2 != 0 goto $z8 = 0;	$z8 = 1;	goto [?= r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean explicitDiscriminatorsForJoinedInheritanceSupported> = $z8];	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean explicitDiscriminatorsForJoinedInheritanceSupported> = $z8;	$r23 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r24 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r25 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.force_in_select", $r23, $r24);	$r26 = (java.lang.Boolean) $r25;	$z3 = virtualinvoke $r26.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitlyForceDiscriminatorInSelect> = $z3;	$r27 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1;	specialinvoke $r27.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0);	$r28 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2;	specialinvoke $r28.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0);	$r29 = <javax.persistence.SharedCacheMode: javax.persistence.SharedCacheMode UNSPECIFIED>;	$r30 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("jakarta.persistence.sharedCache.mode", $r28, $r29);	$r31 = (javax.persistence.SharedCacheMode) $r30;	$r32 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("javax.persistence.sharedCache.mode", $r27, $r31);	$r33 = (javax.persistence.SharedCacheMode) $r32;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: javax.persistence.SharedCacheMode sharedCacheMode> = $r33;	$r34 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3;	specialinvoke $r34.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0);	$r35 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;");	if $r35 != null goto $r36 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;");	$r71 = null;	goto [?= $r38 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.cache.default_cache_concurrency_strategy", $r34, $r71)];	$r38 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.cache.default_cache_concurrency_strategy", $r34, $r71);	$r39 = (org.hibernate.cache.spi.access.AccessType) $r38;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.cache.spi.access.AccessType defaultCacheAccessType> = $r39;	$r40 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r41 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r42 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.enable_specj_proprietary_syntax", $r40, $r41);	$r43 = (java.lang.Boolean) $r42;	$z4 = virtualinvoke $r43.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean specjProprietarySyntaxEnabled> = $z4;	$r44 = <javax.persistence.ConstraintMode: javax.persistence.ConstraintMode NO_CONSTRAINT>;	$r47 = virtualinvoke $r44.<javax.persistence.ConstraintMode: java.lang.String name()>();	$r45 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.default_constraint_mode", class "Ljava/lang/String;", null);	$r46 = (java.lang.String) $r45;	$z5 = virtualinvoke $r47.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r46);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean noConstraintByDefault> = $z5;	$r48 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>();	$r50 = interfaceinvoke $r48.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.implicit_naming_strategy");	$r49 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4;	specialinvoke $r49.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl,org.hibernate.boot.registry.selector.spi.StrategySelector)>(r0, r5);	$r51 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.util.concurrent.Callable)>(class "Lorg/hibernate/boot/model/naming/ImplicitNamingStrategy;", $r50, $r49);	$r52 = (org.hibernate.boot.model.naming.ImplicitNamingStrategy) $r51;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.ImplicitNamingStrategy implicitNamingStrategy> = $r52;	$r53 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>();	$r55 = interfaceinvoke $r53.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.physical_naming_strategy");	$r54 = <org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl INSTANCE>;	$r56 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.lang.Object)>(class "Lorg/hibernate/boot/model/naming/PhysicalNamingStrategy;", $r55, $r54);	$r57 = (org.hibernate.boot.model.naming.PhysicalNamingStrategy) $r56;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategy physicalNamingStrategy> = $r57;	$r58 = specialinvoke r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList resolveInitialSourceProcessOrdering(org.hibernate.engine.config.spi.ConfigurationService)>(r7);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList sourceProcessOrdering> = $r58;	$r59 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r60 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1);	$r61 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.id.new_generator_mappings", $r59, $r60);	$r62 = (java.lang.Boolean) $r61;	$z7 = virtualinvoke $r62.<java.lang.Boolean: boolean booleanValue()>();	if $z7 == 0 goto $r63 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter>;	$r63 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter>;	virtualinvoke $r63.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void enableLegacyFallback()>();	$r64 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r65 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r66 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.use_nationalized_character_data", $r64, $r65);	$r67 = (java.lang.Boolean) $r66;	$z6 = virtualinvoke $r67.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean useNationalizedCharacterData> = $z6;	$r68 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.charset_name", class "Ljava/lang/String;", null);	$r69 = (java.lang.String) $r68;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.lang.String schemaCharset> = $r69;	return
;block_num 7