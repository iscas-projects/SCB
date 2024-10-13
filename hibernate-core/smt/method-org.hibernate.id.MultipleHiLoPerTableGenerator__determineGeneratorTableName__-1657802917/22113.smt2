(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var977 0)
(declare-sort var219 0)
(declare-sort var255 0)
(declare-sort var1455 0)
(declare-sort var2742 0)
(declare-sort var2638 0)
(declare-sort var3323 0)
(declare-sort var47 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1455_getString/-103458448 (String var2742 String) String)
(declare-fun cast-from-var219-to-var2742 (var219) var2742)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var255_getIdentifierHelper/-1421270953 (var255) var2638)
(declare-fun var1455_getString/-1104759285 (String var2742) String)
(declare-fun var2638_toIdentifier/169392155 (var2638 String) var3323)
(declare-fun var47-init () var47)
(declare-fun <init>/280629704 (var47 var3323 var3323 var3323) void)
(declare-const null-var977 var977)
(declare-const null-var219 var219)
(declare-const null-var255 var255)
(declare-const var1633 var977) ; Statement: r14 := @this: org.hibernate.id.MultipleHiLoPerTableGenerator 
(assert (not (= var1633 null-var977)))
(declare-const var2975 var219) ; Statement: r0 := @parameter0: java.util.Properties 
(assert (not (= var2975 null-var219)))
(declare-const var2522 var255) ; Statement: r2 := @parameter1: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment 
(assert (not (= var2522 null-var255)))
(define-const var2249 String (var1455_getString/-103458448 "table" (cast-from-var219-to-var2742 var2975) "hibernate_sequences")) ; Statement: r1 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("table", r0, "hibernate_sequences") 
(assert true)
(define-const var408 Bool (contains/1009244746 var2249 (cast-from-String-to-String "."))) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>(".") 
 ; Statement: if $z0 == 0 goto $r4 = interfaceinvoke r2.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>() 
(assert (= (ite var408 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2328 var2638 (var255_getIdentifierHelper/-1421270953 var2522)) ; Statement: $r4 = interfaceinvoke r2.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>() 
(define-const var3472 String (var1455_getString/-1104759285 "catalog" (cast-from-var219-to-var2742 var2975))) ; Statement: $r3 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map)>("catalog", r0) 
(define-const var3538 var3323 (var2638_toIdentifier/169392155 var2328 var3472)) ; Statement: r5 = interfaceinvoke $r4.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r3) 
(define-const var1740 var2638 (var255_getIdentifierHelper/-1421270953 var2522)) ; Statement: $r7 = interfaceinvoke r2.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>() 
(define-const var2211 String (var1455_getString/-1104759285 "schema" (cast-from-var219-to-var2742 var2975))) ; Statement: $r6 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map)>("schema", r0) 
(define-const var3123 var3323 (var2638_toIdentifier/169392155 var1740 var2211)) ; Statement: r8 = interfaceinvoke $r7.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r6) 
(define-const var2604 var47 var47-init) ; Statement: $r9 = new org.hibernate.boot.model.relational.QualifiedNameParser$NameParts 
(define-const var836 var2638 (var255_getIdentifierHelper/-1421270953 var2522)) ; Statement: $r10 = interfaceinvoke r2.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>() 
(define-const var2523 var3323 (var2638_toIdentifier/169392155 var836 var2249)) ; Statement: $r11 = interfaceinvoke $r10.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>(r1) 
(assert true)
;(assert (<init>/280629704 var2604 var3538 var3123 var2523)) ; Statement: specialinvoke $r9.<org.hibernate.boot.model.relational.QualifiedNameParser$NameParts: void <init>(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>(r5, r8, $r11) 

(declare-const var2604!1 var47)
(declare-const var3538!1 var3323)
(declare-const var3123!1 var3323)
(declare-const var2523!1 var3323)
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var1455_getString/-103458448=([java.lang.String, java.util.Map, java.lang.String], java.lang.String), cast-from-var219-to-var2742=([java.util.Properties], java.util.Map), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var255_getIdentifierHelper/-1421270953=([org.hibernate.engine.jdbc.env.spi.JdbcEnvironment], org.hibernate.engine.jdbc.env.spi.IdentifierHelper), var1455_getString/-1104759285=([java.lang.String, java.util.Map], java.lang.String), var2638_toIdentifier/169392155=([org.hibernate.engine.jdbc.env.spi.IdentifierHelper, java.lang.String], org.hibernate.boot.model.naming.Identifier), var47-init=([], org.hibernate.boot.model.relational.QualifiedNameParser$NameParts), <init>/280629704=([org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier], void)}
; {var977=org.hibernate.id.MultipleHiLoPerTableGenerator, var1633=r14, var219=java.util.Properties, var2975=r0, var255=org.hibernate.engine.jdbc.env.spi.JdbcEnvironment, var2522=r2, var1455=org.hibernate.internal.util.config.ConfigurationHelper, var2742=java.util.Map, var2249=r1, var408=$z0, var2638=org.hibernate.engine.jdbc.env.spi.IdentifierHelper, var2328=$r4, var3472=$r3, var3323=org.hibernate.boot.model.naming.Identifier, var3538=r5, var1740=$r7, var2211=$r6, var3123=r8, var47=org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, var2604=$r9, var836=$r10, var2523=$r11}
; {org.hibernate.id.MultipleHiLoPerTableGenerator=var977, r14=var1633, java.util.Properties=var219, r0=var2975, org.hibernate.engine.jdbc.env.spi.JdbcEnvironment=var255, r2=var2522, org.hibernate.internal.util.config.ConfigurationHelper=var1455, java.util.Map=var2742, r1=var2249, $z0=var408, org.hibernate.engine.jdbc.env.spi.IdentifierHelper=var2638, $r4=var2328, $r3=var3472, org.hibernate.boot.model.naming.Identifier=var3323, r5=var3538, $r7=var1740, $r6=var2211, r8=var3123, org.hibernate.boot.model.relational.QualifiedNameParser$NameParts=var47, $r9=var2604, $r10=var836, $r11=var2523}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r14 := @this: org.hibernate.id.MultipleHiLoPerTableGenerator;	r0 := @parameter0: java.util.Properties;	r2 := @parameter1: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment;	r1 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("table", r0, "hibernate_sequences");	$z0 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>(".");	if $z0 == 0 goto $r4 = interfaceinvoke r2.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>();	$r4 = interfaceinvoke r2.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>();	$r3 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map)>("catalog", r0);	r5 = interfaceinvoke $r4.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r3);	$r7 = interfaceinvoke r2.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>();	$r6 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map)>("schema", r0);	r8 = interfaceinvoke $r7.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>($r6);	$r9 = new org.hibernate.boot.model.relational.QualifiedNameParser$NameParts;	$r10 = interfaceinvoke r2.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>();	$r11 = interfaceinvoke $r10.<org.hibernate.engine.jdbc.env.spi.IdentifierHelper: org.hibernate.boot.model.naming.Identifier toIdentifier(java.lang.String)>(r1);	specialinvoke $r9.<org.hibernate.boot.model.relational.QualifiedNameParser$NameParts: void <init>(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier)>(r5, r8, $r11);	return $r9
;block_num 2