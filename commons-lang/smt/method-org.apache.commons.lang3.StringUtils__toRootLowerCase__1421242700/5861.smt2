(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1466 0)
(declare-sort var1357 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var1357) String)
(declare-const null-String String)
(declare-const var1357-ROOT var1357)
(declare-const var3341 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3341 null-String)))
 ; Statement: if r0 != null goto $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert (not (= var3341 null-String))) ; Cond: r0 != null 
(define-const var159 var1357 var1357-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1355 String (toLowerCase/1946809429 var3341 var159)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var3341=r0, var1466=null_type, var1357=java.util.Locale, var159=$r1, var1355=$r2}
; {r0=var3341, null_type=var1466, java.util.Locale=var1357, $r1=var159, $r2=var1355}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto $r1 = <java.util.Locale: java.util.Locale ROOT>;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	return $r2
;block_num 3