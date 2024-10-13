(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3885 0)
(declare-sort var2069 0)
(declare-sort var3921 0)
(declare-sort var1063 0)
(declare-sort var3473 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getText/-220077709 (var2069) String)
(declare-fun tracef/426392658 (var3921 String var3473) void)
(declare-fun cast-from-String-to-var3473 (String) var3473)
(declare-fun currentStatementBuffer/1569206351 (var3885) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3885 var3885)
(declare-const null-var2069 var2069)
(declare-const var1063-SCRIPT_LOGGER var3921)
(declare-const var2489 var3885) ; Statement: r3 := @this: org.hibernate.tool.schema.ast.SqlScriptParser 
(assert (not (= var2489 null-var3885)))
(declare-const var15 var2069) ; Statement: r0 := @parameter0: antlr.Token 
(assert (not (= var15 null-var2069)))
(define-const var1480 var3921 var1063-SCRIPT_LOGGER) ; Statement: $r1 = <org.hibernate.tool.schema.ast.SqlScriptLogging: org.jboss.logging.Logger SCRIPT_LOGGER> 
(assert true)
(define-const var2984 String (getText/-220077709 var15)) ; Statement: $r2 = virtualinvoke r0.<antlr.Token: java.lang.String getText()>() 
(assert true)
;(assert (tracef/426392658 var1480 "#out(`%s`) [token]" (cast-from-String-to-var3473 var2984))) ; Statement: virtualinvoke $r1.<org.jboss.logging.Logger: void tracef(java.lang.String,java.lang.Object)>("#out(`%s`) [token]", $r2) 

(declare-const var1480!1 var3921)
(declare-const var706 String)
(declare-const var2984!1 String)
(define-const var3262 String (currentStatementBuffer/1569206351 var2489)) ; Statement: $r4 = r3.<org.hibernate.tool.schema.ast.SqlScriptParser: java.lang.StringBuilder currentStatementBuffer> 
(assert true)
(define-const var1786 String (getText/-220077709 var15)) ; Statement: $r5 = virtualinvoke r0.<antlr.Token: java.lang.String getText()>() 
(assert true)
;(assert (append/672562846 var3262 var1786)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3262!1 String)
(assert (= var3262!1 (str.++ var3262 var1786)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getText/-220077709=([antlr.Token], java.lang.String), tracef/426392658=([org.jboss.logging.Logger, java.lang.String, java.lang.Object], void), cast-from-String-to-var3473=([java.lang.String], java.lang.Object), currentStatementBuffer/1569206351=([org.hibernate.tool.schema.ast.SqlScriptParser], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3885=org.hibernate.tool.schema.ast.SqlScriptParser, var2489=r3, var2069=antlr.Token, var15=r0, var3921=org.jboss.logging.Logger, var1063=org.hibernate.tool.schema.ast.SqlScriptLogging, var1480=$r1, var2984=$r2, var3473=java.lang.Object, var706="#out(`%s`) [token]", var3262=$r4, var1786=$r5}
; {org.hibernate.tool.schema.ast.SqlScriptParser=var3885, r3=var2489, antlr.Token=var2069, r0=var15, org.jboss.logging.Logger=var3921, org.hibernate.tool.schema.ast.SqlScriptLogging=var1063, $r1=var1480, $r2=var2984, java.lang.Object=var3473, "#out(`%s`) [token]"=var706, $r4=var3262, $r5=var1786}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r3 := @this: org.hibernate.tool.schema.ast.SqlScriptParser;	r0 := @parameter0: antlr.Token;	$r1 = <org.hibernate.tool.schema.ast.SqlScriptLogging: org.jboss.logging.Logger SCRIPT_LOGGER>;	$r2 = virtualinvoke r0.<antlr.Token: java.lang.String getText()>();	virtualinvoke $r1.<org.jboss.logging.Logger: void tracef(java.lang.String,java.lang.Object)>("#out(`%s`) [token]", $r2);	$r4 = r3.<org.hibernate.tool.schema.ast.SqlScriptParser: java.lang.StringBuilder currentStatementBuffer>;	$r5 = virtualinvoke r0.<antlr.Token: java.lang.String getText()>();	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	return
;block_num 1