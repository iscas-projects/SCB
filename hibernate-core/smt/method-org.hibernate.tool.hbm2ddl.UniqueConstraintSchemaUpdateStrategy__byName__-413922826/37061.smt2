(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3450 0)
(declare-sort var448 0)
(declare-sort var1478 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toUpperCase/398655892 (String var448) String)
(declare-fun var1478_valueOf/-637856028 (String) var1478)
(declare-const null-String String)
(declare-const var448-ROOT var448)
(declare-const var546 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var546 null-String)))
(define-const var1821 var448 var448-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2940 String (toUpperCase/398655892 var546 var1821)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r1) 
(define-const var2268 var1478 (var1478_valueOf/-637856028 var2940)) ; Statement: $r3 = staticinvoke <org.hibernate.tool.hbm2ddl.UniqueConstraintSchemaUpdateStrategy: org.hibernate.tool.hbm2ddl.UniqueConstraintSchemaUpdateStrategy valueOf(java.lang.String)>($r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), var1478_valueOf/-637856028=([java.lang.String], org.hibernate.tool.hbm2ddl.UniqueConstraintSchemaUpdateStrategy)}
; {var546=r0, var3450=null_type, var448=java.util.Locale, var1821=$r1, var2940=$r2, var1478=org.hibernate.tool.hbm2ddl.UniqueConstraintSchemaUpdateStrategy, var2268=$r3}
; {r0=var546, null_type=var3450, java.util.Locale=var448, $r1=var1821, $r2=var2940, org.hibernate.tool.hbm2ddl.UniqueConstraintSchemaUpdateStrategy=var1478, $r3=var2268}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r1);	$r3 = staticinvoke <org.hibernate.tool.hbm2ddl.UniqueConstraintSchemaUpdateStrategy: org.hibernate.tool.hbm2ddl.UniqueConstraintSchemaUpdateStrategy valueOf(java.lang.String)>($r2);	return $r3
;block_num 1