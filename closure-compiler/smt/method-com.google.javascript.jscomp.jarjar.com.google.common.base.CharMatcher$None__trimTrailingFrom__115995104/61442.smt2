(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3105 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-var3105 var3105)
(declare-const null-String String)
(declare-const var3089 var3105) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None 
(assert (not (= var3089 null-var3105)))
(declare-const var2305 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2305 null-String)))
(define-const var2279 String (String_toString/-1426662429 var2305)) ; Statement: $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var3105=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None, var3089=r2, var2305=r0, var2279=$r1}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None=var3105, r2=var3089, r0=var2305, $r1=var2279}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None;	r0 := @parameter0: java.lang.CharSequence;	$r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	return $r1
;block_num 1