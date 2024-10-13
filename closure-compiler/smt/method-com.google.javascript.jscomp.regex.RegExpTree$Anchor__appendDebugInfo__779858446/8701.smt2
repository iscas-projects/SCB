(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1059 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/-1450035250 (var1059) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var1059 var1059)
(declare-const null-String String)
(declare-const var1030 var1059) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$Anchor 
(assert (not (= var1030 null-var1059)))
(declare-const var9 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var9 null-String)))
(define-const var1235 Int (type/-1450035250 var1030)) ; Statement: $c0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Anchor: char type> 
(assert true)
;(assert (append/-1166366385 var9 var1235)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0) 
(declare-const var9!1 String)
(assert (str.prefixof var9 var9!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {type/-1450035250=([com.google.javascript.jscomp.regex.RegExpTree$Anchor], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var1059=com.google.javascript.jscomp.regex.RegExpTree$Anchor, var1030=r1, var9=r0, var1235=$c0}
; {com.google.javascript.jscomp.regex.RegExpTree$Anchor=var1059, r1=var1030, r0=var9, $c0=var1235}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$Anchor;	r0 := @parameter0: java.lang.StringBuilder;	$c0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Anchor: char type>;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c0);	return
;block_num 1