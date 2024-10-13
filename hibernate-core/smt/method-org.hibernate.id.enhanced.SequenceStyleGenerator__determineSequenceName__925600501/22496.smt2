(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3139 0)
(declare-sort var1807 0)
(declare-sort var1432 0)
(declare-sort var2803 0)
(declare-sort var3900 0)
(declare-sort var2797 0)
(declare-sort var2898 0)
(declare-sort var3646 0)
(declare-sort var535 0)
(declare-sort var2479 0)
(declare-sort var505 0)
(declare-sort var1534 0)
(declare-sort var3732 0)
(declare-sort var3845 0)
(declare-sort var2954 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var535!class ClassObject)
(declare-fun var2797_getString/-103458448 (String var2898 String) String)
(declare-fun cast-from-var1807-to-var2898 (var1807) var2898)
(declare-fun var3900_getService/-972330729 (var3900 ClassObject) var3646)
(declare-fun cast-from-var3646-to-var535 (var3646) var535)
(declare-fun var1534_valueOf/1602327315 (Bool) var1534)
(declare-fun var535_getSetting/183454356 (var535 String var2479 var3732) var3732)
(declare-fun cast-from-var1534-to-var3732 (var1534) var3732)
(declare-fun cast-from-var3732-to-var1534 (var3732) var1534)
(declare-fun booleanValue/-1820462562 (var1534) Bool)
(declare-fun var2797_getBoolean/-2034199959 (String var2898 Bool) Bool)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun parse/2121043336 (var3845 String) var2954)
(declare-const null-var3139 var3139)
(declare-const null-var1807 var1807)
(declare-const null-var1432 var1432)
(declare-const null-var2803 var2803)
(declare-const null-var3900 var3900)
(declare-const var505-BOOLEAN var2479)
(declare-const var3845-INSTANCE var3845)
(declare-const var3798 var3139) ; Statement: r26 := @this: org.hibernate.id.enhanced.SequenceStyleGenerator 
(assert (not (= var3798 null-var3139)))
(declare-const var77 var1807) ; Statement: r0 := @parameter0: java.util.Properties 
(assert (not (= var77 null-var1807)))
(declare-const var293 var1432) ; Statement: r27 := @parameter1: org.hibernate.dialect.Dialect 
(assert (not (= var293 null-var1432)))
(declare-const var674 var2803) ; Statement: r9 := @parameter2: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment 
(assert (not (= var674 null-var2803)))
(declare-const var2393 var3900) ; Statement: r2 := @parameter3: org.hibernate.service.ServiceRegistry 
(assert (not (= var2393 null-var3900)))
(define-const var1402 String (var2797_getString/-103458448 "sequence_per_entity_suffix" (cast-from-var1807-to-var2898 var77) "_SEQ")) ; Statement: r1 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("sequence_per_entity_suffix", r0, "_SEQ") 
(define-const var1645 String "hibernate_sequence") ; Statement: r28 = "hibernate_sequence" 
(define-const var3546 var3646 (var3900_getService/-972330729 var2393 var535!class)) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.service.ServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;") 
(define-const var2822 var535 (cast-from-var3646-to-var535 var3546)) ; Statement: $r6 = (org.hibernate.engine.config.spi.ConfigurationService) $r3 
(define-const var3171 var2479 var505-BOOLEAN) ; Statement: $r4 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var1826 var1534 (var1534_valueOf/1602327315 (ite (= 1 1) true false))) ; Statement: $r5 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1) 
(define-const var3675 var3732 (var535_getSetting/183454356 var2822 "hibernate.model.generator_name_as_sequence_name" var3171 (cast-from-var1534-to-var3732 var1826))) ; Statement: $r7 = interfaceinvoke $r6.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.model.generator_name_as_sequence_name", $r4, $r5) 
(define-const var3714 var1534 (cast-from-var3732-to-var1534 var3675)) ; Statement: r8 = (java.lang.Boolean) $r7 
(assert true)
(define-const var955 Bool (booleanValue/-1820462562 var3714)) ; Statement: $z0 = virtualinvoke r8.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z0 == 0 goto $z3 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: boolean getBoolean(java.lang.String,java.util.Map,boolean)>("prefer_sequence_per_entity", r0, 0) 
(assert (= (ite var955 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3368 Bool (var2797_getBoolean/-2034199959 "prefer_sequence_per_entity" (cast-from-var1807-to-var2898 var77) (ite (= 1 0) true false))) ; Statement: $z3 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: boolean getBoolean(java.lang.String,java.util.Map,boolean)>("prefer_sequence_per_entity", r0, 0) 
 ; Statement: if $z3 == 0 goto $r30 = r28 
(assert (= (ite var3368 1 0) 0)) ; Cond: $z3 == 0 
(define-const var1249 String var1645) ; Statement: $r30 = r28 
(assert true) ; Non Conditional
(define-const var1142 String (var2797_getString/-103458448 "sequence_name" (cast-from-var1807-to-var2898 var77) var1249)) ; Statement: $r25 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("sequence_name", r0, $r30) 
(assert true)
(define-const var2737 Bool (contains/1009244746 var1142 (cast-from-String-to-String "."))) ; Statement: $z1 = virtualinvoke $r25.<java.lang.String: boolean contains(java.lang.CharSequence)>(".") 
 ; Statement: if $z1 == 0 goto $r11 = interfaceinvoke r9.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>() 
(assert (not (= (ite var2737 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var972 var3845 var3845-INSTANCE) ; Statement: $r19 = <org.hibernate.boot.model.relational.QualifiedNameParser: org.hibernate.boot.model.relational.QualifiedNameParser INSTANCE> 
(assert true)
(define-const var1593 var2954 (parse/2121043336 var972 var1142)) ; Statement: $r20 = virtualinvoke $r19.<org.hibernate.boot.model.relational.QualifiedNameParser: org.hibernate.boot.model.relational.QualifiedNameParser$NameParts parse(java.lang.String)>($r25) 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var2797_getString/-103458448=([java.lang.String, java.util.Map, java.lang.String], java.lang.String), cast-from-var1807-to-var2898=([java.util.Properties], java.util.Map), var3900_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var3646-to-var535=([org.hibernate.service.Service], org.hibernate.engine.config.spi.ConfigurationService), var1534_valueOf/1602327315=([boolean], java.lang.Boolean), var535_getSetting/183454356=([org.hibernate.engine.config.spi.ConfigurationService, java.lang.String, org.hibernate.engine.config.spi.ConfigurationService$Converter, java.lang.Object], java.lang.Object), cast-from-var1534-to-var3732=([java.lang.Boolean], java.lang.Object), cast-from-var3732-to-var1534=([java.lang.Object], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), var2797_getBoolean/-2034199959=([java.lang.String, java.util.Map, boolean], boolean), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), parse/2121043336=([org.hibernate.boot.model.relational.QualifiedNameParser, java.lang.String], org.hibernate.boot.model.relational.QualifiedNameParser$NameParts)}
; {var3139=org.hibernate.id.enhanced.SequenceStyleGenerator, var3798=r26, var1807=java.util.Properties, var77=r0, var1432=org.hibernate.dialect.Dialect, var293=r27, var2803=org.hibernate.engine.jdbc.env.spi.JdbcEnvironment, var674=r9, var3900=org.hibernate.service.ServiceRegistry, var2393=r2, var2797=org.hibernate.internal.util.config.ConfigurationHelper, var2898=java.util.Map, var1402=r1, var1645=r28, var3646=org.hibernate.service.Service, var535=org.hibernate.engine.config.spi.ConfigurationService, var3546=$r3, var2822=$r6, var2479=org.hibernate.engine.config.spi.ConfigurationService$Converter, var505=org.hibernate.engine.config.spi.StandardConverters, var3171=$r4, var1534=java.lang.Boolean, var1826=$r5, var3732=java.lang.Object, var3675=$r7, var3714=r8, var955=$z0, var3368=$z3, var1249=$r30, var1142=$r25, var2737=$z1, var3845=org.hibernate.boot.model.relational.QualifiedNameParser, var972=$r19, var2954=org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, var1593=$r20}
; {org.hibernate.id.enhanced.SequenceStyleGenerator=var3139, r26=var3798, java.util.Properties=var1807, r0=var77, org.hibernate.dialect.Dialect=var1432, r27=var293, org.hibernate.engine.jdbc.env.spi.JdbcEnvironment=var2803, r9=var674, org.hibernate.service.ServiceRegistry=var3900, r2=var2393, org.hibernate.internal.util.config.ConfigurationHelper=var2797, java.util.Map=var2898, r1=var1402, r28=var1645, org.hibernate.service.Service=var3646, org.hibernate.engine.config.spi.ConfigurationService=var535, $r3=var3546, $r6=var2822, org.hibernate.engine.config.spi.ConfigurationService$Converter=var2479, org.hibernate.engine.config.spi.StandardConverters=var505, $r4=var3171, java.lang.Boolean=var1534, $r5=var1826, java.lang.Object=var3732, $r7=var3675, r8=var3714, $z0=var955, $z3=var3368, $r30=var1249, $r25=var1142, $z1=var2737, org.hibernate.boot.model.relational.QualifiedNameParser=var3845, $r19=var972, org.hibernate.boot.model.relational.QualifiedNameParser$NameParts=var2954, $r20=var1593}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r26 := @this: org.hibernate.id.enhanced.SequenceStyleGenerator;	r0 := @parameter0: java.util.Properties;	r27 := @parameter1: org.hibernate.dialect.Dialect;	r9 := @parameter2: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment;	r2 := @parameter3: org.hibernate.service.ServiceRegistry;	r1 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("sequence_per_entity_suffix", r0, "_SEQ");	r28 = "hibernate_sequence";	$r3 = interfaceinvoke r2.<org.hibernate.service.ServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;");	$r6 = (org.hibernate.engine.config.spi.ConfigurationService) $r3;	$r4 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r5 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1);	$r7 = interfaceinvoke $r6.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.model.generator_name_as_sequence_name", $r4, $r5);	r8 = (java.lang.Boolean) $r7;	$z0 = virtualinvoke r8.<java.lang.Boolean: boolean booleanValue()>();	if $z0 == 0 goto $z3 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: boolean getBoolean(java.lang.String,java.util.Map,boolean)>("prefer_sequence_per_entity", r0, 0);	$z3 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: boolean getBoolean(java.lang.String,java.util.Map,boolean)>("prefer_sequence_per_entity", r0, 0);	if $z3 == 0 goto $r30 = r28;	$r30 = r28;	$r25 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("sequence_name", r0, $r30);	$z1 = virtualinvoke $r25.<java.lang.String: boolean contains(java.lang.CharSequence)>(".");	if $z1 == 0 goto $r11 = interfaceinvoke r9.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>();	$r19 = <org.hibernate.boot.model.relational.QualifiedNameParser: org.hibernate.boot.model.relational.QualifiedNameParser INSTANCE>;	$r20 = virtualinvoke $r19.<org.hibernate.boot.model.relational.QualifiedNameParser: org.hibernate.boot.model.relational.QualifiedNameParser$NameParts parse(java.lang.String)>($r25);	return $r20
;block_num 5