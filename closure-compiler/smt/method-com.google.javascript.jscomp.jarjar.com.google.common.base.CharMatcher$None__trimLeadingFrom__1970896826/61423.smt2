(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var829 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-var829 var829)
(declare-const null-String String)
(declare-const var484 var829) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None 
(assert (not (= var484 null-var829)))
(declare-const var542 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var542 null-String)))
(define-const var3603 String (String_toString/-1426662429 var542)) ; Statement: $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var829=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None, var484=r2, var542=r0, var3603=$r1}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None=var829, r2=var484, r0=var542, $r1=var3603}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None;	r0 := @parameter0: java.lang.CharSequence;	$r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	return $r1
;block_num 1