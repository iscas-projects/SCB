(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3274 0)
(declare-sort var235 0)
(declare-sort var3816 0)
(declare-sort var795 0)
(declare-sort var675 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentStatementBuffer/1569206351 (var3274) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun debugf/-1161213948 (var235 String var795) void)
(declare-fun cast-from-String-to-var795 (String) var795)
(declare-fun commandConsumer/1569206351 (var3274) var675)
(declare-fun var675_accept/-1742024366 (var675 var795) void)
(declare-const null-var3274 var3274)
(declare-const var3816-AST_LOGGER var235)
(declare-const null-String String)
(declare-const var1566 var3274) ; Statement: r0 := @this: org.hibernate.tool.schema.ast.SqlScriptParser 
(assert (not (= var1566 null-var3274)))
(define-const var1443 String (currentStatementBuffer/1569206351 var1566)) ; Statement: $r1 = r0.<org.hibernate.tool.schema.ast.SqlScriptParser: java.lang.StringBuilder currentStatementBuffer> 
(assert true)
(define-const var487 String (toString/-2075883882 var1443)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2471 String (trim/-847153721 var487)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>() 
(define-const var1904 var235 var3816-AST_LOGGER) ; Statement: $r4 = <org.hibernate.tool.schema.ast.SqlScriptLogging: org.jboss.logging.Logger AST_LOGGER> 
(assert true)
;(assert (debugf/-1161213948 var1904 "Import statement : %s" (cast-from-String-to-var795 var2471))) ; Statement: virtualinvoke $r4.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object)>("Import statement : %s", r3) 

(declare-const var1904!1 var235)
(declare-const var2733 String)
(declare-const var2471!1 String)
(define-const var1717 var675 (commandConsumer/1569206351 var1566)) ; Statement: $r5 = r0.<org.hibernate.tool.schema.ast.SqlScriptParser: java.util.function.Consumer commandConsumer> 
;(assert (var675_accept/-1742024366 var1717 (cast-from-String-to-var795 var2471!1))) ; Statement: interfaceinvoke $r5.<java.util.function.Consumer: void accept(java.lang.Object)>(r3) 

(declare-const var1717!1 var675)
(declare-const var2471!2 String)
(declare-const var1566!1 var3274)
(assert (not (= var1566!1 null-var3274)))
(assert (= (currentStatementBuffer/1569206351 var1566!1) null-String)) ; Statement: r0.<org.hibernate.tool.schema.ast.SqlScriptParser: java.lang.StringBuilder currentStatementBuffer> = null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {currentStatementBuffer/1569206351=([org.hibernate.tool.schema.ast.SqlScriptParser], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), debugf/-1161213948=([org.jboss.logging.Logger, java.lang.String, java.lang.Object], void), cast-from-String-to-var795=([java.lang.String], java.lang.Object), commandConsumer/1569206351=([org.hibernate.tool.schema.ast.SqlScriptParser], java.util.function.Consumer), var675_accept/-1742024366=([java.util.function.Consumer, java.lang.Object], void)}
; {var3274=org.hibernate.tool.schema.ast.SqlScriptParser, var1566=r0, var1443=$r1, var487=$r2, var2471=r3, var235=org.jboss.logging.Logger, var3816=org.hibernate.tool.schema.ast.SqlScriptLogging, var1904=$r4, var795=java.lang.Object, var2733="Import statement : %s", var675=java.util.function.Consumer, var1717=$r5}
; {org.hibernate.tool.schema.ast.SqlScriptParser=var3274, r0=var1566, $r1=var1443, $r2=var487, r3=var2471, org.jboss.logging.Logger=var235, org.hibernate.tool.schema.ast.SqlScriptLogging=var3816, $r4=var1904, java.lang.Object=var795, "Import statement : %s"=var2733, java.util.function.Consumer=var675, $r5=var1717}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @this: org.hibernate.tool.schema.ast.SqlScriptParser;	$r1 = r0.<org.hibernate.tool.schema.ast.SqlScriptParser: java.lang.StringBuilder currentStatementBuffer>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>();	$r4 = <org.hibernate.tool.schema.ast.SqlScriptLogging: org.jboss.logging.Logger AST_LOGGER>;	virtualinvoke $r4.<org.jboss.logging.Logger: void debugf(java.lang.String,java.lang.Object)>("Import statement : %s", r3);	$r5 = r0.<org.hibernate.tool.schema.ast.SqlScriptParser: java.util.function.Consumer commandConsumer>;	interfaceinvoke $r5.<java.util.function.Consumer: void accept(java.lang.Object)>(r3);	r0.<org.hibernate.tool.schema.ast.SqlScriptParser: java.lang.StringBuilder currentStatementBuffer> = null;	return
;block_num 1