(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1580 0)
(declare-sort var2684 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun label/-1628796854 (var1580) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun tokenName/-1628796854 (var1580) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1580 var1580)
(declare-const null-String String)
(declare-const var3413 var1580) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken 
(assert (not (= var3413 null-var1580)))
(define-const var1123 String (label/-1628796854 var3413)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken: java.lang.String label> 
 ; Statement: if $r1 == null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var1123 null-String))) ; Negate: Cond: $r1 == null  
(define-const var1287 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1287)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1287!1 String)
(assert (= var1287!1 ""))
(assert true)
(define-const var3907 String (append/672562846 var1287!1 "<")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var1287!2 String)
(assert (= var1287!2 (str.++ var1287!1 "<")))
(define-const var1282 String (label/-1628796854 var3413)) ; Statement: $r9 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken: java.lang.String label> 
(assert true)
(define-const var1328 String (append/672562846 var3907 var1282)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3907!1 String)
(assert (= var3907!1 (str.++ var3907 var1282)))
(assert true)
(define-const var477 String (append/672562846 var1328 ":")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1328!1 String)
(assert (= var1328!1 (str.++ var1328 ":")))
(define-const var1567 String (tokenName/-1628796854 var3413)) ; Statement: $r12 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken: java.lang.String tokenName> 
(assert true)
(define-const var687 String (append/672562846 var477 var1567)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var477!1 String)
(assert (= var477!1 (str.++ var477 var1567)))
(assert true)
(define-const var3239 String (append/672562846 var687 ">")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var687!1 String)
(assert (= var687!1 (str.++ var687 ">")))
(assert true)
(define-const var912 String (toString/-2075883882 var3239)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {label/-1628796854=([com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), tokenName/-1628796854=([com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1580=com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken, var3413=r0, var1123=$r1, var2684=null_type, var1287=$r8, var3907=$r10, var1282=$r9, var1328=$r11, var477=$r13, var1567=$r12, var687=$r14, var3239=$r15, var912=$r16}
; {com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken=var1580, r0=var3413, $r1=var1123, null_type=var2684, $r8=var1287, $r10=var3907, $r9=var1282, $r11=var1328, $r13=var477, $r12=var1567, $r14=var687, $r15=var3239, $r16=var912}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken;	$r1 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken: java.lang.String label>;	if $r1 == null goto $r2 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r9 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken: java.lang.String label>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r12 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken: java.lang.String tokenName>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 2