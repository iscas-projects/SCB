(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3071 0)
(declare-sort var2529 0)
(declare-sort var1658 0)
(declare-sort var3433 0)
(declare-sort var626 0)
(declare-sort var63 0)
(declare-sort var1627 0)
(declare-sort var419 0)
(declare-sort var1552 0)
(declare-sort var3988 0)
(declare-sort var269 0)
(declare-sort var754 0)
(declare-sort var247 0)
(declare-sort var3121 0)
(declare-sort var294 0)
(declare-sort var3261 0)
(declare-sort var1420 0)
(declare-sort var923 0)
(declare-sort var2170 0)
(declare-sort var1113 0)
(declare-sort var3200 0)
(declare-sort var1900 0)
(declare-sort var2600 0)
(declare-sort var1102 0)
(declare-sort var1959 0)
(declare-sort var3230 0)
(declare-sort var1291 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var419!class ClassObject)
(declare-const var1552!class ClassObject)
(declare-const var1113!class ClassObject)
(declare-const String!class ClassObject)
(declare-const var1102!class ClassObject)
(declare-const var1291!class ClassObject)
(declare-fun <init>/-279557996 (var1658) void)
(declare-fun cast-from-var3071-to-var1658 (var3071) var1658)
(declare-fun var3433-init () var3433)
(declare-fun <init>/-325640736 (var3433) void)
(declare-fun basicTypeRegistrations/1175689288 (var3071) var3433)
(declare-fun var626-init () var626)
(declare-fun <init>/-2021892866 (var626) void)
(declare-fun idGenerationTypeInterpreter/1175689288 (var3071) var626)
(declare-fun serviceRegistry/1175689288 (var3071) var2529)
(declare-fun var1627_getService/-972330729 (var1627 ClassObject) var63)
(declare-fun cast-from-var2529-to-var1627 (var2529) var1627)
(declare-fun cast-from-var63-to-var419 (var63) var419)
(declare-fun cast-from-var63-to-var1552 (var63) var1552)
(declare-fun var3988-init () var3988)
(declare-fun <init>/690337262 (var3988 var2529) void)
(declare-fun mappingDefaults/1175689288 (var3071) var3988)
(declare-fun var1552_getSettings/2034258353 (var1552) var269)
(declare-fun var754_determineMultiTenancyStrategy/-92423624 (var269) var754)
(declare-fun multiTenancyStrategy/1175689288 (var3071) var754)
(declare-fun var294_valueOf/1602327315 (Bool) var294)
(declare-fun var1552_getSetting/183454356 (var1552 String var247 var1658) var1658)
(declare-fun cast-from-var294-to-var1658 (var294) var1658)
(declare-fun cast-from-var1658-to-var294 (var1658) var294)
(declare-fun booleanValue/-1820462562 (var294) Bool)
(declare-fun xmlMappingEnabled/1175689288 (var3071) Bool)
(declare-fun implicitDiscriminatorsForJoinedInheritanceSupported/1175689288 (var3071) Bool)
(declare-fun explicitDiscriminatorsForJoinedInheritanceSupported/1175689288 (var3071) Bool)
(declare-fun implicitlyForceDiscriminatorInSelect/1175689288 (var3071) Bool)
(declare-fun var3261-init () var3261)
(declare-fun <init>/291849780 (var3261 var3071) void)
(declare-fun var1420-init () var1420)
(declare-fun <init>/277599635 (var1420 var3071) void)
(declare-fun cast-from-var1420-to-var247 (var1420) var247)
(declare-fun cast-from-var923-to-var1658 (var923) var1658)
(declare-fun cast-from-var1658-to-var923 (var1658) var923)
(declare-fun cast-from-var3261-to-var247 (var3261) var247)
(declare-fun sharedCacheMode/1175689288 (var3071) var923)
(declare-fun var2170-init () var2170)
(declare-fun <init>/263349490 (var2170 var3071) void)
(declare-fun cast-from-var2170-to-var247 (var2170) var247)
(declare-fun cast-from-var3200-to-var1658 (var3200) var1658)
(declare-fun cast-from-var1658-to-var3200 (var1658) var3200)
(declare-fun defaultCacheAccessType/1175689288 (var3071) var3200)
(declare-fun specjProprietarySyntaxEnabled/1175689288 (var3071) Bool)
(declare-fun name/-1552687968 (var1900) String)
(declare-fun var1552_getSetting/617429165 (var1552 String ClassObject var1658) var1658)
(declare-fun cast-from-var1658-to-String (var1658) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun noConstraintByDefault/1175689288 (var3071) Bool)
(declare-fun var269_get/1088891777 (var269 var1658) var1658)
(declare-fun cast-from-String-to-var1658 (String) var1658)
(declare-fun var2600-init () var2600)
(declare-fun <init>/804750413 (var2600 var3071 var419) void)
(declare-fun var419_resolveDefaultableStrategy/799268158 (var419 ClassObject var1658 var1959) var1658)
(declare-fun cast-from-var2600-to-var1959 (var2600) var1959)
(declare-fun cast-from-var1658-to-var1102 (var1658) var1102)
(declare-fun implicitNamingStrategy/1175689288 (var3071) var1102)
(declare-fun var419_resolveDefaultableStrategy/-420100722 (var419 ClassObject var1658 var1658) var1658)
(declare-fun cast-from-var3230-to-var1658 (var3230) var1658)
(declare-fun cast-from-var1658-to-var1291 (var1658) var1291)
(declare-fun physicalNamingStrategy/1175689288 (var3071) var1291)
(declare-fun resolveInitialSourceProcessOrdering/-148199121 (var3071 var1552) var3433)
(declare-fun sourceProcessOrdering/1175689288 (var3071) var3433)
(declare-fun disableLegacyFallback/-75856393 (var626) void)
(declare-fun useNationalizedCharacterData/1175689288 (var3071) Bool)
(declare-fun schemaCharset/1175689288 (var3071) String)
(declare-const null-var3071 var3071)
(declare-const null-var2529 var2529)
(declare-const var3121-BOOLEAN var247)
(declare-const var923-UNSPECIFIED var923)
(declare-const null-var63 var63)
(declare-const null-var3200 var3200)
(declare-const var1900-NO_CONSTRAINT var1900)
(declare-const null-var1658 var1658)
(declare-const var3230-INSTANCE var3230)
(declare-const var3330 var3071) ; Statement: r0 := @this: org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl 
(assert (not (= var3330 null-var3071)))
(declare-const var1774 var2529) ; Statement: r3 := @parameter0: org.hibernate.boot.registry.StandardServiceRegistry 
(assert (not (= var1774 null-var2529)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3071-to-var1658 var3330))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3330!1 var3071)
(define-const var3427 var3433 var3433-init) ; Statement: $r1 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3427)) ; Statement: specialinvoke $r1.<java.util.ArrayList: void <init>()>() 

