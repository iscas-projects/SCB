(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1494 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun positive/-1820947984 (var1494) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1494 var1494)
(declare-const null-String String)
(declare-const var1793 var1494) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion 
(assert (not (= var1793 null-var1494)))
(declare-const var942 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var942 null-String)))
(define-const var1033 Bool (positive/-1820947984 var1793)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion: boolean positive> 
 ; Statement: if $z0 == 0 goto $r2 = "negative" 
(assert (not (= (ite var1033 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2327 String "positive") ; Statement: $r2 = "positive" 
 ; Statement: goto [?= virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var942 var2327)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var942!1 String)
(assert (= var942!1 (str.++ var942 var2327)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {positive/-1820947984=([com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1494=com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion, var1793=r1, var942=r0, var1033=$z0, var2327=$r2}
; {com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion=var1494, r1=var1793, r0=var942, $z0=var1033, $r2=var2327}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion;	r0 := @parameter0: java.lang.StringBuilder;	$z0 = r1.<com.google.javascript.jscomp.regex.RegExpTree$LookbehindAssertion: boolean positive>;	if $z0 == 0 goto $r2 = "negative";	$r2 = "positive";	goto [?= virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2)];	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	return
;block_num 3