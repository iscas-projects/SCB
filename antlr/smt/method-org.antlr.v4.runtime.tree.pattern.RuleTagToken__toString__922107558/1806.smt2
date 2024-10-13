(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3938 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun ruleName/679542414 (var3938) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun bypassTokenType/679542414 (var3938) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3938 var3938)
(declare-const var3068 var3938) ; Statement: r1 := @this: org.antlr.v4.runtime.tree.pattern.RuleTagToken 
(assert (not (= var3068 null-var3938)))
(define-const var2392 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2392)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2392!1 String)
(assert (= var2392!1 ""))
(define-const var2470 String (ruleName/679542414 var3068)) ; Statement: $r2 = r1.<org.antlr.v4.runtime.tree.pattern.RuleTagToken: java.lang.String ruleName> 
(assert true)
(define-const var92 String (append/672562846 var2392!1 var2470)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2392!2 String)
(assert (= var2392!2 (str.++ var2392!1 var2470)))
(assert true)
(define-const var3371 String (append/672562846 var92 ":")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var92!1 String)
(assert (= var92!1 (str.++ var92 ":")))
(define-const var1133 Int (bypassTokenType/679542414 var3068)) ; Statement: $i0 = r1.<org.antlr.v4.runtime.tree.pattern.RuleTagToken: int bypassTokenType> 
(assert true)
(define-const var1045 String (append/-1001720160 var3371 var1133)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3371!1 String)
(assert (str.prefixof var3371 var3371!1))
(assert true)
(define-const var1499 String (toString/-2075883882 var1045)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), ruleName/679542414=([org.antlr.v4.runtime.tree.pattern.RuleTagToken], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), bypassTokenType/679542414=([org.antlr.v4.runtime.tree.pattern.RuleTagToken], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3938=org.antlr.v4.runtime.tree.pattern.RuleTagToken, var3068=r1, var2392=$r0, var2470=$r2, var92=$r3, var3371=$r4, var1133=$i0, var1045=$r5, var1499=$r6}
; {org.antlr.v4.runtime.tree.pattern.RuleTagToken=var3938, r1=var3068, $r0=var2392, $r2=var2470, $r3=var92, $r4=var3371, $i0=var1133, $r5=var1045, $r6=var1499}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.tree.pattern.RuleTagToken;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.antlr.v4.runtime.tree.pattern.RuleTagToken: java.lang.String ruleName>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i0 = r1.<org.antlr.v4.runtime.tree.pattern.RuleTagToken: int bypassTokenType>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1