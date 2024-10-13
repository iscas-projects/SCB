(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2611 0)
(declare-sort var1792 0)
(declare-sort var3580 0)
(declare-sort var268 0)
(declare-sort var3198 0)
(declare-sort var361 0)
(declare-sort var3438 0)
(declare-sort var3788 0)
(declare-sort var1434 0)
(declare-sort var1834 0)
(declare-sort var2735 0)
(declare-sort var2843 0)
(declare-sort var514 0)
(declare-sort var1838 0)
(declare-sort var3887 0)
(declare-sort var3573 0)
(declare-sort var2775 0)
(declare-sort var2670 0)
(declare-sort var2754 0)
(declare-sort var2446 0)
(declare-sort var2619 0)
(declare-sort var1421 0)
(declare-sort var2763 0)
(declare-sort var2472 0)
(declare-sort var1820 0)
(declare-sort var1038 0)
(declare-sort var459 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3788!class ClassObject)
(declare-const var1434!class ClassObject)
(declare-const var2446!class ClassObject)
(declare-const String!class ClassObject)
(declare-const var2472!class ClassObject)
(declare-const var459!class ClassObject)
(declare-fun <init>/-279557996 (var3580) void)
(declare-fun cast-from-var2611-to-var3580 (var2611) var3580)
(declare-fun var268-init () var268)
(declare-fun <init>/-325640736 (var268) void)
(declare-fun basicTypeRegistrations/1175689288 (var2611) var268)
(declare-fun var3198-init () var3198)
(declare-fun <init>/-2021892866 (var3198) void)
(declare-fun idGenerationTypeInterpreter/1175689288 (var2611) var3198)
(declare-fun serviceRegistry/1175689288 (var2611) var1792)
(declare-fun var3438_getService/-972330729 (var3438 ClassObject) var361)
(declare-fun cast-from-var1792-to-var3438 (var1792) var3438)
(declare-fun cast-from-var361-to-var3788 (var361) var3788)
(declare-fun cast-from-var361-to-var1434 (var361) var1434)
(declare-fun var1834-init () var1834)
(declare-fun <init>/690337262 (var1834 var1792) void)
(declare-fun mappingDefaults/1175689288 (var2611) var1834)
(declare-fun var1434_getSettings/2034258353 (var1434) var2735)
(declare-fun var2843_determineMultiTenancyStrategy/-92423624 (var2735) var2843)
(declare-fun multiTenancyStrategy/1175689288 (var2611) var2843)
(declare-fun var3887_valueOf/1602327315 (Bool) var3887)
(declare-fun var1434_getSetting/183454356 (var1434 String var514 var3580) var3580)
(declare-fun cast-from-var3887-to-var3580 (var3887) var3580)
(declare-fun cast-from-var3580-to-var3887 (var3580) var3887)
(declare-fun booleanValue/-1820462562 (var3887) Bool)
(declare-fun xmlMappingEnabled/1175689288 (var2611) Bool)
(declare-fun implicitDiscriminatorsForJoinedInheritanceSupported/1175689288 (var2611) Bool)
(declare-fun explicitDiscriminatorsForJoinedInheritanceSupported/1175689288 (var2611) Bool)
(declare-fun implicitlyForceDiscriminatorInSelect/1175689288 (var2611) Bool)
(declare-fun var3573-init () var3573)
(declare-fun <init>/291849780 (var3573 var2611) void)
(declare-fun var2775-init () var2775)
(declare-fun <init>/277599635 (var2775 var2611) void)
(declare-fun cast-from-var2775-to-var514 (var2775) var514)
(declare-fun cast-from-var2670-to-var3580 (var2670) var3580)
(declare-fun cast-from-var3580-to-var2670 (var3580) var2670)
(declare-fun cast-from-var3573-to-var514 (var3573) var514)
(declare-fun sharedCacheMode/1175689288 (var2611) var2670)
(declare-fun var2754-init () var2754)
(declare-fun <init>/263349490 (var2754 var2611) void)
(declare-fun cast-from-var361-to-var2446 (var361) var2446)
(declare-fun var2446_getDefaultAccessType/486354524 (var2446) var2619)
(declare-fun cast-from-var2754-to-var514 (var2754) var514)
(declare-fun cast-from-var2619-to-var3580 (var2619) var3580)
(declare-fun cast-from-var3580-to-var2619 (var3580) var2619)
(declare-fun defaultCacheAccessType/1175689288 (var2611) var2619)
(declare-fun specjProprietarySyntaxEnabled/1175689288 (var2611) Bool)
(declare-fun name/-1552687968 (var1421) String)
(declare-fun var1434_getSetting/617429165 (var1434 String ClassObject var3580) var3580)
(declare-fun cast-from-var3580-to-String (var3580) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun noConstraintByDefault/1175689288 (var2611) Bool)
(declare-fun var2735_get/1088891777 (var2735 var3580) var3580)
(declare-fun cast-from-String-to-var3580 (String) var3580)
(declare-fun var2763-init () var2763)
(declare-fun <init>/804750413 (var2763 var2611 var3788) void)
(declare-fun var3788_resolveDefaultableStrategy/799268158 (var3788 ClassObject var3580 var1820) var3580)
(declare-fun cast-from-var2763-to-var1820 (var2763) var1820)
(declare-fun cast-from-var3580-to-var2472 (var3580) var2472)
(declare-fun implicitNamingStrategy/1175689288 (var2611) var2472)
(declare-fun var3788_resolveDefaultableStrategy/-420100722 (var3788 ClassObject var3580 var3580) var3580)
(declare-fun cast-from-var1038-to-var3580 (var1038) var3580)
(declare-fun cast-from-var3580-to-var459 (var3580) var459)
(declare-fun physicalNamingStrategy/1175689288 (var2611) var459)
(declare-fun resolveInitialSourceProcessOrdering/-148199121 (var2611 var1434) var268)
(declare-fun sourceProcessOrdering/1175689288 (var2611) var268)
(declare-fun enableLegacyFallback/1863119490 (var3198) void)
(declare-fun useNationalizedCharacterData/1175689288 (var2611) Bool)
(declare-fun schemaCharset/1175689288 (var2611) String)
(declare-const null-var2611 var2611)
(declare-const null-var1792 var1792)
(declare-const var1838-BOOLEAN var514)
(declare-const var2670-UNSPECIFIED var2670)
(declare-const null-var361 var361)
(declare-const var1421-NO_CONSTRAINT var1421)
(declare-const null-var3580 var3580)
(declare-const var1038-INSTANCE var1038)
(declare-const var2870 var2611) ; Statement: r0 := @this: org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl 
(assert (not (= var2870 null-var2611)))
(declare-const var3092 var1792) ; Statement: r3 := @parameter0: org.hibernate.boot.registry.StandardServiceRegistry 
(assert (not (= var3092 null-var1792)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2611-to-var3580 var2870))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2870!1 var2611)
(define-const var1161 var268 var268-init) ; Statement: $r1 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1161)) ; Statement: specialinvoke $r1.<java.util.ArrayList: void <init>()>() 

