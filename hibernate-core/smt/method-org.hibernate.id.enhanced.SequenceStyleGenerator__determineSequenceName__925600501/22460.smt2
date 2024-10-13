(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1365 0)
(declare-sort var2363 0)
(declare-sort var1355 0)
(declare-sort var2548 0)
(declare-sort var1685 0)
(declare-sort var3051 0)
(declare-sort var2348 0)
(declare-sort var1789 0)
(declare-sort var2216 0)
(declare-sort var2457 0)
(declare-sort var3684 0)
(declare-sort var2697 0)
(declare-sort var984 0)
(declare-sort var3193 0)
(declare-sort var1966 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2216!class ClassObject)
(declare-fun var3051_getString/-103458448 (String var2348 String) String)
(declare-fun cast-from-var2363-to-var2348 (var2363) var2348)
(declare-fun var1685_getService/-972330729 (var1685 ClassObject) var1789)
(declare-fun cast-from-var1789-to-var2216 (var1789) var2216)
(declare-fun var2697_valueOf/1602327315 (Bool) var2697)
(declare-fun var2216_getSetting/183454356 (var2216 String var2457 var984) var984)
(declare-fun cast-from-var2697-to-var984 (var2697) var984)
(declare-fun cast-from-var984-to-var2697 (var984) var2697)
(declare-fun booleanValue/-1820462562 (var2697) Bool)
(declare-fun var3051_getBoolean/-2034199959 (String var2348 Bool) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getProperty/1391780669 (var2363 String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun parse/2121043336 (var3193 String) var1966)
(declare-const null-var1365 var1365)
(declare-const null-var2363 var2363)
(declare-const null-var1355 var1355)
(declare-const null-var2548 var2548)
(declare-const null-var1685 var1685)
(declare-const var3684-BOOLEAN var2457)
(declare-const var3193-INSTANCE var3193)
(declare-const var305 var1365) ; Statement: r26 := @this: org.hibernate.id.enhanced.SequenceStyleGenerator 
(assert (not (= var305 null-var1365)))
(declare-const var2061 var2363) ; Statement: r0 := @parameter0: java.util.Properties 
(assert (not (= var2061 null-var2363)))
(declare-const var3652 var1355) ; Statement: r27 := @parameter1: org.hibernate.dialect.Dialect 
(assert (not (= var3652 null-var1355)))
(declare-const var3650 var2548) ; Statement: r9 := @parameter2: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment 
(assert (not (= var3650 null-var2548)))
(declare-const var722 var1685) ; Statement: r2 := @parameter3: org.hibernate.service.ServiceRegistry 
(assert (not (= var722 null-var1685)))
(define-const var998 String (var3051_getString/-103458448 "sequence_per_entity_suffix" (cast-from-var2363-to-var2348 var2061) "_SEQ")) ; Statement: r1 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("sequence_per_entity_suffix", r0, "_SEQ") 
(define-const var3905 String "hibernate_sequence") ; Statement: r28 = "hibernate_sequence" 
(define-const var1563 var1789 (var1685_getService/-972330729 var722 var2216!class)) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.service.ServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;") 
(define-const var1870 var2216 (cast-from-var1789-to-var2216 var1563)) ; Statement: $r6 = (org.hibernate.engine.config.spi.ConfigurationService) $r3 
(define-const var684 var2457 var3684-BOOLEAN) ; Statement: $r4 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var1012 var2697 (var2697_valueOf/1602327315 (ite (= 1 1) true false))) ; Statement: $r5 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1) 
(define-const var2124 var984 (var2216_getSetting/183454356 var1870 "hibernate.model.generator_name_as_sequence_name" var684 (cast-from-var2697-to-var984 var1012))) ; Statement: $r7 = interfaceinvoke $r6.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.model.generator_name_as_sequence_name", $r4, $r5) 
(define-const var2576 var2697 (cast-from-var984-to-var2697 var2124)) ; Statement: r8 = (java.lang.Boolean) $r7 
(assert true)
(define-const var3169 Bool (booleanValue/-1820462562 var2576)) ; Statement: $z0 = virtualinvoke r8.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z0 == 0 goto $z3 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: boolean getBoolean(java.lang.String,java.util.Map,boolean)>("prefer_sequence_per_entity", r0, 0) 
(assert (= (ite var3169 1 0) 0)) ; Cond: $z0 == 0 
(define-const var864 Bool (var3051_getBoolean/-2034199959 "prefer_sequence_per_entity" (cast-from-var2363-to-var2348 var2061) (ite (= 1 0) true false))) ; Statement: $z3 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: boolean getBoolean(java.lang.String,java.util.Map,boolean)>("prefer_sequence_per_entity", r0, 0) 
 ; Statement: if $z3 == 0 goto $r30 = r28 
