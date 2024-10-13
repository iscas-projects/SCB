(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3034 0)
(declare-sort var2936 0)
(declare-sort var933 0)
(declare-sort var405 0)
(declare-sort var1388 0)
(declare-sort var884 0)
(declare-sort var2812 0)
(declare-sort var2855 0)
(declare-sort var3581 0)
(declare-sort var2229 0)
(declare-sort var2579 0)
(declare-sort var2862 0)
(declare-sort var481 0)
(declare-sort var3993 0)
(declare-sort var340 0)
(declare-sort var522 0)
(declare-sort var493 0)
(declare-sort var3423 0)
(declare-sort var966 0)
(declare-sort var1722 0)
(declare-sort var24 0)
(declare-sort var1247 0)
(declare-sort var789 0)
(declare-sort var2307 0)
(declare-sort var1092 0)
(declare-sort var1441 0)
(declare-sort var1895 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2855!class ClassObject)
(declare-const var3581!class ClassObject)
(declare-const var1722!class ClassObject)
(declare-const String!class ClassObject)
(declare-const var2307!class ClassObject)
(declare-const var1895!class ClassObject)
(declare-fun <init>/-279557996 (var933) void)
(declare-fun cast-from-var3034-to-var933 (var3034) var933)
(declare-fun var405-init () var405)
(declare-fun <init>/-325640736 (var405) void)
(declare-fun basicTypeRegistrations/1175689288 (var3034) var405)
(declare-fun var1388-init () var1388)
(declare-fun <init>/-2021892866 (var1388) void)
(declare-fun idGenerationTypeInterpreter/1175689288 (var3034) var1388)
(declare-fun serviceRegistry/1175689288 (var3034) var2936)
(declare-fun var2812_getService/-972330729 (var2812 ClassObject) var884)
(declare-fun cast-from-var2936-to-var2812 (var2936) var2812)
(declare-fun cast-from-var884-to-var2855 (var884) var2855)
(declare-fun cast-from-var884-to-var3581 (var884) var3581)
(declare-fun var2229-init () var2229)
(declare-fun <init>/690337262 (var2229 var2936) void)
(declare-fun mappingDefaults/1175689288 (var3034) var2229)
(declare-fun var3581_getSettings/2034258353 (var3581) var2579)
(declare-fun var2862_determineMultiTenancyStrategy/-92423624 (var2579) var2862)
(declare-fun multiTenancyStrategy/1175689288 (var3034) var2862)
(declare-fun var340_valueOf/1602327315 (Bool) var340)
(declare-fun var3581_getSetting/183454356 (var3581 String var481 var933) var933)
(declare-fun cast-from-var340-to-var933 (var340) var933)
(declare-fun cast-from-var933-to-var340 (var933) var340)
(declare-fun booleanValue/-1820462562 (var340) Bool)
(declare-fun xmlMappingEnabled/1175689288 (var3034) Bool)
(declare-fun implicitDiscriminatorsForJoinedInheritanceSupported/1175689288 (var3034) Bool)
(declare-fun explicitDiscriminatorsForJoinedInheritanceSupported/1175689288 (var3034) Bool)
(declare-fun implicitlyForceDiscriminatorInSelect/1175689288 (var3034) Bool)
(declare-fun var522-init () var522)
(declare-fun <init>/291849780 (var522 var3034) void)
(declare-fun var493-init () var493)
(declare-fun <init>/277599635 (var493 var3034) void)
(declare-fun cast-from-var493-to-var481 (var493) var481)
(declare-fun cast-from-var3423-to-var933 (var3423) var933)
(declare-fun cast-from-var933-to-var3423 (var933) var3423)
(declare-fun cast-from-var522-to-var481 (var522) var481)
(declare-fun sharedCacheMode/1175689288 (var3034) var3423)
(declare-fun var966-init () var966)
(declare-fun <init>/263349490 (var966 var3034) void)
(declare-fun cast-from-var884-to-var1722 (var884) var1722)
(declare-fun var1722_getDefaultAccessType/486354524 (var1722) var24)
(declare-fun cast-from-var966-to-var481 (var966) var481)
(declare-fun cast-from-var24-to-var933 (var24) var933)
(declare-fun cast-from-var933-to-var24 (var933) var24)
(declare-fun defaultCacheAccessType/1175689288 (var3034) var24)
(declare-fun specjProprietarySyntaxEnabled/1175689288 (var3034) Bool)
(declare-fun name/-1552687968 (var1247) String)
(declare-fun var3581_getSetting/617429165 (var3581 String ClassObject var933) var933)
(declare-fun cast-from-var933-to-String (var933) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun noConstraintByDefault/1175689288 (var3034) Bool)
(declare-fun var2579_get/1088891777 (var2579 var933) var933)
(declare-fun cast-from-String-to-var933 (String) var933)
(declare-fun var789-init () var789)
(declare-fun <init>/804750413 (var789 var3034 var2855) void)
(declare-fun var2855_resolveDefaultableStrategy/799268158 (var2855 ClassObject var933 var1092) var933)
(declare-fun cast-from-var789-to-var1092 (var789) var1092)
(declare-fun cast-from-var933-to-var2307 (var933) var2307)
(declare-fun implicitNamingStrategy/1175689288 (var3034) var2307)
(declare-fun var2855_resolveDefaultableStrategy/-420100722 (var2855 ClassObject var933 var933) var933)
(declare-fun cast-from-var1441-to-var933 (var1441) var933)
(declare-fun cast-from-var933-to-var1895 (var933) var1895)
(declare-fun physicalNamingStrategy/1175689288 (var3034) var1895)
(declare-fun resolveInitialSourceProcessOrdering/-148199121 (var3034 var3581) var405)
(declare-fun sourceProcessOrdering/1175689288 (var3034) var405)
(declare-fun disableLegacyFallback/-75856393 (var1388) void)
(declare-fun useNationalizedCharacterData/1175689288 (var3034) Bool)
(declare-fun schemaCharset/1175689288 (var3034) String)
(declare-const null-var3034 var3034)
(declare-const null-var2936 var2936)
(declare-const var3993-BOOLEAN var481)
(declare-const var3423-UNSPECIFIED var3423)
(declare-const null-var884 var884)
(declare-const var1247-NO_CONSTRAINT var1247)
(declare-const null-var933 var933)
(declare-const var1441-INSTANCE var1441)
(declare-const var2700 var3034) ; Statement: r0 := @this: org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl 
(assert (not (= var2700 null-var3034)))
(declare-const var1969 var2936) ; Statement: r3 := @parameter0: org.hibernate.boot.registry.StandardServiceRegistry 
(assert (not (= var1969 null-var2936)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3034-to-var933 var2700))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2700!1 var3034)
(define-const var735 var405 var405-init) ; Statement: $r1 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var735)) ; Statement: specialinvoke $r1.<java.util.ArrayList: void <init>()>() 

