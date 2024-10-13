(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1401 0)
(declare-sort var3965 0)
(declare-sort var3371 0)
(declare-sort var1901 0)
(declare-sort var590 0)
(declare-sort var1547 0)
(declare-sort var1002 0)
(declare-sort var95 0)
(declare-sort var3248 0)
(declare-sort var1809 0)
(declare-sort var3475 0)
(declare-sort var2607 0)
(declare-sort var796 0)
(declare-sort var1725 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1547!class ClassObject)
(declare-fun var1901_getService/-972330729 (var1901 ClassObject) var590)
(declare-fun cast-from-var590-to-var1547 (var590) var1547)
(declare-fun var3248_valueOf/1602327315 (Bool) var3248)
(declare-fun var1547_getSetting/183454356 (var1547 String var1002 var1809) var1809)
(declare-fun cast-from-var3248-to-var1809 (var3248) var1809)
(declare-fun cast-from-var1809-to-var3248 (var1809) var3248)
(declare-fun booleanValue/-1820462562 (var3248) Bool)
(declare-fun var3475_getString/-103458448 (String var2607 String) String)
(declare-fun cast-from-var3965-to-var2607 (var3965) var2607)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun parse/2121043336 (var796 String) var1725)
(declare-const null-var1401 var1401)
(declare-const null-var3965 var3965)
(declare-const null-var3371 var3371)
(declare-const null-var1901 var1901)
(declare-const var95-BOOLEAN var1002)
(declare-const var796-INSTANCE var796)
(declare-const var2779 var1401) ; Statement: r20 := @this: org.hibernate.id.enhanced.TableGenerator 
(assert (not (= var2779 null-var1401)))
(declare-const var847 var3965) ; Statement: r7 := @parameter0: java.util.Properties 
(assert (not (= var847 null-var3965)))
(declare-const var2292 var3371) ; Statement: r8 := @parameter1: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment 
(assert (not (= var2292 null-var3371)))
(declare-const var2933 var1901) ; Statement: r0 := @parameter2: org.hibernate.service.ServiceRegistry 
(assert (not (= var2933 null-var1901)))
(define-const var3583 String "hibernate_sequences") ; Statement: r21 = "hibernate_sequences" 
(define-const var892 var590 (var1901_getService/-972330729 var2933 var1547!class)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.service.ServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;") 
(define-const var1459 var1547 (cast-from-var590-to-var1547 var892)) ; Statement: $r4 = (org.hibernate.engine.config.spi.ConfigurationService) $r1 
(define-const var1354 var1002 var95-BOOLEAN) ; Statement: $r2 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN> 
(define-const var3778 var3248 (var3248_valueOf/1602327315 (ite (= 1 1) true false))) ; Statement: $r3 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1) 
(define-const var1810 var1809 (var1547_getSetting/183454356 var1459 "hibernate.model.generator_name_as_sequence_name" var1354 (cast-from-var3248-to-var1809 var3778))) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.model.generator_name_as_sequence_name", $r2, $r3) 
(define-const var2483 var3248 (cast-from-var1809-to-var3248 var1810)) ; Statement: r6 = (java.lang.Boolean) $r5 
(assert true)
(define-const var3823 Bool (booleanValue/-1820462562 var2483)) ; Statement: $z0 = virtualinvoke r6.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z0 == 0 goto $r23 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("table_name", r7, r21) 
(assert (= (ite var3823 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2060 String (var3475_getString/-103458448 "table_name" (cast-from-var3965-to-var2607 var847) var3583)) ; Statement: $r23 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("table_name", r7, r21) 
(assert true)
(define-const var2600 Bool (contains/1009244746 var2060 (cast-from-String-to-String "."))) ; Statement: $z2 = virtualinvoke $r23.<java.lang.String: boolean contains(java.lang.CharSequence)>(".") 
 ; Statement: if $z2 == 0 goto $r10 = interfaceinvoke r8.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>() 
(assert (not (= (ite var2600 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var925 var796 var796-INSTANCE) ; Statement: $r18 = <org.hibernate.boot.model.relational.QualifiedNameParser: org.hibernate.boot.model.relational.QualifiedNameParser INSTANCE> 
(assert true)
(define-const var3289 var1725 (parse/2121043336 var925 var2060)) ; Statement: $r19 = virtualinvoke $r18.<org.hibernate.boot.model.relational.QualifiedNameParser: org.hibernate.boot.model.relational.QualifiedNameParser$NameParts parse(java.lang.String)>($r23) 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var1901_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var590-to-var1547=([org.hibernate.service.Service], org.hibernate.engine.config.spi.ConfigurationService), var3248_valueOf/1602327315=([boolean], java.lang.Boolean), var1547_getSetting/183454356=([org.hibernate.engine.config.spi.ConfigurationService, java.lang.String, org.hibernate.engine.config.spi.ConfigurationService$Converter, java.lang.Object], java.lang.Object), cast-from-var3248-to-var1809=([java.lang.Boolean], java.lang.Object), cast-from-var1809-to-var3248=([java.lang.Object], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), var3475_getString/-103458448=([java.lang.String, java.util.Map, java.lang.String], java.lang.String), cast-from-var3965-to-var2607=([java.util.Properties], java.util.Map), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), parse/2121043336=([org.hibernate.boot.model.relational.QualifiedNameParser, java.lang.String], org.hibernate.boot.model.relational.QualifiedNameParser$NameParts)}
; {var1401=org.hibernate.id.enhanced.TableGenerator, var2779=r20, var3965=java.util.Properties, var847=r7, var3371=org.hibernate.engine.jdbc.env.spi.JdbcEnvironment, var2292=r8, var1901=org.hibernate.service.ServiceRegistry, var2933=r0, var3583=r21, var590=org.hibernate.service.Service, var1547=org.hibernate.engine.config.spi.ConfigurationService, var892=$r1, var1459=$r4, var1002=org.hibernate.engine.config.spi.ConfigurationService$Converter, var95=org.hibernate.engine.config.spi.StandardConverters, var1354=$r2, var3248=java.lang.Boolean, var3778=$r3, var1809=java.lang.Object, var1810=$r5, var2483=r6, var3823=$z0, var3475=org.hibernate.internal.util.config.ConfigurationHelper, var2607=java.util.Map, var2060=$r23, var2600=$z2, var796=org.hibernate.boot.model.relational.QualifiedNameParser, var925=$r18, var1725=org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, var3289=$r19}
; {org.hibernate.id.enhanced.TableGenerator=var1401, r20=var2779, java.util.Properties=var3965, r7=var847, org.hibernate.engine.jdbc.env.spi.JdbcEnvironment=var3371, r8=var2292, org.hibernate.service.ServiceRegistry=var1901, r0=var2933, r21=var3583, org.hibernate.service.Service=var590, org.hibernate.engine.config.spi.ConfigurationService=var1547, $r1=var892, $r4=var1459, org.hibernate.engine.config.spi.ConfigurationService$Converter=var1002, org.hibernate.engine.config.spi.StandardConverters=var95, $r2=var1354, java.lang.Boolean=var3248, $r3=var3778, java.lang.Object=var1809, $r5=var1810, r6=var2483, $z0=var3823, org.hibernate.internal.util.config.ConfigurationHelper=var3475, java.util.Map=var2607, $r23=var2060, $z2=var2600, org.hibernate.boot.model.relational.QualifiedNameParser=var796, $r18=var925, org.hibernate.boot.model.relational.QualifiedNameParser$NameParts=var1725, $r19=var3289}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r20 := @this: org.hibernate.id.enhanced.TableGenerator;	r7 := @parameter0: java.util.Properties;	r8 := @parameter1: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment;	r0 := @parameter2: org.hibernate.service.ServiceRegistry;	r21 = "hibernate_sequences";	$r1 = interfaceinvoke r0.<org.hibernate.service.ServiceRegistry: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/config/spi/ConfigurationService;");	$r4 = (org.hibernate.engine.config.spi.ConfigurationService) $r1;	$r2 = <org.hibernate.engine.config.spi.StandardConverters: org.hibernate.engine.config.spi.ConfigurationService$Converter BOOLEAN>;	$r3 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1);	$r5 = interfaceinvoke $r4.<org.hibernate.engine.config.spi.ConfigurationService: java.lang.Object getSetting(java.lang.String,org.hibernate.engine.config.spi.ConfigurationService$Converter,java.lang.Object)>("hibernate.model.generator_name_as_sequence_name", $r2, $r3);	r6 = (java.lang.Boolean) $r5;	$z0 = virtualinvoke r6.<java.lang.Boolean: boolean booleanValue()>();	if $z0 == 0 goto $r23 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("table_name", r7, r21);	$r23 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("table_name", r7, r21);	$z2 = virtualinvoke $r23.<java.lang.String: boolean contains(java.lang.CharSequence)>(".");	if $z2 == 0 goto $r10 = interfaceinvoke r8.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>();	$r18 = <org.hibernate.boot.model.relational.QualifiedNameParser: org.hibernate.boot.model.relational.QualifiedNameParser INSTANCE>;	$r19 = virtualinvoke $r18.<org.hibernate.boot.model.relational.QualifiedNameParser: org.hibernate.boot.model.relational.QualifiedNameParser$NameParts parse(java.lang.String)>($r23);	return $r19
;block_num 3