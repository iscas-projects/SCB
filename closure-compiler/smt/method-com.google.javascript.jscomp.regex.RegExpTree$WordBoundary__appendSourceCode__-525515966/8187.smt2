(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var110 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun type/-435034195 (var110) Int)
(declare-const null-var110 var110)
(declare-const null-String String)
(declare-const var902 var110) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$WordBoundary 
(assert (not (= var902 null-var110)))
(declare-const var56 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var56 null-String)))
(assert true)
(define-const var3626 String (append/-1166366385 var56 92)) ; Statement: $r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92) 
(declare-const var56!1 String)
(assert (str.prefixof var56 var56!1))
(define-const var730 Int (type/-435034195 var902)) ; Statement: $c0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$WordBoundary: char type> 
(assert true)
;(assert (append/-1166366385 var3626 var730)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var3626!1 String)
(assert (str.prefixof var3626 var3626!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), type/-435034195=([com.google.javascript.jscomp.regex.RegExpTree$WordBoundary], char)}
; {var110=com.google.javascript.jscomp.regex.RegExpTree$WordBoundary, var902=r1, var56=r0, var3626=$r2, var730=$c0}
; {com.google.javascript.jscomp.regex.RegExpTree$WordBoundary=var110, r1=var902, r0=var56, $r2=var3626, $c0=var730}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$WordBoundary;	r0 := @parameter0: java.lang.StringBuilder;	$r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);	$c0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$WordBoundary: char type>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	return
;block_num 1