(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2085 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-var2085 var2085)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1750 var2085) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None 
(assert (not (= var1750 null-var2085)))
(declare-const var1592 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1592 null-String)))
(declare-const var2816 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var2816 null-Int)))
(define-const var3443 String (String_toString/-1426662429 var1592)) ; Statement: $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var2085=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None, var1750=r2, var1592=r0, var2816=c0, var3443=$r1}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None=var2085, r2=var1750, r0=var1592, c0=var2816, $r1=var3443}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None;	r0 := @parameter0: java.lang.CharSequence;	c0 := @parameter1: char;	$r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	return $r1
;block_num 1