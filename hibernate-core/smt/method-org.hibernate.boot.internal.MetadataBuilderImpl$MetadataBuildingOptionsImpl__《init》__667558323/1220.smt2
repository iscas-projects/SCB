(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2863 0)
(declare-sort var0 0)
(declare-sort var2786 0)
(declare-sort var3375 0)
(declare-sort var1860 0)
(declare-sort var1865 0)
(declare-sort var1628 0)
(declare-sort var1991 0)
(declare-sort var673 0)
(declare-sort var3100 0)
(declare-sort var928 0)
(declare-sort var1355 0)
(declare-sort var2959 0)
(declare-sort var2503 0)
(declare-sort var447 0)
(declare-sort var1125 0)
(declare-sort var546 0)
(declare-sort var3181 0)
(declare-sort var1096 0)
(declare-sort var1945 0)
(declare-sort var1726 0)
(declare-sort var2218 0)
(declare-sort var867 0)
(declare-sort var1942 0)
(declare-sort var2872 0)
(declare-sort var481 0)
(declare-sort var592 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1991!class ClassObject)
(declare-const var673!class ClassObject)
(declare-const var1945!class ClassObject)
(declare-const String!class ClassObject)
(declare-const var1942!class ClassObject)
(declare-const var592!class ClassObject)
(declare-fun <init>/-279557996 (var2786) void)
(declare-fun cast-from-var2863-to-var2786 (var2863) var2786)
(declare-fun var3375-init () var3375)
(declare-fun <init>/-325640736 (var3375) void)
(declare-fun basicTypeRegistrations/1175689288 (var2863) var3375)
(declare-fun var1860-init () var1860)
(declare-fun <init>/-2021892866 (var1860) void)
(declare-fun idGenerationTypeInterpreter/1175689288 (var2863) var1860)
(declare-fun serviceRegistry/1175689288 (var2863) var0)
(declare-fun var1628_getService/-972330729 (var1628 ClassObject) var1865)
(declare-fun cast-from-var0-to-var1628 (var0) var1628)
(declare-fun cast-from-var1865-to-var1991 (var1865) var1991)
(declare-fun cast-from-var1865-to-var673 (var1865) var673)
(declare-fun var3100-init () var3100)
(declare-fun <init>/690337262 (var3100 var0) void)
(declare-fun mappingDefaults/1175689288 (var2863) var3100)
(declare-fun var673_getSettings/2034258353 (var673) var928)
(declare-fun var1355_determineMultiTenancyStrategy/-92423624 (var928) var1355)
(declare-fun multiTenancyStrategy/1175689288 (var2863) var1355)
(declare-fun var447_valueOf/1602327315 (Bool) var447)
(declare-fun var673_getSetting/183454356 (var673 String var2959 var2786) var2786)
(declare-fun cast-from-var447-to-var2786 (var447) var2786)
(declare-fun cast-from-var2786-to-var447 (var2786) var447)
(declare-fun booleanValue/-1820462562 (var447) Bool)
(declare-fun xmlMappingEnabled/1175689288 (var2863) Bool)
(declare-fun implicitDiscriminatorsForJoinedInheritanceSupported/1175689288 (var2863) Bool)
(declare-fun explicitDiscriminatorsForJoinedInheritanceSupported/1175689288 (var2863) Bool)
(declare-fun implicitlyForceDiscriminatorInSelect/1175689288 (var2863) Bool)
(declare-fun var1125-init () var1125)
(declare-fun <init>/291849780 (var1125 var2863) void)
(declare-fun var546-init () var546)
(declare-fun <init>/277599635 (var546 var2863) void)
(declare-fun cast-from-var546-to-var2959 (var546) var2959)
(declare-fun cast-from-var3181-to-var2786 (var3181) var2786)
(declare-fun cast-from-var2786-to-var3181 (var2786) var3181)
(declare-fun cast-from-var1125-to-var2959 (var1125) var2959)
(declare-fun sharedCacheMode/1175689288 (var2863) var3181)
(declare-fun var1096-init () var1096)
(declare-fun <init>/263349490 (var1096 var2863) void)
(declare-fun cast-from-var1865-to-var1945 (var1865) var1945)
(declare-fun var1945_getDefaultAccessType/486354524 (var1945) var1726)
(declare-fun cast-from-var1096-to-var2959 (var1096) var2959)
(declare-fun cast-from-var1726-to-var2786 (var1726) var2786)
(declare-fun cast-from-var2786-to-var1726 (var2786) var1726)
(declare-fun defaultCacheAccessType/1175689288 (var2863) var1726)
(declare-fun specjProprietarySyntaxEnabled/1175689288 (var2863) Bool)
(declare-fun name/-1552687968 (var2218) String)
(declare-fun var673_getSetting/617429165 (var673 String ClassObject var2786) var2786)
(declare-fun cast-from-var2786-to-String (var2786) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun noConstraintByDefault/1175689288 (var2863) Bool)
(declare-fun var928_get/1088891777 (var928 var2786) var2786)
(declare-fun cast-from-String-to-var2786 (String) var2786)
(declare-fun var867-init () var867)
(declare-fun <init>/804750413 (var867 var2863 var1991) void)
(declare-fun var1991_resolveDefaultableStrategy/799268158 (var1991 ClassObject var2786 var2872) var2786)
(declare-fun cast-from-var867-to-var2872 (var867) var2872)
(declare-fun cast-from-var2786-to-var1942 (var2786) var1942)
(declare-fun implicitNamingStrategy/1175689288 (var2863) var1942)
(declare-fun var1991_resolveDefaultableStrategy/-420100722 (var1991 ClassObject var2786 var2786) var2786)
(declare-fun cast-from-var481-to-var2786 (var481) var2786)
(declare-fun cast-from-var2786-to-var592 (var2786) var592)
(declare-fun physicalNamingStrategy/1175689288 (var2863) var592)
(declare-fun resolveInitialSourceProcessOrdering/-148199121 (var2863 var673) var3375)
(declare-fun sourceProcessOrdering/1175689288 (var2863) var3375)
(declare-fun disableLegacyFallback/-75856393 (var1860) void)
(declare-fun useNationalizedCharacterData/1175689288 (var2863) Bool)
(declare-fun schemaCharset/1175689288 (var2863) String)
(declare-const null-var2863 var2863)
(declare-const null-var0 var0)
(declare-const var2503-BOOLEAN var2959)
(declare-const var3181-UNSPECIFIED var3181)
(declare-const null-var1865 var1865)
(declare-const var2218-NO_CONSTRAINT var2218)
(declare-const null-var2786 var2786)
(declare-const var481-INSTANCE var481)
(declare-const var81 var2863) ; Statement: r0 := @this: org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl 
(assert (not (= var81 null-var2863)))
(declare-const var1866 var0) ; Statement: r3 := @parameter0: org.hibernate.boot.registry.StandardServiceRegistry 
(assert (not (= var1866 null-var0)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2863-to-var2786 var81))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var81!1 var2863)
(define-const var1709 var3375 var3375-init) ; Statement: $r1 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1709)) ; Statement: specialinvoke $r1.<java.util.ArrayList: void <init>()>() 

