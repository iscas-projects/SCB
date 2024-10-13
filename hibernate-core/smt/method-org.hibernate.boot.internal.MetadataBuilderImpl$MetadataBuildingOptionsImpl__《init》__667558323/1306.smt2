(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1938 0)
(declare-sort var2085 0)
(declare-sort var1727 0)
(declare-sort var1608 0)
(declare-sort var3997 0)
(declare-sort var968 0)
(declare-sort var3535 0)
(declare-sort var14 0)
(declare-sort var1091 0)
(declare-sort var1035 0)
(declare-sort var1121 0)
(declare-sort var2488 0)
(declare-sort var3013 0)
(declare-sort var310 0)
(declare-sort var731 0)
(declare-sort var1884 0)
(declare-sort var306 0)
(declare-sort var3559 0)
(declare-sort var2280 0)
(declare-sort var481 0)
(declare-sort var998 0)
(declare-sort var1128 0)
(declare-sort var1777 0)
(declare-sort var797 0)
(declare-sort var3654 0)
(declare-sort var1603 0)
(declare-sort var1361 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var14!class ClassObject)
(declare-const var1091!class ClassObject)
(declare-const var481!class ClassObject)
(declare-const String!class ClassObject)
(declare-const var797!class ClassObject)
(declare-const var1361!class ClassObject)
(declare-fun <init>/-279557996 (var1727) void)
(declare-fun cast-from-var1938-to-var1727 (var1938) var1727)
(declare-fun var1608-init () var1608)
(declare-fun <init>/-325640736 (var1608) void)
(declare-fun basicTypeRegistrations/1175689288 (var1938) var1608)
(declare-fun var3997-init () var3997)
(declare-fun <init>/-2021892866 (var3997) void)
(declare-fun idGenerationTypeInterpreter/1175689288 (var1938) var3997)
(declare-fun serviceRegistry/1175689288 (var1938) var2085)
(declare-fun var3535_getService/-972330729 (var3535 ClassObject) var968)
(declare-fun cast-from-var2085-to-var3535 (var2085) var3535)
(declare-fun cast-from-var968-to-var14 (var968) var14)
(declare-fun cast-from-var968-to-var1091 (var968) var1091)
(declare-fun var1035-init () var1035)
(declare-fun <init>/690337262 (var1035 var2085) void)
(declare-fun mappingDefaults/1175689288 (var1938) var1035)
(declare-fun var1091_getSettings/2034258353 (var1091) var1121)
(declare-fun var2488_determineMultiTenancyStrategy/-92423624 (var1121) var2488)
(declare-fun multiTenancyStrategy/1175689288 (var1938) var2488)
(declare-fun var731_valueOf/1602327315 (Bool) var731)
(declare-fun var1091_getSetting/183454356 (var1091 String var3013 var1727) var1727)
(declare-fun cast-from-var731-to-var1727 (var731) var1727)
(declare-fun cast-from-var1727-to-var731 (var1727) var731)
(declare-fun booleanValue/-1820462562 (var731) Bool)
(declare-fun xmlMappingEnabled/1175689288 (var1938) Bool)
(declare-fun implicitDiscriminatorsForJoinedInheritanceSupported/1175689288 (var1938) Bool)
(declare-fun explicitDiscriminatorsForJoinedInheritanceSupported/1175689288 (var1938) Bool)
(declare-fun implicitlyForceDiscriminatorInSelect/1175689288 (var1938) Bool)
(declare-fun var1884-init () var1884)
(declare-fun <init>/291849780 (var1884 var1938) void)
(declare-fun var306-init () var306)
(declare-fun <init>/277599635 (var306 var1938) void)
(declare-fun cast-from-var306-to-var3013 (var306) var3013)
(declare-fun cast-from-var3559-to-var1727 (var3559) var1727)
(declare-fun cast-from-var1727-to-var3559 (var1727) var3559)
(declare-fun cast-from-var1884-to-var3013 (var1884) var3013)
(declare-fun sharedCacheMode/1175689288 (var1938) var3559)
(declare-fun var2280-init () var2280)
(declare-fun <init>/263349490 (var2280 var1938) void)
(declare-fun cast-from-var2280-to-var3013 (var2280) var3013)
(declare-fun cast-from-var998-to-var1727 (var998) var1727)
(declare-fun cast-from-var1727-to-var998 (var1727) var998)
(declare-fun defaultCacheAccessType/1175689288 (var1938) var998)
(declare-fun specjProprietarySyntaxEnabled/1175689288 (var1938) Bool)
(declare-fun name/-1552687968 (var1128) String)
(declare-fun var1091_getSetting/617429165 (var1091 String ClassObject var1727) var1727)
(declare-fun cast-from-var1727-to-String (var1727) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun noConstraintByDefault/1175689288 (var1938) Bool)
(declare-fun var1121_get/1088891777 (var1121 var1727) var1727)
(declare-fun cast-from-String-to-var1727 (String) var1727)
(declare-fun var1777-init () var1777)
(declare-fun <init>/804750413 (var1777 var1938 var14) void)
(declare-fun var14_resolveDefaultableStrategy/799268158 (var14 ClassObject var1727 var3654) var1727)
(declare-fun cast-from-var1777-to-var3654 (var1777) var3654)
(declare-fun cast-from-var1727-to-var797 (var1727) var797)
(declare-fun implicitNamingStrategy/1175689288 (var1938) var797)
(declare-fun var14_resolveDefaultableStrategy/-420100722 (var14 ClassObject var1727 var1727) var1727)
(declare-fun cast-from-var1603-to-var1727 (var1603) var1727)
(declare-fun cast-from-var1727-to-var1361 (var1727) var1361)
(declare-fun physicalNamingStrategy/1175689288 (var1938) var1361)
(declare-fun resolveInitialSourceProcessOrdering/-148199121 (var1938 var1091) var1608)
(declare-fun sourceProcessOrdering/1175689288 (var1938) var1608)
(declare-fun enableLegacyFallback/1863119490 (var3997) void)
(declare-fun useNationalizedCharacterData/1175689288 (var1938) Bool)
(declare-fun schemaCharset/1175689288 (var1938) String)
(declare-const null-var1938 var1938)
(declare-const null-var2085 var2085)
(declare-const var310-BOOLEAN var3013)
(declare-const var3559-UNSPECIFIED var3559)
(declare-const null-var968 var968)
(declare-const null-var998 var998)
(declare-const var1128-NO_CONSTRAINT var1128)
(declare-const null-var1727 var1727)
(declare-const var1603-INSTANCE var1603)
(declare-const var3333 var1938) ; Statement: r0 := @this: org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl 
(assert (not (= var3333 null-var1938)))
(declare-const var2825 var2085) ; Statement: r3 := @parameter0: org.hibernate.boot.registry.StandardServiceRegistry 
(assert (not (= var2825 null-var2085)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1938-to-var1727 var3333))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3333!1 var1938)
(define-const var859 var1608 var1608-init) ; Statement: $r1 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var859)) ; Statement: specialinvoke $r1.<java.util.ArrayList: void <init>()>() 

