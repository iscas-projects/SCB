(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3576 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/-1450035250 (var3576) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var3576 var3576)
(declare-const null-String String)
(declare-const var2180 var3576) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$Anchor 
(assert (not (= var2180 null-var3576)))
(declare-const var1432 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1432 null-String)))
(define-const var2632 Int (type/-1450035250 var2180)) ; Statement: $c0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Anchor: char type> 
(assert true)
;(assert (append/-1166366385 var1432 var2632)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var1432!1 String)
(assert (str.prefixof var1432 var1432!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {type/-1450035250=([com.google.javascript.jscomp.regex.RegExpTree$Anchor], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var3576=com.google.javascript.jscomp.regex.RegExpTree$Anchor, var2180=r1, var1432=r0, var2632=$c0}
; {com.google.javascript.jscomp.regex.RegExpTree$Anchor=var3576, r1=var2180, r0=var1432, $c0=var2632}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$Anchor;	r0 := @parameter0: java.lang.StringBuilder;	$c0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Anchor: char type>;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	return
;block_num 1