(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2939 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun positive/-1820947984 (var2939) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2939 var2939)
(declare-const null-String String)
(declare-const var653 var2939) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion 
(assert (not (= var653 null-var2939)))
(declare-const var3822 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3822 null-String)))
(define-const var2497 Bool (positive/-1820947984 var653)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion: boolean positive> 
 ; Statement: if $z0 == 0 goto $r2 = "negative" 
(assert (= (ite var2497 1 0) 0)) ; Cond: $z0 == 0 
(define-const var807 String "negative") ; Statement: $r2 = "negative" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3822 var807)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3822!1 String)
(assert (= var3822!1 (str.++ var3822 var807)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {positive/-1820947984=([com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2939=com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion, var653=r1, var3822=r0, var2497=$z0, var807=$r2}
; {com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion=var2939, r1=var653, r0=var3822, $z0=var2497, $r2=var807}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion;	r0 := @parameter0: java.lang.StringBuilder;	$z0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion: boolean positive>;	if $z0 == 0 goto $r2 = "negative";	$r2 = "negative";	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	return
;block_num 3