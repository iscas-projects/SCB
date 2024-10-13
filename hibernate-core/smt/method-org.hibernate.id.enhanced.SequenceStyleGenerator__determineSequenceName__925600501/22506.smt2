(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var646 0)
(declare-sort var1929 0)
(declare-sort var672 0)
(declare-sort var3219 0)
(declare-sort var892 0)
(declare-sort var1511 0)
(declare-sort var1282 0)
(declare-sort var188 0)
(declare-sort var2517 0)
(declare-sort var620 0)
(declare-sort var2380 0)
(declare-sort var3521 0)
(declare-sort var606 0)
(declare-sort var943 0)
(declare-sort var896 0)
(declare-sort var1530 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2517!class ClassObject)
(declare-fun var1511_getString/-103458448 (String var1282 String) String)
(declare-fun cast-from-var1929-to-var1282 (var1929) var1282)
(declare-fun var892_getService/-972330729 (var892 ClassObject) var188)
(declare-fun cast-from-var188-to-var2517 (var188) var2517)
(declare-fun var3521_valueOf/1602327315 (Bool) var3521)
(declare-fun var2517_getSetting/183454356 (var2517 String var620 var606) var606)
(declare-fun cast-from-var3521-to-var606 (var3521) var606)
(declare-fun cast-from-var606-to-var3521 (var606) var3521)
(declare-fun booleanValue/-1820462562 (var3521) Bool)
(declare-fun var1511_getBoolean/-2034199959 (String var1282 Bool) Bool)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var3219_getIdentifierHelper/-1421270953 (var3219) var943)
(declare-fun var1511_getString/-1104759285 (String var1282) String)
(declare-fun var943_toIdentifier/169392155 (var943 String) var896)
(declare-fun var1530-init () var1530)
(declare-fun <init>/280629704 (var1530 var896 var896 var896) void)
(declare-const null-var646 var646)
(declare-const null-var1929 var1929)
(declare-const null-var672 var672)
(declare-const null-var3219 var3219)
(declare-const null-var892 var892)
(declare-const var2380-BOOLEAN var620)
(declare-const var2962 var646) ; Statement: r26 := @this: org.hibernate.id.enhanced.SequenceStyleGenerator 
(assert (not (= var2962 null-var646)))
(declare-const var2575 var1929) ; Statement: r0 := @parameter0: java.util.Properties 
(assert (not (= var2575 null-var1929)))
(declare-const var3347 var672) ; Statement: r27 := @parameter1: org.hibernate.dialect.Dialect 
(assert (not (= var3347 null-var672)))
(declare-const var3178 var3219) ; Statement: r9 := @parameter2: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment 
(assert (not (= var3178 null-var3219)))
(declare-const var1767 var892) ; Statement: r2 := @parameter3: org.hibernate.service.ServiceRegistry 
(assert (not (= var1767 null-var892)))
(define-const var437 String (var1511_getString/-103458448 "sequence_per_entity_suffix" (cast-from-var1929-to-var1282 var2575) "_SEQ")) ; Statement: r1 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("sequence_per_entity_suffix", r0, "_SEQ") 
(define-const var515 String "hibernate_sequence") ; Statement: r28 = "hibernate_sequence" 
(define-const var3803 var188 (var892_getService/-972330729 var1767 var2517!class)) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.service.ServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;") 
(define-const var3829 var2517 (cast-from-var188-to-var2517 var3803)) ; Statement: $r6 = (org.hibernate.engine.config.spi.ConfigurationService) $r3 
(define-const var599 var620 var2380-BOOLEAN) ; Statement: $r4 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var3503 var3521 (var3521_valueOf/1602327315 (ite (= 1 1) true false))) ; Statement: $r5 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1) 
(define-const var9 var606 (var2517_getSetting/183454356 var3829 "hibernate.model.generator_name_as_sequence_name" var599 (cast-from-var3521-to-var606 var3503))) ; Statement: $r7 = interfaceinvoke $r6.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.model.generator_name_as_sequence_name", $r4, $r5) 
(define-const var790 var3521 (cast-from-var606-to-var3521 var9)) ; Statement: r8 = (java.lang.Boolean) $r7 
(assert true)
(define-const var1040 Bool (booleanValue/-1820462562 var790)) ; Statement: $z0 = virtualinvoke r8.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z0 == 0 goto $z3 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: boolean getBoolean(java.lang.String,java.util.Map,boolean)>("prefer_sequence_per_entity", r0, 0) 
(assert (= (ite var1040 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3578 Bool (var1511_getBoolean/-2034199959 "prefer_sequence_per_entity" (cast-from-var1929-to-var1282 var2575) (ite (= 1 0) true false))) ; Statement: $z3 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: boolean getBoolean(java.lang.String,java.util.Map,boolean)>("prefer_sequence_per_entity", r0, 0) 
 ; Statement: if $z3 == 0 goto $r30 = r28 
(assert (= (ite var3578 1 0) 0)) ; Cond: $z3 == 0 
(define-const var148 String var515) ; Statement: $r30 = r28 
(assert true) ; Non Conditional
(define-const var3944 String (var1511_getString/-103458448 "sequence_name" (cast-from-var1929-to-var1282 var2575) var148)) ; Statement: $r25 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("sequence_name", r0, $r30) 
(assert true)
(define-const var2763 Bool (contains/1009244746 var3944 (cast-from-String-to-String "."))) ; Statement: $z1 = virtualinvoke $r25.<java.lang.String: boolean contains(java.lang.CharSequence)>(".") 
 ; Statement: if $z1 == 0 goto $r11 = interfaceinvoke r9.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>() 
(assert (= (ite var2763 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3525 var943 (var3219_getIdentifierHelper/-1421270953 var3178)) ; Statement: $r11 = interfaceinvoke r9.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>() 
(define-const var1733 String (var1511_getString/-1104759285 "catalog" (cast-from-var1929-to-var1282 var2575))) ; Statement: $r10 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map)>("catalog", r0) 
(define-const var1187 var896 (var943_toIdentifier/169392155 var3525 var1733)) ; Statement: r12 = interfaceinvoke $r11.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r10) 
(define-const var2005 var943 (var3219_getIdentifierHelper/-1421270953 var3178)) ; Statement: $r14 = interfaceinvoke r9.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>() 
(define-const var2061 String (var1511_getString/-1104759285 "schema" (cast-from-var1929-to-var1282 var2575))) ; Statement: $r13 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map)>("schema", r0) 
(define-const var3467 var896 (var943_toIdentifier/169392155 var2005 var2061)) ; Statement: r15 = interfaceinvoke $r14.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r13) 
(define-const var24 var1530 var1530-init) ; Statement: $r16 = new org.hibernate.boot.model.relational.QualifiedNameParser$NameParts 
(define-const var2113 var943 (var3219_getIdentifierHelper/-1421270953 var3178)) ; Statement: $r17 = interfaceinvoke r9.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>() 
(define-const var704 var896 (var943_toIdentifier/169392155 var2113 var3944)) ; Statement: $r18 = interfaceinvoke $r17.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r25) 
(assert true)
;(assert (<init>/280629704 var24 var1187 var3467 var704)) ; Statement: specialinvoke $r16.<org.hibernate.boot.model.relational.QualifiedNameParser$NameParts: void <init>(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>(r12, r15, $r18) 

(declare-const var24!1 var1530)
(declare-const var1187!1 var896)
(declare-const var3467!1 var896)
(declare-const var704!1 var896)
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var1511_getString/-103458448=([java.lang.String, java.util.Map, java.lang.String], java.lang.String), cast-from-var1929-to-var1282=([java.util.Properties], java.util.Map), var892_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var188-to-var2517=([org.hibernate.service.Service], org.hibernate.engine.config.spi.ConfigurationService), var3521_valueOf/1602327315=([boolean], java.lang.Boolean), var2517_getSetting/183454356=([org.hibernate.engine.config.spi.ConfigurationService, java.lang.String, org.hibernate.engine.config.spi.ConfigurationService$Converter, java.lang.Object], java.lang.Object), cast-from-var3521-to-var606=([java.lang.Boolean], java.lang.Object), cast-from-var606-to-var3521=([java.lang.Object], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), var1511_getBoolean/-2034199959=([java.lang.String, java.util.Map, boolean], boolean), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var3219_getIdentifierHelper/-1421270953=([org.hibernate.engine.jdbc.env.spi.JdbcEnvironment], org.hibernate.engine.jdbc.env.spi.IdentifierHelper), var1511_getString/-1104759285=([java.lang.String, java.util.Map], java.lang.String), var943_toIdentifier/169392155=([org.hibernate.engine.jdbc.env.spi.IdentifierHelper, java.lang.String], org.hibernate.boot.model.naming.Identifier), var1530-init=([], org.hibernate.boot.model.relational.QualifiedNameParser$NameParts), <init>/280629704=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier], void)}
; {var646=org.hibernate.id.enhanced.SequenceStyleGenerator, var2962=r26, var1929=java.util.Properties, var2575=r0, var672=org.hibernate.dialect.Dialect, var3347=r27, var3219=org.hibernate.engine.jdbc.env.spi.JdbcEnvironment, var3178=r9, var892=org.hibernate.service.ServiceRegistry, var1767=r2, var1511=org.hibernate.internal.util.config.ConfigurationHelper, var1282=java.util.Map, var437=r1, var515=r28, var188=org.hibernate.service.Service, var2517=org.hibernate.engine.config.spi.ConfigurationService, var3803=$r3, var3829=$r6, var620=org.hibernate.engine.config.spi.ConfigurationService$Converter, var2380=org.hibernate.engine.config.spi.StandardConverters, var599=$r4, var3521=java.lang.Boolean, var3503=$r5, var606=java.lang.Object, var9=$r7, var790=r8, var1040=$z0, var3578=$z3, var148=$r30, var3944=$r25, var2763=$z1, var943=org.hibernate.engine.jdbc.env.spi.IdentifierHelper, var3525=$r11, var1733=$r10, var896=org.hibernate.boot.model.naming.Identifier, var1187=r12, var2005=$r14, var2061=$r13, var3467=r15, var1530=org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, var24=$r16, var2113=$r17, var704=$r18}
; {org.hibernate.id.enhanced.SequenceStyleGenerator=var646, r26=var2962, java.util.Properties=var1929, r0=var2575, org.hibernate.dialect.Dialect=var672, r27=var3347, org.hibernate.engine.jdbc.env.spi.JdbcEnvironment=var3219, r9=var3178, org.hibernate.service.ServiceRegistry=var892, r2=var1767, org.hibernate.internal.util.config.ConfigurationHelper=var1511, java.util.Map=var1282, r1=var437, r28=var515, org.hibernate.service.Service=var188, org.hibernate.engine.config.spi.ConfigurationService=var2517, $r3=var3803, $r6=var3829, org.hibernate.engine.config.spi.ConfigurationService$Converter=var620, org.hibernate.engine.config.spi.StandardConverters=var2380, $r4=var599, java.lang.Boolean=var3521, $r5=var3503, java.lang.Object=var606, $r7=var9, r8=var790, $z0=var1040, $z3=var3578, $r30=var148, $r25=var3944, $z1=var2763, org.hibernate.engine.jdbc.env.spi.IdentifierHelper=var943, $r11=var3525, $r10=var1733, org.hibernate.boot.model.naming.Identifier=var896, r12=var1187, $r14=var2005, $r13=var2061, r15=var3467, org.hibernate.boot.model.relational.QualifiedNameParser$NameParts=var1530, $r16=var24, $r17=var2113, $r18=var704}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r26 := @this: org.hibernate.id.enhanced.SequenceStyleGenerator;	r0 := @parameter0: java.util.Properties;	r27 := @parameter1: org.hibernate.dialect.Dialect;	r9 := @parameter2: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment;	r2 := @parameter3: org.hibernate.service.ServiceRegistry;	r1 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("sequence_per_entity_suffix", r0, "_SEQ");	r28 = "hibernate_sequence";	$r3 = interfaceinvoke r2.<org.hibernate.service.ServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;");	$r6 = (org.hibernate.engine.config.spi.ConfigurationService) $r3;	$r4 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r5 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1);	$r7 = interfaceinvoke $r6.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.model.generator_name_as_sequence_name", $r4, $r5);	r8 = (java.lang.Boolean) $r7;	$z0 = virtualinvoke r8.<java.lang.Boolean: boolean booleanValue()>();	if $z0 == 0 goto $z3 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: boolean getBoolean(java.lang.String,java.util.Map,boolean)>("prefer_sequence_per_entity", r0, 0);	$z3 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: boolean getBoolean(java.lang.String,java.util.Map,boolean)>("prefer_sequence_per_entity", r0, 0);	if $z3 == 0 goto $r30 = r28;	$r30 = r28;	$r25 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("sequence_name", r0, $r30);	$z1 = virtualinvoke $r25.<java.lang.String: boolean contains(java.lang.CharSequence)>(".");	if $z1 == 0 goto $r11 = interfaceinvoke r9.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>();	$r11 = interfaceinvoke r9.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>();	$r10 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map)>("catalog", r0);	r12 = interfaceinvoke $r11.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r10);	$r14 = interfaceinvoke r9.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>();	$r13 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map)>("schema", r0);	r15 = interfaceinvoke $r14.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r13);	$r16 = new org.hibernate.boot.model.relational.QualifiedNameParser$NameParts;	$r17 = interfaceinvoke r9.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>();	$r18 = interfaceinvoke $r17.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r25);	specialinvoke $r16.<org.hibernate.boot.model.relational.QualifiedNameParser$NameParts: void <init>(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>(r12, r15, $r18);	return $r16
;block_num 5