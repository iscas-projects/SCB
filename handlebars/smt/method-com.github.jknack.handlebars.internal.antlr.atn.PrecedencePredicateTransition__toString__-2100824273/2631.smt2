(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3853 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun precedence/1821110991 (var3853) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3853 var3853)
(declare-const var670 var3853) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition 
(assert (not (= var670 null-var3853)))
(define-const var459 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var459)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var459!1 String)
(assert (= var459!1 ""))
(define-const var301 Int (precedence/1821110991 var670)) ; Statement: $i0 = r1.<com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition: int precedence> 
(assert true)
(define-const var117 String (append/-1001720160 var459!1 var301)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var459!2 String)
(assert (str.prefixof var459!1 var459!2))
(assert true)
(define-const var2436 String (append/672562846 var117 " >= _p")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" >= _p") 
(declare-const var117!1 String)
(assert (= var117!1 (str.++ var117 " >= _p")))
(assert true)
(define-const var2609 String (toString/-2075883882 var2436)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), precedence/1821110991=([com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3853=com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition, var670=r1, var459=$r0, var301=$i0, var117=$r2, var2436=$r3, var2609=$r4}
; {com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition=var3853, r1=var670, $r0=var459, $i0=var301, $r2=var117, $r3=var2436, $r4=var2609}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i0 = r1.<com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition: int precedence>;	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" >= _p");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1