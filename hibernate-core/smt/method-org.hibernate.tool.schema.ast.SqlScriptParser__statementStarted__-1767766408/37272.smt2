(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1771 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentStatementBuffer/1569206351 (var1771) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-const null-var1771 var1771)
(declare-const null-String String)
(declare-const var3562 var1771) ; Statement: r0 := @this: org.hibernate.tool.schema.ast.SqlScriptParser 
(assert (not (= var3562 null-var1771)))
(define-const var509 String (currentStatementBuffer/1569206351 var3562)) ; Statement: $r1 = r0.<org.hibernate.tool.schema.ast.SqlScriptParser: java.lang.StringBuilder currentStatementBuffer> 
 ; Statement: if $r1 == null goto $r2 = new java.lang.StringBuilder 
(assert (= var509 null-String)) ; Cond: $r1 == null 
(define-const var1010 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1010)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1010!1 String)
(assert (= var1010!1 ""))
(declare-const var3562!1 var1771)
(assert (not (= var3562!1 null-var1771)))
(assert (= (currentStatementBuffer/1569206351 var3562!1) var1010!1)) ; Statement: r0.<org.hibernate.tool.schema.ast.SqlScriptParser: java.lang.StringBuilder currentStatementBuffer> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {currentStatementBuffer/1569206351=([org.hibernate.tool.schema.ast.SqlScriptParser], java.lang.StringBuilder), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void)}
; {var1771=org.hibernate.tool.schema.ast.SqlScriptParser, var3562=r0, var509=$r1, var1010=$r2}
; {org.hibernate.tool.schema.ast.SqlScriptParser=var1771, r0=var3562, $r1=var509, $r2=var1010}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: org.hibernate.tool.schema.ast.SqlScriptParser;	$r1 = r0.<org.hibernate.tool.schema.ast.SqlScriptParser: java.lang.StringBuilder currentStatementBuffer>;	if $r1 == null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.tool.schema.ast.SqlScriptParser: java.lang.StringBuilder currentStatementBuffer> = $r2;	return
;block_num 2