(declare-const var735!1 var405)
(declare-const var2700!2 var3034)
(assert (not (= var2700!2 null-var3034)))
(assert (= (basicTypeRegistrations/1175689288 var2700!2) var735!1)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList basicTypeRegistrations> = $r1 
(define-const var521 var1388 var1388-init) ; Statement: $r2 = new org.hibernate.boot.internal.IdGeneratorInterpreterImpl 
(assert true)
;(assert (<init>/-2021892866 var521)) ; Statement: specialinvoke $r2.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void <init>()>() 

(declare-const var521!1 var1388)
(declare-const var2700!3 var3034)
(assert (not (= var2700!3 null-var3034)))
(assert (= (idGenerationTypeInterpreter/1175689288 var2700!3) var521!1)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> = $r2 
(declare-const var2700!4 var3034)
(assert (not (= var2700!4 null-var3034)))
(assert (= (serviceRegistry/1175689288 var2700!4) var1969)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.registry.StandardServiceRegistry serviceRegistry> = r3 
(define-const var2606 var884 (var2812_getService/-972330729 (cast-from-var2936-to-var2812 var1969) var2855!class)) ; Statement: $r4 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/selector/spi/StrategySelector;") 
(define-const var2227 var2855 (cast-from-var884-to-var2855 var2606)) ; Statement: r5 = (org.hibernate.boot.registry.selector.spi.StrategySelector) $r4 
(define-const var2842 var884 (var2812_getService/-972330729 (cast-from-var2936-to-var2812 var1969) var3581!class)) ; Statement: $r6 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;") 
(define-const var1835 var3581 (cast-from-var884-to-var3581 var2842)) ; Statement: r7 = (org.hibernate.engine.config.spi.ConfigurationService) $r6 
(define-const var991 var2229 var2229-init) ; Statement: $r8 = new org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl 
(assert true)
;(assert (<init>/690337262 var991 var1969)) ; Statement: specialinvoke $r8.<org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl: void <init>(org.hibernate.boot.registry.StandardServiceRegistry)>(r3) 

(declare-const var991!1 var2229)
(declare-const var1969!1 var2936)
(declare-const var2700!5 var3034)
(assert (not (= var2700!5 null-var3034)))
(assert (= (mappingDefaults/1175689288 var2700!5) var991!1)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl mappingDefaults> = $r8 
(define-const var1193 var2579 (var3581_getSettings/2034258353 var1835)) ; Statement: $r9 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>() 
(define-const var3869 var2862 (var2862_determineMultiTenancyStrategy/-92423624 var1193)) ; Statement: $r10 = staticinvoke <org.hibernate.MultiTenancyStrategy: org.hibernate.MultiTenancyStrategy determineMultiTenancyStrategy(java.util.Map)>($r9) 
(declare-const var2700!6 var3034)
(assert (not (= var2700!6 null-var3034)))
(assert (= (multiTenancyStrategy/1175689288 var2700!6) var3869)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.MultiTenancyStrategy multiTenancyStrategy> = $r10 
(define-const var2329 var481 var3993-BOOLEAN) ; Statement: $r11 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var1517 var340 (var340_valueOf/1602327315 (ite (= 1 1) true false))) ; Statement: $r12 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1) 
(define-const var1855 var933 (var3581_getSetting/183454356 var1835 "hibernate.xml_mapping_enabled" var2329 (cast-from-var340-to-var933 var1517))) ; Statement: $r13 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.xml_mapping_enabled", $r11, $r12) 
(define-const var654 var340 (cast-from-var933-to-var340 var1855)) ; Statement: $r14 = (java.lang.Boolean) $r13 
(assert true)
(define-const var3343 Bool (booleanValue/-1820462562 var654)) ; Statement: $z0 = virtualinvoke $r14.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var2700!7 var3034)
(assert (not (= var2700!7 null-var3034)))
(assert (= (xmlMappingEnabled/1175689288 var2700!7) var3343)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean xmlMappingEnabled> = $z0 
(define-const var3459 var481 var3993-BOOLEAN) ; Statement: $r15 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var227 var340 (var340_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r16 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var4 var933 (var3581_getSetting/183454356 var1835 "hibernate.discriminator.implicit_for_joined" var3459 (cast-from-var340-to-var933 var227))) ; Statement: $r17 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.implicit_for_joined", $r15, $r16) 
(define-const var890 var340 (cast-from-var933-to-var340 var4)) ; Statement: $r18 = (java.lang.Boolean) $r17 
(assert true)
(define-const var2263 Bool (booleanValue/-1820462562 var890)) ; Statement: $z1 = virtualinvoke $r18.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var2700!8 var3034)
(assert (not (= var2700!8 null-var3034)))
(assert (= (implicitDiscriminatorsForJoinedInheritanceSupported/1175689288 var2700!8) var2263)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitDiscriminatorsForJoinedInheritanceSupported> = $z1 
(define-const var250 var481 var3993-BOOLEAN) ; Statement: $r19 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var3360 var340 (var340_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r20 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var2537 var933 (var3581_getSetting/183454356 var1835 "hibernate.discriminator.ignore_explicit_for_joined" var250 (cast-from-var340-to-var933 var3360))) ; Statement: $r21 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.ignore_explicit_for_joined", $r19, $r20) 
(define-const var2296 var340 (cast-from-var933-to-var340 var2537)) ; Statement: $r22 = (java.lang.Boolean) $r21 
(assert true)
(define-const var3107 Bool (booleanValue/-1820462562 var2296)) ; Statement: $z2 = virtualinvoke $r22.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z2 != 0 goto $z8 = 0 
(assert (not (= (ite var3107 1 0) 0))) ; Cond: $z2 != 0 
(define-const var586 Bool (ite (= 1 0) true false)) ; Statement: $z8 = 0 
(assert true) ; Non Conditional
(declare-const var2700!9 var3034)
(assert (not (= var2700!9 null-var3034)))
(assert (= (explicitDiscriminatorsForJoinedInheritanceSupported/1175689288 var2700!9) var586)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean explicitDiscriminatorsForJoinedInheritanceSupported> = $z8 
(define-const var1415 var481 var3993-BOOLEAN) ; Statement: $r23 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var1649 var340 (var340_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r24 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var464 var933 (var3581_getSetting/183454356 var1835 "hibernate.discriminator.force_in_select" var1415 (cast-from-var340-to-var933 var1649))) ; Statement: $r25 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.force_in_select", $r23, $r24) 
(define-const var3658 var340 (cast-from-var933-to-var340 var464)) ; Statement: $r26 = (java.lang.Boolean) $r25 
(assert true)
(define-const var3230 Bool (booleanValue/-1820462562 var3658)) ; Statement: $z3 = virtualinvoke $r26.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var2700!10 var3034)
(assert (not (= var2700!10 null-var3034)))
(assert (= (implicitlyForceDiscriminatorInSelect/1175689288 var2700!10) var3230)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitlyForceDiscriminatorInSelect> = $z3 
(define-const var2222 var522 var522-init) ; Statement: $r27 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1 
(assert true)
;(assert (<init>/291849780 var2222 var2700!10)) ; Statement: specialinvoke $r27.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0) 

(declare-const var2222!1 var522)
(declare-const var2700!11 var3034)
(define-const var1777 var493 var493-init) ; Statement: $r28 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2 
(assert true)
;(assert (<init>/277599635 var1777 var2700!11)) ; Statement: specialinvoke $r28.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0) 

(declare-const var1777!1 var493)
(declare-const var2700!12 var3034)
(define-const var2502 var3423 var3423-UNSPECIFIED) ; Statement: $r29 = <javax.persistence.SharedCacheMode: javax.persistence.SharedCacheMode UNSPECIFIED> 
(define-const var3753 var933 (var3581_getSetting/183454356 var1835 "jakarta.persistence.sharedCache.mode" (cast-from-var493-to-var481 var1777!1) (cast-from-var3423-to-var933 var2502))) ; Statement: $r30 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("jakarta.persistence.sharedCache.mode", $r28, $r29) 
(define-const var816 var3423 (cast-from-var933-to-var3423 var3753)) ; Statement: $r31 = (javax.persistence.SharedCacheMode) $r30 
(define-const var1922 var933 (var3581_getSetting/183454356 var1835 "javax.persistence.sharedCache.mode" (cast-from-var522-to-var481 var2222!1) (cast-from-var3423-to-var933 var816))) ; Statement: $r32 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("javax.persistence.sharedCache.mode", $r27, $r31) 
(define-const var666 var3423 (cast-from-var933-to-var3423 var1922)) ; Statement: $r33 = (javax.persistence.SharedCacheMode) $r32 
(declare-const var2700!13 var3034)
(assert (not (= var2700!13 null-var3034)))
(assert (= (sharedCacheMode/1175689288 var2700!13) var666)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: javax.persistence.SharedCacheMode sharedCacheMode> = $r33 
(define-const var2564 var966 var966-init) ; Statement: $r34 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3 
(assert true)
;(assert (<init>/263349490 var2564 var2700!13)) ; Statement: specialinvoke $r34.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0) 

(declare-const var2564!1 var966)
(declare-const var2700!14 var3034)
(define-const var96 var884 (var2812_getService/-972330729 (cast-from-var2936-to-var2812 var1969!1) var1722!class)) ; Statement: $r35 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;") 
 ; Statement: if $r35 != null goto $r36 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;") 
(assert (not (= var96 null-var884))) ; Cond: $r35 != null 
(define-const var1465 var884 (var2812_getService/-972330729 (cast-from-var2936-to-var2812 var1969!1) var1722!class)) ; Statement: $r36 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;") 
(define-const var3584 var1722 (cast-from-var884-to-var1722 var1465)) ; Statement: $r37 = (org.hibernate.cache.spi.RegionFactory) $r36 
(define-const var3617 var24 (var1722_getDefaultAccessType/486354524 var3584)) ; Statement: $r71 = interfaceinvoke $r37.<org.hibernate.cache.spi.RegionFactory: org.hibernate.cache.spi.access.AccessType getDefaultAccessType()>() 
(assert true) ; Non Conditional
(define-const var3864 var933 (var3581_getSetting/183454356 var1835 "hibernate.cache.default_cache_concurrency_strategy" (cast-from-var966-to-var481 var2564!1) (cast-from-var24-to-var933 var3617))) ; Statement: $r38 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.cache.default_cache_concurrency_strategy", $r34, $r71) 
(define-const var3525 var24 (cast-from-var933-to-var24 var3864)) ; Statement: $r39 = (org.hibernate.cache.spi.access.AccessType) $r38 
(declare-const var2700!15 var3034)
(assert (not (= var2700!15 null-var3034)))
(assert (= (defaultCacheAccessType/1175689288 var2700!15) var3525)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.cache.spi.access.AccessType defaultCacheAccessType> = $r39 
(define-const var2483 var481 var3993-BOOLEAN) ; Statement: $r40 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var2607 var340 (var340_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r41 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var3208 var933 (var3581_getSetting/183454356 var1835 "hibernate.enable_specj_proprietary_syntax" var2483 (cast-from-var340-to-var933 var2607))) ; Statement: $r42 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.enable_specj_proprietary_syntax", $r40, $r41) 
(define-const var941 var340 (cast-from-var933-to-var340 var3208)) ; Statement: $r43 = (java.lang.Boolean) $r42 
(assert true)
(define-const var1467 Bool (booleanValue/-1820462562 var941)) ; Statement: $z4 = virtualinvoke $r43.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var2700!16 var3034)
(assert (not (= var2700!16 null-var3034)))
(assert (= (specjProprietarySyntaxEnabled/1175689288 var2700!16) var1467)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean specjProprietarySyntaxEnabled> = $z4 
(define-const var3412 var1247 var1247-NO_CONSTRAINT) ; Statement: $r44 = <javax.persistence.ConstraintMode: javax.persistence.ConstraintMode NO_CONSTRAINT> 
(assert true)
(define-const var3331 String (name/-1552687968 var3412)) ; Statement: $r47 = virtualinvoke $r44.<javax.persistence.ConstraintMode: java.lang.String name()>() 
(define-const var2935 var933 (var3581_getSetting/617429165 var1835 "hibernate.hbm2ddl.default_constraint_mode" String!class null-var933)) ; Statement: $r45 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.default_constraint_mode", class "Ljava/lang/String;", null) 
(define-const var3775 String (cast-from-var933-to-String var2935)) ; Statement: $r46 = (java.lang.String) $r45 
(assert true)
(define-const var2232 Bool (equalsIgnoreCase/-92311102 var3331 var3775)) ; Statement: $z5 = virtualinvoke $r47.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r46) 
(declare-const var2700!17 var3034)
(assert (not (= var2700!17 null-var3034)))
(assert (= (noConstraintByDefault/1175689288 var2700!17) var2232)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean noConstraintByDefault> = $z5 
(define-const var3901 var2579 (var3581_getSettings/2034258353 var1835)) ; Statement: $r48 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>() 
(define-const var1258 var933 (var2579_get/1088891777 var3901 (cast-from-String-to-var933 "hibernate.implicit_naming_strategy"))) ; Statement: $r50 = interfaceinvoke $r48.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.implicit_naming_strategy") 
(define-const var161 var789 var789-init) ; Statement: $r49 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4 
(assert true)
;(assert (<init>/804750413 var161 var2700!17 var2227)) ; Statement: specialinvoke $r49.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl,org.hibernate.boot.registry.selector.spi.StrategySelector)>(r0, r5) 

(declare-const var161!1 var789)
(declare-const var2700!18 var3034)
(declare-const var2227!1 var2855)
(define-const var1520 var933 (var2855_resolveDefaultableStrategy/799268158 var2227!1 var2307!class var1258 (cast-from-var789-to-var1092 var161!1))) ; Statement: $r51 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.util.concurrent.Callable)>(class "Lorg/hibernate/boot/model/naming/ImplicitNamingStrategy;", $r50, $r49) 
(define-const var3637 var2307 (cast-from-var933-to-var2307 var1520)) ; Statement: $r52 = (org.hibernate.boot.model.naming.ImplicitNamingStrategy) $r51 
(declare-const var2700!19 var3034)
(assert (not (= var2700!19 null-var3034)))
(assert (= (implicitNamingStrategy/1175689288 var2700!19) var3637)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.ImplicitNamingStrategy implicitNamingStrategy> = $r52 
(define-const var2038 var2579 (var3581_getSettings/2034258353 var1835)) ; Statement: $r53 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>() 
(define-const var3284 var933 (var2579_get/1088891777 var2038 (cast-from-String-to-var933 "hibernate.physical_naming_strategy"))) ; Statement: $r55 = interfaceinvoke $r53.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.physical_naming_strategy") 
(define-const var1645 var1441 var1441-INSTANCE) ; Statement: $r54 = <org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl INSTANCE> 
(define-const var2562 var933 (var2855_resolveDefaultableStrategy/-420100722 var2227!1 var1895!class var3284 (cast-from-var1441-to-var933 var1645))) ; Statement: $r56 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.lang.Object)>(class "Lorg/hibernate/boot/model/naming/PhysicalNamingStrategy;", $r55, $r54) 
(define-const var1749 var1895 (cast-from-var933-to-var1895 var2562)) ; Statement: $r57 = (org.hibernate.boot.model.naming.PhysicalNamingStrategy) $r56 
(declare-const var2700!20 var3034)
(assert (not (= var2700!20 null-var3034)))
(assert (= (physicalNamingStrategy/1175689288 var2700!20) var1749)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategy physicalNamingStrategy> = $r57 
(assert true)
(define-const var524 var405 (resolveInitialSourceProcessOrdering/-148199121 var2700!20 var1835)) ; Statement: $r58 = specialinvoke r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList resolveInitialSourceProcessOrdering(org.hibernate.engine.config.spi.ConfigurationService)>(r7) 
(declare-const var2700!21 var3034)
(assert (not (= var2700!21 null-var3034)))
(assert (= (sourceProcessOrdering/1175689288 var2700!21) var524)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList sourceProcessOrdering> = $r58 
(define-const var442 var481 var3993-BOOLEAN) ; Statement: $r59 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var22 var340 (var340_valueOf/1602327315 (ite (= 1 1) true false))) ; Statement: $r60 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1) 
(define-const var1671 var933 (var3581_getSetting/183454356 var1835 "hibernate.id.new_generator_mappings" var442 (cast-from-var340-to-var933 var22))) ; Statement: $r61 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.id.new_generator_mappings", $r59, $r60) 
(define-const var1633 var340 (cast-from-var933-to-var340 var1671)) ; Statement: $r62 = (java.lang.Boolean) $r61 
(assert true)
(define-const var2605 Bool (booleanValue/-1820462562 var1633)) ; Statement: $z7 = virtualinvoke $r62.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z7 == 0 goto $r63 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> 
(assert (not (= (ite var2605 1 0) 0))) ; Negate: Cond: $z7 == 0  
(define-const var3680 var1388 (idGenerationTypeInterpreter/1175689288 var2700!21)) ; Statement: $r70 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> 
(assert true)
;(assert (disableLegacyFallback/-75856393 var3680)) ; Statement: virtualinvoke $r70.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void disableLegacyFallback()>() 

(declare-const var3680!1 var1388)
 ; Statement: goto [?= $r64 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>] 
(assert true) ; Non Conditional
(define-const var1339 var481 var3993-BOOLEAN) ; Statement: $r64 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var1242 var340 (var340_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r65 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var2290 var933 (var3581_getSetting/183454356 var1835 "hibernate.use_nationalized_character_data" var1339 (cast-from-var340-to-var933 var1242))) ; Statement: $r66 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.use_nationalized_character_data", $r64, $r65) 
(define-const var2845 var340 (cast-from-var933-to-var340 var2290)) ; Statement: $r67 = (java.lang.Boolean) $r66 
(assert true)
(define-const var2571 Bool (booleanValue/-1820462562 var2845)) ; Statement: $z6 = virtualinvoke $r67.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var2700!22 var3034)
(assert (not (= var2700!22 null-var3034)))
(assert (= (useNationalizedCharacterData/1175689288 var2700!22) var2571)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean useNationalizedCharacterData> = $z6 
(define-const var1303 var933 (var3581_getSetting/617429165 var1835 "hibernate.hbm2ddl.charset_name" String!class null-var933)) ; Statement: $r68 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.charset_name", class "Ljava/lang/String;", null) 
(define-const var1882 String (cast-from-var933-to-String var1303)) ; Statement: $r69 = (java.lang.String) $r68 
(declare-const var2700!23 var3034)
(assert (not (= var2700!23 null-var3034)))
(assert (= (schemaCharset/1175689288 var2700!23) var1882)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.lang.String schemaCharset> = $r69 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3034-to-var933=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.lang.Object), var405-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), basicTypeRegistrations/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.util.ArrayList), var1388-init=([], org.hibernate.boot.internal.IdGeneratorInterpreterImpl), <init>/-2021892866=([org.hibernate.boot.internal.IdGeneratorInterpreterImpl], void), idGenerationTypeInterpreter/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.internal.IdGeneratorInterpreterImpl), serviceRegistry/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.registry.StandardServiceRegistry), var2812_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var2936-to-var2812=([org.hibernate.boot.registry.StandardServiceRegistry], org.hibernate.service.ServiceRegistry), cast-from-var884-to-var2855=([org.hibernate.service.Service], org.hibernate.boot.registry.selector.spi.StrategySelector), cast-from-var884-to-var3581=([org.hibernate.service.Service], org.hibernate.engine.config.spi.ConfigurationService), var2229-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl), <init>/690337262=([org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl, org.hibernate.boot.registry.StandardServiceRegistry], void), mappingDefaults/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl), var3581_getSettings/2034258353=([org.hibernate.engine.config.spi.ConfigurationService], java.util.Map), var2862_determineMultiTenancyStrategy/-92423624=([java.util.Map], org.hibernate.MultiTenancyStrategy), multiTenancyStrategy/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.MultiTenancyStrategy), var340_valueOf/1602327315=([boolean], java.lang.Boolean), var3581_getSetting/183454356=([org.hibernate.engine.config.spi.ConfigurationService, java.lang.String, org.hibernate.engine.config.spi.ConfigurationService$Converter, java.lang.Object], java.lang.Object), cast-from-var340-to-var933=([java.lang.Boolean], java.lang.Object), cast-from-var933-to-var340=([java.lang.Object], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), xmlMappingEnabled/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), implicitDiscriminatorsForJoinedInheritanceSupported/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), explicitDiscriminatorsForJoinedInheritanceSupported/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), implicitlyForceDiscriminatorInSelect/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), var522-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1), <init>/291849780=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], void), var493-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2), <init>/277599635=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], void), cast-from-var493-to-var481=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2], org.hibernate.engine.config.spi.ConfigurationService$Converter), cast-from-var3423-to-var933=([javax.persistence.SharedCacheMode], java.lang.Object), cast-from-var933-to-var3423=([java.lang.Object], javax.persistence.SharedCacheMode), cast-from-var522-to-var481=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1], org.hibernate.engine.config.spi.ConfigurationService$Converter), sharedCacheMode/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], javax.persistence.SharedCacheMode), var966-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3), <init>/263349490=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], void), cast-from-var884-to-var1722=([org.hibernate.service.Service], org.hibernate.cache.spi.RegionFactory), var1722_getDefaultAccessType/486354524=([org.hibernate.cache.spi.RegionFactory], org.hibernate.cache.spi.access.AccessType), cast-from-var966-to-var481=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3], org.hibernate.engine.config.spi.ConfigurationService$Converter), cast-from-var24-to-var933=([org.hibernate.cache.spi.access.AccessType], java.lang.Object), cast-from-var933-to-var24=([java.lang.Object], org.hibernate.cache.spi.access.AccessType), defaultCacheAccessType/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.cache.spi.access.AccessType), specjProprietarySyntaxEnabled/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), name/-1552687968=([javax.persistence.ConstraintMode], java.lang.String), var3581_getSetting/617429165=([org.hibernate.engine.config.spi.ConfigurationService, java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object), cast-from-var933-to-String=([java.lang.Object], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), noConstraintByDefault/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), var2579_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var933=([java.lang.String], java.lang.Object), var789-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4), <init>/804750413=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl, org.hibernate.boot.registry.selector.spi.StrategySelector], void), var2855_resolveDefaultableStrategy/799268158=([org.hibernate.boot.registry.selector.spi.StrategySelector, java.lang.Class, java.lang.Object, java.util.concurrent.Callable], java.lang.Object), cast-from-var789-to-var1092=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4], java.util.concurrent.Callable), cast-from-var933-to-var2307=([java.lang.Object], org.hibernate.boot.model.naming.ImplicitNamingStrategy), implicitNamingStrategy/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.model.naming.ImplicitNamingStrategy), var2855_resolveDefaultableStrategy/-420100722=([org.hibernate.boot.registry.selector.spi.StrategySelector, java.lang.Class, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var1441-to-var933=([org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl], java.lang.Object), cast-from-var933-to-var1895=([java.lang.Object], org.hibernate.boot.model.naming.PhysicalNamingStrategy), physicalNamingStrategy/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.model.naming.PhysicalNamingStrategy), resolveInitialSourceProcessOrdering/-148199121=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl, org.hibernate.engine.config.spi.ConfigurationService], java.util.ArrayList), sourceProcessOrdering/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.util.ArrayList), disableLegacyFallback/-75856393=([org.hibernate.boot.internal.IdGeneratorInterpreterImpl], void), useNationalizedCharacterData/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), schemaCharset/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.lang.String)}
; {var3034=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl, var2700=r0, var2936=org.hibernate.boot.registry.StandardServiceRegistry, var1969=r3, var933=java.lang.Object, var405=java.util.ArrayList, var735=$r1, var1388=org.hibernate.boot.internal.IdGeneratorInterpreterImpl, var521=$r2, var884=org.hibernate.service.Service, var2812=org.hibernate.service.ServiceRegistry, var2855=org.hibernate.boot.registry.selector.spi.StrategySelector, var2606=$r4, var2227=r5, var3581=org.hibernate.engine.config.spi.ConfigurationService, var2842=$r6, var1835=r7, var2229=org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl, var991=$r8, var2579=java.util.Map, var1193=$r9, var2862=org.hibernate.MultiTenancyStrategy, var3869=$r10, var481=org.hibernate.engine.config.spi.ConfigurationService$Converter, var3993=org.hibernate.engine.config.spi.StandardConverters, var2329=$r11, var340=java.lang.Boolean, var1517=$r12, var1855=$r13, var654=$r14, var3343=$z0, var3459=$r15, var227=$r16, var4=$r17, var890=$r18, var2263=$z1, var250=$r19, var3360=$r20, var2537=$r21, var2296=$r22, var3107=$z2, var586=$z8, var1415=$r23, var1649=$r24, var464=$r25, var3658=$r26, var3230=$z3, var522=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1, var2222=$r27, var493=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2, var1777=$r28, var3423=javax.persistence.SharedCacheMode, var2502=$r29, var3753=$r30, var816=$r31, var1922=$r32, var666=$r33, var966=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3, var2564=$r34, var1722=org.hibernate.cache.spi.RegionFactory, var96=$r35, var1465=$r36, var3584=$r37, var24=org.hibernate.cache.spi.access.AccessType, var3617=$r71, var3864=$r38, var3525=$r39, var2483=$r40, var2607=$r41, var3208=$r42, var941=$r43, var1467=$z4, var1247=javax.persistence.ConstraintMode, var3412=$r44, var3331=$r47, var2935=$r45, var3775=$r46, var2232=$z5, var3901=$r48, var1258=$r50, var789=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4, var161=$r49, var2307=org.hibernate.boot.model.naming.ImplicitNamingStrategy, var1092=java.util.concurrent.Callable, var1520=$r51, var3637=$r52, var2038=$r53, var3284=$r55, var1441=org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl, var1645=$r54, var1895=org.hibernate.boot.model.naming.PhysicalNamingStrategy, var2562=$r56, var1749=$r57, var524=$r58, var442=$r59, var22=$r60, var1671=$r61, var1633=$r62, var2605=$z7, var3680=$r70, var1339=$r64, var1242=$r65, var2290=$r66, var2845=$r67, var2571=$z6, var1303=$r68, var1882=$r69}
; {org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl=var3034, r0=var2700, org.hibernate.boot.registry.StandardServiceRegistry=var2936, r3=var1969, java.lang.Object=var933, java.util.ArrayList=var405, $r1=var735, org.hibernate.boot.internal.IdGeneratorInterpreterImpl=var1388, $r2=var521, org.hibernate.service.Service=var884, org.hibernate.service.ServiceRegistry=var2812, org.hibernate.boot.registry.selector.spi.StrategySelector=var2855, $r4=var2606, r5=var2227, org.hibernate.engine.config.spi.ConfigurationService=var3581, $r6=var2842, r7=var1835, org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl=var2229, $r8=var991, java.util.Map=var2579, $r9=var1193, org.hibernate.MultiTenancyStrategy=var2862, $r10=var3869, org.hibernate.engine.config.spi.ConfigurationService$Converter=var481, org.hibernate.engine.config.spi.StandardConverters=var3993, $r11=var2329, java.lang.Boolean=var340, $r12=var1517, $r13=var1855, $r14=var654, $z0=var3343, $r15=var3459, $r16=var227, $r17=var4, $r18=var890, $z1=var2263, $r19=var250, $r20=var3360, $r21=var2537, $r22=var2296, $z2=var3107, $z8=var586, $r23=var1415, $r24=var1649, $r25=var464, $r26=var3658, $z3=var3230, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1=var522, $r27=var2222, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2=var493, $r28=var1777, javax.persistence.SharedCacheMode=var3423, $r29=var2502, $r30=var3753, $r31=var816, $r32=var1922, $r33=var666, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3=var966, $r34=var2564, org.hibernate.cache.spi.RegionFactory=var1722, $r35=var96, $r36=var1465, $r37=var3584, org.hibernate.cache.spi.access.AccessType=var24, $r71=var3617, $r38=var3864, $r39=var3525, $r40=var2483, $r41=var2607, $r42=var3208, $r43=var941, $z4=var1467, javax.persistence.ConstraintMode=var1247, $r44=var3412, $r47=var3331, $r45=var2935, $r46=var3775, $z5=var2232, $r48=var3901, $r50=var1258, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4=var789, $r49=var161, org.hibernate.boot.model.naming.ImplicitNamingStrategy=var2307, java.util.concurrent.Callable=var1092, $r51=var1520, $r52=var3637, $r53=var2038, $r55=var3284, org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl=var1441, $r54=var1645, org.hibernate.boot.model.naming.PhysicalNamingStrategy=var1895, $r56=var2562, $r57=var1749, $r58=var524, $r59=var442, $r60=var22, $r61=var1671, $r62=var1633, $z7=var2605, $r70=var3680, $r64=var1339, $r65=var1242, $r66=var2290, $r67=var2845, $z6=var2571, $r68=var1303, $r69=var1882}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl;	r3 := @parameter0: org.hibernate.boot.registry.StandardServiceRegistry;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.ArrayList;	specialinvoke $r1.<java.util.ArrayList: void <init>()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList basicTypeRegistrations> = $r1;	$r2 = new org.hibernate.boot.internal.IdGeneratorInterpreterImpl;	specialinvoke $r2.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void <init>()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> = $r2;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.registry.StandardServiceRegistry serviceRegistry> = r3;	$r4 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/selector/spi/StrategySelector;");	r5 = (org.hibernate.boot.registry.selector.spi.StrategySelector) $r4;	$r6 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;");	r7 = (org.hibernate.engine.config.spi.ConfigurationService) $r6;	$r8 = new org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl;	specialinvoke $r8.<org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl: void <init>(org.hibernate.boot.registry.StandardServiceRegistry)>(r3);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl mappingDefaults> = $r8;	$r9 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>();	$r10 = staticinvoke <org.hibernate.MultiTenancyStrategy: org.hibernate.MultiTenancyStrategy determineMultiTenancyStrategy(java.util.Map)>($r9);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.MultiTenancyStrategy multiTenancyStrategy> = $r10;	$r11 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r12 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1);	$r13 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.xml_mapping_enabled", $r11, $r12);	$r14 = (java.lang.Boolean) $r13;	$z0 = virtualinvoke $r14.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean xmlMappingEnabled> = $z0;	$r15 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r16 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r17 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.implicit_for_joined", $r15, $r16);	$r18 = (java.lang.Boolean) $r17;	$z1 = virtualinvoke $r18.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitDiscriminatorsForJoinedInheritanceSupported> = $z1;	$r19 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r20 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r21 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.ignore_explicit_for_joined", $r19, $r20);	$r22 = (java.lang.Boolean) $r21;	$z2 = virtualinvoke $r22.<java.lang.Boolean: boolean booleanValue()>();	if $z2 != 0 goto $z8 = 0;	$z8 = 0;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean explicitDiscriminatorsForJoinedInheritanceSupported> = $z8;	$r23 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r24 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r25 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.force_in_select", $r23, $r24);	$r26 = (java.lang.Boolean) $r25;	$z3 = virtualinvoke $r26.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitlyForceDiscriminatorInSelect> = $z3;	$r27 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1;	specialinvoke $r27.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0);	$r28 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2;	specialinvoke $r28.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0);	$r29 = <javax.persistence.SharedCacheMode: javax.persistence.SharedCacheMode UNSPECIFIED>;	$r30 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("jakarta.persistence.sharedCache.mode", $r28, $r29);	$r31 = (javax.persistence.SharedCacheMode) $r30;	$r32 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("javax.persistence.sharedCache.mode", $r27, $r31);	$r33 = (javax.persistence.SharedCacheMode) $r32;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: javax.persistence.SharedCacheMode sharedCacheMode> = $r33;	$r34 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3;	specialinvoke $r34.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0);	$r35 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;");	if $r35 != null goto $r36 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;");	$r36 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;");	$r37 = (org.hibernate.cache.spi.RegionFactory) $r36;	$r71 = interfaceinvoke $r37.<org.hibernate.cache.spi.RegionFactory: org.hibernate.cache.spi.access.AccessType getDefaultAccessType()>();	$r38 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.cache.default_cache_concurrency_strategy", $r34, $r71);	$r39 = (org.hibernate.cache.spi.access.AccessType) $r38;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.cache.spi.access.AccessType defaultCacheAccessType> = $r39;	$r40 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r41 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r42 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.enable_specj_proprietary_syntax", $r40, $r41);	$r43 = (java.lang.Boolean) $r42;	$z4 = virtualinvoke $r43.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean specjProprietarySyntaxEnabled> = $z4;	$r44 = <javax.persistence.ConstraintMode: javax.persistence.ConstraintMode NO_CONSTRAINT>;	$r47 = virtualinvoke $r44.<javax.persistence.ConstraintMode: java.lang.String name()>();	$r45 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.default_constraint_mode", class "Ljava/lang/String;", null);	$r46 = (java.lang.String) $r45;	$z5 = virtualinvoke $r47.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r46);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean noConstraintByDefault> = $z5;	$r48 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>();	$r50 = interfaceinvoke $r48.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.implicit_naming_strategy");	$r49 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4;	specialinvoke $r49.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl,org.hibernate.boot.registry.selector.spi.StrategySelector)>(r0, r5);	$r51 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.util.concurrent.Callable)>(class "Lorg/hibernate/boot/model/naming/ImplicitNamingStrategy;", $r50, $r49);	$r52 = (org.hibernate.boot.model.naming.ImplicitNamingStrategy) $r51;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.ImplicitNamingStrategy implicitNamingStrategy> = $r52;	$r53 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>();	$r55 = interfaceinvoke $r53.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.physical_naming_strategy");	$r54 = <org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl INSTANCE>;	$r56 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.lang.Object)>(class "Lorg/hibernate/boot/model/naming/PhysicalNamingStrategy;", $r55, $r54);	$r57 = (org.hibernate.boot.model.naming.PhysicalNamingStrategy) $r56;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategy physicalNamingStrategy> = $r57;	$r58 = specialinvoke r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList resolveInitialSourceProcessOrdering(org.hibernate.engine.config.spi.ConfigurationService)>(r7);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList sourceProcessOrdering> = $r58;	$r59 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r60 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1);	$r61 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.id.new_generator_mappings", $r59, $r60);	$r62 = (java.lang.Boolean) $r61;	$z7 = virtualinvoke $r62.<java.lang.Boolean: boolean booleanValue()>();	if $z7 == 0 goto $r63 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter>;	$r70 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter>;	virtualinvoke $r70.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void disableLegacyFallback()>();	goto [?= $r64 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>];	$r64 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r65 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r66 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.use_nationalized_character_data", $r64, $r65);	$r67 = (java.lang.Boolean) $r66;	$z6 = virtualinvoke $r67.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean useNationalizedCharacterData> = $z6;	$r68 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.charset_name", class "Ljava/lang/String;", null);	$r69 = (java.lang.String) $r68;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.lang.String schemaCharset> = $r69;	return
;block_num 7