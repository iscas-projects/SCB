(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var541 0)
(declare-sort var2121 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun tokenName/-1628796854 (var541) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun type/720164270 (var2121) Int)
(declare-fun cast-from-var541-to-var2121 (var541) var2121)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var541 var541)
(declare-const var1664 var541) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken 
(assert (not (= var1664 null-var541)))
(define-const var136 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var136)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var136!1 String)
(assert (= var136!1 ""))
(define-const var85 String (tokenName/-1628796854 var1664)) ; Statement: $r2 = r1.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken: java.lang.String tokenName> 
(assert true)
(define-const var3488 String (append/672562846 var136!1 var85)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var136!2 String)
(assert (= var136!2 (str.++ var136!1 var85)))
(assert true)
(define-const var3644 String (append/672562846 var3488 ":")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3488!1 String)
(assert (= var3488!1 (str.++ var3488 ":")))
(define-const var798 Int (type/720164270 (cast-from-var541-to-var2121 var1664))) ; Statement: $i0 = r1.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken: int type> 
(assert true)
(define-const var1974 String (append/-1001720160 var3644 var798)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3644!1 String)
(assert (str.prefixof var3644 var3644!1))
(assert true)
(define-const var750 String (toString/-2075883882 var1974)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), tokenName/-1628796854=([com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), type/720164270=([com.github.jknack.handlebars.internal.antlr.CommonToken], int), cast-from-var541-to-var2121=([com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken], com.github.jknack.handlebars.internal.antlr.CommonToken), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var541=com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken, var1664=r1, var136=$r0, var85=$r2, var3488=$r3, var3644=$r4, var2121=com.github.jknack.handlebars.internal.antlr.CommonToken, var798=$i0, var1974=$r5, var750=$r6}
; {com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken=var541, r1=var1664, $r0=var136, $r2=var85, $r3=var3488, $r4=var3644, com.github.jknack.handlebars.internal.antlr.CommonToken=var2121, $i0=var798, $r5=var1974, $r6=var750}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken: java.lang.String tokenName>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i0 = r1.<com.github.jknack.handlebars.internal.antlr.tree.pattern.TokenTagToken: int type>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1