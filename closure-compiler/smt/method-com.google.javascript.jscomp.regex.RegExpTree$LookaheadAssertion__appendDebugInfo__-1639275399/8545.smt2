(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var391 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun positive/1354188345 (var391) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var391 var391)
(declare-const null-String String)
(declare-const var1075 var391) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion 
(assert (not (= var1075 null-var391)))
(declare-const var3762 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3762 null-String)))
(define-const var3475 Bool (positive/1354188345 var1075)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion: boolean positive> 
 ; Statement: if $z0 == 0 goto $r2 = "negative" 
(assert (not (= (ite var3475 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3027 String "positive") ; Statement: $r2 = "positive" 
 ; Statement: goto [?= virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3762 var3027)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3762!1 String)
(assert (= var3762!1 (str.++ var3762 var3027)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {positive/1354188345=([com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var391=com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion, var1075=r1, var3762=r0, var3475=$z0, var3027=$r2}
; {com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion=var391, r1=var1075, r0=var3762, $z0=var3475, $r2=var3027}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion;	r0 := @parameter0: java.lang.StringBuilder;	$z0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$LookaheadAssertion: boolean positive>;	if $z0 == 0 goto $r2 = "negative";	$r2 = "positive";	goto [?= virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2)];	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	return
;block_num 3