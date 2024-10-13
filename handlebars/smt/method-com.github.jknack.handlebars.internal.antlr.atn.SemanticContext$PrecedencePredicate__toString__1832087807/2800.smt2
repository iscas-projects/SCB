(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var283 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun precedence/-830440545 (var283) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var283 var283)
(declare-const var1494 var283) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.SemanticContext$PrecedencePredicate 
(assert (not (= var1494 null-var283)))
(define-const var1666 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1666)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1666!1 String)
(assert (= var1666!1 ""))
(assert true)
(define-const var169 String (append/672562846 var1666!1 "{")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{") 
(declare-const var1666!2 String)
(assert (= var1666!2 (str.++ var1666!1 "{")))
(define-const var3967 Int (precedence/-830440545 var1494)) ; Statement: $i0 = r1.<com.github.jknack.handlebars.internal.antlr.atn.SemanticContext$PrecedencePredicate: int precedence> 
(assert true)
(define-const var3424 String (append/-1001720160 var169 var3967)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var169!1 String)
(assert (str.prefixof var169 var169!1))
(assert true)
(define-const var3281 String (append/672562846 var3424 ">=prec}?")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">=prec}?") 
(declare-const var3424!1 String)
(assert (= var3424!1 (str.++ var3424 ">=prec}?")))
(assert true)
(define-const var587 String (toString/-2075883882 var3281)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), precedence/-830440545=([com.github.jknack.handlebars.internal.antlr.atn.SemanticContext$PrecedencePredicate], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var283=com.github.jknack.handlebars.internal.antlr.atn.SemanticContext$PrecedencePredicate, var1494=r1, var1666=$r0, var169=$r2, var3967=$i0, var3424=$r3, var3281=$r4, var587=$r5}
; {com.github.jknack.handlebars.internal.antlr.atn.SemanticContext$PrecedencePredicate=var283, r1=var1494, $r0=var1666, $r2=var169, $i0=var3967, $r3=var3424, $r4=var3281, $r5=var587}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.SemanticContext$PrecedencePredicate;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");	$i0 = r1.<com.github.jknack.handlebars.internal.antlr.atn.SemanticContext$PrecedencePredicate: int precedence>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">=prec}?");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1