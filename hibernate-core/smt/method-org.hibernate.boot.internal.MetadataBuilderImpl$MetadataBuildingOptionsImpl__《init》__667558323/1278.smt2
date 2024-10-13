(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1067 0)
(declare-sort var3209 0)
(declare-sort var1609 0)
(declare-sort var2764 0)
(declare-sort var934 0)
(declare-sort var1668 0)
(declare-sort var2231 0)
(declare-sort var412 0)
(declare-sort var3618 0)
(declare-sort var616 0)
(declare-sort var1990 0)
(declare-sort var720 0)
(declare-sort var2636 0)
(declare-sort var1447 0)
(declare-sort var1333 0)
(declare-sort var1586 0)
(declare-sort var2142 0)
(declare-sort var1904 0)
(declare-sort var556 0)
(declare-sort var1435 0)
(declare-sort var2339 0)
(declare-sort var843 0)
(declare-sort var2902 0)
(declare-sort var459 0)
(declare-sort var3086 0)
(declare-sort var798 0)
(declare-sort var2024 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var412!class ClassObject)
(declare-const var3618!class ClassObject)
(declare-const var1435!class ClassObject)
(declare-const String!class ClassObject)
(declare-const var459!class ClassObject)
(declare-const var2024!class ClassObject)
(declare-fun <init>/-279557996 (var1609) void)
(declare-fun cast-from-var1067-to-var1609 (var1067) var1609)
(declare-fun var2764-init () var2764)
(declare-fun <init>/-325640736 (var2764) void)
(declare-fun basicTypeRegistrations/1175689288 (var1067) var2764)
(declare-fun var934-init () var934)
(declare-fun <init>/-2021892866 (var934) void)
(declare-fun idGenerationTypeInterpreter/1175689288 (var1067) var934)
(declare-fun serviceRegistry/1175689288 (var1067) var3209)
(declare-fun var2231_getService/-972330729 (var2231 ClassObject) var1668)
(declare-fun cast-from-var3209-to-var2231 (var3209) var2231)
(declare-fun cast-from-var1668-to-var412 (var1668) var412)
(declare-fun cast-from-var1668-to-var3618 (var1668) var3618)
(declare-fun var616-init () var616)
(declare-fun <init>/690337262 (var616 var3209) void)
(declare-fun mappingDefaults/1175689288 (var1067) var616)
(declare-fun var3618_getSettings/2034258353 (var3618) var1990)
(declare-fun var720_determineMultiTenancyStrategy/-92423624 (var1990) var720)
(declare-fun multiTenancyStrategy/1175689288 (var1067) var720)
(declare-fun var1333_valueOf/1602327315 (Bool) var1333)
(declare-fun var3618_getSetting/183454356 (var3618 String var2636 var1609) var1609)
(declare-fun cast-from-var1333-to-var1609 (var1333) var1609)
(declare-fun cast-from-var1609-to-var1333 (var1609) var1333)
(declare-fun booleanValue/-1820462562 (var1333) Bool)
(declare-fun xmlMappingEnabled/1175689288 (var1067) Bool)
(declare-fun implicitDiscriminatorsForJoinedInheritanceSupported/1175689288 (var1067) Bool)
(declare-fun explicitDiscriminatorsForJoinedInheritanceSupported/1175689288 (var1067) Bool)
(declare-fun implicitlyForceDiscriminatorInSelect/1175689288 (var1067) Bool)
(declare-fun var1586-init () var1586)
(declare-fun <init>/291849780 (var1586 var1067) void)
(declare-fun var2142-init () var2142)
(declare-fun <init>/277599635 (var2142 var1067) void)
(declare-fun cast-from-var2142-to-var2636 (var2142) var2636)
(declare-fun cast-from-var1904-to-var1609 (var1904) var1609)
(declare-fun cast-from-var1609-to-var1904 (var1609) var1904)
(declare-fun cast-from-var1586-to-var2636 (var1586) var2636)
(declare-fun sharedCacheMode/1175689288 (var1067) var1904)
(declare-fun var556-init () var556)
(declare-fun <init>/263349490 (var556 var1067) void)
(declare-fun cast-from-var556-to-var2636 (var556) var2636)
(declare-fun cast-from-var2339-to-var1609 (var2339) var1609)
(declare-fun cast-from-var1609-to-var2339 (var1609) var2339)
(declare-fun defaultCacheAccessType/1175689288 (var1067) var2339)
(declare-fun specjProprietarySyntaxEnabled/1175689288 (var1067) Bool)
(declare-fun name/-1552687968 (var843) String)
(declare-fun var3618_getSetting/617429165 (var3618 String ClassObject var1609) var1609)
(declare-fun cast-from-var1609-to-String (var1609) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun noConstraintByDefault/1175689288 (var1067) Bool)
(declare-fun var1990_get/1088891777 (var1990 var1609) var1609)
(declare-fun cast-from-String-to-var1609 (String) var1609)
(declare-fun var2902-init () var2902)
(declare-fun <init>/804750413 (var2902 var1067 var412) void)
(declare-fun var412_resolveDefaultableStrategy/799268158 (var412 ClassObject var1609 var3086) var1609)
(declare-fun cast-from-var2902-to-var3086 (var2902) var3086)
(declare-fun cast-from-var1609-to-var459 (var1609) var459)
(declare-fun implicitNamingStrategy/1175689288 (var1067) var459)
(declare-fun var412_resolveDefaultableStrategy/-420100722 (var412 ClassObject var1609 var1609) var1609)
(declare-fun cast-from-var798-to-var1609 (var798) var1609)
(declare-fun cast-from-var1609-to-var2024 (var1609) var2024)
(declare-fun physicalNamingStrategy/1175689288 (var1067) var2024)
(declare-fun resolveInitialSourceProcessOrdering/-148199121 (var1067 var3618) var2764)
(declare-fun sourceProcessOrdering/1175689288 (var1067) var2764)
(declare-fun disableLegacyFallback/-75856393 (var934) void)
(declare-fun useNationalizedCharacterData/1175689288 (var1067) Bool)
(declare-fun schemaCharset/1175689288 (var1067) String)
(declare-const null-var1067 var1067)
(declare-const null-var3209 var3209)
(declare-const var1447-BOOLEAN var2636)
(declare-const var1904-UNSPECIFIED var1904)
(declare-const null-var1668 var1668)
(declare-const null-var2339 var2339)
(declare-const var843-NO_CONSTRAINT var843)
(declare-const null-var1609 var1609)
(declare-const var798-INSTANCE var798)
(declare-const var3796 var1067) ; Statement: r0 := @this: org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl 
(assert (not (= var3796 null-var1067)))
(declare-const var421 var3209) ; Statement: r3 := @parameter0: org.hibernate.boot.registry.StandardServiceRegistry 
(assert (not (= var421 null-var3209)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1067-to-var1609 var3796))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3796!1 var1067)
(define-const var472 var2764 var2764-init) ; Statement: $r1 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var472)) ; Statement: specialinvoke $r1.<java.util.ArrayList: void <init>()>() 

