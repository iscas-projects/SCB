(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var326 0)
(declare-sort var2306 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2306_getPathText/-1228724567 (String var326) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var326 var326)
(declare-const var466 var326) ; Statement: r1 := @parameter0: antlr.collections.AST 
(assert (not (= var466 null-var326)))
(define-const var527 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var527)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var527!1 String)
(assert (= var527!1 ""))
;(assert (var2306_getPathText/-1228724567 var527!1 var466)) ; Statement: staticinvoke <org.hibernate.hql.internal.ast.util.ASTUtil: void getPathText(java.lang.StringBuilder,antlr.collections.AST)>($r0, r1) 

(declare-const var527!2 String)
(declare-const var466!1 var326)
(assert true)
(define-const var2057 String (toString/-2075883882 var527!2)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2306_getPathText/-1228724567=([java.lang.StringBuilder, antlr.collections.AST], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var326=antlr.collections.AST, var466=r1, var527=$r0, var2306=org.hibernate.hql.internal.ast.util.ASTUtil, var2057=$r2}
; {antlr.collections.AST=var326, r1=var466, $r0=var527, org.hibernate.hql.internal.ast.util.ASTUtil=var2306, $r2=var2057}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: antlr.collections.AST;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	staticinvoke <org.hibernate.hql.internal.ast.util.ASTUtil: void getPathText(java.lang.StringBuilder,antlr.collections.AST)>($r0, r1);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1