(declare-const var1161!1 var268)
(declare-const var2870!2 var2611)
(assert (not (= var2870!2 null-var2611)))
(assert (= (basicTypeRegistrations/1175689288 var2870!2) var1161!1)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList basicTypeRegistrations> = $r1 
(define-const var3543 var3198 var3198-init) ; Statement: $r2 = new org.hibernate.boot.internal.IdGeneratorInterpreterImpl 
(assert true)
;(assert (<init>/-2021892866 var3543)) ; Statement: specialinvoke $r2.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void <init>()>() 

(declare-const var3543!1 var3198)
(declare-const var2870!3 var2611)
(assert (not (= var2870!3 null-var2611)))
(assert (= (idGenerationTypeInterpreter/1175689288 var2870!3) var3543!1)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> = $r2 
(declare-const var2870!4 var2611)
(assert (not (= var2870!4 null-var2611)))
(assert (= (serviceRegistry/1175689288 var2870!4) var3092)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.registry.StandardServiceRegistry serviceRegistry> = r3 
(define-const var1310 var361 (var3438_getService/-972330729 (cast-from-var1792-to-var3438 var3092) var3788!class)) ; Statement: $r4 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/selector/spi/StrategySelector;") 
(define-const var2070 var3788 (cast-from-var361-to-var3788 var1310)) ; Statement: r5 = (org.hibernate.boot.registry.selector.spi.StrategySelector) $r4 
(define-const var3551 var361 (var3438_getService/-972330729 (cast-from-var1792-to-var3438 var3092) var1434!class)) ; Statement: $r6 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;") 
(define-const var1074 var1434 (cast-from-var361-to-var1434 var3551)) ; Statement: r7 = (org.hibernate.engine.config.spi.ConfigurationService) $r6 
(define-const var3442 var1834 var1834-init) ; Statement: $r8 = new org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl 
(assert true)
;(assert (<init>/690337262 var3442 var3092)) ; Statement: specialinvoke $r8.<org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl: void <init>(org.hibernate.boot.registry.StandardServiceRegistry)>(r3) 

(declare-const var3442!1 var1834)
(declare-const var3092!1 var1792)
(declare-const var2870!5 var2611)
(assert (not (= var2870!5 null-var2611)))
(assert (= (mappingDefaults/1175689288 var2870!5) var3442!1)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl mappingDefaults> = $r8 
(define-const var3727 var2735 (var1434_getSettings/2034258353 var1074)) ; Statement: $r9 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>() 
(define-const var2661 var2843 (var2843_determineMultiTenancyStrategy/-92423624 var3727)) ; Statement: $r10 = staticinvoke <org.hibernate.MultiTenancyStrategy: org.hibernate.MultiTenancyStrategy determineMultiTenancyStrategy(java.util.Map)>($r9) 
(declare-const var2870!6 var2611)
(assert (not (= var2870!6 null-var2611)))
(assert (= (multiTenancyStrategy/1175689288 var2870!6) var2661)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.MultiTenancyStrategy multiTenancyStrategy> = $r10 
(define-const var2497 var514 var1838-BOOLEAN) ; Statement: $r11 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var1318 var3887 (var3887_valueOf/1602327315 (ite (= 1 1) true false))) ; Statement: $r12 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1) 
(define-const var1658 var3580 (var1434_getSetting/183454356 var1074 "hibernate.xml_mapping_enabled" var2497 (cast-from-var3887-to-var3580 var1318))) ; Statement: $r13 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.xml_mapping_enabled", $r11, $r12) 
(define-const var211 var3887 (cast-from-var3580-to-var3887 var1658)) ; Statement: $r14 = (java.lang.Boolean) $r13 
(assert true)
(define-const var1710 Bool (booleanValue/-1820462562 var211)) ; Statement: $z0 = virtualinvoke $r14.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var2870!7 var2611)
(assert (not (= var2870!7 null-var2611)))
(assert (= (xmlMappingEnabled/1175689288 var2870!7) var1710)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean xmlMappingEnabled> = $z0 
(define-const var1679 var514 var1838-BOOLEAN) ; Statement: $r15 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var2564 var3887 (var3887_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r16 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var1102 var3580 (var1434_getSetting/183454356 var1074 "hibernate.discriminator.implicit_for_joined" var1679 (cast-from-var3887-to-var3580 var2564))) ; Statement: $r17 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.implicit_for_joined", $r15, $r16) 
(define-const var2522 var3887 (cast-from-var3580-to-var3887 var1102)) ; Statement: $r18 = (java.lang.Boolean) $r17 
(assert true)
(define-const var149 Bool (booleanValue/-1820462562 var2522)) ; Statement: $z1 = virtualinvoke $r18.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var2870!8 var2611)
(assert (not (= var2870!8 null-var2611)))
(assert (= (implicitDiscriminatorsForJoinedInheritanceSupported/1175689288 var2870!8) var149)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitDiscriminatorsForJoinedInheritanceSupported> = $z1 
(define-const var2435 var514 var1838-BOOLEAN) ; Statement: $r19 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var623 var3887 (var3887_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r20 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var1851 var3580 (var1434_getSetting/183454356 var1074 "hibernate.discriminator.ignore_explicit_for_joined" var2435 (cast-from-var3887-to-var3580 var623))) ; Statement: $r21 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.ignore_explicit_for_joined", $r19, $r20) 
(define-const var1892 var3887 (cast-from-var3580-to-var3887 var1851)) ; Statement: $r22 = (java.lang.Boolean) $r21 
(assert true)
(define-const var2748 Bool (booleanValue/-1820462562 var1892)) ; Statement: $z2 = virtualinvoke $r22.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z2 != 0 goto $z8 = 0 
(assert (not (not (= (ite var2748 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var869 Bool (ite (= 1 1) true false)) ; Statement: $z8 = 1 
 ; Statement: goto [?= r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean explicitDiscriminatorsForJoinedInheritanceSupported> = $z8] 
(assert true) ; Non Conditional
(declare-const var2870!9 var2611)
(assert (not (= var2870!9 null-var2611)))
(assert (= (explicitDiscriminatorsForJoinedInheritanceSupported/1175689288 var2870!9) var869)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean explicitDiscriminatorsForJoinedInheritanceSupported> = $z8 
(define-const var826 var514 var1838-BOOLEAN) ; Statement: $r23 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var837 var3887 (var3887_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r24 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var3532 var3580 (var1434_getSetting/183454356 var1074 "hibernate.discriminator.force_in_select" var826 (cast-from-var3887-to-var3580 var837))) ; Statement: $r25 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.force_in_select", $r23, $r24) 
(define-const var3084 var3887 (cast-from-var3580-to-var3887 var3532)) ; Statement: $r26 = (java.lang.Boolean) $r25 
(assert true)
(define-const var3049 Bool (booleanValue/-1820462562 var3084)) ; Statement: $z3 = virtualinvoke $r26.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var2870!10 var2611)
(assert (not (= var2870!10 null-var2611)))
(assert (= (implicitlyForceDiscriminatorInSelect/1175689288 var2870!10) var3049)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitlyForceDiscriminatorInSelect> = $z3 
(define-const var1841 var3573 var3573-init) ; Statement: $r27 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1 
(assert true)
;(assert (<init>/291849780 var1841 var2870!10)) ; Statement: specialinvoke $r27.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0) 

(declare-const var1841!1 var3573)
(declare-const var2870!11 var2611)
(define-const var3693 var2775 var2775-init) ; Statement: $r28 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2 
(assert true)
;(assert (<init>/277599635 var3693 var2870!11)) ; Statement: specialinvoke $r28.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0) 

(declare-const var3693!1 var2775)
(declare-const var2870!12 var2611)
(define-const var2023 var2670 var2670-UNSPECIFIED) ; Statement: $r29 = <javax.persistence.SharedCacheMode: javax.persistence.SharedCacheMode UNSPECIFIED> 
(define-const var3900 var3580 (var1434_getSetting/183454356 var1074 "jakarta.persistence.sharedCache.mode" (cast-from-var2775-to-var514 var3693!1) (cast-from-var2670-to-var3580 var2023))) ; Statement: $r30 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("jakarta.persistence.sharedCache.mode", $r28, $r29) 
(define-const var2341 var2670 (cast-from-var3580-to-var2670 var3900)) ; Statement: $r31 = (javax.persistence.SharedCacheMode) $r30 
(define-const var706 var3580 (var1434_getSetting/183454356 var1074 "javax.persistence.sharedCache.mode" (cast-from-var3573-to-var514 var1841!1) (cast-from-var2670-to-var3580 var2341))) ; Statement: $r32 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("javax.persistence.sharedCache.mode", $r27, $r31) 
(define-const var3830 var2670 (cast-from-var3580-to-var2670 var706)) ; Statement: $r33 = (javax.persistence.SharedCacheMode) $r32 
(declare-const var2870!13 var2611)
(assert (not (= var2870!13 null-var2611)))
(assert (= (sharedCacheMode/1175689288 var2870!13) var3830)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: javax.persistence.SharedCacheMode sharedCacheMode> = $r33 
(define-const var3913 var2754 var2754-init) ; Statement: $r34 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3 
(assert true)
;(assert (<init>/263349490 var3913 var2870!13)) ; Statement: specialinvoke $r34.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0) 

(declare-const var3913!1 var2754)
(declare-const var2870!14 var2611)
(define-const var2770 var361 (var3438_getService/-972330729 (cast-from-var1792-to-var3438 var3092!1) var2446!class)) ; Statement: $r35 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;") 
 ; Statement: if $r35 != null goto $r36 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;") 
(assert (not (= var2770 null-var361))) ; Cond: $r35 != null 
(define-const var1569 var361 (var3438_getService/-972330729 (cast-from-var1792-to-var3438 var3092!1) var2446!class)) ; Statement: $r36 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;") 
(define-const var3732 var2446 (cast-from-var361-to-var2446 var1569)) ; Statement: $r37 = (org.hibernate.cache.spi.RegionFactory) $r36 
(define-const var2992 var2619 (var2446_getDefaultAccessType/486354524 var3732)) ; Statement: $r71 = interfaceinvoke $r37.<org.hibernate.cache.spi.RegionFactory: org.hibernate.cache.spi.access.AccessType getDefaultAccessType()>() 
(assert true) ; Non Conditional
(define-const var2069 var3580 (var1434_getSetting/183454356 var1074 "hibernate.cache.default_cache_concurrency_strategy" (cast-from-var2754-to-var514 var3913!1) (cast-from-var2619-to-var3580 var2992))) ; Statement: $r38 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.cache.default_cache_concurrency_strategy", $r34, $r71) 
(define-const var2006 var2619 (cast-from-var3580-to-var2619 var2069)) ; Statement: $r39 = (org.hibernate.cache.spi.access.AccessType) $r38 
(declare-const var2870!15 var2611)
(assert (not (= var2870!15 null-var2611)))
(assert (= (defaultCacheAccessType/1175689288 var2870!15) var2006)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.cache.spi.access.AccessType defaultCacheAccessType> = $r39 
(define-const var1588 var514 var1838-BOOLEAN) ; Statement: $r40 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var74 var3887 (var3887_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r41 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var2252 var3580 (var1434_getSetting/183454356 var1074 "hibernate.enable_specj_proprietary_syntax" var1588 (cast-from-var3887-to-var3580 var74))) ; Statement: $r42 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.enable_specj_proprietary_syntax", $r40, $r41) 
(define-const var1324 var3887 (cast-from-var3580-to-var3887 var2252)) ; Statement: $r43 = (java.lang.Boolean) $r42 
(assert true)
(define-const var3852 Bool (booleanValue/-1820462562 var1324)) ; Statement: $z4 = virtualinvoke $r43.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var2870!16 var2611)
(assert (not (= var2870!16 null-var2611)))
(assert (= (specjProprietarySyntaxEnabled/1175689288 var2870!16) var3852)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean specjProprietarySyntaxEnabled> = $z4 
(define-const var1112 var1421 var1421-NO_CONSTRAINT) ; Statement: $r44 = <javax.persistence.ConstraintMode: javax.persistence.ConstraintMode NO_CONSTRAINT> 
(assert true)
(define-const var446 String (name/-1552687968 var1112)) ; Statement: $r47 = virtualinvoke $r44.<javax.persistence.ConstraintMode: java.lang.String name()>() 
(define-const var546 var3580 (var1434_getSetting/617429165 var1074 "hibernate.hbm2ddl.default_constraint_mode" String!class null-var3580)) ; Statement: $r45 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.default_constraint_mode", class "Ljava/lang/String;", null) 
(define-const var1654 String (cast-from-var3580-to-String var546)) ; Statement: $r46 = (java.lang.String) $r45 
(assert true)
(define-const var76 Bool (equalsIgnoreCase/-92311102 var446 var1654)) ; Statement: $z5 = virtualinvoke $r47.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r46) 
(declare-const var2870!17 var2611)
(assert (not (= var2870!17 null-var2611)))
(assert (= (noConstraintByDefault/1175689288 var2870!17) var76)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean noConstraintByDefault> = $z5 
(define-const var2734 var2735 (var1434_getSettings/2034258353 var1074)) ; Statement: $r48 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>() 
(define-const var3124 var3580 (var2735_get/1088891777 var2734 (cast-from-String-to-var3580 "hibernate.implicit_naming_strategy"))) ; Statement: $r50 = interfaceinvoke $r48.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.implicit_naming_strategy") 
(define-const var251 var2763 var2763-init) ; Statement: $r49 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4 
(assert true)
;(assert (<init>/804750413 var251 var2870!17 var2070)) ; Statement: specialinvoke $r49.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl,org.hibernate.boot.registry.selector.spi.StrategySelector)>(r0, r5) 

(declare-const var251!1 var2763)
(declare-const var2870!18 var2611)
(declare-const var2070!1 var3788)
(define-const var500 var3580 (var3788_resolveDefaultableStrategy/799268158 var2070!1 var2472!class var3124 (cast-from-var2763-to-var1820 var251!1))) ; Statement: $r51 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.util.concurrent.Callable)>(class "Lorg/hibernate/boot/model/naming/ImplicitNamingStrategy;", $r50, $r49) 
(define-const var2871 var2472 (cast-from-var3580-to-var2472 var500)) ; Statement: $r52 = (org.hibernate.boot.model.naming.ImplicitNamingStrategy) $r51 
(declare-const var2870!19 var2611)
(assert (not (= var2870!19 null-var2611)))
(assert (= (implicitNamingStrategy/1175689288 var2870!19) var2871)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.ImplicitNamingStrategy implicitNamingStrategy> = $r52 
(define-const var3064 var2735 (var1434_getSettings/2034258353 var1074)) ; Statement: $r53 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>() 
(define-const var2961 var3580 (var2735_get/1088891777 var3064 (cast-from-String-to-var3580 "hibernate.physical_naming_strategy"))) ; Statement: $r55 = interfaceinvoke $r53.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.physical_naming_strategy") 
(define-const var3947 var1038 var1038-INSTANCE) ; Statement: $r54 = <org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl INSTANCE> 
(define-const var3521 var3580 (var3788_resolveDefaultableStrategy/-420100722 var2070!1 var459!class var2961 (cast-from-var1038-to-var3580 var3947))) ; Statement: $r56 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.lang.Object)>(class "Lorg/hibernate/boot/model/naming/PhysicalNamingStrategy;", $r55, $r54) 
(define-const var567 var459 (cast-from-var3580-to-var459 var3521)) ; Statement: $r57 = (org.hibernate.boot.model.naming.PhysicalNamingStrategy) $r56 
(declare-const var2870!20 var2611)
(assert (not (= var2870!20 null-var2611)))
(assert (= (physicalNamingStrategy/1175689288 var2870!20) var567)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategy physicalNamingStrategy> = $r57 
(assert true)
(define-const var3375 var268 (resolveInitialSourceProcessOrdering/-148199121 var2870!20 var1074)) ; Statement: $r58 = specialinvoke r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList resolveInitialSourceProcessOrdering(org.hibernate.engine.config.spi.ConfigurationService)>(r7) 
(declare-const var2870!21 var2611)
(assert (not (= var2870!21 null-var2611)))
(assert (= (sourceProcessOrdering/1175689288 var2870!21) var3375)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList sourceProcessOrdering> = $r58 
(define-const var1943 var514 var1838-BOOLEAN) ; Statement: $r59 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var1795 var3887 (var3887_valueOf/1602327315 (ite (= 1 1) true false))) ; Statement: $r60 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1) 
(define-const var3083 var3580 (var1434_getSetting/183454356 var1074 "hibernate.id.new_generator_mappings" var1943 (cast-from-var3887-to-var3580 var1795))) ; Statement: $r61 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.id.new_generator_mappings", $r59, $r60) 
(define-const var1379 var3887 (cast-from-var3580-to-var3887 var3083)) ; Statement: $r62 = (java.lang.Boolean) $r61 
(assert true)
(define-const var1203 Bool (booleanValue/-1820462562 var1379)) ; Statement: $z7 = virtualinvoke $r62.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z7 == 0 goto $r63 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> 
(assert (= (ite var1203 1 0) 0)) ; Cond: $z7 == 0 
(define-const var1041 var3198 (idGenerationTypeInterpreter/1175689288 var2870!21)) ; Statement: $r63 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> 
(assert true)
;(assert (enableLegacyFallback/1863119490 var1041)) ; Statement: virtualinvoke $r63.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void enableLegacyFallback()>() 

(declare-const var1041!1 var3198)
(assert true) ; Non Conditional
(define-const var1441 var514 var1838-BOOLEAN) ; Statement: $r64 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var3875 var3887 (var3887_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r65 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var3421 var3580 (var1434_getSetting/183454356 var1074 "hibernate.use_nationalized_character_data" var1441 (cast-from-var3887-to-var3580 var3875))) ; Statement: $r66 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.use_nationalized_character_data", $r64, $r65) 
(define-const var2358 var3887 (cast-from-var3580-to-var3887 var3421)) ; Statement: $r67 = (java.lang.Boolean) $r66 
(assert true)
(define-const var3854 Bool (booleanValue/-1820462562 var2358)) ; Statement: $z6 = virtualinvoke $r67.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var2870!22 var2611)
(assert (not (= var2870!22 null-var2611)))
(assert (= (useNationalizedCharacterData/1175689288 var2870!22) var3854)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean useNationalizedCharacterData> = $z6 
(define-const var2305 var3580 (var1434_getSetting/617429165 var1074 "hibernate.hbm2ddl.charset_name" String!class null-var3580)) ; Statement: $r68 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.charset_name", class "Ljava/lang/String;", null) 
(define-const var395 String (cast-from-var3580-to-String var2305)) ; Statement: $r69 = (java.lang.String) $r68 
(declare-const var2870!23 var2611)
(assert (not (= var2870!23 null-var2611)))
(assert (= (schemaCharset/1175689288 var2870!23) var395)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.lang.String schemaCharset> = $r69 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2611-to-var3580=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.lang.Object), var268-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), basicTypeRegistrations/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.util.ArrayList), var3198-init=([], org.hibernate.boot.internal.IdGeneratorInterpreterImpl), <init>/-2021892866=([org.hibernate.boot.internal.IdGeneratorInterpreterImpl], void), idGenerationTypeInterpreter/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.internal.IdGeneratorInterpreterImpl), serviceRegistry/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.registry.StandardServiceRegistry), var3438_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var1792-to-var3438=([org.hibernate.boot.registry.StandardServiceRegistry], org.hibernate.service.ServiceRegistry), cast-from-var361-to-var3788=([org.hibernate.service.Service], org.hibernate.boot.registry.selector.spi.StrategySelector), cast-from-var361-to-var1434=([org.hibernate.service.Service], org.hibernate.engine.config.spi.ConfigurationService), var1834-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl), <init>/690337262=([org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl, org.hibernate.boot.registry.StandardServiceRegistry], void), mappingDefaults/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl), var1434_getSettings/2034258353=([org.hibernate.engine.config.spi.ConfigurationService], java.util.Map), var2843_determineMultiTenancyStrategy/-92423624=([java.util.Map], org.hibernate.MultiTenancyStrategy), multiTenancyStrategy/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.MultiTenancyStrategy), var3887_valueOf/1602327315=([boolean], java.lang.Boolean), var1434_getSetting/183454356=([org.hibernate.engine.config.spi.ConfigurationService, java.lang.String, org.hibernate.engine.config.spi.ConfigurationService$Converter, java.lang.Object], java.lang.Object), cast-from-var3887-to-var3580=([java.lang.Boolean], java.lang.Object), cast-from-var3580-to-var3887=([java.lang.Object], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), xmlMappingEnabled/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), implicitDiscriminatorsForJoinedInheritanceSupported/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), explicitDiscriminatorsForJoinedInheritanceSupported/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), implicitlyForceDiscriminatorInSelect/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), var3573-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1), <init>/291849780=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], void), var2775-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2), <init>/277599635=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], void), cast-from-var2775-to-var514=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2], org.hibernate.engine.config.spi.ConfigurationService$Converter), cast-from-var2670-to-var3580=([javax.persistence.SharedCacheMode], java.lang.Object), cast-from-var3580-to-var2670=([java.lang.Object], javax.persistence.SharedCacheMode), cast-from-var3573-to-var514=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1], org.hibernate.engine.config.spi.ConfigurationService$Converter), sharedCacheMode/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], javax.persistence.SharedCacheMode), var2754-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3), <init>/263349490=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], void), cast-from-var361-to-var2446=([org.hibernate.service.Service], org.hibernate.cache.spi.RegionFactory), var2446_getDefaultAccessType/486354524=([org.hibernate.cache.spi.RegionFactory], org.hibernate.cache.spi.access.AccessType), cast-from-var2754-to-var514=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3], org.hibernate.engine.config.spi.ConfigurationService$Converter), cast-from-var2619-to-var3580=([org.hibernate.cache.spi.access.AccessType], java.lang.Object), cast-from-var3580-to-var2619=([java.lang.Object], org.hibernate.cache.spi.access.AccessType), defaultCacheAccessType/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.cache.spi.access.AccessType), specjProprietarySyntaxEnabled/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), name/-1552687968=([javax.persistence.ConstraintMode], java.lang.String), var1434_getSetting/617429165=([org.hibernate.engine.config.spi.ConfigurationService, java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object), cast-from-var3580-to-String=([java.lang.Object], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), noConstraintByDefault/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), var2735_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3580=([java.lang.String], java.lang.Object), var2763-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4), <init>/804750413=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl, org.hibernate.boot.registry.selector.spi.StrategySelector], void), var3788_resolveDefaultableStrategy/799268158=([org.hibernate.boot.registry.selector.spi.StrategySelector, java.lang.Class, java.lang.Object, java.util.concurrent.Callable], java.lang.Object), cast-from-var2763-to-var1820=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4], java.util.concurrent.Callable), cast-from-var3580-to-var2472=([java.lang.Object], org.hibernate.boot.model.naming.ImplicitNamingStrategy), implicitNamingStrategy/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.model.naming.ImplicitNamingStrategy), var3788_resolveDefaultableStrategy/-420100722=([org.hibernate.boot.registry.selector.spi.StrategySelector, java.lang.Class, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var1038-to-var3580=([org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl], java.lang.Object), cast-from-var3580-to-var459=([java.lang.Object], org.hibernate.boot.model.naming.PhysicalNamingStrategy), physicalNamingStrategy/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.model.naming.PhysicalNamingStrategy), resolveInitialSourceProcessOrdering/-148199121=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl, org.hibernate.engine.config.spi.ConfigurationService], java.util.ArrayList), sourceProcessOrdering/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.util.ArrayList), enableLegacyFallback/1863119490=([org.hibernate.boot.internal.IdGeneratorInterpreterImpl], void), useNationalizedCharacterData/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), schemaCharset/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.lang.String)}
; {var2611=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl, var2870=r0, var1792=org.hibernate.boot.registry.StandardServiceRegistry, var3092=r3, var3580=java.lang.Object, var268=java.util.ArrayList, var1161=$r1, var3198=org.hibernate.boot.internal.IdGeneratorInterpreterImpl, var3543=$r2, var361=org.hibernate.service.Service, var3438=org.hibernate.service.ServiceRegistry, var3788=org.hibernate.boot.registry.selector.spi.StrategySelector, var1310=$r4, var2070=r5, var1434=org.hibernate.engine.config.spi.ConfigurationService, var3551=$r6, var1074=r7, var1834=org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl, var3442=$r8, var2735=java.util.Map, var3727=$r9, var2843=org.hibernate.MultiTenancyStrategy, var2661=$r10, var514=org.hibernate.engine.config.spi.ConfigurationService$Converter, var1838=org.hibernate.engine.config.spi.StandardConverters, var2497=$r11, var3887=java.lang.Boolean, var1318=$r12, var1658=$r13, var211=$r14, var1710=$z0, var1679=$r15, var2564=$r16, var1102=$r17, var2522=$r18, var149=$z1, var2435=$r19, var623=$r20, var1851=$r21, var1892=$r22, var2748=$z2, var869=$z8, var826=$r23, var837=$r24, var3532=$r25, var3084=$r26, var3049=$z3, var3573=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1, var1841=$r27, var2775=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2, var3693=$r28, var2670=javax.persistence.SharedCacheMode, var2023=$r29, var3900=$r30, var2341=$r31, var706=$r32, var3830=$r33, var2754=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3, var3913=$r34, var2446=org.hibernate.cache.spi.RegionFactory, var2770=$r35, var1569=$r36, var3732=$r37, var2619=org.hibernate.cache.spi.access.AccessType, var2992=$r71, var2069=$r38, var2006=$r39, var1588=$r40, var74=$r41, var2252=$r42, var1324=$r43, var3852=$z4, var1421=javax.persistence.ConstraintMode, var1112=$r44, var446=$r47, var546=$r45, var1654=$r46, var76=$z5, var2734=$r48, var3124=$r50, var2763=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4, var251=$r49, var2472=org.hibernate.boot.model.naming.ImplicitNamingStrategy, var1820=java.util.concurrent.Callable, var500=$r51, var2871=$r52, var3064=$r53, var2961=$r55, var1038=org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl, var3947=$r54, var459=org.hibernate.boot.model.naming.PhysicalNamingStrategy, var3521=$r56, var567=$r57, var3375=$r58, var1943=$r59, var1795=$r60, var3083=$r61, var1379=$r62, var1203=$z7, var1041=$r63, var1441=$r64, var3875=$r65, var3421=$r66, var2358=$r67, var3854=$z6, var2305=$r68, var395=$r69}
; {org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl=var2611, r0=var2870, org.hibernate.boot.registry.StandardServiceRegistry=var1792, r3=var3092, java.lang.Object=var3580, java.util.ArrayList=var268, $r1=var1161, org.hibernate.boot.internal.IdGeneratorInterpreterImpl=var3198, $r2=var3543, org.hibernate.service.Service=var361, org.hibernate.service.ServiceRegistry=var3438, org.hibernate.boot.registry.selector.spi.StrategySelector=var3788, $r4=var1310, r5=var2070, org.hibernate.engine.config.spi.ConfigurationService=var1434, $r6=var3551, r7=var1074, org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl=var1834, $r8=var3442, java.util.Map=var2735, $r9=var3727, org.hibernate.MultiTenancyStrategy=var2843, $r10=var2661, org.hibernate.engine.config.spi.ConfigurationService$Converter=var514, org.hibernate.engine.config.spi.StandardConverters=var1838, $r11=var2497, java.lang.Boolean=var3887, $r12=var1318, $r13=var1658, $r14=var211, $z0=var1710, $r15=var1679, $r16=var2564, $r17=var1102, $r18=var2522, $z1=var149, $r19=var2435, $r20=var623, $r21=var1851, $r22=var1892, $z2=var2748, $z8=var869, $r23=var826, $r24=var837, $r25=var3532, $r26=var3084, $z3=var3049, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1=var3573, $r27=var1841, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2=var2775, $r28=var3693, javax.persistence.SharedCacheMode=var2670, $r29=var2023, $r30=var3900, $r31=var2341, $r32=var706, $r33=var3830, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3=var2754, $r34=var3913, org.hibernate.cache.spi.RegionFactory=var2446, $r35=var2770, $r36=var1569, $r37=var3732, org.hibernate.cache.spi.access.AccessType=var2619, $r71=var2992, $r38=var2069, $r39=var2006, $r40=var1588, $r41=var74, $r42=var2252, $r43=var1324, $z4=var3852, javax.persistence.ConstraintMode=var1421, $r44=var1112, $r47=var446, $r45=var546, $r46=var1654, $z5=var76, $r48=var2734, $r50=var3124, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4=var2763, $r49=var251, org.hibernate.boot.model.naming.ImplicitNamingStrategy=var2472, java.util.concurrent.Callable=var1820, $r51=var500, $r52=var2871, $r53=var3064, $r55=var2961, org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl=var1038, $r54=var3947, org.hibernate.boot.model.naming.PhysicalNamingStrategy=var459, $r56=var3521, $r57=var567, $r58=var3375, $r59=var1943, $r60=var1795, $r61=var3083, $r62=var1379, $z7=var1203, $r63=var1041, $r64=var1441, $r65=var3875, $r66=var3421, $r67=var2358, $z6=var3854, $r68=var2305, $r69=var395}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl;	r3 := @parameter0: org.hibernate.boot.registry.StandardServiceRegistry;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.ArrayList;	specialinvoke $r1.<java.util.ArrayList: void <init>()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList basicTypeRegistrations> = $r1;	$r2 = new org.hibernate.boot.internal.IdGeneratorInterpreterImpl;	specialinvoke $r2.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void <init>()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> = $r2;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.registry.StandardServiceRegistry serviceRegistry> = r3;	$r4 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/selector/spi/StrategySelector;");	r5 = (org.hibernate.boot.registry.selector.spi.StrategySelector) $r4;	$r6 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;");	r7 = (org.hibernate.engine.config.spi.ConfigurationService) $r6;	$r8 = new org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl;	specialinvoke $r8.<org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl: void <init>(org.hibernate.boot.registry.StandardServiceRegistry)>(r3);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl mappingDefaults> = $r8;	$r9 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>();	$r10 = staticinvoke <org.hibernate.MultiTenancyStrategy: org.hibernate.MultiTenancyStrategy determineMultiTenancyStrategy(java.util.Map)>($r9);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.MultiTenancyStrategy multiTenancyStrategy> = $r10;	$r11 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r12 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1);	$r13 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.xml_mapping_enabled", $r11, $r12);	$r14 = (java.lang.Boolean) $r13;	$z0 = virtualinvoke $r14.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean xmlMappingEnabled> = $z0;	$r15 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r16 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r17 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.implicit_for_joined", $r15, $r16);	$r18 = (java.lang.Boolean) $r17;	$z1 = virtualinvoke $r18.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitDiscriminatorsForJoinedInheritanceSupported> = $z1;	$r19 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r20 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r21 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.ignore_explicit_for_joined", $r19, $r20);	$r22 = (java.lang.Boolean) $r21;	$z2 = virtualinvoke $r22.<java.lang.Boolean: boolean booleanValue()>();	if $z2 != 0 goto $z8 = 0;	$z8 = 1;	goto [?= r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean explicitDiscriminatorsForJoinedInheritanceSupported> = $z8];	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean explicitDiscriminatorsForJoinedInheritanceSupported> = $z8;	$r23 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r24 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r25 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.force_in_select", $r23, $r24);	$r26 = (java.lang.Boolean) $r25;	$z3 = virtualinvoke $r26.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitlyForceDiscriminatorInSelect> = $z3;	$r27 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1;	specialinvoke $r27.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0);	$r28 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2;	specialinvoke $r28.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0);	$r29 = <javax.persistence.SharedCacheMode: javax.persistence.SharedCacheMode UNSPECIFIED>;	$r30 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("jakarta.persistence.sharedCache.mode", $r28, $r29);	$r31 = (javax.persistence.SharedCacheMode) $r30;	$r32 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("javax.persistence.sharedCache.mode", $r27, $r31);	$r33 = (javax.persistence.SharedCacheMode) $r32;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: javax.persistence.SharedCacheMode sharedCacheMode> = $r33;	$r34 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3;	specialinvoke $r34.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0);	$r35 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;");	if $r35 != null goto $r36 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;");	$r36 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;");	$r37 = (org.hibernate.cache.spi.RegionFactory) $r36;	$r71 = interfaceinvoke $r37.<org.hibernate.cache.spi.RegionFactory: org.hibernate.cache.spi.access.AccessType getDefaultAccessType()>();	$r38 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.cache.default_cache_concurrency_strategy", $r34, $r71);	$r39 = (org.hibernate.cache.spi.access.AccessType) $r38;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.cache.spi.access.AccessType defaultCacheAccessType> = $r39;	$r40 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r41 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r42 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.enable_specj_proprietary_syntax", $r40, $r41);	$r43 = (java.lang.Boolean) $r42;	$z4 = virtualinvoke $r43.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean specjProprietarySyntaxEnabled> = $z4;	$r44 = <javax.persistence.ConstraintMode: javax.persistence.ConstraintMode NO_CONSTRAINT>;	$r47 = virtualinvoke $r44.<javax.persistence.ConstraintMode: java.lang.String name()>();	$r45 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.default_constraint_mode", class "Ljava/lang/String;", null);	$r46 = (java.lang.String) $r45;	$z5 = virtualinvoke $r47.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r46);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean noConstraintByDefault> = $z5;	$r48 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>();	$r50 = interfaceinvoke $r48.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.implicit_naming_strategy");	$r49 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4;	specialinvoke $r49.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl,org.hibernate.boot.registry.selector.spi.StrategySelector)>(r0, r5);	$r51 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.util.concurrent.Callable)>(class "Lorg/hibernate/boot/model/naming/ImplicitNamingStrategy;", $r50, $r49);	$r52 = (org.hibernate.boot.model.naming.ImplicitNamingStrategy) $r51;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.ImplicitNamingStrategy implicitNamingStrategy> = $r52;	$r53 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>();	$r55 = interfaceinvoke $r53.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.physical_naming_strategy");	$r54 = <org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl INSTANCE>;	$r56 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.lang.Object)>(class "Lorg/hibernate/boot/model/naming/PhysicalNamingStrategy;", $r55, $r54);	$r57 = (org.hibernate.boot.model.naming.PhysicalNamingStrategy) $r56;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategy physicalNamingStrategy> = $r57;	$r58 = specialinvoke r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList resolveInitialSourceProcessOrdering(org.hibernate.engine.config.spi.ConfigurationService)>(r7);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList sourceProcessOrdering> = $r58;	$r59 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r60 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1);	$r61 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.id.new_generator_mappings", $r59, $r60);	$r62 = (java.lang.Boolean) $r61;	$z7 = virtualinvoke $r62.<java.lang.Boolean: boolean booleanValue()>();	if $z7 == 0 goto $r63 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter>;	$r63 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter>;	virtualinvoke $r63.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void enableLegacyFallback()>();	$r64 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r65 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r66 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.use_nationalized_character_data", $r64, $r65);	$r67 = (java.lang.Boolean) $r66;	$z6 = virtualinvoke $r67.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean useNationalizedCharacterData> = $z6;	$r68 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.charset_name", class "Ljava/lang/String;", null);	$r69 = (java.lang.String) $r68;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.lang.String schemaCharset> = $r69;	return
;block_num 7