(declare-const var472!1 var2764)
(declare-const var3796!2 var1067)
(assert (not (= var3796!2 null-var1067)))
(assert (= (basicTypeRegistrations/1175689288 var3796!2) var472!1)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList basicTypeRegistrations> = $r1 
(define-const var48 var934 var934-init) ; Statement: $r2 = new org.hibernate.boot.internal.IdGeneratorInterpreterImpl 
(assert true)
;(assert (<init>/-2021892866 var48)) ; Statement: specialinvoke $r2.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void <init>()>() 

(declare-const var48!1 var934)
(declare-const var3796!3 var1067)
(assert (not (= var3796!3 null-var1067)))
(assert (= (idGenerationTypeInterpreter/1175689288 var3796!3) var48!1)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> = $r2 
(declare-const var3796!4 var1067)
(assert (not (= var3796!4 null-var1067)))
(assert (= (serviceRegistry/1175689288 var3796!4) var421)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.registry.StandardServiceRegistry serviceRegistry> = r3 
(define-const var885 var1668 (var2231_getService/-972330729 (cast-from-var3209-to-var2231 var421) var412!class)) ; Statement: $r4 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/selector/spi/StrategySelector;") 
(define-const var269 var412 (cast-from-var1668-to-var412 var885)) ; Statement: r5 = (org.hibernate.boot.registry.selector.spi.StrategySelector) $r4 
(define-const var3344 var1668 (var2231_getService/-972330729 (cast-from-var3209-to-var2231 var421) var3618!class)) ; Statement: $r6 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;") 
(define-const var2364 var3618 (cast-from-var1668-to-var3618 var3344)) ; Statement: r7 = (org.hibernate.engine.config.spi.ConfigurationService) $r6 
(define-const var426 var616 var616-init) ; Statement: $r8 = new org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl 
(assert true)
;(assert (<init>/690337262 var426 var421)) ; Statement: specialinvoke $r8.<org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl: void <init>(org.hibernate.boot.registry.StandardServiceRegistry)>(r3) 

(declare-const var426!1 var616)
(declare-const var421!1 var3209)
(declare-const var3796!5 var1067)
(assert (not (= var3796!5 null-var1067)))
(assert (= (mappingDefaults/1175689288 var3796!5) var426!1)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl mappingDefaults> = $r8 
(define-const var1796 var1990 (var3618_getSettings/2034258353 var2364)) ; Statement: $r9 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>() 
(define-const var762 var720 (var720_determineMultiTenancyStrategy/-92423624 var1796)) ; Statement: $r10 = staticinvoke <org.hibernate.MultiTenancyStrategy: org.hibernate.MultiTenancyStrategy determineMultiTenancyStrategy(java.util.Map)>($r9) 
(declare-const var3796!6 var1067)
(assert (not (= var3796!6 null-var1067)))
(assert (= (multiTenancyStrategy/1175689288 var3796!6) var762)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.MultiTenancyStrategy multiTenancyStrategy> = $r10 
(define-const var2672 var2636 var1447-BOOLEAN) ; Statement: $r11 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var3120 var1333 (var1333_valueOf/1602327315 (ite (= 1 1) true false))) ; Statement: $r12 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1) 
(define-const var2695 var1609 (var3618_getSetting/183454356 var2364 "hibernate.xml_mapping_enabled" var2672 (cast-from-var1333-to-var1609 var3120))) ; Statement: $r13 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.xml_mapping_enabled", $r11, $r12) 
(define-const var2496 var1333 (cast-from-var1609-to-var1333 var2695)) ; Statement: $r14 = (java.lang.Boolean) $r13 
(assert true)
(define-const var586 Bool (booleanValue/-1820462562 var2496)) ; Statement: $z0 = virtualinvoke $r14.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var3796!7 var1067)
(assert (not (= var3796!7 null-var1067)))
(assert (= (xmlMappingEnabled/1175689288 var3796!7) var586)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean xmlMappingEnabled> = $z0 
(define-const var3276 var2636 var1447-BOOLEAN) ; Statement: $r15 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var1580 var1333 (var1333_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r16 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var1858 var1609 (var3618_getSetting/183454356 var2364 "hibernate.discriminator.implicit_for_joined" var3276 (cast-from-var1333-to-var1609 var1580))) ; Statement: $r17 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.implicit_for_joined", $r15, $r16) 
(define-const var3401 var1333 (cast-from-var1609-to-var1333 var1858)) ; Statement: $r18 = (java.lang.Boolean) $r17 
(assert true)
(define-const var2937 Bool (booleanValue/-1820462562 var3401)) ; Statement: $z1 = virtualinvoke $r18.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var3796!8 var1067)
(assert (not (= var3796!8 null-var1067)))
(assert (= (implicitDiscriminatorsForJoinedInheritanceSupported/1175689288 var3796!8) var2937)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitDiscriminatorsForJoinedInheritanceSupported> = $z1 
(define-const var3499 var2636 var1447-BOOLEAN) ; Statement: $r19 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var1917 var1333 (var1333_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r20 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var2090 var1609 (var3618_getSetting/183454356 var2364 "hibernate.discriminator.ignore_explicit_for_joined" var3499 (cast-from-var1333-to-var1609 var1917))) ; Statement: $r21 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.ignore_explicit_for_joined", $r19, $r20) 
(define-const var163 var1333 (cast-from-var1609-to-var1333 var2090)) ; Statement: $r22 = (java.lang.Boolean) $r21 
(assert true)
(define-const var2938 Bool (booleanValue/-1820462562 var163)) ; Statement: $z2 = virtualinvoke $r22.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z2 != 0 goto $z8 = 0 
(assert (not (= (ite var2938 1 0) 0))) ; Cond: $z2 != 0 
(define-const var1623 Bool (ite (= 1 0) true false)) ; Statement: $z8 = 0 
(assert true) ; Non Conditional
(declare-const var3796!9 var1067)
(assert (not (= var3796!9 null-var1067)))
(assert (= (explicitDiscriminatorsForJoinedInheritanceSupported/1175689288 var3796!9) var1623)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean explicitDiscriminatorsForJoinedInheritanceSupported> = $z8 
(define-const var1036 var2636 var1447-BOOLEAN) ; Statement: $r23 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var3272 var1333 (var1333_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r24 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var1840 var1609 (var3618_getSetting/183454356 var2364 "hibernate.discriminator.force_in_select" var1036 (cast-from-var1333-to-var1609 var3272))) ; Statement: $r25 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.force_in_select", $r23, $r24) 
(define-const var2401 var1333 (cast-from-var1609-to-var1333 var1840)) ; Statement: $r26 = (java.lang.Boolean) $r25 
(assert true)
(define-const var946 Bool (booleanValue/-1820462562 var2401)) ; Statement: $z3 = virtualinvoke $r26.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var3796!10 var1067)
(assert (not (= var3796!10 null-var1067)))
(assert (= (implicitlyForceDiscriminatorInSelect/1175689288 var3796!10) var946)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitlyForceDiscriminatorInSelect> = $z3 
(define-const var2999 var1586 var1586-init) ; Statement: $r27 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1 
(assert true)
;(assert (<init>/291849780 var2999 var3796!10)) ; Statement: specialinvoke $r27.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0) 

(declare-const var2999!1 var1586)
(declare-const var3796!11 var1067)
(define-const var3210 var2142 var2142-init) ; Statement: $r28 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2 
(assert true)
;(assert (<init>/277599635 var3210 var3796!11)) ; Statement: specialinvoke $r28.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0) 

(declare-const var3210!1 var2142)
(declare-const var3796!12 var1067)
(define-const var3225 var1904 var1904-UNSPECIFIED) ; Statement: $r29 = <javax.persistence.SharedCacheMode: javax.persistence.SharedCacheMode UNSPECIFIED> 
(define-const var2858 var1609 (var3618_getSetting/183454356 var2364 "jakarta.persistence.sharedCache.mode" (cast-from-var2142-to-var2636 var3210!1) (cast-from-var1904-to-var1609 var3225))) ; Statement: $r30 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("jakarta.persistence.sharedCache.mode", $r28, $r29) 
(define-const var3645 var1904 (cast-from-var1609-to-var1904 var2858)) ; Statement: $r31 = (javax.persistence.SharedCacheMode) $r30 
(define-const var17 var1609 (var3618_getSetting/183454356 var2364 "javax.persistence.sharedCache.mode" (cast-from-var1586-to-var2636 var2999!1) (cast-from-var1904-to-var1609 var3645))) ; Statement: $r32 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("javax.persistence.sharedCache.mode", $r27, $r31) 
(define-const var339 var1904 (cast-from-var1609-to-var1904 var17)) ; Statement: $r33 = (javax.persistence.SharedCacheMode) $r32 
(declare-const var3796!13 var1067)
(assert (not (= var3796!13 null-var1067)))
(assert (= (sharedCacheMode/1175689288 var3796!13) var339)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: javax.persistence.SharedCacheMode sharedCacheMode> = $r33 
(define-const var2429 var556 var556-init) ; Statement: $r34 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3 
(assert true)
;(assert (<init>/263349490 var2429 var3796!13)) ; Statement: specialinvoke $r34.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0) 

(declare-const var2429!1 var556)
(declare-const var3796!14 var1067)
(define-const var2139 var1668 (var2231_getService/-972330729 (cast-from-var3209-to-var2231 var421!1) var1435!class)) ; Statement: $r35 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;") 
 ; Statement: if $r35 != null goto $r36 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;") 
(assert (not (not (= var2139 null-var1668)))) ; Negate: Cond: $r35 != null  
(define-const var2992 var2339 null-var2339) ; Statement: $r71 = null 
 ; Statement: goto [?= $r38 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.cache.default_cache_concurrency_strategy", $r34, $r71)] 
(assert true) ; Non Conditional
(define-const var1610 var1609 (var3618_getSetting/183454356 var2364 "hibernate.cache.default_cache_concurrency_strategy" (cast-from-var556-to-var2636 var2429!1) (cast-from-var2339-to-var1609 var2992))) ; Statement: $r38 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.cache.default_cache_concurrency_strategy", $r34, $r71) 
(define-const var573 var2339 (cast-from-var1609-to-var2339 var1610)) ; Statement: $r39 = (org.hibernate.cache.spi.access.AccessType) $r38 
(declare-const var3796!15 var1067)
(assert (not (= var3796!15 null-var1067)))
(assert (= (defaultCacheAccessType/1175689288 var3796!15) var573)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.cache.spi.access.AccessType defaultCacheAccessType> = $r39 
(define-const var1708 var2636 var1447-BOOLEAN) ; Statement: $r40 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var3256 var1333 (var1333_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r41 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var2911 var1609 (var3618_getSetting/183454356 var2364 "hibernate.enable_specj_proprietary_syntax" var1708 (cast-from-var1333-to-var1609 var3256))) ; Statement: $r42 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.enable_specj_proprietary_syntax", $r40, $r41) 
(define-const var635 var1333 (cast-from-var1609-to-var1333 var2911)) ; Statement: $r43 = (java.lang.Boolean) $r42 
(assert true)
(define-const var875 Bool (booleanValue/-1820462562 var635)) ; Statement: $z4 = virtualinvoke $r43.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var3796!16 var1067)
(assert (not (= var3796!16 null-var1067)))
(assert (= (specjProprietarySyntaxEnabled/1175689288 var3796!16) var875)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean specjProprietarySyntaxEnabled> = $z4 
(define-const var3437 var843 var843-NO_CONSTRAINT) ; Statement: $r44 = <javax.persistence.ConstraintMode: javax.persistence.ConstraintMode NO_CONSTRAINT> 
(assert true)
(define-const var451 String (name/-1552687968 var3437)) ; Statement: $r47 = virtualinvoke $r44.<javax.persistence.ConstraintMode: java.lang.String name()>() 
(define-const var1159 var1609 (var3618_getSetting/617429165 var2364 "hibernate.hbm2ddl.default_constraint_mode" String!class null-var1609)) ; Statement: $r45 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.default_constraint_mode", class "Ljava/lang/String;", null) 
(define-const var3030 String (cast-from-var1609-to-String var1159)) ; Statement: $r46 = (java.lang.String) $r45 
(assert true)
(define-const var3613 Bool (equalsIgnoreCase/-92311102 var451 var3030)) ; Statement: $z5 = virtualinvoke $r47.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r46) 
(declare-const var3796!17 var1067)
(assert (not (= var3796!17 null-var1067)))
(assert (= (noConstraintByDefault/1175689288 var3796!17) var3613)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean noConstraintByDefault> = $z5 
(define-const var2789 var1990 (var3618_getSettings/2034258353 var2364)) ; Statement: $r48 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>() 
(define-const var942 var1609 (var1990_get/1088891777 var2789 (cast-from-String-to-var1609 "hibernate.implicit_naming_strategy"))) ; Statement: $r50 = interfaceinvoke $r48.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.implicit_naming_strategy") 
(define-const var3998 var2902 var2902-init) ; Statement: $r49 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4 
(assert true)
;(assert (<init>/804750413 var3998 var3796!17 var269)) ; Statement: specialinvoke $r49.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl,org.hibernate.boot.registry.selector.spi.StrategySelector)>(r0, r5) 

(declare-const var3998!1 var2902)
(declare-const var3796!18 var1067)
(declare-const var269!1 var412)
(define-const var2373 var1609 (var412_resolveDefaultableStrategy/799268158 var269!1 var459!class var942 (cast-from-var2902-to-var3086 var3998!1))) ; Statement: $r51 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.util.concurrent.Callable)>(class "Lorg/hibernate/boot/model/naming/ImplicitNamingStrategy;", $r50, $r49) 
(define-const var2394 var459 (cast-from-var1609-to-var459 var2373)) ; Statement: $r52 = (org.hibernate.boot.model.naming.ImplicitNamingStrategy) $r51 
(declare-const var3796!19 var1067)
(assert (not (= var3796!19 null-var1067)))
(assert (= (implicitNamingStrategy/1175689288 var3796!19) var2394)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.ImplicitNamingStrategy implicitNamingStrategy> = $r52 
(define-const var1511 var1990 (var3618_getSettings/2034258353 var2364)) ; Statement: $r53 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>() 
(define-const var348 var1609 (var1990_get/1088891777 var1511 (cast-from-String-to-var1609 "hibernate.physical_naming_strategy"))) ; Statement: $r55 = interfaceinvoke $r53.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.physical_naming_strategy") 
(define-const var2021 var798 var798-INSTANCE) ; Statement: $r54 = <org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl INSTANCE> 
(define-const var3981 var1609 (var412_resolveDefaultableStrategy/-420100722 var269!1 var2024!class var348 (cast-from-var798-to-var1609 var2021))) ; Statement: $r56 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.lang.Object)>(class "Lorg/hibernate/boot/model/naming/PhysicalNamingStrategy;", $r55, $r54) 
(define-const var2300 var2024 (cast-from-var1609-to-var2024 var3981)) ; Statement: $r57 = (org.hibernate.boot.model.naming.PhysicalNamingStrategy) $r56 
(declare-const var3796!20 var1067)
(assert (not (= var3796!20 null-var1067)))
(assert (= (physicalNamingStrategy/1175689288 var3796!20) var2300)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategy physicalNamingStrategy> = $r57 
(assert true)
(define-const var529 var2764 (resolveInitialSourceProcessOrdering/-148199121 var3796!20 var2364)) ; Statement: $r58 = specialinvoke r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList resolveInitialSourceProcessOrdering(org.hibernate.engine.config.spi.ConfigurationService)>(r7) 
(declare-const var3796!21 var1067)
(assert (not (= var3796!21 null-var1067)))
(assert (= (sourceProcessOrdering/1175689288 var3796!21) var529)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList sourceProcessOrdering> = $r58 
(define-const var1585 var2636 var1447-BOOLEAN) ; Statement: $r59 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var2956 var1333 (var1333_valueOf/1602327315 (ite (= 1 1) true false))) ; Statement: $r60 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1) 
(define-const var606 var1609 (var3618_getSetting/183454356 var2364 "hibernate.id.new_generator_mappings" var1585 (cast-from-var1333-to-var1609 var2956))) ; Statement: $r61 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.id.new_generator_mappings", $r59, $r60) 
(define-const var245 var1333 (cast-from-var1609-to-var1333 var606)) ; Statement: $r62 = (java.lang.Boolean) $r61 
(assert true)
(define-const var3832 Bool (booleanValue/-1820462562 var245)) ; Statement: $z7 = virtualinvoke $r62.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z7 == 0 goto $r63 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> 
(assert (not (= (ite var3832 1 0) 0))) ; Negate: Cond: $z7 == 0  
(define-const var2258 var934 (idGenerationTypeInterpreter/1175689288 var3796!21)) ; Statement: $r70 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> 
(assert true)
;(assert (disableLegacyFallback/-75856393 var2258)) ; Statement: virtualinvoke $r70.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void disableLegacyFallback()>() 

(declare-const var2258!1 var934)
 ; Statement: goto [?= $r64 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>] 
(assert true) ; Non Conditional
(define-const var272 var2636 var1447-BOOLEAN) ; Statement: $r64 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var860 var1333 (var1333_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r65 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var1198 var1609 (var3618_getSetting/183454356 var2364 "hibernate.use_nationalized_character_data" var272 (cast-from-var1333-to-var1609 var860))) ; Statement: $r66 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.use_nationalized_character_data", $r64, $r65) 
(define-const var1274 var1333 (cast-from-var1609-to-var1333 var1198)) ; Statement: $r67 = (java.lang.Boolean) $r66 
(assert true)
(define-const var3534 Bool (booleanValue/-1820462562 var1274)) ; Statement: $z6 = virtualinvoke $r67.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var3796!22 var1067)
(assert (not (= var3796!22 null-var1067)))
(assert (= (useNationalizedCharacterData/1175689288 var3796!22) var3534)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean useNationalizedCharacterData> = $z6 
(define-const var3115 var1609 (var3618_getSetting/617429165 var2364 "hibernate.hbm2ddl.charset_name" String!class null-var1609)) ; Statement: $r68 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.charset_name", class "Ljava/lang/String;", null) 
(define-const var3561 String (cast-from-var1609-to-String var3115)) ; Statement: $r69 = (java.lang.String) $r68 
(declare-const var3796!23 var1067)
(assert (not (= var3796!23 null-var1067)))
(assert (= (schemaCharset/1175689288 var3796!23) var3561)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.lang.String schemaCharset> = $r69 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1067-to-var1609=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.lang.Object), var2764-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), basicTypeRegistrations/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.util.ArrayList), var934-init=([], org.hibernate.boot.internal.IdGeneratorInterpreterImpl), <init>/-2021892866=([org.hibernate.boot.internal.IdGeneratorInterpreterImpl], void), idGenerationTypeInterpreter/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.internal.IdGeneratorInterpreterImpl), serviceRegistry/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.registry.StandardServiceRegistry), var2231_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var3209-to-var2231=([org.hibernate.boot.registry.StandardServiceRegistry], org.hibernate.service.ServiceRegistry), cast-from-var1668-to-var412=([org.hibernate.service.Service], org.hibernate.boot.registry.selector.spi.StrategySelector), cast-from-var1668-to-var3618=([org.hibernate.service.Service], org.hibernate.engine.config.spi.ConfigurationService), var616-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl), <init>/690337262=([org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl, org.hibernate.boot.registry.StandardServiceRegistry], void), mappingDefaults/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl), var3618_getSettings/2034258353=([org.hibernate.engine.config.spi.ConfigurationService], java.util.Map), var720_determineMultiTenancyStrategy/-92423624=([java.util.Map], org.hibernate.MultiTenancyStrategy), multiTenancyStrategy/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.MultiTenancyStrategy), var1333_valueOf/1602327315=([boolean], java.lang.Boolean), var3618_getSetting/183454356=([org.hibernate.engine.config.spi.ConfigurationService, java.lang.String, org.hibernate.engine.config.spi.ConfigurationService$Converter, java.lang.Object], java.lang.Object), cast-from-var1333-to-var1609=([java.lang.Boolean], java.lang.Object), cast-from-var1609-to-var1333=([java.lang.Object], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), xmlMappingEnabled/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), implicitDiscriminatorsForJoinedInheritanceSupported/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), explicitDiscriminatorsForJoinedInheritanceSupported/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), implicitlyForceDiscriminatorInSelect/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), var1586-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1), <init>/291849780=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], void), var2142-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2), <init>/277599635=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], void), cast-from-var2142-to-var2636=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2], org.hibernate.engine.config.spi.ConfigurationService$Converter), cast-from-var1904-to-var1609=([javax.persistence.SharedCacheMode], java.lang.Object), cast-from-var1609-to-var1904=([java.lang.Object], javax.persistence.SharedCacheMode), cast-from-var1586-to-var2636=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1], org.hibernate.engine.config.spi.ConfigurationService$Converter), sharedCacheMode/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], javax.persistence.SharedCacheMode), var556-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3), <init>/263349490=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], void), cast-from-var556-to-var2636=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3], org.hibernate.engine.config.spi.ConfigurationService$Converter), cast-from-var2339-to-var1609=([org.hibernate.cache.spi.access.AccessType], java.lang.Object), cast-from-var1609-to-var2339=([java.lang.Object], org.hibernate.cache.spi.access.AccessType), defaultCacheAccessType/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.cache.spi.access.AccessType), specjProprietarySyntaxEnabled/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), name/-1552687968=([javax.persistence.ConstraintMode], java.lang.String), var3618_getSetting/617429165=([org.hibernate.engine.config.spi.ConfigurationService, java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object), cast-from-var1609-to-String=([java.lang.Object], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), noConstraintByDefault/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), var1990_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1609=([java.lang.String], java.lang.Object), var2902-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4), <init>/804750413=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl, org.hibernate.boot.registry.selector.spi.StrategySelector], void), var412_resolveDefaultableStrategy/799268158=([org.hibernate.boot.registry.selector.spi.StrategySelector, java.lang.Class, java.lang.Object, java.util.concurrent.Callable], java.lang.Object), cast-from-var2902-to-var3086=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4], java.util.concurrent.Callable), cast-from-var1609-to-var459=([java.lang.Object], org.hibernate.boot.model.naming.ImplicitNamingStrategy), implicitNamingStrategy/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.model.naming.ImplicitNamingStrategy), var412_resolveDefaultableStrategy/-420100722=([org.hibernate.boot.registry.selector.spi.StrategySelector, java.lang.Class, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var798-to-var1609=([org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl], java.lang.Object), cast-from-var1609-to-var2024=([java.lang.Object], org.hibernate.boot.model.naming.PhysicalNamingStrategy), physicalNamingStrategy/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.model.naming.PhysicalNamingStrategy), resolveInitialSourceProcessOrdering/-148199121=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl, org.hibernate.engine.config.spi.ConfigurationService], java.util.ArrayList), sourceProcessOrdering/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.util.ArrayList), disableLegacyFallback/-75856393=([org.hibernate.boot.internal.IdGeneratorInterpreterImpl], void), useNationalizedCharacterData/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), schemaCharset/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.lang.String)}
; {var1067=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl, var3796=r0, var3209=org.hibernate.boot.registry.StandardServiceRegistry, var421=r3, var1609=java.lang.Object, var2764=java.util.ArrayList, var472=$r1, var934=org.hibernate.boot.internal.IdGeneratorInterpreterImpl, var48=$r2, var1668=org.hibernate.service.Service, var2231=org.hibernate.service.ServiceRegistry, var412=org.hibernate.boot.registry.selector.spi.StrategySelector, var885=$r4, var269=r5, var3618=org.hibernate.engine.config.spi.ConfigurationService, var3344=$r6, var2364=r7, var616=org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl, var426=$r8, var1990=java.util.Map, var1796=$r9, var720=org.hibernate.MultiTenancyStrategy, var762=$r10, var2636=org.hibernate.engine.config.spi.ConfigurationService$Converter, var1447=org.hibernate.engine.config.spi.StandardConverters, var2672=$r11, var1333=java.lang.Boolean, var3120=$r12, var2695=$r13, var2496=$r14, var586=$z0, var3276=$r15, var1580=$r16, var1858=$r17, var3401=$r18, var2937=$z1, var3499=$r19, var1917=$r20, var2090=$r21, var163=$r22, var2938=$z2, var1623=$z8, var1036=$r23, var3272=$r24, var1840=$r25, var2401=$r26, var946=$z3, var1586=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1, var2999=$r27, var2142=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2, var3210=$r28, var1904=javax.persistence.SharedCacheMode, var3225=$r29, var2858=$r30, var3645=$r31, var17=$r32, var339=$r33, var556=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3, var2429=$r34, var1435=org.hibernate.cache.spi.RegionFactory, var2139=$r35, var2339=org.hibernate.cache.spi.access.AccessType, var2992=$r71, var1610=$r38, var573=$r39, var1708=$r40, var3256=$r41, var2911=$r42, var635=$r43, var875=$z4, var843=javax.persistence.ConstraintMode, var3437=$r44, var451=$r47, var1159=$r45, var3030=$r46, var3613=$z5, var2789=$r48, var942=$r50, var2902=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4, var3998=$r49, var459=org.hibernate.boot.model.naming.ImplicitNamingStrategy, var3086=java.util.concurrent.Callable, var2373=$r51, var2394=$r52, var1511=$r53, var348=$r55, var798=org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl, var2021=$r54, var2024=org.hibernate.boot.model.naming.PhysicalNamingStrategy, var3981=$r56, var2300=$r57, var529=$r58, var1585=$r59, var2956=$r60, var606=$r61, var245=$r62, var3832=$z7, var2258=$r70, var272=$r64, var860=$r65, var1198=$r66, var1274=$r67, var3534=$z6, var3115=$r68, var3561=$r69}
; {org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl=var1067, r0=var3796, org.hibernate.boot.registry.StandardServiceRegistry=var3209, r3=var421, java.lang.Object=var1609, java.util.ArrayList=var2764, $r1=var472, org.hibernate.boot.internal.IdGeneratorInterpreterImpl=var934, $r2=var48, org.hibernate.service.Service=var1668, org.hibernate.service.ServiceRegistry=var2231, org.hibernate.boot.registry.selector.spi.StrategySelector=var412, $r4=var885, r5=var269, org.hibernate.engine.config.spi.ConfigurationService=var3618, $r6=var3344, r7=var2364, org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl=var616, $r8=var426, java.util.Map=var1990, $r9=var1796, org.hibernate.MultiTenancyStrategy=var720, $r10=var762, org.hibernate.engine.config.spi.ConfigurationService$Converter=var2636, org.hibernate.engine.config.spi.StandardConverters=var1447, $r11=var2672, java.lang.Boolean=var1333, $r12=var3120, $r13=var2695, $r14=var2496, $z0=var586, $r15=var3276, $r16=var1580, $r17=var1858, $r18=var3401, $z1=var2937, $r19=var3499, $r20=var1917, $r21=var2090, $r22=var163, $z2=var2938, $z8=var1623, $r23=var1036, $r24=var3272, $r25=var1840, $r26=var2401, $z3=var946, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1=var1586, $r27=var2999, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2=var2142, $r28=var3210, javax.persistence.SharedCacheMode=var1904, $r29=var3225, $r30=var2858, $r31=var3645, $r32=var17, $r33=var339, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3=var556, $r34=var2429, org.hibernate.cache.spi.RegionFactory=var1435, $r35=var2139, org.hibernate.cache.spi.access.AccessType=var2339, $r71=var2992, $r38=var1610, $r39=var573, $r40=var1708, $r41=var3256, $r42=var2911, $r43=var635, $z4=var875, javax.persistence.ConstraintMode=var843, $r44=var3437, $r47=var451, $r45=var1159, $r46=var3030, $z5=var3613, $r48=var2789, $r50=var942, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4=var2902, $r49=var3998, org.hibernate.boot.model.naming.ImplicitNamingStrategy=var459, java.util.concurrent.Callable=var3086, $r51=var2373, $r52=var2394, $r53=var1511, $r55=var348, org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl=var798, $r54=var2021, org.hibernate.boot.model.naming.PhysicalNamingStrategy=var2024, $r56=var3981, $r57=var2300, $r58=var529, $r59=var1585, $r60=var2956, $r61=var606, $r62=var245, $z7=var3832, $r70=var2258, $r64=var272, $r65=var860, $r66=var1198, $r67=var1274, $z6=var3534, $r68=var3115, $r69=var3561}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl;	r3 := @parameter0: org.hibernate.boot.registry.StandardServiceRegistry;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.ArrayList;	specialinvoke $r1.<java.util.ArrayList: void <init>()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList basicTypeRegistrations> = $r1;	$r2 = new org.hibernate.boot.internal.IdGeneratorInterpreterImpl;	specialinvoke $r2.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void <init>()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> = $r2;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.registry.StandardServiceRegistry serviceRegistry> = r3;	$r4 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/selector/spi/StrategySelector;");	r5 = (org.hibernate.boot.registry.selector.spi.StrategySelector) $r4;	$r6 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;");	r7 = (org.hibernate.engine.config.spi.ConfigurationService) $r6;	$r8 = new org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl;	specialinvoke $r8.<org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl: void <init>(org.hibernate.boot.registry.StandardServiceRegistry)>(r3);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl mappingDefaults> = $r8;	$r9 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>();	$r10 = staticinvoke <org.hibernate.MultiTenancyStrategy: org.hibernate.MultiTenancyStrategy determineMultiTenancyStrategy(java.util.Map)>($r9);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.MultiTenancyStrategy multiTenancyStrategy> = $r10;	$r11 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r12 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1);	$r13 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.xml_mapping_enabled", $r11, $r12);	$r14 = (java.lang.Boolean) $r13;	$z0 = virtualinvoke $r14.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean xmlMappingEnabled> = $z0;	$r15 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r16 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r17 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.implicit_for_joined", $r15, $r16);	$r18 = (java.lang.Boolean) $r17;	$z1 = virtualinvoke $r18.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitDiscriminatorsForJoinedInheritanceSupported> = $z1;	$r19 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r20 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r21 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.ignore_explicit_for_joined", $r19, $r20);	$r22 = (java.lang.Boolean) $r21;	$z2 = virtualinvoke $r22.<java.lang.Boolean: boolean booleanValue()>();	if $z2 != 0 goto $z8 = 0;	$z8 = 0;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean explicitDiscriminatorsForJoinedInheritanceSupported> = $z8;	$r23 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r24 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r25 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.force_in_select", $r23, $r24);	$r26 = (java.lang.Boolean) $r25;	$z3 = virtualinvoke $r26.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitlyForceDiscriminatorInSelect> = $z3;	$r27 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1;	specialinvoke $r27.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0);	$r28 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2;	specialinvoke $r28.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0);	$r29 = <javax.persistence.SharedCacheMode: javax.persistence.SharedCacheMode UNSPECIFIED>;	$r30 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("jakarta.persistence.sharedCache.mode", $r28, $r29);	$r31 = (javax.persistence.SharedCacheMode) $r30;	$r32 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("javax.persistence.sharedCache.mode", $r27, $r31);	$r33 = (javax.persistence.SharedCacheMode) $r32;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: javax.persistence.SharedCacheMode sharedCacheMode> = $r33;	$r34 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3;	specialinvoke $r34.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0);	$r35 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;");	if $r35 != null goto $r36 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;");	$r71 = null;	goto [?= $r38 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.cache.default_cache_concurrency_strategy", $r34, $r71)];	$r38 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.cache.default_cache_concurrency_strategy", $r34, $r71);	$r39 = (org.hibernate.cache.spi.access.AccessType) $r38;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.cache.spi.access.AccessType defaultCacheAccessType> = $r39;	$r40 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r41 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r42 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.enable_specj_proprietary_syntax", $r40, $r41);	$r43 = (java.lang.Boolean) $r42;	$z4 = virtualinvoke $r43.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean specjProprietarySyntaxEnabled> = $z4;	$r44 = <javax.persistence.ConstraintMode: javax.persistence.ConstraintMode NO_CONSTRAINT>;	$r47 = virtualinvoke $r44.<javax.persistence.ConstraintMode: java.lang.String name()>();	$r45 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.default_constraint_mode", class "Ljava/lang/String;", null);	$r46 = (java.lang.String) $r45;	$z5 = virtualinvoke $r47.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r46);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean noConstraintByDefault> = $z5;	$r48 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>();	$r50 = interfaceinvoke $r48.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.implicit_naming_strategy");	$r49 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4;	specialinvoke $r49.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl,org.hibernate.boot.registry.selector.spi.StrategySelector)>(r0, r5);	$r51 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.util.concurrent.Callable)>(class "Lorg/hibernate/boot/model/naming/ImplicitNamingStrategy;", $r50, $r49);	$r52 = (org.hibernate.boot.model.naming.ImplicitNamingStrategy) $r51;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.ImplicitNamingStrategy implicitNamingStrategy> = $r52;	$r53 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>();	$r55 = interfaceinvoke $r53.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.physical_naming_strategy");	$r54 = <org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl INSTANCE>;	$r56 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.lang.Object)>(class "Lorg/hibernate/boot/model/naming/PhysicalNamingStrategy;", $r55, $r54);	$r57 = (org.hibernate.boot.model.naming.PhysicalNamingStrategy) $r56;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategy physicalNamingStrategy> = $r57;	$r58 = specialinvoke r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList resolveInitialSourceProcessOrdering(org.hibernate.engine.config.spi.ConfigurationService)>(r7);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList sourceProcessOrdering> = $r58;	$r59 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r60 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1);	$r61 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.id.new_generator_mappings", $r59, $r60);	$r62 = (java.lang.Boolean) $r61;	$z7 = virtualinvoke $r62.<java.lang.Boolean: boolean booleanValue()>();	if $z7 == 0 goto $r63 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter>;	$r70 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter>;	virtualinvoke $r70.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void disableLegacyFallback()>();	goto [?= $r64 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>];	$r64 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r65 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r66 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.use_nationalized_character_data", $r64, $r65);	$r67 = (java.lang.Boolean) $r66;	$z6 = virtualinvoke $r67.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean useNationalizedCharacterData> = $z6;	$r68 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.charset_name", class "Ljava/lang/String;", null);	$r69 = (java.lang.String) $r68;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.lang.String schemaCharset> = $r69;	return
;block_num 7