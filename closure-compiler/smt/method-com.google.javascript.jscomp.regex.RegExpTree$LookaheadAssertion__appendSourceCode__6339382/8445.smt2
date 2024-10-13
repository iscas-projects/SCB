(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3891 0)
(declare-sort var3563 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun positive/1354188345 (var3891) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun body/1354188345 (var3891) var3563)
(declare-fun appendSourceCode/-1293869604 (var3563 String) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var3891 var3891)
(declare-const null-String String)
(declare-const var1509 var3891) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion 
(assert (not (= var1509 null-var3891)))
(declare-const var561 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var561 null-String)))
(define-const var2641 Bool (positive/1354188345 var1509)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion: boolean positive> 
 ; Statement: if $z0 == 0 goto $r3 = "(?!" 
(assert (not (= (ite var2641 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1201 String "(?=") ; Statement: $r3 = "(?=" 
 ; Statement: goto [?= virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var561 var1201)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var561!1 String)
(assert (= var561!1 (str.++ var561 var1201)))
(define-const var2132 var3563 (body/1354188345 var1509)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion: com.google.javascript.jscomp.regex.RegExpTree body> 
(assert true)
;(assert (appendSourceCode/-1293869604 var2132 var561!1)) ; Statement: virtualinvoke $r2.<com.google.javascript.jscomp.regex.RegExpTree: void appendSourceCode(java.lang.StringBuilder)>(r0) 

(declare-const var2132!1 var3563)
(declare-const var561!2 String)
(assert true)
;(assert (append/-1166366385 var561!2 41)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var561!3 String)
(assert (str.prefixof var561!2 var561!3))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {positive/1354188345=([com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), body/1354188345=([com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion], com.google.javascript.jscomp.regex.RegExpTree), appendSourceCode/-1293869604=([com.google.javascript.jscomp.regex.RegExpTree, java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var3891=com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion, var1509=r1, var561=r0, var2641=$z0, var1201=$r3, var3563=com.google.javascript.jscomp.regex.RegExpTree, var2132=$r2}
; {com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion=var3891, r1=var1509, r0=var561, $z0=var2641, $r3=var1201, com.google.javascript.jscomp.regex.RegExpTree=var3563, $r2=var2132}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion;	r0 := @parameter0: java.lang.StringBuilder;	$z0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion: boolean positive>;	if $z0 == 0 goto $r3 = "(?!";	$r3 = "(?=";	goto [?= virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3)];	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion: com.google.javascript.jscomp.regex.RegExpTree body>;	virtualinvoke $r2.<com.google.javascript.jscomp.regex.RegExpTree: void appendSourceCode(java.lang.StringBuilder)>(r0);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	return
;block_num 3