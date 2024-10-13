(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var718 0)
(declare-sort var2029 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var2029) String)
(declare-const null-String String)
(declare-const var2029-ROOT var2029)
(declare-const var1946 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1946 null-String)))
(define-const var2462 var2029 var2029-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var917 String (toLowerCase/1946809429 var1946 var2462)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var1946=r0, var718=null_type, var2029=java.util.Locale, var2462=$r1, var917=$r2}
; {r0=var1946, null_type=var718, java.util.Locale=var2029, $r1=var2462, $r2=var917}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	return $r2
;block_num 1