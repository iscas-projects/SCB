(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3638 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun positive/1354188345 (var3638) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3638 var3638)
(declare-const null-String String)
(declare-const var3916 var3638) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion 
(assert (not (= var3916 null-var3638)))
(declare-const var3490 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3490 null-String)))
(define-const var3457 Bool (positive/1354188345 var3916)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion: boolean positive> 
 ; Statement: if $z0 == 0 goto $r2 = "negative" 
(assert (= (ite var3457 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1069 String "negative") ; Statement: $r2 = "negative" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3490 var1069)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3490!1 String)
(assert (= var3490!1 (str.++ var3490 var1069)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {positive/1354188345=([com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3638=com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion, var3916=r1, var3490=r0, var3457=$z0, var1069=$r2}
; {com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion=var3638, r1=var3916, r0=var3490, $z0=var3457, $r2=var1069}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion;	r0 := @parameter0: java.lang.StringBuilder;	$z0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion: boolean positive>;	if $z0 == 0 goto $r2 = "negative";	$r2 = "negative";	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	return
;block_num 3