(declare-const var3427!1 var3433)
(declare-const var3330!2 var3071)
(assert (not (= var3330!2 null-var3071)))
(assert (= (basicTypeRegistrations/1175689288 var3330!2) var3427!1)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList basicTypeRegistrations> = $r1 
(define-const var628 var626 var626-init) ; Statement: $r2 = new org.hibernate.boot.internal.IdGeneratorInterpreterImpl 
(assert true)
;(assert (<init>/-2021892866 var628)) ; Statement: specialinvoke $r2.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void <init>()>() 

(declare-const var628!1 var626)
(declare-const var3330!3 var3071)
(assert (not (= var3330!3 null-var3071)))
(assert (= (idGenerationTypeInterpreter/1175689288 var3330!3) var628!1)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> = $r2 
(declare-const var3330!4 var3071)
(assert (not (= var3330!4 null-var3071)))
(assert (= (serviceRegistry/1175689288 var3330!4) var1774)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.registry.StandardServiceRegistry serviceRegistry> = r3 
(define-const var475 var63 (var1627_getService/-972330729 (cast-from-var2529-to-var1627 var1774) var419!class)) ; Statement: $r4 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/selector/spi/StrategySelector;") 
(define-const var209 var419 (cast-from-var63-to-var419 var475)) ; Statement: r5 = (org.hibernate.boot.registry.selector.spi.StrategySelector) $r4 
(define-const var2852 var63 (var1627_getService/-972330729 (cast-from-var2529-to-var1627 var1774) var1552!class)) ; Statement: $r6 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;") 
(define-const var3654 var1552 (cast-from-var63-to-var1552 var2852)) ; Statement: r7 = (org.hibernate.engine.config.spi.ConfigurationService) $r6 
(define-const var1892 var3988 var3988-init) ; Statement: $r8 = new org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl 
(assert true)
;(assert (<init>/690337262 var1892 var1774)) ; Statement: specialinvoke $r8.<org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl: void <init>(org.hibernate.boot.registry.StandardServiceRegistry)>(r3) 

(declare-const var1892!1 var3988)
(declare-const var1774!1 var2529)
(declare-const var3330!5 var3071)
(assert (not (= var3330!5 null-var3071)))
(assert (= (mappingDefaults/1175689288 var3330!5) var1892!1)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl mappingDefaults> = $r8 
(define-const var2313 var269 (var1552_getSettings/2034258353 var3654)) ; Statement: $r9 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>() 
(define-const var3025 var754 (var754_determineMultiTenancyStrategy/-92423624 var2313)) ; Statement: $r10 = staticinvoke <org.hibernate.MultiTenancyStrategy: org.hibernate.MultiTenancyStrategy determineMultiTenancyStrategy(java.util.Map)>($r9) 
(declare-const var3330!6 var3071)
(assert (not (= var3330!6 null-var3071)))
(assert (= (multiTenancyStrategy/1175689288 var3330!6) var3025)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.MultiTenancyStrategy multiTenancyStrategy> = $r10 
(define-const var3250 var247 var3121-BOOLEAN) ; Statement: $r11 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var1524 var294 (var294_valueOf/1602327315 (ite (= 1 1) true false))) ; Statement: $r12 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1) 
(define-const var2241 var1658 (var1552_getSetting/183454356 var3654 "hibernate.xml_mapping_enabled" var3250 (cast-from-var294-to-var1658 var1524))) ; Statement: $r13 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.xml_mapping_enabled", $r11, $r12) 
(define-const var1303 var294 (cast-from-var1658-to-var294 var2241)) ; Statement: $r14 = (java.lang.Boolean) $r13 
(assert true)
(define-const var1122 Bool (booleanValue/-1820462562 var1303)) ; Statement: $z0 = virtualinvoke $r14.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var3330!7 var3071)
(assert (not (= var3330!7 null-var3071)))
(assert (= (xmlMappingEnabled/1175689288 var3330!7) var1122)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean xmlMappingEnabled> = $z0 
(define-const var3087 var247 var3121-BOOLEAN) ; Statement: $r15 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var3370 var294 (var294_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r16 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var2526 var1658 (var1552_getSetting/183454356 var3654 "hibernate.discriminator.implicit_for_joined" var3087 (cast-from-var294-to-var1658 var3370))) ; Statement: $r17 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.implicit_for_joined", $r15, $r16) 
(define-const var341 var294 (cast-from-var1658-to-var294 var2526)) ; Statement: $r18 = (java.lang.Boolean) $r17 
(assert true)
(define-const var1347 Bool (booleanValue/-1820462562 var341)) ; Statement: $z1 = virtualinvoke $r18.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var3330!8 var3071)
(assert (not (= var3330!8 null-var3071)))
(assert (= (implicitDiscriminatorsForJoinedInheritanceSupported/1175689288 var3330!8) var1347)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitDiscriminatorsForJoinedInheritanceSupported> = $z1 
(define-const var1704 var247 var3121-BOOLEAN) ; Statement: $r19 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var655 var294 (var294_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r20 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var638 var1658 (var1552_getSetting/183454356 var3654 "hibernate.discriminator.ignore_explicit_for_joined" var1704 (cast-from-var294-to-var1658 var655))) ; Statement: $r21 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.ignore_explicit_for_joined", $r19, $r20) 
(define-const var481 var294 (cast-from-var1658-to-var294 var638)) ; Statement: $r22 = (java.lang.Boolean) $r21 
(assert true)
(define-const var821 Bool (booleanValue/-1820462562 var481)) ; Statement: $z2 = virtualinvoke $r22.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z2 != 0 goto $z8 = 0 
(assert (not (not (= (ite var821 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var360 Bool (ite (= 1 1) true false)) ; Statement: $z8 = 1 
 ; Statement: goto [?= r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean explicitDiscriminatorsForJoinedInheritanceSupported> = $z8] 
(assert true) ; Non Conditional
(declare-const var3330!9 var3071)
(assert (not (= var3330!9 null-var3071)))
(assert (= (explicitDiscriminatorsForJoinedInheritanceSupported/1175689288 var3330!9) var360)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean explicitDiscriminatorsForJoinedInheritanceSupported> = $z8 
(define-const var369 var247 var3121-BOOLEAN) ; Statement: $r23 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var3678 var294 (var294_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r24 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var2809 var1658 (var1552_getSetting/183454356 var3654 "hibernate.discriminator.force_in_select" var369 (cast-from-var294-to-var1658 var3678))) ; Statement: $r25 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.force_in_select", $r23, $r24) 
(define-const var2429 var294 (cast-from-var1658-to-var294 var2809)) ; Statement: $r26 = (java.lang.Boolean) $r25 
(assert true)
(define-const var2964 Bool (booleanValue/-1820462562 var2429)) ; Statement: $z3 = virtualinvoke $r26.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var3330!10 var3071)
(assert (not (= var3330!10 null-var3071)))
(assert (= (implicitlyForceDiscriminatorInSelect/1175689288 var3330!10) var2964)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitlyForceDiscriminatorInSelect> = $z3 
(define-const var2693 var3261 var3261-init) ; Statement: $r27 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1 
(assert true)
;(assert (<init>/291849780 var2693 var3330!10)) ; Statement: specialinvoke $r27.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0) 

(declare-const var2693!1 var3261)
(declare-const var3330!11 var3071)
(define-const var3531 var1420 var1420-init) ; Statement: $r28 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2 
(assert true)
;(assert (<init>/277599635 var3531 var3330!11)) ; Statement: specialinvoke $r28.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0) 

(declare-const var3531!1 var1420)
(declare-const var3330!12 var3071)
(define-const var1118 var923 var923-UNSPECIFIED) ; Statement: $r29 = <javax.persistence.SharedCacheMode: javax.persistence.SharedCacheMode UNSPECIFIED> 
(define-const var2147 var1658 (var1552_getSetting/183454356 var3654 "jakarta.persistence.sharedCache.mode" (cast-from-var1420-to-var247 var3531!1) (cast-from-var923-to-var1658 var1118))) ; Statement: $r30 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("jakarta.persistence.sharedCache.mode", $r28, $r29) 
(define-const var3861 var923 (cast-from-var1658-to-var923 var2147)) ; Statement: $r31 = (javax.persistence.SharedCacheMode) $r30 
(define-const var1007 var1658 (var1552_getSetting/183454356 var3654 "javax.persistence.sharedCache.mode" (cast-from-var3261-to-var247 var2693!1) (cast-from-var923-to-var1658 var3861))) ; Statement: $r32 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("javax.persistence.sharedCache.mode", $r27, $r31) 
(define-const var3483 var923 (cast-from-var1658-to-var923 var1007)) ; Statement: $r33 = (javax.persistence.SharedCacheMode) $r32 
(declare-const var3330!13 var3071)
(assert (not (= var3330!13 null-var3071)))
(assert (= (sharedCacheMode/1175689288 var3330!13) var3483)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: javax.persistence.SharedCacheMode sharedCacheMode> = $r33 
(define-const var385 var2170 var2170-init) ; Statement: $r34 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3 
(assert true)
;(assert (<init>/263349490 var385 var3330!13)) ; Statement: specialinvoke $r34.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0) 

(declare-const var385!1 var2170)
(declare-const var3330!14 var3071)
(define-const var3347 var63 (var1627_getService/-972330729 (cast-from-var2529-to-var1627 var1774!1) var1113!class)) ; Statement: $r35 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;") 
 ; Statement: if $r35 != null goto $r36 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;") 
(assert (not (not (= var3347 null-var63)))) ; Negate: Cond: $r35 != null  
(define-const var1070 var3200 null-var3200) ; Statement: $r71 = null 
 ; Statement: goto [?= $r38 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.cache.default_cache_concurrency_strategy", $r34, $r71)] 
(assert true) ; Non Conditional
(define-const var2188 var1658 (var1552_getSetting/183454356 var3654 "hibernate.cache.default_cache_concurrency_strategy" (cast-from-var2170-to-var247 var385!1) (cast-from-var3200-to-var1658 var1070))) ; Statement: $r38 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.cache.default_cache_concurrency_strategy", $r34, $r71) 
(define-const var310 var3200 (cast-from-var1658-to-var3200 var2188)) ; Statement: $r39 = (org.hibernate.cache.spi.access.AccessType) $r38 
(declare-const var3330!15 var3071)
(assert (not (= var3330!15 null-var3071)))
(assert (= (defaultCacheAccessType/1175689288 var3330!15) var310)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.cache.spi.access.AccessType defaultCacheAccessType> = $r39 
(define-const var161 var247 var3121-BOOLEAN) ; Statement: $r40 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var3016 var294 (var294_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r41 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var1595 var1658 (var1552_getSetting/183454356 var3654 "hibernate.enable_specj_proprietary_syntax" var161 (cast-from-var294-to-var1658 var3016))) ; Statement: $r42 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.enable_specj_proprietary_syntax", $r40, $r41) 
(define-const var2041 var294 (cast-from-var1658-to-var294 var1595)) ; Statement: $r43 = (java.lang.Boolean) $r42 
(assert true)
(define-const var932 Bool (booleanValue/-1820462562 var2041)) ; Statement: $z4 = virtualinvoke $r43.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var3330!16 var3071)
(assert (not (= var3330!16 null-var3071)))
(assert (= (specjProprietarySyntaxEnabled/1175689288 var3330!16) var932)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean specjProprietarySyntaxEnabled> = $z4 
(define-const var1429 var1900 var1900-NO_CONSTRAINT) ; Statement: $r44 = <javax.persistence.ConstraintMode: javax.persistence.ConstraintMode NO_CONSTRAINT> 
(assert true)
(define-const var1849 String (name/-1552687968 var1429)) ; Statement: $r47 = virtualinvoke $r44.<javax.persistence.ConstraintMode: java.lang.String name()>() 
(define-const var2128 var1658 (var1552_getSetting/617429165 var3654 "hibernate.hbm2ddl.default_constraint_mode" String!class null-var1658)) ; Statement: $r45 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.default_constraint_mode", class "Ljava/lang/String;", null) 
(define-const var703 String (cast-from-var1658-to-String var2128)) ; Statement: $r46 = (java.lang.String) $r45 
(assert true)
(define-const var3551 Bool (equalsIgnoreCase/-92311102 var1849 var703)) ; Statement: $z5 = virtualinvoke $r47.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r46) 
(declare-const var3330!17 var3071)
(assert (not (= var3330!17 null-var3071)))
(assert (= (noConstraintByDefault/1175689288 var3330!17) var3551)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean noConstraintByDefault> = $z5 
(define-const var3579 var269 (var1552_getSettings/2034258353 var3654)) ; Statement: $r48 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>() 
(define-const var68 var1658 (var269_get/1088891777 var3579 (cast-from-String-to-var1658 "hibernate.implicit_naming_strategy"))) ; Statement: $r50 = interfaceinvoke $r48.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.implicit_naming_strategy") 
(define-const var179 var2600 var2600-init) ; Statement: $r49 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4 
(assert true)
;(assert (<init>/804750413 var179 var3330!17 var209)) ; Statement: specialinvoke $r49.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl,org.hibernate.boot.registry.selector.spi.StrategySelector)>(r0, r5) 

(declare-const var179!1 var2600)
(declare-const var3330!18 var3071)
(declare-const var209!1 var419)
(define-const var3482 var1658 (var419_resolveDefaultableStrategy/799268158 var209!1 var1102!class var68 (cast-from-var2600-to-var1959 var179!1))) ; Statement: $r51 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.util.concurrent.Callable)>(class "Lorg/hibernate/boot/model/naming/ImplicitNamingStrategy;", $r50, $r49) 
(define-const var324 var1102 (cast-from-var1658-to-var1102 var3482)) ; Statement: $r52 = (org.hibernate.boot.model.naming.ImplicitNamingStrategy) $r51 
(declare-const var3330!19 var3071)
(assert (not (= var3330!19 null-var3071)))
(assert (= (implicitNamingStrategy/1175689288 var3330!19) var324)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.ImplicitNamingStrategy implicitNamingStrategy> = $r52 
(define-const var2312 var269 (var1552_getSettings/2034258353 var3654)) ; Statement: $r53 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>() 
(define-const var408 var1658 (var269_get/1088891777 var2312 (cast-from-String-to-var1658 "hibernate.physical_naming_strategy"))) ; Statement: $r55 = interfaceinvoke $r53.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.physical_naming_strategy") 
(define-const var1980 var3230 var3230-INSTANCE) ; Statement: $r54 = <org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl INSTANCE> 
(define-const var472 var1658 (var419_resolveDefaultableStrategy/-420100722 var209!1 var1291!class var408 (cast-from-var3230-to-var1658 var1980))) ; Statement: $r56 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.lang.Object)>(class "Lorg/hibernate/boot/model/naming/PhysicalNamingStrategy;", $r55, $r54) 
(define-const var3729 var1291 (cast-from-var1658-to-var1291 var472)) ; Statement: $r57 = (org.hibernate.boot.model.naming.PhysicalNamingStrategy) $r56 
(declare-const var3330!20 var3071)
(assert (not (= var3330!20 null-var3071)))
(assert (= (physicalNamingStrategy/1175689288 var3330!20) var3729)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategy physicalNamingStrategy> = $r57 
(assert true)
(define-const var3683 var3433 (resolveInitialSourceProcessOrdering/-148199121 var3330!20 var3654)) ; Statement: $r58 = specialinvoke r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList resolveInitialSourceProcessOrdering(org.hibernate.engine.config.spi.ConfigurationService)>(r7) 
(declare-const var3330!21 var3071)
(assert (not (= var3330!21 null-var3071)))
(assert (= (sourceProcessOrdering/1175689288 var3330!21) var3683)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList sourceProcessOrdering> = $r58 
(define-const var3177 var247 var3121-BOOLEAN) ; Statement: $r59 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var3500 var294 (var294_valueOf/1602327315 (ite (= 1 1) true false))) ; Statement: $r60 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1) 
(define-const var2914 var1658 (var1552_getSetting/183454356 var3654 "hibernate.id.new_generator_mappings" var3177 (cast-from-var294-to-var1658 var3500))) ; Statement: $r61 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.id.new_generator_mappings", $r59, $r60) 
(define-const var2288 var294 (cast-from-var1658-to-var294 var2914)) ; Statement: $r62 = (java.lang.Boolean) $r61 
(assert true)
(define-const var850 Bool (booleanValue/-1820462562 var2288)) ; Statement: $z7 = virtualinvoke $r62.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z7 == 0 goto $r63 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> 
(assert (not (= (ite var850 1 0) 0))) ; Negate: Cond: $z7 == 0  
(define-const var1928 var626 (idGenerationTypeInterpreter/1175689288 var3330!21)) ; Statement: $r70 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> 
(assert true)
;(assert (disableLegacyFallback/-75856393 var1928)) ; Statement: virtualinvoke $r70.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void disableLegacyFallback()>() 

(declare-const var1928!1 var626)
 ; Statement: goto [?= $r64 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>] 
(assert true) ; Non Conditional
(define-const var777 var247 var3121-BOOLEAN) ; Statement: $r64 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var1166 var294 (var294_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r65 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var462 var1658 (var1552_getSetting/183454356 var3654 "hibernate.use_nationalized_character_data" var777 (cast-from-var294-to-var1658 var1166))) ; Statement: $r66 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.use_nationalized_character_data", $r64, $r65) 
(define-const var2242 var294 (cast-from-var1658-to-var294 var462)) ; Statement: $r67 = (java.lang.Boolean) $r66 
(assert true)
(define-const var2507 Bool (booleanValue/-1820462562 var2242)) ; Statement: $z6 = virtualinvoke $r67.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var3330!22 var3071)
(assert (not (= var3330!22 null-var3071)))
(assert (= (useNationalizedCharacterData/1175689288 var3330!22) var2507)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean useNationalizedCharacterData> = $z6 
(define-const var476 var1658 (var1552_getSetting/617429165 var3654 "hibernate.hbm2ddl.charset_name" String!class null-var1658)) ; Statement: $r68 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.charset_name", class "Ljava/lang/String;", null) 
(define-const var1261 String (cast-from-var1658-to-String var476)) ; Statement: $r69 = (java.lang.String) $r68 
(declare-const var3330!23 var3071)
(assert (not (= var3330!23 null-var3071)))
(assert (= (schemaCharset/1175689288 var3330!23) var1261)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.lang.String schemaCharset> = $r69 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3071-to-var1658=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.lang.Object), var3433-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), basicTypeRegistrations/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.util.ArrayList), var626-init=([], org.hibernate.boot.internal.IdGeneratorInterpreterImpl), <init>/-2021892866=([org.hibernate.boot.internal.IdGeneratorInterpreterImpl], void), idGenerationTypeInterpreter/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.internal.IdGeneratorInterpreterImpl), serviceRegistry/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.registry.StandardServiceRegistry), var1627_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var2529-to-var1627=([org.hibernate.boot.registry.StandardServiceRegistry], org.hibernate.service.ServiceRegistry), cast-from-var63-to-var419=([org.hibernate.service.Service], org.hibernate.boot.registry.selector.spi.StrategySelector), cast-from-var63-to-var1552=([org.hibernate.service.Service], org.hibernate.engine.config.spi.ConfigurationService), var3988-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl), <init>/690337262=([org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl, org.hibernate.boot.registry.StandardServiceRegistry], void), mappingDefaults/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl), var1552_getSettings/2034258353=([org.hibernate.engine.config.spi.ConfigurationService], java.util.Map), var754_determineMultiTenancyStrategy/-92423624=([java.util.Map], org.hibernate.MultiTenancyStrategy), multiTenancyStrategy/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.MultiTenancyStrategy), var294_valueOf/1602327315=([boolean], java.lang.Boolean), var1552_getSetting/183454356=([org.hibernate.engine.config.spi.ConfigurationService, java.lang.String, org.hibernate.engine.config.spi.ConfigurationService$Converter, java.lang.Object], java.lang.Object), cast-from-var294-to-var1658=([java.lang.Boolean], java.lang.Object), cast-from-var1658-to-var294=([java.lang.Object], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), xmlMappingEnabled/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), implicitDiscriminatorsForJoinedInheritanceSupported/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), explicitDiscriminatorsForJoinedInheritanceSupported/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), implicitlyForceDiscriminatorInSelect/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), var3261-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1), <init>/291849780=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], void), var1420-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2), <init>/277599635=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], void), cast-from-var1420-to-var247=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2], org.hibernate.engine.config.spi.ConfigurationService$Converter), cast-from-var923-to-var1658=([javax.persistence.SharedCacheMode], java.lang.Object), cast-from-var1658-to-var923=([java.lang.Object], javax.persistence.SharedCacheMode), cast-from-var3261-to-var247=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1], org.hibernate.engine.config.spi.ConfigurationService$Converter), sharedCacheMode/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], javax.persistence.SharedCacheMode), var2170-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3), <init>/263349490=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], void), cast-from-var2170-to-var247=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3], org.hibernate.engine.config.spi.ConfigurationService$Converter), cast-from-var3200-to-var1658=([org.hibernate.cache.spi.access.AccessType], java.lang.Object), cast-from-var1658-to-var3200=([java.lang.Object], org.hibernate.cache.spi.access.AccessType), defaultCacheAccessType/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.cache.spi.access.AccessType), specjProprietarySyntaxEnabled/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), name/-1552687968=([javax.persistence.ConstraintMode], java.lang.String), var1552_getSetting/617429165=([org.hibernate.engine.config.spi.ConfigurationService, java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object), cast-from-var1658-to-String=([java.lang.Object], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), noConstraintByDefault/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), var269_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1658=([java.lang.String], java.lang.Object), var2600-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4), <init>/804750413=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl, org.hibernate.boot.registry.selector.spi.StrategySelector], void), var419_resolveDefaultableStrategy/799268158=([org.hibernate.boot.registry.selector.spi.StrategySelector, java.lang.Class, java.lang.Object, java.util.concurrent.Callable], java.lang.Object), cast-from-var2600-to-var1959=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4], java.util.concurrent.Callable), cast-from-var1658-to-var1102=([java.lang.Object], org.hibernate.boot.model.naming.ImplicitNamingStrategy), implicitNamingStrategy/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.model.naming.ImplicitNamingStrategy), var419_resolveDefaultableStrategy/-420100722=([org.hibernate.boot.registry.selector.spi.StrategySelector, java.lang.Class, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3230-to-var1658=([org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl], java.lang.Object), cast-from-var1658-to-var1291=([java.lang.Object], org.hibernate.boot.model.naming.PhysicalNamingStrategy), physicalNamingStrategy/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.model.naming.PhysicalNamingStrategy), resolveInitialSourceProcessOrdering/-148199121=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl, org.hibernate.engine.config.spi.ConfigurationService], java.util.ArrayList), sourceProcessOrdering/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.util.ArrayList), disableLegacyFallback/-75856393=([org.hibernate.boot.internal.IdGeneratorInterpreterImpl], void), useNationalizedCharacterData/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), schemaCharset/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.lang.String)}
; {var3071=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl, var3330=r0, var2529=org.hibernate.boot.registry.StandardServiceRegistry, var1774=r3, var1658=java.lang.Object, var3433=java.util.ArrayList, var3427=$r1, var626=org.hibernate.boot.internal.IdGeneratorInterpreterImpl, var628=$r2, var63=org.hibernate.service.Service, var1627=org.hibernate.service.ServiceRegistry, var419=org.hibernate.boot.registry.selector.spi.StrategySelector, var475=$r4, var209=r5, var1552=org.hibernate.engine.config.spi.ConfigurationService, var2852=$r6, var3654=r7, var3988=org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl, var1892=$r8, var269=java.util.Map, var2313=$r9, var754=org.hibernate.MultiTenancyStrategy, var3025=$r10, var247=org.hibernate.engine.config.spi.ConfigurationService$Converter, var3121=org.hibernate.engine.config.spi.StandardConverters, var3250=$r11, var294=java.lang.Boolean, var1524=$r12, var2241=$r13, var1303=$r14, var1122=$z0, var3087=$r15, var3370=$r16, var2526=$r17, var341=$r18, var1347=$z1, var1704=$r19, var655=$r20, var638=$r21, var481=$r22, var821=$z2, var360=$z8, var369=$r23, var3678=$r24, var2809=$r25, var2429=$r26, var2964=$z3, var3261=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1, var2693=$r27, var1420=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2, var3531=$r28, var923=javax.persistence.SharedCacheMode, var1118=$r29, var2147=$r30, var3861=$r31, var1007=$r32, var3483=$r33, var2170=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3, var385=$r34, var1113=org.hibernate.cache.spi.RegionFactory, var3347=$r35, var3200=org.hibernate.cache.spi.access.AccessType, var1070=$r71, var2188=$r38, var310=$r39, var161=$r40, var3016=$r41, var1595=$r42, var2041=$r43, var932=$z4, var1900=javax.persistence.ConstraintMode, var1429=$r44, var1849=$r47, var2128=$r45, var703=$r46, var3551=$z5, var3579=$r48, var68=$r50, var2600=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4, var179=$r49, var1102=org.hibernate.boot.model.naming.ImplicitNamingStrategy, var1959=java.util.concurrent.Callable, var3482=$r51, var324=$r52, var2312=$r53, var408=$r55, var3230=org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl, var1980=$r54, var1291=org.hibernate.boot.model.naming.PhysicalNamingStrategy, var472=$r56, var3729=$r57, var3683=$r58, var3177=$r59, var3500=$r60, var2914=$r61, var2288=$r62, var850=$z7, var1928=$r70, var777=$r64, var1166=$r65, var462=$r66, var2242=$r67, var2507=$z6, var476=$r68, var1261=$r69}
; {org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl=var3071, r0=var3330, org.hibernate.boot.registry.StandardServiceRegistry=var2529, r3=var1774, java.lang.Object=var1658, java.util.ArrayList=var3433, $r1=var3427, org.hibernate.boot.internal.IdGeneratorInterpreterImpl=var626, $r2=var628, org.hibernate.service.Service=var63, org.hibernate.service.ServiceRegistry=var1627, org.hibernate.boot.registry.selector.spi.StrategySelector=var419, $r4=var475, r5=var209, org.hibernate.engine.config.spi.ConfigurationService=var1552, $r6=var2852, r7=var3654, org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl=var3988, $r8=var1892, java.util.Map=var269, $r9=var2313, org.hibernate.MultiTenancyStrategy=var754, $r10=var3025, org.hibernate.engine.config.spi.ConfigurationService$Converter=var247, org.hibernate.engine.config.spi.StandardConverters=var3121, $r11=var3250, java.lang.Boolean=var294, $r12=var1524, $r13=var2241, $r14=var1303, $z0=var1122, $r15=var3087, $r16=var3370, $r17=var2526, $r18=var341, $z1=var1347, $r19=var1704, $r20=var655, $r21=var638, $r22=var481, $z2=var821, $z8=var360, $r23=var369, $r24=var3678, $r25=var2809, $r26=var2429, $z3=var2964, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1=var3261, $r27=var2693, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2=var1420, $r28=var3531, javax.persistence.SharedCacheMode=var923, $r29=var1118, $r30=var2147, $r31=var3861, $r32=var1007, $r33=var3483, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3=var2170, $r34=var385, org.hibernate.cache.spi.RegionFactory=var1113, $r35=var3347, org.hibernate.cache.spi.access.AccessType=var3200, $r71=var1070, $r38=var2188, $r39=var310, $r40=var161, $r41=var3016, $r42=var1595, $r43=var2041, $z4=var932, javax.persistence.ConstraintMode=var1900, $r44=var1429, $r47=var1849, $r45=var2128, $r46=var703, $z5=var3551, $r48=var3579, $r50=var68, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4=var2600, $r49=var179, org.hibernate.boot.model.naming.ImplicitNamingStrategy=var1102, java.util.concurrent.Callable=var1959, $r51=var3482, $r52=var324, $r53=var2312, $r55=var408, org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl=var3230, $r54=var1980, org.hibernate.boot.model.naming.PhysicalNamingStrategy=var1291, $r56=var472, $r57=var3729, $r58=var3683, $r59=var3177, $r60=var3500, $r61=var2914, $r62=var2288, $z7=var850, $r70=var1928, $r64=var777, $r65=var1166, $r66=var462, $r67=var2242, $z6=var2507, $r68=var476, $r69=var1261}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl;	r3 := @parameter0: org.hibernate.boot.registry.StandardServiceRegistry;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.ArrayList;	specialinvoke $r1.<java.util.ArrayList: void <init>()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList basicTypeRegistrations> = $r1;	$r2 = new org.hibernate.boot.internal.IdGeneratorInterpreterImpl;	specialinvoke $r2.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void <init>()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> = $r2;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.registry.StandardServiceRegistry serviceRegistry> = r3;	$r4 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/selector/spi/StrategySelector;");	r5 = (org.hibernate.boot.registry.selector.spi.StrategySelector) $r4;	$r6 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;");	r7 = (org.hibernate.engine.config.spi.ConfigurationService) $r6;	$r8 = new org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl;	specialinvoke $r8.<org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl: void <init>(org.hibernate.boot.registry.StandardServiceRegistry)>(r3);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl mappingDefaults> = $r8;	$r9 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>();	$r10 = staticinvoke <org.hibernate.MultiTenancyStrategy: org.hibernate.MultiTenancyStrategy determineMultiTenancyStrategy(java.util.Map)>($r9);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.MultiTenancyStrategy multiTenancyStrategy> = $r10;	$r11 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r12 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1);	$r13 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.xml_mapping_enabled", $r11, $r12);	$r14 = (java.lang.Boolean) $r13;	$z0 = virtualinvoke $r14.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean xmlMappingEnabled> = $z0;	$r15 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r16 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r17 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.implicit_for_joined", $r15, $r16);	$r18 = (java.lang.Boolean) $r17;	$z1 = virtualinvoke $r18.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitDiscriminatorsForJoinedInheritanceSupported> = $z1;	$r19 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r20 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r21 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.ignore_explicit_for_joined", $r19, $r20);	$r22 = (java.lang.Boolean) $r21;	$z2 = virtualinvoke $r22.<java.lang.Boolean: boolean booleanValue()>();	if $z2 != 0 goto $z8 = 0;	$z8 = 1;	goto [?= r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean explicitDiscriminatorsForJoinedInheritanceSupported> = $z8];	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean explicitDiscriminatorsForJoinedInheritanceSupported> = $z8;	$r23 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r24 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r25 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.force_in_select", $r23, $r24);	$r26 = (java.lang.Boolean) $r25;	$z3 = virtualinvoke $r26.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitlyForceDiscriminatorInSelect> = $z3;	$r27 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1;	specialinvoke $r27.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0);	$r28 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2;	specialinvoke $r28.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0);	$r29 = <javax.persistence.SharedCacheMode: javax.persistence.SharedCacheMode UNSPECIFIED>;	$r30 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("jakarta.persistence.sharedCache.mode", $r28, $r29);	$r31 = (javax.persistence.SharedCacheMode) $r30;	$r32 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("javax.persistence.sharedCache.mode", $r27, $r31);	$r33 = (javax.persistence.SharedCacheMode) $r32;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: javax.persistence.SharedCacheMode sharedCacheMode> = $r33;	$r34 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3;	specialinvoke $r34.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0);	$r35 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;");	if $r35 != null goto $r36 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;");	$r71 = null;	goto [?= $r38 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.cache.default_cache_concurrency_strategy", $r34, $r71)];	$r38 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.cache.default_cache_concurrency_strategy", $r34, $r71);	$r39 = (org.hibernate.cache.spi.access.AccessType) $r38;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.cache.spi.access.AccessType defaultCacheAccessType> = $r39;	$r40 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r41 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r42 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.enable_specj_proprietary_syntax", $r40, $r41);	$r43 = (java.lang.Boolean) $r42;	$z4 = virtualinvoke $r43.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean specjProprietarySyntaxEnabled> = $z4;	$r44 = <javax.persistence.ConstraintMode: javax.persistence.ConstraintMode NO_CONSTRAINT>;	$r47 = virtualinvoke $r44.<javax.persistence.ConstraintMode: java.lang.String name()>();	$r45 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.default_constraint_mode", class "Ljava/lang/String;", null);	$r46 = (java.lang.String) $r45;	$z5 = virtualinvoke $r47.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r46);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean noConstraintByDefault> = $z5;	$r48 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>();	$r50 = interfaceinvoke $r48.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.implicit_naming_strategy");	$r49 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4;	specialinvoke $r49.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl,org.hibernate.boot.registry.selector.spi.StrategySelector)>(r0, r5);	$r51 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.util.concurrent.Callable)>(class "Lorg/hibernate/boot/model/naming/ImplicitNamingStrategy;", $r50, $r49);	$r52 = (org.hibernate.boot.model.naming.ImplicitNamingStrategy) $r51;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.ImplicitNamingStrategy implicitNamingStrategy> = $r52;	$r53 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>();	$r55 = interfaceinvoke $r53.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.physical_naming_strategy");	$r54 = <org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl INSTANCE>;	$r56 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.lang.Object)>(class "Lorg/hibernate/boot/model/naming/PhysicalNamingStrategy;", $r55, $r54);	$r57 = (org.hibernate.boot.model.naming.PhysicalNamingStrategy) $r56;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategy physicalNamingStrategy> = $r57;	$r58 = specialinvoke r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList resolveInitialSourceProcessOrdering(org.hibernate.engine.config.spi.ConfigurationService)>(r7);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList sourceProcessOrdering> = $r58;	$r59 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r60 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1);	$r61 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.id.new_generator_mappings", $r59, $r60);	$r62 = (java.lang.Boolean) $r61;	$z7 = virtualinvoke $r62.<java.lang.Boolean: boolean booleanValue()>();	if $z7 == 0 goto $r63 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter>;	$r70 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter>;	virtualinvoke $r70.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void disableLegacyFallback()>();	goto [?= $r64 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>];	$r64 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r65 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r66 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.use_nationalized_character_data", $r64, $r65);	$r67 = (java.lang.Boolean) $r66;	$z6 = virtualinvoke $r67.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean useNationalizedCharacterData> = $z6;	$r68 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.charset_name", class "Ljava/lang/String;", null);	$r69 = (java.lang.String) $r68;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.lang.String schemaCharset> = $r69;	return
;block_num 7