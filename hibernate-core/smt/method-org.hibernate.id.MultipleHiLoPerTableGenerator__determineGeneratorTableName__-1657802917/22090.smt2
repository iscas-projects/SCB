(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2034 0)
(declare-sort var368 0)
(declare-sort var1157 0)
(declare-sort var1724 0)
(declare-sort var2872 0)
(declare-sort var639 0)
(declare-sort var3527 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1724_getString/-103458448 (String var2872 String) String)
(declare-fun cast-from-var368-to-var2872 (var368) var2872)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun parse/2121043336 (var639 String) var3527)
(declare-const null-var2034 var2034)
(declare-const null-var368 var368)
(declare-const null-var1157 var1157)
(declare-const var639-INSTANCE var639)
(declare-const var1488 var2034) ; Statement: r14 := @this: org.hibernate.id.MultipleHiLoPerTableGenerator 
(assert (not (= var1488 null-var2034)))
(declare-const var2143 var368) ; Statement: r0 := @parameter0: java.util.Properties 
(assert (not (= var2143 null-var368)))
(declare-const var3681 var1157) ; Statement: r2 := @parameter1: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment 
(assert (not (= var3681 null-var1157)))
(define-const var1424 String (var1724_getString/-103458448 "table" (cast-from-var368-to-var2872 var2143) "hibernate_sequences")) ; Statement: r1 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("table", r0, "hibernate_sequences") 
(assert true)
(define-const var1122 Bool (contains/1009244746 var1424 (cast-from-String-to-String "."))) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>(".") 
 ; Statement: if $z0 == 0 goto $r4 = interfaceinvoke r2.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>() 
(assert (not (= (ite var1122 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2551 var639 var639-INSTANCE) ; Statement: $r12 = <org.hibernate.boot.model.relational.QualifiedNameParser: org.hibernate.boot.model.relational.QualifiedNameParser INSTANCE> 
(assert true)
(define-const var594 var3527 (parse/2121043336 var2551 var1424)) ; Statement: $r13 = virtualinvoke $r12.<org.hibernate.boot.model.relational.QualifiedNameParser: org.hibernate.boot.model.relational.QualifiedNameParser$NameParts parse(java.lang.String)>(r1) 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var1724_getString/-103458448=([java.lang.String, java.util.Map, java.lang.String], java.lang.String), cast-from-var368-to-var2872=([java.util.Properties], java.util.Map), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), parse/2121043336=([org.hibernate.boot.model.relational.QualifiedNameParser, java.lang.String], org.hibernate.boot.model.relational.QualifiedNameParser$NameParts)}
; {var2034=org.hibernate.id.MultipleHiLoPerTableGenerator, var1488=r14, var368=java.util.Properties, var2143=r0, var1157=org.hibernate.engine.jdbc.env.spi.JdbcEnvironment, var3681=r2, var1724=org.hibernate.internal.util.config.ConfigurationHelper, var2872=java.util.Map, var1424=r1, var1122=$z0, var639=org.hibernate.boot.model.relational.QualifiedNameParser, var2551=$r12, var3527=org.hibernate.boot.model.relational.QualifiedNameParser$NameParts, var594=$r13}
; {org.hibernate.id.MultipleHiLoPerTableGenerator=var2034, r14=var1488, java.util.Properties=var368, r0=var2143, org.hibernate.engine.jdbc.env.spi.JdbcEnvironment=var1157, r2=var3681, org.hibernate.internal.util.config.ConfigurationHelper=var1724, java.util.Map=var2872, r1=var1424, $z0=var1122, org.hibernate.boot.model.relational.QualifiedNameParser=var639, $r12=var2551, org.hibernate.boot.model.relational.QualifiedNameParser$NameParts=var3527, $r13=var594}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r14 := @this: org.hibernate.id.MultipleHiLoPerTableGenerator;	r0 := @parameter0: java.util.Properties;	r2 := @parameter1: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment;	r1 = staticinvoke <org.hibernate.internal.util.config.ConfigurationHelper: java.lang.String getString(java.lang.String,java.util.Map,java.lang.String)>("table", r0, "hibernate_sequences");	$z0 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>(".");	if $z0 == 0 goto $r4 = interfaceinvoke r2.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.engine.jdbc.env.spi.IdentifierHelper getIdentifierHelper()>();	$r12 = <org.hibernate.boot.model.relational.QualifiedNameParser: org.hibernate.boot.model.relational.QualifiedNameParser INSTANCE>;	$r13 = virtualinvoke $r12.<org.hibernate.boot.model.relational.QualifiedNameParser: org.hibernate.boot.model.relational.QualifiedNameParser$NameParts parse(java.lang.String)>(r1);	return $r13
;block_num 2