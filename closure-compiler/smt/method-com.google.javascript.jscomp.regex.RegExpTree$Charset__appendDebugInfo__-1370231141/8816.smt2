(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3808 0)
(declare-sort var3748 0)
(declare-sort var2934 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ranges/-399732909 (var3808) var3748)
(declare-fun append/-1031950772 (String var2934) String)
(declare-fun cast-from-var3748-to-var2934 (var3748) var2934)
(declare-const null-var3808 var3808)
(declare-const null-String String)
(declare-const var2170 var3808) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$Charset 
(assert (not (= var2170 null-var3808)))
(declare-const var277 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var277 null-String)))
(define-const var3037 var3748 (ranges/-399732909 var2170)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Charset: com.google.javascript.jscomp.regex.CharRanges ranges> 
(assert true)
;(assert (append/-1031950772 var277 (cast-from-var3748-to-var2934 var3037))) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var277!1 String)
(assert (str.prefixof var277 var277!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {ranges/-399732909=([com.google.javascript.jscomp.regex.RegExpTree$Charset], com.google.javascript.jscomp.regex.CharRanges), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3748-to-var2934=([com.google.javascript.jscomp.regex.CharRanges], java.lang.Object)}
; {var3808=com.google.javascript.jscomp.regex.RegExpTree$Charset, var2170=r1, var277=r0, var3748=com.google.javascript.jscomp.regex.CharRanges, var3037=$r2, var2934=java.lang.Object}
; {com.google.javascript.jscomp.regex.RegExpTree$Charset=var3808, r1=var2170, r0=var277, com.google.javascript.jscomp.regex.CharRanges=var3748, $r2=var3037, java.lang.Object=var2934}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$Charset;	r0 := @parameter0: java.lang.StringBuilder;	$r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Charset: com.google.javascript.jscomp.regex.CharRanges ranges>;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	return
;block_num 1