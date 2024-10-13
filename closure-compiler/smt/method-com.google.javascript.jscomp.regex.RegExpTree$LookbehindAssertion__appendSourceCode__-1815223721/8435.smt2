(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var204 0)
(declare-sort var1503 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun positive/-1820947984 (var204) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun body/-1820947984 (var204) var1503)
(declare-fun appendSourceCode/-1293869604 (var1503 String) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var204 var204)
(declare-const null-String String)
(declare-const var2291 var204) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion 
(assert (not (= var2291 null-var204)))
(declare-const var2972 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2972 null-String)))
(define-const var106 Bool (positive/-1820947984 var2291)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion: boolean positive> 
 ; Statement: if $z0 == 0 goto $r3 = "(?<!" 
(assert (not (= (ite var106 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2520 String "(?<=") ; Statement: $r3 = "(?<=" 
 ; Statement: goto [?= virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2972 var2520)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2972!1 String)
(assert (= var2972!1 (str.++ var2972 var2520)))
(define-const var3705 var1503 (body/-1820947984 var2291)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion: com.google.javascript.jscomp.regex.RegExpTree body> 
(assert true)
;(assert (appendSourceCode/-1293869604 var3705 var2972!1)) ; Statement: virtualinvoke $r2.<com.google.javascript.jscomp.regex.RegExpTree: void appendSourceCode(java.lang.StringBuilder)>(r0) 

(declare-const var3705!1 var1503)
(declare-const var2972!2 String)
(assert true)
;(assert (append/-1166366385 var2972!2 41)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2972!3 String)
(assert (str.prefixof var2972!2 var2972!3))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {positive/-1820947984=([com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), body/-1820947984=([com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion], com.google.javascript.jscomp.regex.RegExpTree), appendSourceCode/-1293869604=([com.google.javascript.jscomp.regex.RegExpTree, java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var204=com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion, var2291=r1, var2972=r0, var106=$z0, var2520=$r3, var1503=com.google.javascript.jscomp.regex.RegExpTree, var3705=$r2}
; {com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion=var204, r1=var2291, r0=var2972, $z0=var106, $r3=var2520, com.google.javascript.jscomp.regex.RegExpTree=var1503, $r2=var3705}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion;	r0 := @parameter0: java.lang.StringBuilder;	$z0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion: boolean positive>;	if $z0 == 0 goto $r3 = "(?<!";	$r3 = "(?<=";	goto [?= virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3)];	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r2 = r1.<com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion: com.google.javascript.jscomp.regex.RegExpTree body>;	virtualinvoke $r2.<com.google.javascript.jscomp.regex.RegExpTree: void appendSourceCode(java.lang.StringBuilder)>(r0);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	return
;block_num 3