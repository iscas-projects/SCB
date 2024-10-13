(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3783 0)
(declare-sort var1857 0)
(declare-sort var81 0)
(declare-sort var2833 0)
(declare-sort var2668 0)
(declare-sort var2826 0)
(declare-sort var613 0)
(declare-sort var1091 0)
(declare-sort var891 0)
(declare-sort var619 0)
(declare-sort var2928 0)
(declare-sort var1580 0)
(declare-sort var2438 0)
(declare-sort var1114 0)
(declare-sort var3261 0)
(declare-sort var1391 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var891!class ClassObject)
(declare-fun var2826_getString/-103458448 (String var613 String) String)
(declare-fun cast-from-var1857-to-var613 (var1857) var613)
(declare-fun var2668_getService/-972330729 (var2668 ClassObject) var1091)
(declare-fun cast-from-var1091-to-var891 (var1091) var891)
(declare-fun var1580_valueOf/1602327315 (Bool) var1580)
(declare-fun var891_getSetting/183454356 (var891 String var619 var2438) var2438)
(declare-fun cast-from-var1580-to-var2438 (var1580) var2438)
(declare-fun cast-from-var2438-to-var1580 (var2438) var1580)
(declare-fun booleanValue/-1820462562 (var1580) Bool)
(declare-fun var2826_getBoolean/-2034199959 (String var613 Bool) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getProperty/1391780669 (var1857 String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var2833_getIdentifierHelper/-1421270953 (var2833) var1114)
(declare-fun var2826_getString/-1104759285 (String var613) String)
(declare-fun var1114_toIdentifier/169392155 (var1114 String) var3261)
(declare-fun var1391-init () var1391)
(declare-fun <init>/280629704 (var1391 var3261 var3261 var3261) void)
(declare-const null-var3783 var3783)
(declare-const null-var1857 var1857)
(declare-const null-var81 var81)
(declare-const null-var2833 var2833)
(declare-const null-var2668 var2668)
(declare-const var2928-BOOLEAN var619)
(declare-const var414 var3783) ; Statement: r26 := @this: org.hibernate.id.enhanced.SequenceStyleGenerator 
(assert (not (= var414 null-var3783)))
(declare-const var1981 var1857) ; Statement: r0 := @parameter0: java.util.Properties 
(assert (not (= var1981 null-var1857)))
(declare-const var2825 var81) ; Statement: r27 := @parameter1: org.hibernate.dialect.Dialect 
(assert (not (= var2825 null-var81)))
(declare-const var2829 var2833) ; Statement: r9 := @parameter2: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment 
(assert (not (= var2829 null-var2833)))
(declare-const var3485 var2668) ; Statement: r2 := @parameter3: org.hibernate.service.ServiceRegistry 
(assert (not (= var3485 null-var2668)))
(define-const var75 String (var2826_getString/-103458448 "sequence_per_entity_suffix" (cast-from-var1857-to-var613 var1981) "_SEQ")) ; Statement: r1 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("sequence_per_entity_suffix", r0, "_SEQ") 
(define-const var2452 String "hibernate_sequence") ; Statement: r28 = "hibernate_sequence" 
(define-const var2142 var1091 (var2668_getService/-972330729 var3485 var891!class)) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.service.ServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;") 
(define-const var2238 var891 (cast-from-var1091-to-var891 var2142)) ; Statement: $r6 = (org.hibernate.engine.config.spi.ConfigurationService) $r3 
(define-const var1823 var619 var2928-BOOLEAN) ; Statement: $r4 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var2966 var1580 (var1580_valueOf/1602327315 (ite (= 1 1) true false))) ; Statement: $r5 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1) 
(define-const var436 var2438 (var891_getSetting/183454356 var2238 "hibernate.model.generator_name_as_sequence_name" var1823 (cast-from-var1580-to-var2438 var2966))) ; Statement: $r7 = interfaceinvoke $r6.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.model.generator_name_as_sequence_name", $r4, $r5) 
(define-const var2119 var1580 (cast-from-var2438-to-var1580 var436)) ; Statement: r8 = (java.lang.Boolean) $r7 
(assert true)
(define-const var1768 Bool (booleanValue/-1820462562 var2119)) ; Statement: $z0 = virtualinvoke r8.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z0 == 0 goto $z3 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: boolean getBoolean(java.lang.String,java.util.Map,boolean)>("prefer_sequence_per_entity", r0, 0) 
(assert (= (ite var1768 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3588 Bool (var2826_getBoolean/-2034199959 "prefer_sequence_per_entity" (cast-from-var1857-to-var613 var1981) (ite (= 1 0) true false))) ; Statement: $z3 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: boolean getBoolean(java.lang.String,java.util.Map,boolean)>("prefer_sequence_per_entity", r0, 0) 
 ; Statement: if $z3 == 0 goto $r30 = r28 
(assert (not (= (ite var3588 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var505 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var505)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var505!1 String)
(assert (= var505!1 ""))
(assert true)
(define-const var1100 String (getProperty/1391780669 var1981 "jpa_entity_name")) ; Statement: $r22 = virtualinvoke r0.<java.util.Properties: java.lang.String getProperty(java.lang.String)>("jpa_entity_name") 
(assert true)
(define-const var2017 String (append/672562846 var505!1 var1100)) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var505!2 String)
(assert (= var505!2 (str.++ var505!1 var1100)))
(assert true)
(define-const var451 String (append/672562846 var2017 var75)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2017!1 String)
(assert (= var2017!1 (str.++ var2017 var75)))
(assert true)
(define-const var1631 String (toString/-2075883882 var451)) ; Statement: $r30 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r25 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("sequence_name", r0, $r30)] 
(assert true) ; Non Conditional
(define-const var2148 String (var2826_getString/-103458448 "sequence_name" (cast-from-var1857-to-var613 var1981) var1631)) ; Statement: $r25 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("sequence_name", r0, $r30) 
(assert true)
(define-const var2924 Bool (contains/1009244746 var2148 (cast-from-String-to-String "."))) ; Statement: $z1 = virtualinvoke $r25.<java.lang.String: boolean contains(java.lang.CharSequence)>(".") 
 ; Statement: if $z1 == 0 goto $r11 = interfaceinvoke r9.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>() 
(assert (= (ite var2924 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2236 var1114 (var2833_getIdentifierHelper/-1421270953 var2829)) ; Statement: $r11 = interfaceinvoke r9.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>() 
(define-const var240 String (var2826_getString/-1104759285 "catalog" (cast-from-var1857-to-var613 var1981))) ; Statement: $r10 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map)>("catalog", r0) 
(define-const var3773 var3261 (var1114_toIdentifier/169392155 var2236 var240)) ; Statement: r12 = interfaceinvoke $r11.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r10) 
(define-const var1561 var1114 (var2833_getIdentifierHelper/-1421270953 var2829)) ; Statement: $r14 = interfaceinvoke r9.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>() 
(define-const var2203 String (var2826_getString/-1104759285 "schema" (cast-from-var1857-to-var613 var1981))) ; Statement: $r13 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map)>("schema", r0) 
(define-const var3089 var3261 (var1114_toIdentifier/169392155 var1561 var2203)) ; Statement: r15 = interfaceinvoke $r14.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r13) 
(define-const var3962 var1391 var1391-init) ; Statement: $r16 = new org.hibernate.boot.model.relational.QualifiedNameParser$NameParts 
(define-const var2356 var1114 (var2833_getIdentifierHelper/-1421270953 var2829)) ; Statement: $r17 = interfaceinvoke r9.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>() 
(define-const var1073 var3261 (var1114_toIdentifier/169392155 var2356 var2148)) ; Statement: $r18 = interfaceinvoke $r17.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r25) 
(assert true)
;(assert (<init>/280629704 var3962 var3773 var3089 var1073)) ; Statement: specialinvoke $r16.<org.hibernate.boot.model.relational.QualifiedNameParser$NameParts: void <init>(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>(r12, r15, $r18) 

(declare-const var3962!1 var1391)
(declare-const var3773!1 var3261)
(declare-const var3089!1 var3261)
(declare-const var1073!1 var3261)
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var2826_getString/-103458448=([java.lang.String, java.util.Map, java.lang.String], java.lang.String), cast-from-var1857-to-var613=([java.util.Properties], java.util.Map), var2668_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var1091-to-var891=([org.hibernate.service.Service], org.hibernate.engine.config.spi.ConfigurationService), var1580_valueOf/1602327315=([boolean], java.lang.Boolean), var891_getSetting/183454356=([org.hibernate.engine.config.spi.ConfigurationService, java.lang.String, org.hibernate.engine.config.spi.ConfigurationService$Converter, java.lang.Object], java.lang.Object), cast-from-var1580-to-var2438=([java.lang.Boolean], java.lang.Object), cast-from-var2438-to-var1580=([java.lang.Object], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), var2826_getBoolean/-2034199959=([java.lang.String, java.util.Map, boolean], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getProperty/1391780669=([java.util.Properties, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var2833_getIdentifierHelper/-1421270953=([org.hibernate.engine.jdbc.env.spi.JdbcEnvironment], org.hibernate.engine.jdbc.env.spi.IdentifierHelper), var2826_getString/-1104759285=([java.lang.String, java.util.Map], java.lang.String), var1114_toIdentifier/169392155=([org.hibernate.engine.jdbc.env.spi.IdentifierHelper, java.lang.String], org.hibernate.boot.model.naming.Identifier), var1391-init=([], org.hibernate.boot.model.relational.QualifiedNameParser$NameParts), <init>/280629704=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier], void)}
; {var3783=org.hibernate.id.enhanced.SequenceStyleGenerator, var414=r26, var1857=java.util.Properties, var1981=r0, var81=org.hibernate.dialect.Dialect, var2825=r27, var2833=org.hibernate.engine.jdbc.env.spi.JdbcEnvironment, var2829=r9, var2668=org.hibernate.service.ServiceRegistry, var3485=r2, var2826=org.hibernate.internal.util.config.ConfigurationHelper, var613=java.util.Map, var75=r1, var2452=r28, var1091=org.hibernate.service.Service, var891=org.hibernate.engine.config.spi.ConfigurationService, var2142=$r3, var2238=$r6, var619=org.hibernate.engine.config.spi.ConfigurationService$Converter, var2928=org.hibernate.engine.config.spi.StandardConverters, var1823=$r4, var1580=java.lang.Boolean, var2966=$r5, var2438=java.lang.Object, var436=$r7, var2119=r8, var1768=$z0, var3588=$z3, var505=$r21, var1100=$r22, var2017=$r23, var451=$r24, var1631=$r30, var2148=$r25, var2924=$z1, var1114=org.hibernate.engine.jdbc.env.spi.IdentifierHelper, var2236=$r11, var240=$r10, var3261=org.hibernate.boot.model.naming.Identifier, var3773=r12, var1561=$r14, var2203=$r13, var3089=r15, var1391=org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, var3962=$r16, var2356=$r17, var1073=$r18}
; {org.hibernate.id.enhanced.SequenceStyleGenerator=var3783, r26=var414, java.util.Properties=var1857, r0=var1981, org.hibernate.dialect.Dialect=var81, r27=var2825, org.hibernate.engine.jdbc.env.spi.JdbcEnvironment=var2833, r9=var2829, org.hibernate.service.ServiceRegistry=var2668, r2=var3485, org.hibernate.internal.util.config.ConfigurationHelper=var2826, java.util.Map=var613, r1=var75, r28=var2452, org.hibernate.service.Service=var1091, org.hibernate.engine.config.spi.ConfigurationService=var891, $r3=var2142, $r6=var2238, org.hibernate.engine.config.spi.ConfigurationService$Converter=var619, org.hibernate.engine.config.spi.StandardConverters=var2928, $r4=var1823, java.lang.Boolean=var1580, $r5=var2966, java.lang.Object=var2438, $r7=var436, r8=var2119, $z0=var1768, $z3=var3588, $r21=var505, $r22=var1100, $r23=var2017, $r24=var451, $r30=var1631, $r25=var2148, $z1=var2924, org.hibernate.engine.jdbc.env.spi.IdentifierHelper=var1114, $r11=var2236, $r10=var240, org.hibernate.boot.model.naming.Identifier=var3261, r12=var3773, $r14=var1561, $r13=var2203, r15=var3089, org.hibernate.boot.model.relational.QualifiedNameParser$NameParts=var1391, $r16=var3962, $r17=var2356, $r18=var1073}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r26 := @this: org.hibernate.id.enhanced.SequenceStyleGenerator;	r0 := @parameter0: java.util.Properties;	r27 := @parameter1: org.hibernate.dialect.Dialect;	r9 := @parameter2: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment;	r2 := @parameter3: org.hibernate.service.ServiceRegistry;	r1 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("sequence_per_entity_suffix", r0, "_SEQ");	r28 = "hibernate_sequence";	$r3 = interfaceinvoke r2.<org.hibernate.service.ServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;");	$r6 = (org.hibernate.engine.config.spi.ConfigurationService) $r3;	$r4 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r5 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1);	$r7 = interfaceinvoke $r6.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.model.generator_name_as_sequence_name", $r4, $r5);	r8 = (java.lang.Boolean) $r7;	$z0 = virtualinvoke r8.<java.lang.Boolean: boolean booleanValue()>();	if $z0 == 0 goto $z3 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: boolean getBoolean(java.lang.String,java.util.Map,boolean)>("prefer_sequence_per_entity", r0, 0);	$z3 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: boolean getBoolean(java.lang.String,java.util.Map,boolean)>("prefer_sequence_per_entity", r0, 0);	if $z3 == 0 goto $r30 = r28;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke r0.<java.util.Properties: java.lang.String getProperty(java.lang.String)>("jpa_entity_name");	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r30 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r25 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("sequence_name", r0, $r30)];	$r25 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("sequence_name", r0, $r30);	$z1 = virtualinvoke $r25.<java.lang.String: boolean contains(java.lang.CharSequence)>(".");	if $z1 == 0 goto $r11 = interfaceinvoke r9.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>();	$r11 = interfaceinvoke r9.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>();	$r10 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map)>("catalog", r0);	r12 = interfaceinvoke $r11.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r10);	$r14 = interfaceinvoke r9.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>();	$r13 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map)>("schema", r0);	r15 = interfaceinvoke $r14.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r13);	$r16 = new org.hibernate.boot.model.relational.QualifiedNameParser$NameParts;	$r17 = interfaceinvoke r9.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>();	$r18 = interfaceinvoke $r17.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r25);	specialinvoke $r16.<org.hibernate.boot.model.relational.QualifiedNameParser$NameParts: void <init>(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>(r12, r15, $r18);	return $r16
;block_num 5