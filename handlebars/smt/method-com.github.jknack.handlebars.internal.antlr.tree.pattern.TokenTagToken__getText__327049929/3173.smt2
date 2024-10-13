(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1627 0)
(declare-sort var3607 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun label/-1628796854 (var1627) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun tokenName/-1628796854 (var1627) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1627 var1627)
(declare-const null-String String)
(declare-const var2616 var1627) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken 
(assert (not (= var2616 null-var1627)))
(define-const var2241 String (label/-1628796854 var2616)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken: java.lang.String label> 
 ; Statement: if $r1 == null goto $r2 = new java.lang.StringBuilder 
(assert (= var2241 null-String)) ; Cond: $r1 == null 
(define-const var1795 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1795)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1795!1 String)
(assert (= var1795!1 ""))
(assert true)
(define-const var1934 String (append/672562846 var1795!1 "<")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var1795!2 String)
(assert (= var1795!2 (str.++ var1795!1 "<")))
(define-const var2412 String (tokenName/-1628796854 var2616)) ; Statement: $r3 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken: java.lang.String tokenName> 
(assert true)
(define-const var3170 String (append/672562846 var1934 var2412)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1934!1 String)
(assert (= var1934!1 (str.++ var1934 var2412)))
(assert true)
(define-const var182 String (append/672562846 var3170 ">")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var3170!1 String)
(assert (= var3170!1 (str.++ var3170 ">")))
(assert true)
(define-const var2896 String (toString/-2075883882 var182)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {label/-1628796854=([com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), tokenName/-1628796854=([com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1627=com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken, var2616=r0, var2241=$r1, var3607=null_type, var1795=$r2, var1934=$r4, var2412=$r3, var3170=$r5, var182=$r6, var2896=$r7}
; {com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken=var1627, r0=var2616, $r1=var2241, null_type=var3607, $r2=var1795, $r4=var1934, $r3=var2412, $r5=var3170, $r6=var182, $r7=var2896}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken;	$r1 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken: java.lang.String label>;	if $r1 == null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r3 = r0.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken: java.lang.String tokenName>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2