(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2535 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun data/1142770973 (var2535) (Array Int Int))
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-var2535 var2535)
(declare-const var644 var2535) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.ANTLRInputStream 
(assert (not (= var644 null-var2535)))
(define-const var1743 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var2971 (Array Int Int) (data/1142770973 var644)) ; Statement: $r2 = r1.<com.github.jknack.handlebars.internal.antlr.ANTLRInputStream: char[] data> 
(assert true)
;(assert (<init>/-915723298 var1743 var2971)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[])>($r2) 

(declare-const var1743!1 String)
(declare-const var2971!1 (Array Int Int))
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), data/1142770973=([com.github.jknack.handlebars.internal.antlr.ANTLRInputStream], char[]), <init>/-915723298=([java.lang.String, char[]], void)}
; {var2535=com.github.jknack.handlebars.internal.antlr.ANTLRInputStream, var644=r1, var1743=$r0, var2971=$r2}
; {com.github.jknack.handlebars.internal.antlr.ANTLRInputStream=var2535, r1=var644, $r0=var1743, $r2=var2971}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.ANTLRInputStream;	$r0 = new java.lang.String;	$r2 = r1.<com.github.jknack.handlebars.internal.antlr.ANTLRInputStream: char[] data>;	specialinvoke $r0.<java.lang.String: void <init>(char[])>($r2);	return $r0
;block_num 1