(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2587 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-var2587 var2587)
(declare-const null-String String)
(declare-const var364 var2587) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None 
(assert (not (= var364 null-var2587)))
(declare-const var3825 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3825 null-String)))
(define-const var356 String (String_toString/-1426662429 var3825)) ; Statement: $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var2587=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None, var364=r2, var3825=r0, var356=$r1}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None=var2587, r2=var364, r0=var3825, $r1=var356}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None;	r0 := @parameter0: java.lang.CharSequence;	$r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	return $r1
;block_num 1