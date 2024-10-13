(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2014 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-var2014 var2014)
(declare-const null-String String)
(declare-const var2898 var2014) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None 
(assert (not (= var2898 null-var2014)))
(declare-const var328 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var328 null-String)))
(define-const var1075 String (String_toString/-1426662429 var328)) ; Statement: $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var2014=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None, var2898=r2, var328=r0, var1075=$r1}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None=var2014, r2=var2898, r0=var328, $r1=var1075}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None;	r0 := @parameter0: java.lang.CharSequence;	$r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	return $r1
;block_num 1