(declare-const var1709!1 var3375)
(declare-const var81!2 var2863)
(assert (not (= var81!2 null-var2863)))
(assert (= (basicTypeRegistrations/1175689288 var81!2) var1709!1)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList basicTypeRegistrations> = $r1 
(define-const var3283 var1860 var1860-init) ; Statement: $r2 = new org.hibernate.boot.internal.IdGeneratorInterpreterImpl 
(assert true)
;(assert (<init>/-2021892866 var3283)) ; Statement: specialinvoke $r2.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void <init>()>() 

(declare-const var3283!1 var1860)
(declare-const var81!3 var2863)
(assert (not (= var81!3 null-var2863)))
(assert (= (idGenerationTypeInterpreter/1175689288 var81!3) var3283!1)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> = $r2 
(declare-const var81!4 var2863)
(assert (not (= var81!4 null-var2863)))
(assert (= (serviceRegistry/1175689288 var81!4) var1866)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.registry.StandardServiceRegistry serviceRegistry> = r3 
(define-const var561 var1865 (var1628_getService/-972330729 (cast-from-var0-to-var1628 var1866) var1991!class)) ; Statement: $r4 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/selector/spi/StrategySelector;") 
(define-const var996 var1991 (cast-from-var1865-to-var1991 var561)) ; Statement: r5 = (org.hibernate.boot.registry.selector.spi.StrategySelector) $r4 
(define-const var2538 var1865 (var1628_getService/-972330729 (cast-from-var0-to-var1628 var1866) var673!class)) ; Statement: $r6 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;") 
(define-const var6 var673 (cast-from-var1865-to-var673 var2538)) ; Statement: r7 = (org.hibernate.engine.config.spi.ConfigurationService) $r6 
(define-const var879 var3100 var3100-init) ; Statement: $r8 = new org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl 
(assert true)
;(assert (<init>/690337262 var879 var1866)) ; Statement: specialinvoke $r8.<org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl: void <init>(org.hibernate.boot.registry.StandardServiceRegistry)>(r3) 

(declare-const var879!1 var3100)
(declare-const var1866!1 var0)
(declare-const var81!5 var2863)
(assert (not (= var81!5 null-var2863)))
(assert (= (mappingDefaults/1175689288 var81!5) var879!1)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl mappingDefaults> = $r8 
(define-const var424 var928 (var673_getSettings/2034258353 var6)) ; Statement: $r9 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>() 
(define-const var206 var1355 (var1355_determineMultiTenancyStrategy/-92423624 var424)) ; Statement: $r10 = staticinvoke <org.hibernate.MultiTenancyStrategy: org.hibernate.MultiTenancyStrategy determineMultiTenancyStrategy(java.util.Map)>($r9) 
(declare-const var81!6 var2863)
(assert (not (= var81!6 null-var2863)))
(assert (= (multiTenancyStrategy/1175689288 var81!6) var206)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.MultiTenancyStrategy multiTenancyStrategy> = $r10 
(define-const var980 var2959 var2503-BOOLEAN) ; Statement: $r11 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var543 var447 (var447_valueOf/1602327315 (ite (= 1 1) true false))) ; Statement: $r12 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1) 
(define-const var3541 var2786 (var673_getSetting/183454356 var6 "hibernate.xml_mapping_enabled" var980 (cast-from-var447-to-var2786 var543))) ; Statement: $r13 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.xml_mapping_enabled", $r11, $r12) 
(define-const var1286 var447 (cast-from-var2786-to-var447 var3541)) ; Statement: $r14 = (java.lang.Boolean) $r13 
(assert true)
(define-const var3696 Bool (booleanValue/-1820462562 var1286)) ; Statement: $z0 = virtualinvoke $r14.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var81!7 var2863)
(assert (not (= var81!7 null-var2863)))
(assert (= (xmlMappingEnabled/1175689288 var81!7) var3696)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean xmlMappingEnabled> = $z0 
(define-const var3578 var2959 var2503-BOOLEAN) ; Statement: $r15 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var3025 var447 (var447_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r16 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var620 var2786 (var673_getSetting/183454356 var6 "hibernate.discriminator.implicit_for_joined" var3578 (cast-from-var447-to-var2786 var3025))) ; Statement: $r17 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.implicit_for_joined", $r15, $r16) 
(define-const var1840 var447 (cast-from-var2786-to-var447 var620)) ; Statement: $r18 = (java.lang.Boolean) $r17 
(assert true)
(define-const var2044 Bool (booleanValue/-1820462562 var1840)) ; Statement: $z1 = virtualinvoke $r18.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var81!8 var2863)
(assert (not (= var81!8 null-var2863)))
(assert (= (implicitDiscriminatorsForJoinedInheritanceSupported/1175689288 var81!8) var2044)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitDiscriminatorsForJoinedInheritanceSupported> = $z1 
(define-const var3060 var2959 var2503-BOOLEAN) ; Statement: $r19 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var2313 var447 (var447_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r20 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var2252 var2786 (var673_getSetting/183454356 var6 "hibernate.discriminator.ignore_explicit_for_joined" var3060 (cast-from-var447-to-var2786 var2313))) ; Statement: $r21 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.ignore_explicit_for_joined", $r19, $r20) 
(define-const var2061 var447 (cast-from-var2786-to-var447 var2252)) ; Statement: $r22 = (java.lang.Boolean) $r21 
(assert true)
(define-const var252 Bool (booleanValue/-1820462562 var2061)) ; Statement: $z2 = virtualinvoke $r22.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z2 != 0 goto $z8 = 0 
(assert (not (not (= (ite var252 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var763 Bool (ite (= 1 1) true false)) ; Statement: $z8 = 1 
 ; Statement: goto [?= r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean explicitDiscriminatorsForJoinedInheritanceSupported> = $z8] 
(assert true) ; Non Conditional
(declare-const var81!9 var2863)
(assert (not (= var81!9 null-var2863)))
(assert (= (explicitDiscriminatorsForJoinedInheritanceSupported/1175689288 var81!9) var763)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean explicitDiscriminatorsForJoinedInheritanceSupported> = $z8 
(define-const var2797 var2959 var2503-BOOLEAN) ; Statement: $r23 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var765 var447 (var447_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r24 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var2234 var2786 (var673_getSetting/183454356 var6 "hibernate.discriminator.force_in_select" var2797 (cast-from-var447-to-var2786 var765))) ; Statement: $r25 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.force_in_select", $r23, $r24) 
(define-const var1024 var447 (cast-from-var2786-to-var447 var2234)) ; Statement: $r26 = (java.lang.Boolean) $r25 
(assert true)
(define-const var1386 Bool (booleanValue/-1820462562 var1024)) ; Statement: $z3 = virtualinvoke $r26.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var81!10 var2863)
(assert (not (= var81!10 null-var2863)))
(assert (= (implicitlyForceDiscriminatorInSelect/1175689288 var81!10) var1386)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitlyForceDiscriminatorInSelect> = $z3 
(define-const var2642 var1125 var1125-init) ; Statement: $r27 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1 
(assert true)
;(assert (<init>/291849780 var2642 var81!10)) ; Statement: specialinvoke $r27.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0) 

(declare-const var2642!1 var1125)
(declare-const var81!11 var2863)
(define-const var3521 var546 var546-init) ; Statement: $r28 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2 
(assert true)
;(assert (<init>/277599635 var3521 var81!11)) ; Statement: specialinvoke $r28.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0) 

(declare-const var3521!1 var546)
(declare-const var81!12 var2863)
(define-const var1149 var3181 var3181-UNSPECIFIED) ; Statement: $r29 = <javax.persistence.SharedCacheMode: javax.persistence.SharedCacheMode UNSPECIFIED> 
(define-const var2175 var2786 (var673_getSetting/183454356 var6 "jakarta.persistence.sharedCache.mode" (cast-from-var546-to-var2959 var3521!1) (cast-from-var3181-to-var2786 var1149))) ; Statement: $r30 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("jakarta.persistence.sharedCache.mode", $r28, $r29) 
(define-const var3635 var3181 (cast-from-var2786-to-var3181 var2175)) ; Statement: $r31 = (javax.persistence.SharedCacheMode) $r30 
(define-const var2710 var2786 (var673_getSetting/183454356 var6 "javax.persistence.sharedCache.mode" (cast-from-var1125-to-var2959 var2642!1) (cast-from-var3181-to-var2786 var3635))) ; Statement: $r32 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("javax.persistence.sharedCache.mode", $r27, $r31) 
(define-const var80 var3181 (cast-from-var2786-to-var3181 var2710)) ; Statement: $r33 = (javax.persistence.SharedCacheMode) $r32 
(declare-const var81!13 var2863)
(assert (not (= var81!13 null-var2863)))
(assert (= (sharedCacheMode/1175689288 var81!13) var80)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: javax.persistence.SharedCacheMode sharedCacheMode> = $r33 
(define-const var2497 var1096 var1096-init) ; Statement: $r34 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3 
(assert true)
;(assert (<init>/263349490 var2497 var81!13)) ; Statement: specialinvoke $r34.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0) 

(declare-const var2497!1 var1096)
(declare-const var81!14 var2863)
(define-const var2160 var1865 (var1628_getService/-972330729 (cast-from-var0-to-var1628 var1866!1) var1945!class)) ; Statement: $r35 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;") 
 ; Statement: if $r35 != null goto $r36 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;") 
(assert (not (= var2160 null-var1865))) ; Cond: $r35 != null 
(define-const var3061 var1865 (var1628_getService/-972330729 (cast-from-var0-to-var1628 var1866!1) var1945!class)) ; Statement: $r36 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;") 
(define-const var3537 var1945 (cast-from-var1865-to-var1945 var3061)) ; Statement: $r37 = (org.hibernate.cache.spi.RegionFactory) $r36 
(define-const var3101 var1726 (var1945_getDefaultAccessType/486354524 var3537)) ; Statement: $r71 = interfaceinvoke $r37.<org.hibernate.cache.spi.RegionFactory: org.hibernate.cache.spi.access.AccessType getDefaultAccessType()>() 
(assert true) ; Non Conditional
(define-const var3097 var2786 (var673_getSetting/183454356 var6 "hibernate.cache.default_cache_concurrency_strategy" (cast-from-var1096-to-var2959 var2497!1) (cast-from-var1726-to-var2786 var3101))) ; Statement: $r38 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.cache.default_cache_concurrency_strategy", $r34, $r71) 
(define-const var1696 var1726 (cast-from-var2786-to-var1726 var3097)) ; Statement: $r39 = (org.hibernate.cache.spi.access.AccessType) $r38 
(declare-const var81!15 var2863)
(assert (not (= var81!15 null-var2863)))
(assert (= (defaultCacheAccessType/1175689288 var81!15) var1696)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.cache.spi.access.AccessType defaultCacheAccessType> = $r39 
(define-const var334 var2959 var2503-BOOLEAN) ; Statement: $r40 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var2039 var447 (var447_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r41 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var2808 var2786 (var673_getSetting/183454356 var6 "hibernate.enable_specj_proprietary_syntax" var334 (cast-from-var447-to-var2786 var2039))) ; Statement: $r42 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.enable_specj_proprietary_syntax", $r40, $r41) 
(define-const var3234 var447 (cast-from-var2786-to-var447 var2808)) ; Statement: $r43 = (java.lang.Boolean) $r42 
(assert true)
(define-const var3290 Bool (booleanValue/-1820462562 var3234)) ; Statement: $z4 = virtualinvoke $r43.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var81!16 var2863)
(assert (not (= var81!16 null-var2863)))
(assert (= (specjProprietarySyntaxEnabled/1175689288 var81!16) var3290)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean specjProprietarySyntaxEnabled> = $z4 
(define-const var2458 var2218 var2218-NO_CONSTRAINT) ; Statement: $r44 = <javax.persistence.ConstraintMode: javax.persistence.ConstraintMode NO_CONSTRAINT> 
(assert true)
(define-const var1901 String (name/-1552687968 var2458)) ; Statement: $r47 = virtualinvoke $r44.<javax.persistence.ConstraintMode: java.lang.String name()>() 
(define-const var2491 var2786 (var673_getSetting/617429165 var6 "hibernate.hbm2ddl.default_constraint_mode" String!class null-var2786)) ; Statement: $r45 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.default_constraint_mode", class "Ljava/lang/String;", null) 
(define-const var3864 String (cast-from-var2786-to-String var2491)) ; Statement: $r46 = (java.lang.String) $r45 
(assert true)
(define-const var3215 Bool (equalsIgnoreCase/-92311102 var1901 var3864)) ; Statement: $z5 = virtualinvoke $r47.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r46) 
(declare-const var81!17 var2863)
(assert (not (= var81!17 null-var2863)))
(assert (= (noConstraintByDefault/1175689288 var81!17) var3215)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean noConstraintByDefault> = $z5 
(define-const var1979 var928 (var673_getSettings/2034258353 var6)) ; Statement: $r48 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>() 
(define-const var336 var2786 (var928_get/1088891777 var1979 (cast-from-String-to-var2786 "hibernate.implicit_naming_strategy"))) ; Statement: $r50 = interfaceinvoke $r48.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.implicit_naming_strategy") 
(define-const var3244 var867 var867-init) ; Statement: $r49 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4 
(assert true)
;(assert (<init>/804750413 var3244 var81!17 var996)) ; Statement: specialinvoke $r49.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl,org.hibernate.boot.registry.selector.spi.StrategySelector)>(r0, r5) 

(declare-const var3244!1 var867)
(declare-const var81!18 var2863)
(declare-const var996!1 var1991)
(define-const var2643 var2786 (var1991_resolveDefaultableStrategy/799268158 var996!1 var1942!class var336 (cast-from-var867-to-var2872 var3244!1))) ; Statement: $r51 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.util.concurrent.Callable)>(class "Lorg/hibernate/boot/model/naming/ImplicitNamingStrategy;", $r50, $r49) 
(define-const var796 var1942 (cast-from-var2786-to-var1942 var2643)) ; Statement: $r52 = (org.hibernate.boot.model.naming.ImplicitNamingStrategy) $r51 
(declare-const var81!19 var2863)
(assert (not (= var81!19 null-var2863)))
(assert (= (implicitNamingStrategy/1175689288 var81!19) var796)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.ImplicitNamingStrategy implicitNamingStrategy> = $r52 
(define-const var1783 var928 (var673_getSettings/2034258353 var6)) ; Statement: $r53 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>() 
(define-const var1478 var2786 (var928_get/1088891777 var1783 (cast-from-String-to-var2786 "hibernate.physical_naming_strategy"))) ; Statement: $r55 = interfaceinvoke $r53.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.physical_naming_strategy") 
(define-const var3987 var481 var481-INSTANCE) ; Statement: $r54 = <org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl INSTANCE> 
(define-const var1258 var2786 (var1991_resolveDefaultableStrategy/-420100722 var996!1 var592!class var1478 (cast-from-var481-to-var2786 var3987))) ; Statement: $r56 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.lang.Object)>(class "Lorg/hibernate/boot/model/naming/PhysicalNamingStrategy;", $r55, $r54) 
(define-const var3716 var592 (cast-from-var2786-to-var592 var1258)) ; Statement: $r57 = (org.hibernate.boot.model.naming.PhysicalNamingStrategy) $r56 
(declare-const var81!20 var2863)
(assert (not (= var81!20 null-var2863)))
(assert (= (physicalNamingStrategy/1175689288 var81!20) var3716)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategy physicalNamingStrategy> = $r57 
(assert true)
(define-const var2656 var3375 (resolveInitialSourceProcessOrdering/-148199121 var81!20 var6)) ; Statement: $r58 = specialinvoke r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList resolveInitialSourceProcessOrdering(org.hibernate.engine.config.spi.ConfigurationService)>(r7) 
(declare-const var81!21 var2863)
(assert (not (= var81!21 null-var2863)))
(assert (= (sourceProcessOrdering/1175689288 var81!21) var2656)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList sourceProcessOrdering> = $r58 
(define-const var503 var2959 var2503-BOOLEAN) ; Statement: $r59 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var35 var447 (var447_valueOf/1602327315 (ite (= 1 1) true false))) ; Statement: $r60 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1) 
(define-const var1208 var2786 (var673_getSetting/183454356 var6 "hibernate.id.new_generator_mappings" var503 (cast-from-var447-to-var2786 var35))) ; Statement: $r61 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.id.new_generator_mappings", $r59, $r60) 
(define-const var2533 var447 (cast-from-var2786-to-var447 var1208)) ; Statement: $r62 = (java.lang.Boolean) $r61 
(assert true)
(define-const var903 Bool (booleanValue/-1820462562 var2533)) ; Statement: $z7 = virtualinvoke $r62.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z7 == 0 goto $r63 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> 
(assert (not (= (ite var903 1 0) 0))) ; Negate: Cond: $z7 == 0  
(define-const var2756 var1860 (idGenerationTypeInterpreter/1175689288 var81!21)) ; Statement: $r70 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> 
(assert true)
;(assert (disableLegacyFallback/-75856393 var2756)) ; Statement: virtualinvoke $r70.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void disableLegacyFallback()>() 

(declare-const var2756!1 var1860)
 ; Statement: goto [?= $r64 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>] 
(assert true) ; Non Conditional
(define-const var1924 var2959 var2503-BOOLEAN) ; Statement: $r64 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var3839 var447 (var447_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r65 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(define-const var610 var2786 (var673_getSetting/183454356 var6 "hibernate.use_nationalized_character_data" var1924 (cast-from-var447-to-var2786 var3839))) ; Statement: $r66 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.use_nationalized_character_data", $r64, $r65) 
(define-const var91 var447 (cast-from-var2786-to-var447 var610)) ; Statement: $r67 = (java.lang.Boolean) $r66 
(assert true)
(define-const var2795 Bool (booleanValue/-1820462562 var91)) ; Statement: $z6 = virtualinvoke $r67.<java.lang.Boolean: boolean booleanValue()>() 
(declare-const var81!22 var2863)
(assert (not (= var81!22 null-var2863)))
(assert (= (useNationalizedCharacterData/1175689288 var81!22) var2795)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean useNationalizedCharacterData> = $z6 
(define-const var1563 var2786 (var673_getSetting/617429165 var6 "hibernate.hbm2ddl.charset_name" String!class null-var2786)) ; Statement: $r68 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.charset_name", class "Ljava/lang/String;", null) 
(define-const var1723 String (cast-from-var2786-to-String var1563)) ; Statement: $r69 = (java.lang.String) $r68 
(declare-const var81!23 var2863)
(assert (not (= var81!23 null-var2863)))
(assert (= (schemaCharset/1175689288 var81!23) var1723)) ; Statement: r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.lang.String schemaCharset> = $r69 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2863-to-var2786=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.lang.Object), var3375-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), basicTypeRegistrations/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.util.ArrayList), var1860-init=([], org.hibernate.boot.internal.IdGeneratorInterpreterImpl), <init>/-2021892866=([org.hibernate.boot.internal.IdGeneratorInterpreterImpl], void), idGenerationTypeInterpreter/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.internal.IdGeneratorInterpreterImpl), serviceRegistry/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.registry.StandardServiceRegistry), var1628_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var0-to-var1628=([org.hibernate.boot.registry.StandardServiceRegistry], org.hibernate.service.ServiceRegistry), cast-from-var1865-to-var1991=([org.hibernate.service.Service], org.hibernate.boot.registry.selector.spi.StrategySelector), cast-from-var1865-to-var673=([org.hibernate.service.Service], org.hibernate.engine.config.spi.ConfigurationService), var3100-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl), <init>/690337262=([org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl, org.hibernate.boot.registry.StandardServiceRegistry], void), mappingDefaults/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl), var673_getSettings/2034258353=([org.hibernate.engine.config.spi.ConfigurationService], java.util.Map), var1355_determineMultiTenancyStrategy/-92423624=([java.util.Map], org.hibernate.MultiTenancyStrategy), multiTenancyStrategy/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.MultiTenancyStrategy), var447_valueOf/1602327315=([boolean], java.lang.Boolean), var673_getSetting/183454356=([org.hibernate.engine.config.spi.ConfigurationService, java.lang.String, org.hibernate.engine.config.spi.ConfigurationService$Converter, java.lang.Object], java.lang.Object), cast-from-var447-to-var2786=([java.lang.Boolean], java.lang.Object), cast-from-var2786-to-var447=([java.lang.Object], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), xmlMappingEnabled/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), implicitDiscriminatorsForJoinedInheritanceSupported/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), explicitDiscriminatorsForJoinedInheritanceSupported/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), implicitlyForceDiscriminatorInSelect/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), var1125-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1), <init>/291849780=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], void), var546-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2), <init>/277599635=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], void), cast-from-var546-to-var2959=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2], org.hibernate.engine.config.spi.ConfigurationService$Converter), cast-from-var3181-to-var2786=([javax.persistence.SharedCacheMode], java.lang.Object), cast-from-var2786-to-var3181=([java.lang.Object], javax.persistence.SharedCacheMode), cast-from-var1125-to-var2959=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1], org.hibernate.engine.config.spi.ConfigurationService$Converter), sharedCacheMode/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], javax.persistence.SharedCacheMode), var1096-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3), <init>/263349490=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], void), cast-from-var1865-to-var1945=([org.hibernate.service.Service], org.hibernate.cache.spi.RegionFactory), var1945_getDefaultAccessType/486354524=([org.hibernate.cache.spi.RegionFactory], org.hibernate.cache.spi.access.AccessType), cast-from-var1096-to-var2959=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3], org.hibernate.engine.config.spi.ConfigurationService$Converter), cast-from-var1726-to-var2786=([org.hibernate.cache.spi.access.AccessType], java.lang.Object), cast-from-var2786-to-var1726=([java.lang.Object], org.hibernate.cache.spi.access.AccessType), defaultCacheAccessType/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.cache.spi.access.AccessType), specjProprietarySyntaxEnabled/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), name/-1552687968=([javax.persistence.ConstraintMode], java.lang.String), var673_getSetting/617429165=([org.hibernate.engine.config.spi.ConfigurationService, java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object), cast-from-var2786-to-String=([java.lang.Object], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), noConstraintByDefault/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), var928_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2786=([java.lang.String], java.lang.Object), var867-init=([], org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4), <init>/804750413=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl, org.hibernate.boot.registry.selector.spi.StrategySelector], void), var1991_resolveDefaultableStrategy/799268158=([org.hibernate.boot.registry.selector.spi.StrategySelector, java.lang.Class, java.lang.Object, java.util.concurrent.Callable], java.lang.Object), cast-from-var867-to-var2872=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4], java.util.concurrent.Callable), cast-from-var2786-to-var1942=([java.lang.Object], org.hibernate.boot.model.naming.ImplicitNamingStrategy), implicitNamingStrategy/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.model.naming.ImplicitNamingStrategy), var1991_resolveDefaultableStrategy/-420100722=([org.hibernate.boot.registry.selector.spi.StrategySelector, java.lang.Class, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var481-to-var2786=([org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl], java.lang.Object), cast-from-var2786-to-var592=([java.lang.Object], org.hibernate.boot.model.naming.PhysicalNamingStrategy), physicalNamingStrategy/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], org.hibernate.boot.model.naming.PhysicalNamingStrategy), resolveInitialSourceProcessOrdering/-148199121=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl, org.hibernate.engine.config.spi.ConfigurationService], java.util.ArrayList), sourceProcessOrdering/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.util.ArrayList), disableLegacyFallback/-75856393=([org.hibernate.boot.internal.IdGeneratorInterpreterImpl], void), useNationalizedCharacterData/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], boolean), schemaCharset/1175689288=([org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl], java.lang.String)}
; {var2863=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl, var81=r0, var0=org.hibernate.boot.registry.StandardServiceRegistry, var1866=r3, var2786=java.lang.Object, var3375=java.util.ArrayList, var1709=$r1, var1860=org.hibernate.boot.internal.IdGeneratorInterpreterImpl, var3283=$r2, var1865=org.hibernate.service.Service, var1628=org.hibernate.service.ServiceRegistry, var1991=org.hibernate.boot.registry.selector.spi.StrategySelector, var561=$r4, var996=r5, var673=org.hibernate.engine.config.spi.ConfigurationService, var2538=$r6, var6=r7, var3100=org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl, var879=$r8, var928=java.util.Map, var424=$r9, var1355=org.hibernate.MultiTenancyStrategy, var206=$r10, var2959=org.hibernate.engine.config.spi.ConfigurationService$Converter, var2503=org.hibernate.engine.config.spi.StandardConverters, var980=$r11, var447=java.lang.Boolean, var543=$r12, var3541=$r13, var1286=$r14, var3696=$z0, var3578=$r15, var3025=$r16, var620=$r17, var1840=$r18, var2044=$z1, var3060=$r19, var2313=$r20, var2252=$r21, var2061=$r22, var252=$z2, var763=$z8, var2797=$r23, var765=$r24, var2234=$r25, var1024=$r26, var1386=$z3, var1125=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1, var2642=$r27, var546=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2, var3521=$r28, var3181=javax.persistence.SharedCacheMode, var1149=$r29, var2175=$r30, var3635=$r31, var2710=$r32, var80=$r33, var1096=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3, var2497=$r34, var1945=org.hibernate.cache.spi.RegionFactory, var2160=$r35, var3061=$r36, var3537=$r37, var1726=org.hibernate.cache.spi.access.AccessType, var3101=$r71, var3097=$r38, var1696=$r39, var334=$r40, var2039=$r41, var2808=$r42, var3234=$r43, var3290=$z4, var2218=javax.persistence.ConstraintMode, var2458=$r44, var1901=$r47, var2491=$r45, var3864=$r46, var3215=$z5, var1979=$r48, var336=$r50, var867=org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4, var3244=$r49, var1942=org.hibernate.boot.model.naming.ImplicitNamingStrategy, var2872=java.util.concurrent.Callable, var2643=$r51, var796=$r52, var1783=$r53, var1478=$r55, var481=org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl, var3987=$r54, var592=org.hibernate.boot.model.naming.PhysicalNamingStrategy, var1258=$r56, var3716=$r57, var2656=$r58, var503=$r59, var35=$r60, var1208=$r61, var2533=$r62, var903=$z7, var2756=$r70, var1924=$r64, var3839=$r65, var610=$r66, var91=$r67, var2795=$z6, var1563=$r68, var1723=$r69}
; {org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl=var2863, r0=var81, org.hibernate.boot.registry.StandardServiceRegistry=var0, r3=var1866, java.lang.Object=var2786, java.util.ArrayList=var3375, $r1=var1709, org.hibernate.boot.internal.IdGeneratorInterpreterImpl=var1860, $r2=var3283, org.hibernate.service.Service=var1865, org.hibernate.service.ServiceRegistry=var1628, org.hibernate.boot.registry.selector.spi.StrategySelector=var1991, $r4=var561, r5=var996, org.hibernate.engine.config.spi.ConfigurationService=var673, $r6=var2538, r7=var6, org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl=var3100, $r8=var879, java.util.Map=var928, $r9=var424, org.hibernate.MultiTenancyStrategy=var1355, $r10=var206, org.hibernate.engine.config.spi.ConfigurationService$Converter=var2959, org.hibernate.engine.config.spi.StandardConverters=var2503, $r11=var980, java.lang.Boolean=var447, $r12=var543, $r13=var3541, $r14=var1286, $z0=var3696, $r15=var3578, $r16=var3025, $r17=var620, $r18=var1840, $z1=var2044, $r19=var3060, $r20=var2313, $r21=var2252, $r22=var2061, $z2=var252, $z8=var763, $r23=var2797, $r24=var765, $r25=var2234, $r26=var1024, $z3=var1386, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1=var1125, $r27=var2642, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2=var546, $r28=var3521, javax.persistence.SharedCacheMode=var3181, $r29=var1149, $r30=var2175, $r31=var3635, $r32=var2710, $r33=var80, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3=var1096, $r34=var2497, org.hibernate.cache.spi.RegionFactory=var1945, $r35=var2160, $r36=var3061, $r37=var3537, org.hibernate.cache.spi.access.AccessType=var1726, $r71=var3101, $r38=var3097, $r39=var1696, $r40=var334, $r41=var2039, $r42=var2808, $r43=var3234, $z4=var3290, javax.persistence.ConstraintMode=var2218, $r44=var2458, $r47=var1901, $r45=var2491, $r46=var3864, $z5=var3215, $r48=var1979, $r50=var336, org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4=var867, $r49=var3244, org.hibernate.boot.model.naming.ImplicitNamingStrategy=var1942, java.util.concurrent.Callable=var2872, $r51=var2643, $r52=var796, $r53=var1783, $r55=var1478, org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl=var481, $r54=var3987, org.hibernate.boot.model.naming.PhysicalNamingStrategy=var592, $r56=var1258, $r57=var3716, $r58=var2656, $r59=var503, $r60=var35, $r61=var1208, $r62=var2533, $z7=var903, $r70=var2756, $r64=var1924, $r65=var3839, $r66=var610, $r67=var91, $z6=var2795, $r68=var1563, $r69=var1723}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl;	r3 := @parameter0: org.hibernate.boot.registry.StandardServiceRegistry;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.ArrayList;	specialinvoke $r1.<java.util.ArrayList: void <init>()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList basicTypeRegistrations> = $r1;	$r2 = new org.hibernate.boot.internal.IdGeneratorInterpreterImpl;	specialinvoke $r2.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void <init>()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter> = $r2;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.registry.StandardServiceRegistry serviceRegistry> = r3;	$r4 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/selector/spi/StrategySelector;");	r5 = (org.hibernate.boot.registry.selector.spi.StrategySelector) $r4;	$r6 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;");	r7 = (org.hibernate.engine.config.spi.ConfigurationService) $r6;	$r8 = new org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl;	specialinvoke $r8.<org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl: void <init>(org.hibernate.boot.registry.StandardServiceRegistry)>(r3);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.MetadataBuilderImpl$MappingDefaultsImpl mappingDefaults> = $r8;	$r9 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>();	$r10 = staticinvoke <org.hibernate.MultiTenancyStrategy: org.hibernate.MultiTenancyStrategy determineMultiTenancyStrategy(java.util.Map)>($r9);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.MultiTenancyStrategy multiTenancyStrategy> = $r10;	$r11 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r12 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1);	$r13 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.xml_mapping_enabled", $r11, $r12);	$r14 = (java.lang.Boolean) $r13;	$z0 = virtualinvoke $r14.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean xmlMappingEnabled> = $z0;	$r15 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r16 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r17 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.implicit_for_joined", $r15, $r16);	$r18 = (java.lang.Boolean) $r17;	$z1 = virtualinvoke $r18.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitDiscriminatorsForJoinedInheritanceSupported> = $z1;	$r19 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r20 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r21 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.ignore_explicit_for_joined", $r19, $r20);	$r22 = (java.lang.Boolean) $r21;	$z2 = virtualinvoke $r22.<java.lang.Boolean: boolean booleanValue()>();	if $z2 != 0 goto $z8 = 0;	$z8 = 1;	goto [?= r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean explicitDiscriminatorsForJoinedInheritanceSupported> = $z8];	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean explicitDiscriminatorsForJoinedInheritanceSupported> = $z8;	$r23 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r24 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r25 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.discriminator.force_in_select", $r23, $r24);	$r26 = (java.lang.Boolean) $r25;	$z3 = virtualinvoke $r26.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean implicitlyForceDiscriminatorInSelect> = $z3;	$r27 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1;	specialinvoke $r27.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$1: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0);	$r28 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2;	specialinvoke $r28.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$2: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0);	$r29 = <javax.persistence.SharedCacheMode: javax.persistence.SharedCacheMode UNSPECIFIED>;	$r30 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("jakarta.persistence.sharedCache.mode", $r28, $r29);	$r31 = (javax.persistence.SharedCacheMode) $r30;	$r32 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("javax.persistence.sharedCache.mode", $r27, $r31);	$r33 = (javax.persistence.SharedCacheMode) $r32;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: javax.persistence.SharedCacheMode sharedCacheMode> = $r33;	$r34 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3;	specialinvoke $r34.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$3: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl)>(r0);	$r35 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;");	if $r35 != null goto $r36 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;");	$r36 = interfaceinvoke r3.<org.hibernate.boot.registry.StandardServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/cache/spi/RegionFactory;");	$r37 = (org.hibernate.cache.spi.RegionFactory) $r36;	$r71 = interfaceinvoke $r37.<org.hibernate.cache.spi.RegionFactory: org.hibernate.cache.spi.access.AccessType getDefaultAccessType()>();	$r38 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.cache.default_cache_concurrency_strategy", $r34, $r71);	$r39 = (org.hibernate.cache.spi.access.AccessType) $r38;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.cache.spi.access.AccessType defaultCacheAccessType> = $r39;	$r40 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r41 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r42 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.enable_specj_proprietary_syntax", $r40, $r41);	$r43 = (java.lang.Boolean) $r42;	$z4 = virtualinvoke $r43.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean specjProprietarySyntaxEnabled> = $z4;	$r44 = <javax.persistence.ConstraintMode: javax.persistence.ConstraintMode NO_CONSTRAINT>;	$r47 = virtualinvoke $r44.<javax.persistence.ConstraintMode: java.lang.String name()>();	$r45 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.default_constraint_mode", class "Ljava/lang/String;", null);	$r46 = (java.lang.String) $r45;	$z5 = virtualinvoke $r47.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r46);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean noConstraintByDefault> = $z5;	$r48 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>();	$r50 = interfaceinvoke $r48.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.implicit_naming_strategy");	$r49 = new org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4;	specialinvoke $r49.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl$4: void <init>(org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl,org.hibernate.boot.registry.selector.spi.StrategySelector)>(r0, r5);	$r51 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.util.concurrent.Callable)>(class "Lorg/hibernate/boot/model/naming/ImplicitNamingStrategy;", $r50, $r49);	$r52 = (org.hibernate.boot.model.naming.ImplicitNamingStrategy) $r51;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.ImplicitNamingStrategy implicitNamingStrategy> = $r52;	$r53 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.util.Map getSettings()>();	$r55 = interfaceinvoke $r53.<java.util.Map: java.lang.Object get(java.lang.Object)>("hibernate.physical_naming_strategy");	$r54 = <org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl INSTANCE>;	$r56 = interfaceinvoke r5.<org.hibernate.boot.registry.selector.spi.StrategySelector: java.lang.Object resolveDefaultableStrategy(java.lang.Class,java.lang.Object,java.lang.Object)>(class "Lorg/hibernate/boot/model/naming/PhysicalNamingStrategy;", $r55, $r54);	$r57 = (org.hibernate.boot.model.naming.PhysicalNamingStrategy) $r56;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.model.naming.PhysicalNamingStrategy physicalNamingStrategy> = $r57;	$r58 = specialinvoke r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList resolveInitialSourceProcessOrdering(org.hibernate.engine.config.spi.ConfigurationService)>(r7);	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.util.ArrayList sourceProcessOrdering> = $r58;	$r59 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r60 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1);	$r61 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.id.new_generator_mappings", $r59, $r60);	$r62 = (java.lang.Boolean) $r61;	$z7 = virtualinvoke $r62.<java.lang.Boolean: boolean booleanValue()>();	if $z7 == 0 goto $r63 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter>;	$r70 = r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: org.hibernate.boot.internal.IdGeneratorInterpreterImpl idGenerationTypeInterpreter>;	virtualinvoke $r70.<org.hibernate.boot.internal.IdGeneratorInterpreterImpl: void disableLegacyFallback()>();	goto [?= $r64 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>];	$r64 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r65 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r66 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.use_nationalized_character_data", $r64, $r65);	$r67 = (java.lang.Boolean) $r66;	$z6 = virtualinvoke $r67.<java.lang.Boolean: boolean booleanValue()>();	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: boolean useNationalizedCharacterData> = $z6;	$r68 = interfaceinvoke r7.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,java.lang.Class,java.lang.Object)>("hibernate.hbm2ddl.charset_name", class "Ljava/lang/String;", null);	$r69 = (java.lang.String) $r68;	r0.<org.hibernate.boot.internal.MetadataBuilderImpl$MetadataBuildingOptionsImpl: java.lang.String schemaCharset> = $r69;	return
;block_num 7