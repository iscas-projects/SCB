(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2657 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var2657 var2657)
(declare-const null-String String)
(declare-const var606 var2657) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None 
(assert (not (= var606 null-var2657)))
(declare-const var1929 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1929 null-String)))
(define-const var139 Int (String_length/-667254855 var1929)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto $z0 = 0 
(assert (not (= var139 0))) ; Cond: $i0 != 0 
(define-const var1658 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var2657=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None, var606=r1, var1929=r0, var139=$i0, var1658=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None=var2657, r1=var606, r0=var1929, $i0=var139, $z0=var1658}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None;	r0 := @parameter0: java.lang.CharSequence;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3