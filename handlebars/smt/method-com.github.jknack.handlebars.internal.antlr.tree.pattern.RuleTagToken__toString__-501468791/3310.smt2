(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1499 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun ruleName/-297180503 (var1499) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun bypassTokenType/-297180503 (var1499) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1499 var1499)
(declare-const var3188 var1499) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken 
(assert (not (= var3188 null-var1499)))
(define-const var1055 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1055)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1055!1 String)
(assert (= var1055!1 ""))
(define-const var971 String (ruleName/-297180503 var3188)) ; Statement: $r2 = r1.<com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken: java.lang.String ruleName> 
(assert true)
(define-const var2876 String (append/672562846 var1055!1 var971)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1055!2 String)
(assert (= var1055!2 (str.++ var1055!1 var971)))
(assert true)
(define-const var72 String (append/672562846 var2876 ":")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2876!1 String)
(assert (= var2876!1 (str.++ var2876 ":")))
(define-const var114 Int (bypassTokenType/-297180503 var3188)) ; Statement: $i0 = r1.<com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken: int bypassTokenType> 
(assert true)
(define-const var89 String (append/-1001720160 var72 var114)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var72!1 String)
(assert (str.prefixof var72 var72!1))
(assert true)
(define-const var2177 String (toString/-2075883882 var89)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), ruleName/-297180503=([com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), bypassTokenType/-297180503=([com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1499=com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken, var3188=r1, var1055=$r0, var971=$r2, var2876=$r3, var72=$r4, var114=$i0, var89=$r5, var2177=$r6}
; {com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken=var1499, r1=var3188, $r0=var1055, $r2=var971, $r3=var2876, $r4=var72, $i0=var114, $r5=var89, $r6=var2177}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken: java.lang.String ruleName>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i0 = r1.<com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken: int bypassTokenType>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1