(assert (not (= (ite var864 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var1130 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1130)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1130!1 String)
(assert (= var1130!1 ""))
(assert true)
(define-const var3478 String (getProperty/1391780669 var2061 "jpa_entity_name")) ; Statement: $r22 = virtualinvoke r0.<java.util.Properties: java.lang.String getProperty(java.lang.String)>("jpa_entity_name") 
(assert true)
(define-const var2934 String (append/672562846 var1130!1 var3478)) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var1130!2 String)
(assert (= var1130!2 (str.++ var1130!1 var3478)))
(assert true)
(define-const var2822 String (append/672562846 var2934 var998)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2934!1 String)
(assert (= var2934!1 (str.++ var2934 var998)))
(assert true)
(define-const var310 String (toString/-2075883882 var2822)) ; Statement: $r30 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r25 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("sequence_name", r0, $r30)] 
(assert true) ; Non Conditional
(define-const var834 String (var3051_getString/-103458448 "sequence_name" (cast-from-var2363-to-var2348 var2061) var310)) ; Statement: $r25 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("sequence_name", r0, $r30) 
(assert true)
(define-const var1962 Bool (contains/1009244746 var834 (cast-from-String-to-String "."))) ; Statement: $z1 = virtualinvoke $r25.<java.lang.String: boolean contains(java.lang.CharSequence)>(".") 
 ; Statement: if $z1 == 0 goto $r11 = interfaceinvoke r9.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>() 
