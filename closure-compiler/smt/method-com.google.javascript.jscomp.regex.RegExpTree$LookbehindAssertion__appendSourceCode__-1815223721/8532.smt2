(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1999 0)
(declare-sort var806 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun positive/-1820947984 (var1999) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun body/-1820947984 (var1999) var806)
(declare-fun appendSourceCode/-1293869604 (var806 String) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var1999 var1999)
(declare-const null-String String)
(declare-const var2504 var1999) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion 
(assert (not (= var2504 null-var1999)))
(declare-const var2998 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2998 null-String)))
(define-const var748 Bool (positive/-1820947984 var2504)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion: boolean positive> 
 ; Statement: if $z0 == 0 goto $r3 = "(?<!" 
(assert (= (ite var748 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2471 String "(?<!") ; Statement: $r3 = "(?<!" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2998 var2471)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2998!1 String)
(assert (= var2998!1 (str.++ var2998 var2471)))
(define-const var1114 var806 (body/-1820947984 var2504)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion: com.google.javascript.jscomp.regex.RegExpTree body> 
(assert true)
;(assert (appendSourceCode/-1293869604 var1114 var2998!1)) ; Statement: virtualinvoke $r2.<com.google.javascript.jscomp.regex.RegExpTree: void appendSourceCode(java.lang.StringBuilder)>(r0) 

(declare-const var1114!1 var806)
(declare-const var2998!2 String)
(assert true)
;(assert (append/-1166366385 var2998!2 41)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2998!3 String)
(assert (str.prefixof var2998!2 var2998!3))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {positive/-1820947984=([com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), body/-1820947984=([com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion], com.google.javascript.jscomp.regex.RegExpTree), appendSourceCode/-1293869604=([com.google.javascript.jscomp.regex.RegExpTree, java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var1999=com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion, var2504=r1, var2998=r0, var748=$z0, var2471=$r3, var806=com.google.javascript.jscomp.regex.RegExpTree, var1114=$r2}
; {com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion=var1999, r1=var2504, r0=var2998, $z0=var748, $r3=var2471, com.google.javascript.jscomp.regex.RegExpTree=var806, $r2=var1114}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion;	r0 := @parameter0: java.lang.StringBuilder;	$z0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion: boolean positive>;	if $z0 == 0 goto $r3 = "(?<!";	$r3 = "(?<!";	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion: com.google.javascript.jscomp.regex.RegExpTree body>;	virtualinvoke $r2.<com.google.javascript.jscomp.regex.RegExpTree: void appendSourceCode(java.lang.StringBuilder)>(r0);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	return
;block_num 3