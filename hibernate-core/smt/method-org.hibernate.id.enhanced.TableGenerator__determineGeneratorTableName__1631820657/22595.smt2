(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2991 0)
(declare-sort var405 0)
(declare-sort var2547 0)
(declare-sort var1675 0)
(declare-sort var467 0)
(declare-sort var2555 0)
(declare-sort var256 0)
(declare-sort var2934 0)
(declare-sort var474 0)
(declare-sort var3083 0)
(declare-sort var46 0)
(declare-sort var259 0)
(declare-sort var2150 0)
(declare-sort var36 0)
(declare-sort var2325 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2555!class ClassObject)
(declare-fun var1675_getService/-972330729 (var1675 ClassObject) var467)
(declare-fun cast-from-var467-to-var2555 (var467) var2555)
(declare-fun var474_valueOf/1602327315 (Bool) var474)
(declare-fun var2555_getSetting/183454356 (var2555 String var256 var3083) var3083)
(declare-fun cast-from-var474-to-var3083 (var474) var3083)
(declare-fun cast-from-var3083-to-var474 (var3083) var474)
(declare-fun booleanValue/-1820462562 (var474) Bool)
(declare-fun var46_getString/-103458448 (String var259 String) String)
(declare-fun cast-from-var405-to-var259 (var405) var259)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var2547_getIdentifierHelper/-1421270953 (var2547) var2150)
(declare-fun var46_getString/-1104759285 (String var259) String)
(declare-fun var2150_toIdentifier/169392155 (var2150 String) var36)
(declare-fun var2325-init () var2325)
(declare-fun <init>/280629704 (var2325 var36 var36 var36) void)
(declare-const null-var2991 var2991)
(declare-const null-var405 var405)
(declare-const null-var2547 var2547)
(declare-const null-var1675 var1675)
(declare-const var2934-BOOLEAN var256)
(declare-const var3648 var2991) ; Statement: r20 := @this: org.hibernate.id.enhanced.TableGenerator 
(assert (not (= var3648 null-var2991)))
(declare-const var1929 var405) ; Statement: r7 := @parameter0: java.util.Properties 
(assert (not (= var1929 null-var405)))
(declare-const var167 var2547) ; Statement: r8 := @parameter1: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment 
(assert (not (= var167 null-var2547)))
(declare-const var975 var1675) ; Statement: r0 := @parameter2: org.hibernate.service.ServiceRegistry 
(assert (not (= var975 null-var1675)))
(define-const var1987 String "hibernate_sequences") ; Statement: r21 = "hibernate_sequences" 
(define-const var3544 var467 (var1675_getService/-972330729 var975 var2555!class)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.service.ServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;") 
(define-const var1509 var2555 (cast-from-var467-to-var2555 var3544)) ; Statement: $r4 = (org.hibernate.engine.config.spi.ConfigurationService) $r1 
(define-const var609 var256 var2934-BOOLEAN) ; Statement: $r2 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var3410 var474 (var474_valueOf/1602327315 (ite (= 1 1) true false))) ; Statement: $r3 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1) 
(define-const var3497 var3083 (var2555_getSetting/183454356 var1509 "hibernate.model.generator_name_as_sequence_name" var609 (cast-from-var474-to-var3083 var3410))) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.model.generator_name_as_sequence_name", $r2, $r3) 
(define-const var2001 var474 (cast-from-var3083-to-var474 var3497)) ; Statement: r6 = (java.lang.Boolean) $r5 
(assert true)
(define-const var688 Bool (booleanValue/-1820462562 var2001)) ; Statement: $z0 = virtualinvoke r6.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z0 == 0 goto $r23 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("table_name", r7, r21) 
(assert (= (ite var688 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1265 String (var46_getString/-103458448 "table_name" (cast-from-var405-to-var259 var1929) var1987)) ; Statement: $r23 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("table_name", r7, r21) 
(assert true)
(define-const var454 Bool (contains/1009244746 var1265 (cast-from-String-to-String "."))) ; Statement: $z2 = virtualinvoke $r23.<java.lang.String: boolean contains(java.lang.CharSequence)>(".") 
 ; Statement: if $z2 == 0 goto $r10 = interfaceinvoke r8.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>() 
(assert (= (ite var454 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2830 var2150 (var2547_getIdentifierHelper/-1421270953 var167)) ; Statement: $r10 = interfaceinvoke r8.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>() 
(define-const var635 String (var46_getString/-1104759285 "catalog" (cast-from-var405-to-var259 var1929))) ; Statement: $r9 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map)>("catalog", r7) 
(define-const var2407 var36 (var2150_toIdentifier/169392155 var2830 var635)) ; Statement: r11 = interfaceinvoke $r10.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r9) 
(define-const var2391 var2150 (var2547_getIdentifierHelper/-1421270953 var167)) ; Statement: $r13 = interfaceinvoke r8.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>() 
(define-const var398 String (var46_getString/-1104759285 "schema" (cast-from-var405-to-var259 var1929))) ; Statement: $r12 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map)>("schema", r7) 
(define-const var3420 var36 (var2150_toIdentifier/169392155 var2391 var398)) ; Statement: r14 = interfaceinvoke $r13.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r12) 
(define-const var2899 var2325 var2325-init) ; Statement: $r15 = new org.hibernate.boot.model.relational.QualifiedNameParser$NameParts 
(define-const var2574 var2150 (var2547_getIdentifierHelper/-1421270953 var167)) ; Statement: $r16 = interfaceinvoke r8.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>() 
(define-const var90 var36 (var2150_toIdentifier/169392155 var2574 var1265)) ; Statement: $r17 = interfaceinvoke $r16.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r23) 
(assert true)
;(assert (<init>/280629704 var2899 var2407 var3420 var90)) ; Statement: specialinvoke $r15.<org.hibernate.boot.model.relational.QualifiedNameParser$NameParts: void <init>(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>(r11, r14, $r17) 

(declare-const var2899!1 var2325)
(declare-const var2407!1 var36)
(declare-const var3420!1 var36)
(declare-const var90!1 var36)
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var1675_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var467-to-var2555=([org.hibernate.service.Service], org.hibernate.engine.config.spi.ConfigurationService), var474_valueOf/1602327315=([boolean], java.lang.Boolean), var2555_getSetting/183454356=([org.hibernate.engine.config.spi.ConfigurationService, java.lang.String, org.hibernate.engine.config.spi.ConfigurationService$Converter, java.lang.Object], java.lang.Object), cast-from-var474-to-var3083=([java.lang.Boolean], java.lang.Object), cast-from-var3083-to-var474=([java.lang.Object], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), var46_getString/-103458448=([java.lang.String, java.util.Map, java.lang.String], java.lang.String), cast-from-var405-to-var259=([java.util.Properties], java.util.Map), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var2547_getIdentifierHelper/-1421270953=([org.hibernate.engine.jdbc.env.spi.JdbcEnvironment], org.hibernate.engine.jdbc.env.spi.IdentifierHelper), var46_getString/-1104759285=([java.lang.String, java.util.Map], java.lang.String), var2150_toIdentifier/169392155=([org.hibernate.engine.jdbc.env.spi.IdentifierHelper, java.lang.String], org.hibernate.boot.model.naming.Identifier), var2325-init=([], org.hibernate.boot.model.relational.QualifiedNameParser$NameParts), <init>/280629704=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier], void)}
; {var2991=org.hibernate.id.enhanced.TableGenerator, var3648=r20, var405=java.util.Properties, var1929=r7, var2547=org.hibernate.engine.jdbc.env.spi.JdbcEnvironment, var167=r8, var1675=org.hibernate.service.ServiceRegistry, var975=r0, var1987=r21, var467=org.hibernate.service.Service, var2555=org.hibernate.engine.config.spi.ConfigurationService, var3544=$r1, var1509=$r4, var256=org.hibernate.engine.config.spi.ConfigurationService$Converter, var2934=org.hibernate.engine.config.spi.StandardConverters, var609=$r2, var474=java.lang.Boolean, var3410=$r3, var3083=java.lang.Object, var3497=$r5, var2001=r6, var688=$z0, var46=org.hibernate.internal.util.config.ConfigurationHelper, var259=java.util.Map, var1265=$r23, var454=$z2, var2150=org.hibernate.engine.jdbc.env.spi.IdentifierHelper, var2830=$r10, var635=$r9, var36=org.hibernate.boot.model.naming.Identifier, var2407=r11, var2391=$r13, var398=$r12, var3420=r14, var2325=org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, var2899=$r15, var2574=$r16, var90=$r17}
; {org.hibernate.id.enhanced.TableGenerator=var2991, r20=var3648, java.util.Properties=var405, r7=var1929, org.hibernate.engine.jdbc.env.spi.JdbcEnvironment=var2547, r8=var167, org.hibernate.service.ServiceRegistry=var1675, r0=var975, r21=var1987, org.hibernate.service.Service=var467, org.hibernate.engine.config.spi.ConfigurationService=var2555, $r1=var3544, $r4=var1509, org.hibernate.engine.config.spi.ConfigurationService$Converter=var256, org.hibernate.engine.config.spi.StandardConverters=var2934, $r2=var609, java.lang.Boolean=var474, $r3=var3410, java.lang.Object=var3083, $r5=var3497, r6=var2001, $z0=var688, org.hibernate.internal.util.config.ConfigurationHelper=var46, java.util.Map=var259, $r23=var1265, $z2=var454, org.hibernate.engine.jdbc.env.spi.IdentifierHelper=var2150, $r10=var2830, $r9=var635, org.hibernate.boot.model.naming.Identifier=var36, r11=var2407, $r13=var2391, $r12=var398, r14=var3420, org.hibernate.boot.model.relational.QualifiedNameParser$NameParts=var2325, $r15=var2899, $r16=var2574, $r17=var90}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r20 := @this: org.hibernate.id.enhanced.TableGenerator;	r7 := @parameter0: java.util.Properties;	r8 := @parameter1: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment;	r0 := @parameter2: org.hibernate.service.ServiceRegistry;	r21 = "hibernate_sequences";	$r1 = interfaceinvoke r0.<org.hibernate.service.ServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;");	$r4 = (org.hibernate.engine.config.spi.ConfigurationService) $r1;	$r2 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r3 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1);	$r5 = interfaceinvoke $r4.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.model.generator_name_as_sequence_name", $r2, $r3);	r6 = (java.lang.Boolean) $r5;	$z0 = virtualinvoke r6.<java.lang.Boolean: boolean booleanValue()>();	if $z0 == 0 goto $r23 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("table_name", r7, r21);	$r23 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("table_name", r7, r21);	$z2 = virtualinvoke $r23.<java.lang.String: boolean contains(java.lang.CharSequence)>(".");	if $z2 == 0 goto $r10 = interfaceinvoke r8.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>();	$r10 = interfaceinvoke r8.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>();	$r9 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map)>("catalog", r7);	r11 = interfaceinvoke $r10.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r9);	$r13 = interfaceinvoke r8.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>();	$r12 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map)>("schema", r7);	r14 = interfaceinvoke $r13.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r12);	$r15 = new org.hibernate.boot.model.relational.QualifiedNameParser$NameParts;	$r16 = interfaceinvoke r8.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>();	$r17 = interfaceinvoke $r16.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r23);	specialinvoke $r15.<org.hibernate.boot.model.relational.QualifiedNameParser$NameParts: void <init>(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>(r11, r14, $r17);	return $r15
;block_num 3