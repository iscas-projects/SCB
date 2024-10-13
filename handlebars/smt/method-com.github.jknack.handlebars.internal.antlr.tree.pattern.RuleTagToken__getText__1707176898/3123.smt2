(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var825 0)
(declare-sort var1751 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun label/-297180503 (var825) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun ruleName/-297180503 (var825) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var825 var825)
(declare-const null-String String)
(declare-const var2455 var825) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken 
(assert (not (= var2455 null-var825)))
(define-const var270 String (label/-297180503 var2455)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken: java.lang.String label> 
 ; Statement: if $r1 == null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var270 null-String))) ; Negate: Cond: $r1 == null  
(define-const var2382 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2382)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2382!1 String)
(assert (= var2382!1 ""))
(assert true)
(define-const var1185 String (append/672562846 var2382!1 "<")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var2382!2 String)
(assert (= var2382!2 (str.++ var2382!1 "<")))
(define-const var2551 String (label/-297180503 var2455)) ; Statement: $r9 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken: java.lang.String label> 
(assert true)
(define-const var1135 String (append/672562846 var1185 var2551)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1185!1 String)
(assert (= var1185!1 (str.++ var1185 var2551)))
(assert true)
(define-const var193 String (append/672562846 var1135 ":")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1135!1 String)
(assert (= var1135!1 (str.++ var1135 ":")))
(define-const var3040 String (ruleName/-297180503 var2455)) ; Statement: $r12 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken: java.lang.String ruleName> 
(assert true)
(define-const var1334 String (append/672562846 var193 var3040)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var193!1 String)
(assert (= var193!1 (str.++ var193 var3040)))
(assert true)
(define-const var3376 String (append/672562846 var1334 ">")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var1334!1 String)
(assert (= var1334!1 (str.++ var1334 ">")))
(assert true)
(define-const var1090 String (toString/-2075883882 var3376)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {label/-297180503=([com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), ruleName/-297180503=([com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var825=com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken, var2455=r0, var270=$r1, var1751=null_type, var2382=$r8, var1185=$r10, var2551=$r9, var1135=$r11, var193=$r13, var3040=$r12, var1334=$r14, var3376=$r15, var1090=$r16}
; {com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken=var825, r0=var2455, $r1=var270, null_type=var1751, $r8=var2382, $r10=var1185, $r9=var2551, $r11=var1135, $r13=var193, $r12=var3040, $r14=var1334, $r15=var3376, $r16=var1090}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken;	$r1 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken: java.lang.String label>;	if $r1 == null goto $r2 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r9 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken: java.lang.String label>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r12 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.RuleTagToken: java.lang.String ruleName>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 2