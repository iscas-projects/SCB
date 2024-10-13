(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3207 0)
(declare-sort var1173 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun label/-297180503 (var3207) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun ruleName/-297180503 (var3207) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3207 var3207)
(declare-const null-String String)
(declare-const var2222 var3207) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken 
(assert (not (= var2222 null-var3207)))
(define-const var213 String (label/-297180503 var2222)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken: java.lang.String label> 
 ; Statement: if $r1 == null goto $r2 = new java.lang.StringBuilder 
(assert (= var213 null-String)) ; Cond: $r1 == null 
(define-const var3159 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3159)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3159!1 String)
(assert (= var3159!1 ""))
(assert true)
(define-const var2426 String (append/672562846 var3159!1 "<")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var3159!2 String)
(assert (= var3159!2 (str.++ var3159!1 "<")))
(define-const var1655 String (ruleName/-297180503 var2222)) ; Statement: $r3 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken: java.lang.String ruleName> 
(assert true)
(define-const var2856 String (append/672562846 var2426 var1655)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2426!1 String)
(assert (= var2426!1 (str.++ var2426 var1655)))
(assert true)
(define-const var3186 String (append/672562846 var2856 ">")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var2856!1 String)
(assert (= var2856!1 (str.++ var2856 ">")))
(assert true)
(define-const var1209 String (toString/-2075883882 var3186)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {label/-297180503=([com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), ruleName/-297180503=([com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3207=com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken, var2222=r0, var213=$r1, var1173=null_type, var3159=$r2, var2426=$r4, var1655=$r3, var2856=$r5, var3186=$r6, var1209=$r7}
; {com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken=var3207, r0=var2222, $r1=var213, null_type=var1173, $r2=var3159, $r4=var2426, $r3=var1655, $r5=var2856, $r6=var3186, $r7=var1209}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken;	$r1 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken: java.lang.String label>;	if $r1 == null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r3 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken: java.lang.String ruleName>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2