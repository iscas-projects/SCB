(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3062 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/-435034195 (var3062) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var3062 var3062)
(declare-const null-String String)
(declare-const var2956 var3062) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$WordBoundary 
(assert (not (= var2956 null-var3062)))
(declare-const var1925 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1925 null-String)))
(define-const var2793 Int (type/-435034195 var2956)) ; Statement: $c0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$WordBoundary: char type> 
(assert true)
;(assert (append/-1166366385 var1925 var2793)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var1925!1 String)
(assert (str.prefixof var1925 var1925!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {type/-435034195=([com.google.javascript.jscomp.regex.RegExpTree$WordBoundary], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var3062=com.google.javascript.jscomp.regex.RegExpTree$WordBoundary, var2956=r1, var1925=r0, var2793=$c0}
; {com.google.javascript.jscomp.regex.RegExpTree$WordBoundary=var3062, r1=var2956, r0=var1925, $c0=var2793}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$WordBoundary;	r0 := @parameter0: java.lang.StringBuilder;	$c0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$WordBoundary: char type>;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	return
;block_num 1