(declare-const var859!1 var1608)
(declare-const var3333!2 var1938)
(assert (not (= var3333!2 null-var1938)))
(assert (= (basicTypeRegistrations/1175689288 var3333!2) var859!1)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList basicTypeRegistrations> = $r1 
(define-const var1379 var3997 var3997-init) ; Statement: $r2 = new org.hibernate.boot.internal.IdGeneratorInterpreterImpl 
(assert true)
;(assert (<init>/-2021892866 var1379)) ; Statement: specialinvoke $r2.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void <init>()>() 

(declare-const var1379!1 var3997)
(declare-const var3333!3 var1938)
(assert (not (= var3333!3 null-var1938)))
(assert (= (idGenerationTypeInterpreter/1175689288 var3333!3) var1379!1)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> = $r2 
(declare-const var3333!4 var1938)
(assert (not (= var3333!4 null-var1938)))
(assert (= (serviceRegistry/1175689288 var3333!4) var2825)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.registry.StandardServiceRegistry serviceRegistry> = r3 
(define-const var3475 var968 (var3535_getService/-972330729 (cast-from-var2085-to-var3535 var2825) var14!class)) ; Statement: $r4 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/selector/spi/StrategySelector;") 
(define-const var2992 var14 (cast-from-var968-to-var14 var3475)) ; Statement: r5 = (org.hibernate.boot.registry.selector.spi.StrategySelector) $r4 
(define-const var110 var968 (var3535_getService/-972330729 (cast-from-var2085-to-var3535 var2825) var1091!class)) ; Statement: $r6 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;") 
(define-const var3416 var1091 (cast-from-var968-to-var1091 var110)) ; Statement: r7 = (org.hibernate.engine.config.spi.ConfigurationService) $r6 
(define-const var2777 var1035 var1035-init) ; Statement: $r8 = new org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl 
(assert true)
;(assert (<init>/690337262 var2777 var2825)) ; Statement: specialinvoke $r8.<org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl: void <init>(org.hibernate.boot.registry.StandardServiceRegistry)>(r3) 

(declare-const var2777!1 var1035)
(declare-const var2825!1 var2085)
(declare-const var3333!5 var1938)
(assert (not (= var3333!5 null-var1938)))
(assert (= (mappingDefaults/1175689288 var3333!5) var2777!1)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl mappingDefaults> = $r8 
(define-const var485 var1121 (var1091_getSettings/2034258353 var3416)) ; Statement: $r9 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>() 
(define-const var3525 var2488 (var2488_determineMultiTenancyStrategy/-92423624 var485)) ; Statement: $r10 = staticinvoke <org.hibernate.MultiTenancyStrategy: org.hibernate.MultiTenancyStrategy determineMultiTenancyStrategy(java.util.Map)>($r9) 
(declare-const var3333!6 var1938)
(assert (not (= var3333!6 null-var1938)))
(assert (= (multiTenancyStrategy/1175689288 var3333!6) var3525)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.MultiTenancyStrategy multiTenancyStrategy> = $r10 
(define-const var2019 var3013 var310-BOOLEAN) ; Statement: $r11 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var572 var731 (var731_valueOf/1602327315 (ite (= 1 1) true false))) ; Statement: $r12 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1) 
(define-const var3367 var1727 (var1091_getSetting/183454356 var3416 "hibernate.xml_mapping_enabled" var2019 (cast-from-var731-to-var1727 var572))) ; Statement: $r13 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.xml_mapping_enabled", $r11, $r12) 
(define-const var1613 var731 (cast-from-var1727-to-var731 var3367)) ; Statement: $r14 = (java.lang.Boolean) $r13 
(assert true)
(define-const var2672 Bool (booleanValue/-1820462562 var1613)) ; Statement: $z0 = virtualinvoke $r14.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var3333!7 var1938)
(assert (not (= var3333!7 null-var1938)))
(assert (= (xmlMappingEnabled/1175689288 var3333!7) var2672)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean xmlMappingEnabled> = $z0 
(define-const var3930 var3013 var310-BOOLEAN) ; Statement: $r15 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var2120 var731 (var731_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r16 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var1069 var1727 (var1091_getSetting/183454356 var3416 "hibernate.discriminator.implicit_for_joined" var3930 (cast-from-var731-to-var1727 var2120))) ; Statement: $r17 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.implicit_for_joined", $r15, $r16) 
(define-const var766 var731 (cast-from-var1727-to-var731 var1069)) ; Statement: $r18 = (java.lang.Boolean) $r17 
(assert true)
(define-const var1090 Bool (booleanValue/-1820462562 var766)) ; Statement: $z1 = virtualinvoke $r18.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var3333!8 var1938)
(assert (not (= var3333!8 null-var1938)))
(assert (= (implicitDiscriminatorsForJoinedInheritanceSupported/1175689288 var3333!8) var1090)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitDiscriminatorsForJoinedInheritanceSupported> = $z1 
(define-const var2443 var3013 var310-BOOLEAN) ; Statement: $r19 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var585 var731 (var731_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r20 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var3040 var1727 (var1091_getSetting/183454356 var3416 "hibernate.discriminator.ignore_explicit_for_joined" var2443 (cast-from-var731-to-var1727 var585))) ; Statement: $r21 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.ignore_explicit_for_joined", $r19, $r20) 
(define-const var96 var731 (cast-from-var1727-to-var731 var3040)) ; Statement: $r22 = (java.lang.Boolean) $r21 
(assert true)
(define-const var3186 Bool (booleanValue/-1820462562 var96)) ; Statement: $z2 = virtualinvoke $r22.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z2 != 0 goto $z8 = 0 
(assert (not (= (ite var3186 1 0) 0))) ; Cond: $z2 != 0 
(define-const var1150 Bool (ite (= 1 0) true false)) ; Statement: $z8 = 0 
(assert true) ; Non Conditional
(declare-const var3333!9 var1938)
(assert (not (= var3333!9 null-var1938)))
(assert (= (explicitDiscriminatorsForJoinedInheritanceSupported/1175689288 var3333!9) var1150)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean explicitDiscriminatorsForJoinedInheritanceSupported> = $z8 
(define-const var2434 var3013 var310-BOOLEAN) ; Statement: $r23 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var1160 var731 (var731_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r24 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var3030 var1727 (var1091_getSetting/183454356 var3416 "hibernate.discriminator.force_in_select" var2434 (cast-from-var731-to-var1727 var1160))) ; Statement: $r25 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.force_in_select", $r23, $r24) 
(define-const var2694 var731 (cast-from-var1727-to-var731 var3030)) ; Statement: $r26 = (java.lang.Boolean) $r25 
(assert true)
(define-const var913 Bool (booleanValue/-1820462562 var2694)) ; Statement: $z3 = virtualinvoke $r26.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var3333!10 var1938)
(assert (not (= var3333!10 null-var1938)))
(assert (= (implicitlyForceDiscriminatorInSelect/1175689288 var3333!10) var913)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitlyForceDiscriminatorInSelect> = $z3 
(define-const var249 var1884 var1884-init) ; Statement: $r27 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1 
(assert true)
;(assert (<init>/291849780 var249 var3333!10)) ; Statement: specialinvoke $r27.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0) 

(declare-const var249!1 var1884)
(declare-const var3333!11 var1938)
(define-const var899 var306 var306-init) ; Statement: $r28 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2 
(assert true)
;(assert (<init>/277599635 var899 var3333!11)) ; Statement: specialinvoke $r28.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0) 

(declare-const var899!1 var306)
(declare-const var3333!12 var1938)
(define-const var548 var3559 var3559-UNSPECIFIED) ; Statement: $r29 = <javax.persistence.SharedCacheMode: javax.persistence.SharedCacheMode UNSPECIFIED> 
(define-const var1266 var1727 (var1091_getSetting/183454356 var3416 "jakarta.persistence.sharedCache.mode" (cast-from-var306-to-var3013 var899!1) (cast-from-var3559-to-var1727 var548))) ; Statement: $r30 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("jakarta.persistence.sharedCache.mode", $r28, $r29) 
(define-const var1151 var3559 (cast-from-var1727-to-var3559 var1266)) ; Statement: $r31 = (javax.persistence.SharedCacheMode) $r30 
(define-const var3626 var1727 (var1091_getSetting/183454356 var3416 "javax.persistence.sharedCache.mode" (cast-from-var1884-to-var3013 var249!1) (cast-from-var3559-to-var1727 var1151))) ; Statement: $r32 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("javax.persistence.sharedCache.mode", $r27, $r31) 
(define-const var2836 var3559 (cast-from-var1727-to-var3559 var3626)) ; Statement: $r33 = (javax.persistence.SharedCacheMode) $r32 
(declare-const var3333!13 var1938)
(assert (not (= var3333!13 null-var1938)))
(assert (= (sharedCacheMode/1175689288 var3333!13) var2836)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: javax.persistence.SharedCacheMode sharedCacheMode> = $r33 
(define-const var2955 var2280 var2280-init) ; Statement: $r34 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3 
(assert true)
;(assert (<init>/263349490 var2955 var3333!13)) ; Statement: specialinvoke $r34.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0) 

(declare-const var2955!1 var2280)
(declare-const var3333!14 var1938)
(define-const var607 var968 (var3535_getService/-972330729 (cast-from-var2085-to-var3535 var2825!1) var481!class)) ; Statement: $r35 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;") 
 ; Statement: if $r35 != null goto $r36 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;") 
(assert (not (not (= var607 null-var968)))) ; Negate: Cond: $r35 != null  
(define-const var405 var998 null-var998) ; Statement: $r71 = null 
 ; Statement: goto [?= $r38 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.cache.default_cache_concurrency_strategy", $r34, $r71)] 
(assert true) ; Non Conditional
(define-const var2155 var1727 (var1091_getSetting/183454356 var3416 "hibernate.cache.default_cache_concurrency_strategy" (cast-from-var2280-to-var3013 var2955!1) (cast-from-var998-to-var1727 var405))) ; Statement: $r38 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.cache.default_cache_concurrency_strategy", $r34, $r71) 
(define-const var1570 var998 (cast-from-var1727-to-var998 var2155)) ; Statement: $r39 = (org.hibernate.cache.spi.access.AccessType) $r38 
(declare-const var3333!15 var1938)
(assert (not (= var3333!15 null-var1938)))
(assert (= (defaultCacheAccessType/1175689288 var3333!15) var1570)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.cache.spi.access.AccessType defaultCacheAccessType> = $r39 
(define-const var754 var3013 var310-BOOLEAN) ; Statement: $r40 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var3527 var731 (var731_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r41 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var3749 var1727 (var1091_getSetting/183454356 var3416 "hibernate.enable_specj_proprietary_syntax" var754 (cast-from-var731-to-var1727 var3527))) ; Statement: $r42 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.enable_specj_proprietary_syntax", $r40, $r41) 
(define-const var2189 var731 (cast-from-var1727-to-var731 var3749)) ; Statement: $r43 = (java.lang.Boolean) $r42 
(assert true)
(define-const var2436 Bool (booleanValue/-1820462562 var2189)) ; Statement: $z4 = virtualinvoke $r43.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var3333!16 var1938)
(assert (not (= var3333!16 null-var1938)))
(assert (= (specjProprietarySyntaxEnabled/1175689288 var3333!16) var2436)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean specjProprietarySyntaxEnabled> = $z4 
(define-const var82 var1128 var1128-NO_CONSTRAINT) ; Statement: $r44 = <javax.persistence.ConstraintMode: javax.persistence.ConstraintMode NO_CONSTRAINT> 
(assert true)
(define-const var1029 String (name/-1552687968 var82)) ; Statement: $r47 = virtualinvoke $r44.<javax.persistence.ConstraintMode: java.lang.String name()>() 
(define-const var2497 var1727 (var1091_getSetting/617429165 var3416 "hibernate.hbm2ddl.default_constraint_mode" String!class null-var1727)) ; Statement: $r45 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.default_constraint_mode", class "Ljava/lang/String;", null) 
(define-const var3544 String (cast-from-var1727-to-String var2497)) ; Statement: $r46 = (java.lang.String) $r45 
(assert true)
(define-const var1653 Bool (equalsIgnoreCase/-92311102 var1029 var3544)) ; Statement: $z5 = virtualinvoke $r47.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r46) 
(declare-const var3333!17 var1938)
(assert (not (= var3333!17 null-var1938)))
(assert (= (noConstraintByDefault/1175689288 var3333!17) var1653)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean noConstraintByDefault> = $z5 
(define-const var3094 var1121 (var1091_getSettings/2034258353 var3416)) ; Statement: $r48 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>() 
(define-const var3341 var1727 (var1121_get/1088891777 var3094 (cast-from-String-to-var1727 "hibernate.implicit_naming_strategy"))) ; Statement: $r50 = interfaceinvoke $r48.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.implicit_naming_strategy") 
(define-const var3810 var1777 var1777-init) ; Statement: $r49 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4 
(assert true)
;(assert (<init>/804750413 var3810 var3333!17 var2992)) ; Statement: specialinvoke $r49.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl,org.hibernate.boot.registry.selector.spi.StrategySelector)>(r0, r5) 

(declare-const var3810!1 var1777)
(declare-const var3333!18 var1938)
(declare-const var2992!1 var14)
(define-const var3076 var1727 (var14_resolveDefaultableStrategy/799268158 var2992!1 var797!class var3341 (cast-from-var1777-to-var3654 var3810!1))) ; Statement: $r51 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.util.concurrent.Callable)>(class "Lorg/hibernate/boot/model/naming/ImplicitNamingStrategy;", $r50, $r49) 
(define-const var911 var797 (cast-from-var1727-to-var797 var3076)) ; Statement: $r52 = (org.hibernate.boot.model.naming.ImplicitNamingStrategy) $r51 
(declare-const var3333!19 var1938)
(assert (not (= var3333!19 null-var1938)))
(assert (= (implicitNamingStrategy/1175689288 var3333!19) var911)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.ImplicitNamingStrategy implicitNamingStrategy> = $r52 
(define-const var3765 var1121 (var1091_getSettings/2034258353 var3416)) ; Statement: $r53 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>() 
(define-const var3735 var1727 (var1121_get/1088891777 var3765 (cast-from-String-to-var1727 "hibernate.physical_naming_strategy"))) ; Statement: $r55 = interfaceinvoke $r53.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.physical_naming_strategy") 
(define-const var3329 var1603 var1603-INSTANCE) ; Statement: $r54 = <org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl INSTANCE> 
(define-const var2475 var1727 (var14_resolveDefaultableStrategy/-420100722 var2992!1 var1361!class var3735 (cast-from-var1603-to-var1727 var3329))) ; Statement: $r56 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.lang.Object)>(class "Lorg/hibernate/boot/model/naming/PhysicalNamingStrategy;", $r55, $r54) 
(define-const var612 var1361 (cast-from-var1727-to-var1361 var2475)) ; Statement: $r57 = (org.hibernate.boot.model.naming.PhysicalNamingStrategy) $r56 
(declare-const var3333!20 var1938)
(assert (not (= var3333!20 null-var1938)))
(assert (= (physicalNamingStrategy/1175689288 var3333!20) var612)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategy physicalNamingStrategy> = $r57 
(assert true)
(define-const var1283 var1608 (resolveInitialSourceProcessOrdering/-148199121 var3333!20 var3416)) ; Statement: $r58 = specialinvoke r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList resolveInitialSourceProcessOrdering(org.hibernate.engine.config.spi.ConfigurationService)>(r7) 
(declare-const var3333!21 var1938)
(assert (not (= var3333!21 null-var1938)))
(assert (= (sourceProcessOrdering/1175689288 var3333!21) var1283)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList sourceProcessOrdering> = $r58 
(define-const var2655 var3013 var310-BOOLEAN) ; Statement: $r59 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var2364 var731 (var731_valueOf/1602327315 (ite (= 1 1) true false))) ; Statement: $r60 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1) 
(define-const var3407 var1727 (var1091_getSetting/183454356 var3416 "hibernate.id.new_generator_mappings" var2655 (cast-from-var731-to-var1727 var2364))) ; Statement: $r61 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.id.new_generator_mappings", $r59, $r60) 
(define-const var1778 var731 (cast-from-var1727-to-var731 var3407)) ; Statement: $r62 = (java.lang.Boolean) $r61 
(assert true)
(define-const var475 Bool (booleanValue/-1820462562 var1778)) ; Statement: $z7 = virtualinvoke $r62.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z7 == 0 goto $r63 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> 
(assert (= (ite var475 1 0) 0)) ; Cond: $z7 == 0 
(define-const var721 var3997 (idGenerationTypeInterpreter/1175689288 var3333!21)) ; Statement: $r63 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> 
(assert true)
;(assert (enableLegacyFallback/1863119490 var721)) ; Statement: virtualinvoke $r63.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void enableLegacyFallback()>() 

(declare-const var721!1 var3997)
(assert true) ; Non Conditional
(define-const var2399 var3013 var310-BOOLEAN) ; Statement: $r64 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var3344 var731 (var731_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r65 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var1262 var1727 (var1091_getSetting/183454356 var3416 "hibernate.use_nationalized_character_data" var2399 (cast-from-var731-to-var1727 var3344))) ; Statement: $r66 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.use_nationalized_character_data", $r64, $r65) 
(define-const var1372 var731 (cast-from-var1727-to-var731 var1262)) ; Statement: $r67 = (java.lang.Boolean) $r66 
(assert true)
(define-const var2665 Bool (booleanValue/-1820462562 var1372)) ; Statement: $z6 = virtualinvoke $r67.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var3333!22 var1938)
(assert (not (= var3333!22 null-var1938)))
(assert (= (useNationalizedCharacterData/1175689288 var3333!22) var2665)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean useNationalizedCharacterData> = $z6 
(define-const var3803 var1727 (var1091_getSetting/617429165 var3416 "hibernate.hbm2ddl.charset_name" String!class null-var1727)) ; Statement: $r68 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.charset_name", class "Ljava/lang/String;", null) 
(define-const var2648 String (cast-from-var1727-to-String var3803)) ; Statement: $r69 = (java.lang.String) $r68 
(declare-const var3333!23 var1938)
(assert (not (= var3333!23 null-var1938)))
(assert (= (schemaCharset/1175689288 var3333!23) var2648)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.lang.String schemaCharset> = $r69 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1938-to-var1727=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.lang.Object), var1608-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), basicTypeRegistrations/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.util.ArrayList), var3997-init=([], org.hibernate.boot.internal.IdGeneratorInterpreterImpl), <init>/-2021892866=([org.hibernate.boot.internal.IdGeneratorInterpreterImpl], void), idGenerationTypeInterpreter/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.internal.IdGeneratorInterpreterImpl), serviceRegistry/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.registry.StandardServiceRegistry), var3535_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var2085-to-var3535=([org.hibernate.boot.registry.StandardServiceRegistry], org.hibernate.service.ServiceRegistry), cast-from-var968-to-var14=([org.hibernate.service.Service], org.hibernate.boot.registry.selector.spi.StrategySelector), cast-from-var968-to-var1091=([org.hibernate.service.Service], org.hibernate.engine.config.spi.ConfigurationService), var1035-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl), <init>/690337262=([org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl, org.hibernate.boot.registry.StandardServiceRegistry], void), mappingDefaults/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl), var1091_getSettings/2034258353=([org.hibernate.engine.config.spi.ConfigurationService], java.util.Map), var2488_determineMultiTenancyStrategy/-92423624=([java.util.Map], org.hibernate.MultiTenancyStrategy), multiTenancyStrategy/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.MultiTenancyStrategy), var731_valueOf/1602327315=([boolean], java.lang.Boolean), var1091_getSetting/183454356=([org.hibernate.engine.config.spi.ConfigurationService, java.lang.String, org.hibernate.engine.config.spi.ConfigurationService$Converter, java.lang.Object], java.lang.Object), cast-from-var731-to-var1727=([java.lang.Boolean], java.lang.Object), cast-from-var1727-to-var731=([java.lang.Object], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), xmlMappingEnabled/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), implicitDiscriminatorsForJoinedInheritanceSupported/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), explicitDiscriminatorsForJoinedInheritanceSupported/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), implicitlyForceDiscriminatorInSelect/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), var1884-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1), <init>/291849780=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], void), var306-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2), <init>/277599635=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], void), cast-from-var306-to-var3013=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2], org.hibernate.engine.config.spi.ConfigurationService$Converter), cast-from-var3559-to-var1727=([javax.persistence.SharedCacheMode], java.lang.Object), cast-from-var1727-to-var3559=([java.lang.Object], javax.persistence.SharedCacheMode), cast-from-var1884-to-var3013=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1], org.hibernate.engine.config.spi.ConfigurationService$Converter), sharedCacheMode/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], javax.persistence.SharedCacheMode), var2280-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3), <init>/263349490=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], void), cast-from-var2280-to-var3013=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3], org.hibernate.engine.config.spi.ConfigurationService$Converter), cast-from-var998-to-var1727=([org.hibernate.cache.spi.access.AccessType], java.lang.Object), cast-from-var1727-to-var998=([java.lang.Object], org.hibernate.cache.spi.access.AccessType), defaultCacheAccessType/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.cache.spi.access.AccessType), specjProprietarySyntaxEnabled/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), name/-1552687968=([javax.persistence.ConstraintMode], java.lang.String), var1091_getSetting/617429165=([org.hibernate.engine.config.spi.ConfigurationService, java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object), cast-from-var1727-to-String=([java.lang.Object], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), noConstraintByDefault/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), var1121_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1727=([java.lang.String], java.lang.Object), var1777-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4), <init>/804750413=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl, org.hibernate.boot.registry.selector.spi.StrategySelector], void), var14_resolveDefaultableStrategy/799268158=([org.hibernate.boot.registry.selector.spi.StrategySelector, java.lang.Class, java.lang.Object, java.util.concurrent.Callable], java.lang.Object), cast-from-var1777-to-var3654=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4], java.util.concurrent.Callable), cast-from-var1727-to-var797=([java.lang.Object], org.hibernate.boot.model.naming.ImplicitNamingStrategy), implicitNamingStrategy/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.model.naming.ImplicitNamingStrategy), var14_resolveDefaultableStrategy/-420100722=([org.hibernate.boot.registry.selector.spi.StrategySelector, java.lang.Class, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var1603-to-var1727=([org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl], java.lang.Object), cast-from-var1727-to-var1361=([java.lang.Object], org.hibernate.boot.model.naming.PhysicalNamingStrategy), physicalNamingStrategy/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.model.naming.PhysicalNamingStrategy), resolveInitialSourceProcessOrdering/-148199121=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl, org.hibernate.engine.config.spi.ConfigurationService], java.util.ArrayList), sourceProcessOrdering/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.util.ArrayList), enableLegacyFallback/1863119490=([org.hibernate.boot.internal.IdGeneratorInterpreterImpl], void), useNationalizedCharacterData/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), schemaCharset/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.lang.String)}
; {var1938=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl, var3333=r0, var2085=org.hibernate.boot.registry.StandardServiceRegistry, var2825=r3, var1727=java.lang.Object, var1608=java.util.ArrayList, var859=$r1, var3997=org.hibernate.boot.internal.IdGeneratorInterpreterImpl, var1379=$r2, var968=org.hibernate.service.Service, var3535=org.hibernate.service.ServiceRegistry, var14=org.hibernate.boot.registry.selector.spi.StrategySelector, var3475=$r4, var2992=r5, var1091=org.hibernate.engine.config.spi.ConfigurationService, var110=$r6, var3416=r7, var1035=org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl, var2777=$r8, var1121=java.util.Map, var485=$r9, var2488=org.hibernate.MultiTenancyStrategy, var3525=$r10, var3013=org.hibernate.engine.config.spi.ConfigurationService$Converter, var310=org.hibernate.engine.config.spi.StandardConverters, var2019=$r11, var731=java.lang.Boolean, var572=$r12, var3367=$r13, var1613=$r14, var2672=$z0, var3930=$r15, var2120=$r16, var1069=$r17, var766=$r18, var1090=$z1, var2443=$r19, var585=$r20, var3040=$r21, var96=$r22, var3186=$z2, var1150=$z8, var2434=$r23, var1160=$r24, var3030=$r25, var2694=$r26, var913=$z3, var1884=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1, var249=$r27, var306=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2, var899=$r28, var3559=javax.persistence.SharedCacheMode, var548=$r29, var1266=$r30, var1151=$r31, var3626=$r32, var2836=$r33, var2280=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3, var2955=$r34, var481=org.hibernate.cache.spi.RegionFactory, var607=$r35, var998=org.hibernate.cache.spi.access.AccessType, var405=$r71, var2155=$r38, var1570=$r39, var754=$r40, var3527=$r41, var3749=$r42, var2189=$r43, var2436=$z4, var1128=javax.persistence.ConstraintMode, var82=$r44, var1029=$r47, var2497=$r45, var3544=$r46, var1653=$z5, var3094=$r48, var3341=$r50, var1777=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4, var3810=$r49, var797=org.hibernate.boot.model.naming.ImplicitNamingStrategy, var3654=java.util.concurrent.Callable, var3076=$r51, var911=$r52, var3765=$r53, var3735=$r55, var1603=org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl, var3329=$r54, var1361=org.hibernate.boot.model.naming.PhysicalNamingStrategy, var2475=$r56, var612=$r57, var1283=$r58, var2655=$r59, var2364=$r60, var3407=$r61, var1778=$r62, var475=$z7, var721=$r63, var2399=$r64, var3344=$r65, var1262=$r66, var1372=$r67, var2665=$z6, var3803=$r68, var2648=$r69}
; {org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl=var1938, r0=var3333, org.hibernate.boot.registry.StandardServiceRegistry=var2085, r3=var2825, java.lang.Object=var1727, java.util.ArrayList=var1608, $r1=var859, org.hibernate.boot.internal.IdGeneratorInterpreterImpl=var3997, $r2=var1379, org.hibernate.service.Service=var968, org.hibernate.service.ServiceRegistry=var3535, org.hibernate.boot.registry.selector.spi.StrategySelector=var14, $r4=var3475, r5=var2992, org.hibernate.engine.config.spi.ConfigurationService=var1091, $r6=var110, r7=var3416, org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl=var1035, $r8=var2777, java.util.Map=var1121, $r9=var485, org.hibernate.MultiTenancyStrategy=var2488, $r10=var3525, org.hibernate.engine.config.spi.ConfigurationService$Converter=var3013, org.hibernate.engine.config.spi.StandardConverters=var310, $r11=var2019, java.lang.Boolean=var731, $r12=var572, $r13=var3367, $r14=var1613, $z0=var2672, $r15=var3930, $r16=var2120, $r17=var1069, $r18=var766, $z1=var1090, $r19=var2443, $r20=var585, $r21=var3040, $r22=var96, $z2=var3186, $z8=var1150, $r23=var2434, $r24=var1160, $r25=var3030, $r26=var2694, $z3=var913, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1=var1884, $r27=var249, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2=var306, $r28=var899, javax.persistence.SharedCacheMode=var3559, $r29=var548, $r30=var1266, $r31=var1151, $r32=var3626, $r33=var2836, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3=var2280, $r34=var2955, org.hibernate.cache.spi.RegionFactory=var481, $r35=var607, org.hibernate.cache.spi.access.AccessType=var998, $r71=var405, $r38=var2155, $r39=var1570, $r40=var754, $r41=var3527, $r42=var3749, $r43=var2189, $z4=var2436, javax.persistence.ConstraintMode=var1128, $r44=var82, $r47=var1029, $r45=var2497, $r46=var3544, $z5=var1653, $r48=var3094, $r50=var3341, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4=var1777, $r49=var3810, org.hibernate.boot.model.naming.ImplicitNamingStrategy=var797, java.util.concurrent.Callable=var3654, $r51=var3076, $r52=var911, $r53=var3765, $r55=var3735, org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl=var1603, $r54=var3329, org.hibernate.boot.model.naming.PhysicalNamingStrategy=var1361, $r56=var2475, $r57=var612, $r58=var1283, $r59=var2655, $r60=var2364, $r61=var3407, $r62=var1778, $z7=var475, $r63=var721, $r64=var2399, $r65=var3344, $r66=var1262, $r67=var1372, $z6=var2665, $r68=var3803, $r69=var2648}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl;	r3 := @parameter0: org.hibernate.boot.registry.StandardServiceRegistry;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.ArrayList;	specialinvoke $r1.<java.util.ArrayList: void <init>()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList basicTypeRegistrations> = $r1;	$r2 = new org.hibernate.boot.internal.IdGeneratorInterpreterImpl;	specialinvoke $r2.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void <init>()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> = $r2;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.registry.StandardServiceRegistry serviceRegistry> = r3;	$r4 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/selector/spi/StrategySelector;");	r5 = (org.hibernate.boot.registry.selector.spi.StrategySelector) $r4;	$r6 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;");	r7 = (org.hibernate.engine.config.spi.ConfigurationService) $r6;	$r8 = new org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl;	specialinvoke $r8.<org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl: void <init>(org.hibernate.boot.registry.StandardServiceRegistry)>(r3);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl mappingDefaults> = $r8;	$r9 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>();	$r10 = staticinvoke <org.hibernate.MultiTenancyStrategy: org.hibernate.MultiTenancyStrategy determineMultiTenancyStrategy(java.util.Map)>($r9);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.MultiTenancyStrategy multiTenancyStrategy> = $r10;	$r11 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r12 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1);	$r13 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.xml_mapping_enabled", $r11, $r12);	$r14 = (java.lang.Boolean) $r13;	$z0 = virtualinvoke $r14.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean xmlMappingEnabled> = $z0;	$r15 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r16 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r17 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.implicit_for_joined", $r15, $r16);	$r18 = (java.lang.Boolean) $r17;	$z1 = virtualinvoke $r18.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitDiscriminatorsForJoinedInheritanceSupported> = $z1;	$r19 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r20 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r21 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.ignore_explicit_for_joined", $r19, $r20);	$r22 = (java.lang.Boolean) $r21;	$z2 = virtualinvoke $r22.<java.lang.Boolean: boolean booleanValue()>();	if $z2 != 0 goto $z8 = 0;	$z8 = 0;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean explicitDiscriminatorsForJoinedInheritanceSupported> = $z8;	$r23 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r24 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r25 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.force_in_select", $r23, $r24);	$r26 = (java.lang.Boolean) $r25;	$z3 = virtualinvoke $r26.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitlyForceDiscriminatorInSelect> = $z3;	$r27 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1;	specialinvoke $r27.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0);	$r28 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2;	specialinvoke $r28.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0);	$r29 = <javax.persistence.SharedCacheMode: javax.persistence.SharedCacheMode UNSPECIFIED>;	$r30 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("jakarta.persistence.sharedCache.mode", $r28, $r29);	$r31 = (javax.persistence.SharedCacheMode) $r30;	$r32 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("javax.persistence.sharedCache.mode", $r27, $r31);	$r33 = (javax.persistence.SharedCacheMode) $r32;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: javax.persistence.SharedCacheMode sharedCacheMode> = $r33;	$r34 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3;	specialinvoke $r34.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0);	$r35 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;");	if $r35 != null goto $r36 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;");	$r71 = null;	goto [?= $r38 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.cache.default_cache_concurrency_strategy", $r34, $r71)];	$r38 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.cache.default_cache_concurrency_strategy", $r34, $r71);	$r39 = (org.hibernate.cache.spi.access.AccessType) $r38;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.cache.spi.access.AccessType defaultCacheAccessType> = $r39;	$r40 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r41 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r42 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.enable_specj_proprietary_syntax", $r40, $r41);	$r43 = (java.lang.Boolean) $r42;	$z4 = virtualinvoke $r43.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean specjProprietarySyntaxEnabled> = $z4;	$r44 = <javax.persistence.ConstraintMode: javax.persistence.ConstraintMode NO_CONSTRAINT>;	$r47 = virtualinvoke $r44.<javax.persistence.ConstraintMode: java.lang.String name()>();	$r45 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.default_constraint_mode", class "Ljava/lang/String;", null);	$r46 = (java.lang.String) $r45;	$z5 = virtualinvoke $r47.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r46);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean noConstraintByDefault> = $z5;	$r48 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>();	$r50 = interfaceinvoke $r48.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.implicit_naming_strategy");	$r49 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4;	specialinvoke $r49.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl,org.hibernate.boot.registry.selector.spi.StrategySelector)>(r0, r5);	$r51 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.util.concurrent.Callable)>(class "Lorg/hibernate/boot/model/naming/ImplicitNamingStrategy;", $r50, $r49);	$r52 = (org.hibernate.boot.model.naming.ImplicitNamingStrategy) $r51;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.ImplicitNamingStrategy implicitNamingStrategy> = $r52;	$r53 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>();	$r55 = interfaceinvoke $r53.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.physical_naming_strategy");	$r54 = <org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl INSTANCE>;	$r56 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.lang.Object)>(class "Lorg/hibernate/boot/model/naming/PhysicalNamingStrategy;", $r55, $r54);	$r57 = (org.hibernate.boot.model.naming.PhysicalNamingStrategy) $r56;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategy physicalNamingStrategy> = $r57;	$r58 = specialinvoke r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList resolveInitialSourceProcessOrdering(org.hibernate.engine.config.spi.ConfigurationService)>(r7);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList sourceProcessOrdering> = $r58;	$r59 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r60 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1);	$r61 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.id.new_generator_mappings", $r59, $r60);	$r62 = (java.lang.Boolean) $r61;	$z7 = virtualinvoke $r62.<java.lang.Boolean: boolean booleanValue()>();	if $z7 == 0 goto $r63 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter>;	$r63 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter>;	virtualinvoke $r63.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void enableLegacyFallback()>();	$r64 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r65 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r66 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.use_nationalized_character_data", $r64, $r65);	$r67 = (java.lang.Boolean) $r66;	$z6 = virtualinvoke $r67.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean useNationalizedCharacterData> = $z6;	$r68 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.charset_name", class "Ljava/lang/String;", null);	$r69 = (java.lang.String) $r68;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.lang.String schemaCharset> = $r69;	return
;block_num 7