(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1746 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-var1746 var1746)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2537 var1746) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None 
(assert (not (= var2537 null-var1746)))
(declare-const var3897 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3897 null-String)))
(declare-const var583 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var583 null-Int)))
(define-const var109 String (String_toString/-1426662429 var3897)) ; Statement: $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var1746=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None, var2537=r2, var3897=r0, var583=c0, var109=$r1}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None=var1746, r2=var2537, r0=var3897, c0=var583, $r1=var109}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None;	r0 := @parameter0: java.lang.CharSequence;	c0 := @parameter1: char;	$r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	return $r1
;block_num 1