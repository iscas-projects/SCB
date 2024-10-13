(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1034 0)
(declare-sort var2784 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun positive/1354188345 (var1034) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun body/1354188345 (var1034) var2784)
(declare-fun appendSourceCode/-1293869604 (var2784 String) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var1034 var1034)
(declare-const null-String String)
(declare-const var2607 var1034) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion 
(assert (not (= var2607 null-var1034)))
(declare-const var619 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var619 null-String)))
(define-const var637 Bool (positive/1354188345 var2607)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion: boolean positive> 
 ; Statement: if $z0 == 0 goto $r3 = "(?!" 
(assert (= (ite var637 1 0) 0)) ; Cond: $z0 == 0 
(define-const var375 String "(?!") ; Statement: $r3 = "(?!" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var619 var375)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var619!1 String)
(assert (= var619!1 (str.++ var619 var375)))
(define-const var2383 var2784 (body/1354188345 var2607)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion: com.google.javascript.jscomp.regex.RegExpTree body> 
(assert true)
;(assert (appendSourceCode/-1293869604 var2383 var619!1)) ; Statement: virtualinvoke $r2.<com.google.javascript.jscomp.regex.RegExpTree: void appendSourceCode(java.lang.StringBuilder)>(r0) 

(declare-const var2383!1 var2784)
(declare-const var619!2 String)
(assert true)
;(assert (append/-1166366385 var619!2 41)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var619!3 String)
(assert (str.prefixof var619!2 var619!3))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {positive/1354188345=([com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), body/1354188345=([com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion], com.google.javascript.jscomp.regex.RegExpTree), appendSourceCode/-1293869604=([com.google.javascript.jscomp.regex.RegExpTree, java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var1034=com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion, var2607=r1, var619=r0, var637=$z0, var375=$r3, var2784=com.google.javascript.jscomp.regex.RegExpTree, var2383=$r2}
; {com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion=var1034, r1=var2607, r0=var619, $z0=var637, $r3=var375, com.google.javascript.jscomp.regex.RegExpTree=var2784, $r2=var2383}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion;	r0 := @parameter0: java.lang.StringBuilder;	$z0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion: boolean positive>;	if $z0 == 0 goto $r3 = "(?!";	$r3 = "(?!";	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion: com.google.javascript.jscomp.regex.RegExpTree body>;	virtualinvoke $r2.<com.google.javascript.jscomp.regex.RegExpTree: void appendSourceCode(java.lang.StringBuilder)>(r0);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	return
;block_num 3