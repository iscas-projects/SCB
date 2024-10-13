(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3146 0)
(declare-sort var2974 0)
(declare-sort var370 0)
(declare-sort var992 0)
(declare-sort var1549 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun tracef/426392658 (var370 String var1549) void)
(declare-fun cast-from-String-to-var1549 (String) var1549)
(declare-fun currentStatementBuffer/1569206351 (var3146) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3146 var3146)
(declare-const null-String String)
(declare-const var992-SCRIPT_LOGGER var370)
(declare-const var3556 var3146) ; Statement: r2 := @this: org.hibernate.tool.schema.ast.SqlScriptParser 
(assert (not (= var3556 null-var3146)))
(declare-const var3994 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3994 null-String)))
(define-const var1832 var370 var992-SCRIPT_LOGGER) ; Statement: $r1 = <org.hibernate.tool.schema.ast.SqlScriptLogging: org.jboss.logging.Logger SCRIPT_LOGGER> 
(assert true)
;(assert (tracef/426392658 var1832 "#out(`%s`) [text]" (cast-from-String-to-var1549 var3994))) ; Statement: virtualinvoke $r1.<org.jboss.logging.Logger: void tracef(java.lang.String,java.lang.Object)>("#out(`%s`) [text]", r0) 

(declare-const var1832!1 var370)
(declare-const var2717 String)
(declare-const var3994!1 String)
(define-const var3644 String (currentStatementBuffer/1569206351 var3556)) ; Statement: $r3 = r2.<org.hibernate.tool.schema.ast.SqlScriptParser: java.lang.StringBuilder currentStatementBuffer> 
(assert true)
;(assert (append/672562846 var3644 var3994!1)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3644!1 String)
(assert (= var3644!1 (str.++ var3644 var3994!1)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {tracef/426392658=([org.jboss.logging.Logger, java.lang.String, java.lang.Object], void), cast-from-String-to-var1549=([java.lang.String], java.lang.Object), currentStatementBuffer/1569206351=([org.hibernate.tool.schema.ast.SqlScriptParser], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3146=org.hibernate.tool.schema.ast.SqlScriptParser, var3556=r2, var3994=r0, var2974=null_type, var370=org.jboss.logging.Logger, var992=org.hibernate.tool.schema.ast.SqlScriptLogging, var1832=$r1, var1549=java.lang.Object, var2717="#out(`%s`) [text]", var3644=$r3}
; {org.hibernate.tool.schema.ast.SqlScriptParser=var3146, r2=var3556, r0=var3994, null_type=var2974, org.jboss.logging.Logger=var370, org.hibernate.tool.schema.ast.SqlScriptLogging=var992, $r1=var1832, java.lang.Object=var1549, "#out(`%s`) [text]"=var2717, $r3=var3644}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r2 := @this: org.hibernate.tool.schema.ast.SqlScriptParser;	r0 := @parameter0: java.lang.String;	$r1 = <org.hibernate.tool.schema.ast.SqlScriptLogging: org.jboss.logging.Logger SCRIPT_LOGGER>;	virtualinvoke $r1.<org.jboss.logging.Logger: void tracef(java.lang.String,java.lang.Object)>("#out(`%s`) [text]", r0);	$r3 = r2.<org.hibernate.tool.schema.ast.SqlScriptParser: java.lang.StringBuilder currentStatementBuffer>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	return
;block_num 1