(assert (not (= (ite var1962 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2469 var3193 var3193-INSTANCE) ; Statement: $r19 = <org.hibernate.boot.model.relational.QualifiedNameParser: org.hibernate.boot.model.relational.QualifiedNameParser INSTANCE> 
(assert true)
(define-const var2417 var1966 (parse/2121043336 var2469 var834)) ; Statement: $r20 = virtualinvoke $r19.<org.hibernate.boot.model.relational.QualifiedNameParser: org.hibernate.boot.model.relational.QualifiedNameParser$NameParts parse(java.lang.String)>($r25) 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var3051_getString/-103458448=([java.lang.String, java.util.Map, java.lang.String], java.lang.String), cast-from-var2363-to-var2348=([java.util.Properties], java.util.Map), var1685_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var1789-to-var2216=([org.hibernate.service.Service], org.hibernate.engine.config.spi.ConfigurationService), var2697_valueOf/1602327315=([boolean], java.lang.Boolean), var2216_getSetting/183454356=([org.hibernate.engine.config.spi.ConfigurationService, java.lang.String, org.hibernate.engine.config.spi.ConfigurationService$Converter, java.lang.Object], java.lang.Object), cast-from-var2697-to-var984=([java.lang.Boolean], java.lang.Object), cast-from-var984-to-var2697=([java.lang.Object], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), var3051_getBoolean/-2034199959=([java.lang.String, java.util.Map, boolean], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getProperty/1391780669=([java.util.Properties, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), parse/2121043336=([org.hibernate.boot.model.relational.QualifiedNameParser, java.lang.String], org.hibernate.boot.model.relational.QualifiedNameParser$NameParts)}
; {var1365=org.hibernate.id.enhanced.SequenceStyleGenerator, var305=r26, var2363=java.util.Properties, var2061=r0, var1355=org.hibernate.dialect.Dialect, var3652=r27, var2548=org.hibernate.engine.jdbc.env.spi.JdbcEnvironment, var3650=r9, var1685=org.hibernate.service.ServiceRegistry, var722=r2, var3051=org.hibernate.internal.util.config.ConfigurationHelper, var2348=java.util.Map, var998=r1, var3905=r28, var1789=org.hibernate.service.Service, var2216=org.hibernate.engine.config.spi.ConfigurationService, var1563=$r3, var1870=$r6, var2457=org.hibernate.engine.config.spi.ConfigurationService$Converter, var3684=org.hibernate.engine.config.spi.StandardConverters, var684=$r4, var2697=java.lang.Boolean, var1012=$r5, var984=java.lang.Object, var2124=$r7, var2576=r8, var3169=$z0, var864=$z3, var1130=$r21, var3478=$r22, var2934=$r23, var2822=$r24, var310=$r30, var834=$r25, var1962=$z1, var3193=org.hibernate.boot.model.relational.QualifiedNameParser, var2469=$r19, var1966=org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, var2417=$r20}
; {org.hibernate.id.enhanced.SequenceStyleGenerator=var1365, r26=var305, java.util.Properties=var2363, r0=var2061, org.hibernate.dialect.Dialect=var1355, r27=var3652, org.hibernate.engine.jdbc.env.spi.JdbcEnvironment=var2548, r9=var3650, org.hibernate.service.ServiceRegistry=var1685, r2=var722, org.hibernate.internal.util.config.ConfigurationHelper=var3051, java.util.Map=var2348, r1=var998, r28=var3905, org.hibernate.service.Service=var1789, org.hibernate.engine.config.spi.ConfigurationService=var2216, $r3=var1563, $r6=var1870, org.hibernate.engine.config.spi.ConfigurationService$Converter=var2457, org.hibernate.engine.config.spi.StandardConverters=var3684, $r4=var684, java.lang.Boolean=var2697, $r5=var1012, java.lang.Object=var984, $r7=var2124, r8=var2576, $z0=var3169, $z3=var864, $r21=var1130, $r22=var3478, $r23=var2934, $r24=var2822, $r30=var310, $r25=var834, $z1=var1962, org.hibernate.boot.model.relational.QualifiedNameParser=var3193, $r19=var2469, org.hibernate.boot.model.relational.QualifiedNameParser$NameParts=var1966, $r20=var2417}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r26 := @this: org.hibernate.id.enhanced.SequenceStyleGenerator;	r0 := @parameter0: java.util.Properties;	r27 := @parameter1: org.hibernate.dialect.Dialect;	r9 := @parameter2: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment;	r2 := @parameter3: org.hibernate.service.ServiceRegistry;	r1 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("sequence_per_entity_suffix", r0, "_SEQ");	r28 = "hibernate_sequence";	$r3 = interfaceinvoke r2.<org.hibernate.service.ServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;");	$r6 = (org.hibernate.engine.config.spi.ConfigurationService) $r3;	$r4 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r5 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1);	$r7 = interfaceinvoke $r6.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.model.generator_name_as_sequence_name", $r4, $r5);	r8 = (java.lang.Boolean) $r7;	$z0 = virtualinvoke r8.<java.lang.Boolean: boolean booleanValue()>();	if $z0 == 0 goto $z3 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: boolean getBoolean(java.lang.String,java.util.Map,boolean)>("prefer_sequence_per_entity", r0, 0);	$z3 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: boolean getBoolean(java.lang.String,java.util.Map,boolean)>("prefer_sequence_per_entity", r0, 0);	if $z3 == 0 goto $r30 = r28;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke r0.<java.util.Properties: java.lang.String getProperty(java.lang.String)>("jpa_entity_name");	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r30 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r25 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("sequence_name", r0, $r30)];	$r25 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("sequence_name", r0, $r30);	$z1 = virtualinvoke $r25.<java.lang.String: boolean contains(java.lang.CharSequence)>(".");	if $z1 == 0 goto $r11 = interfaceinvoke r9.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>();	$r19 = <org.hibernate.boot.model.relational.QualifiedNameParser: org.hibernate.boot.model.relational.QualifiedNameParser INSTANCE>;	$r20 = virtualinvoke $r19.<org.hibernate.boot.model.relational.QualifiedNameParser: org.hibernate.boot.model.relational.QualifiedNameParser$NameParts parse(java.lang.String)>($r25);	return $r20
;block_num 5