(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1064 0)
(declare-sort var2142 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun body/-1003404843 (var1064) var2142)
(declare-fun appendSourceCode/-1293869604 (var2142 String) void)
(declare-const null-var1064 var1064)
(declare-const null-String String)
(declare-const var3909 var1064) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$CapturingGroup 
(assert (not (= var3909 null-var1064)))
(declare-const var632 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var632 null-String)))
(assert true)
;(assert (append/-1166366385 var632 40)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var632!1 String)
(assert (str.prefixof var632 var632!1))
(define-const var1091 var2142 (body/-1003404843 var3909)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$CapturingGroup: com.google.javascript.jscomp.regex.RegExpTree body> 
(assert true)
;(assert (appendSourceCode/-1293869604 var1091 var632!1)) ; Statement: virtualinvoke $r2.<com.google.javascript.jscomp.regex.RegExpTree: void appendSourceCode(java.lang.StringBuilder)>(r0) 

(declare-const var1091!1 var2142)
(declare-const var632!2 String)
(assert true)
;(assert (append/-1166366385 var632!2 41)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var632!3 String)
(assert (str.prefixof var632!2 var632!3))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), body/-1003404843=([com.google.javascript.jscomp.regex.RegExpTree$CapturingGroup], com.google.javascript.jscomp.regex.RegExpTree), appendSourceCode/-1293869604=([com.google.javascript.jscomp.regex.RegExpTree, java.lang.StringBuilder], void)}
; {var1064=com.google.javascript.jscomp.regex.RegExpTree$CapturingGroup, var3909=r1, var632=r0, var2142=com.google.javascript.jscomp.regex.RegExpTree, var1091=$r2}
; {com.google.javascript.jscomp.regex.RegExpTree$CapturingGroup=var1064, r1=var3909, r0=var632, com.google.javascript.jscomp.regex.RegExpTree=var2142, $r2=var1091}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$CapturingGroup;	r0 := @parameter0: java.lang.StringBuilder;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$CapturingGroup: com.google.javascript.jscomp.regex.RegExpTree body>;	virtualinvoke $r2.<com.google.javascript.jscomp.regex.RegExpTree: void appendSourceCode(java.lang.StringBuilder)>(r0);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	return
;block_num 1