(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2843 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2843 var2843)
(declare-const null-String String)
(declare-const var767 var2843) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher 
(assert (not (= var767 null-var2843)))
(declare-const var2337 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2337 null-String)))
(define-const var3265 Int (String_length/-667254855 var2337)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var166 Int (- var3265 1)) ; Statement: i2 = $i0 - 1 
(assert true) ; Non Conditional
 ; Statement: if i2 < 0 goto $i6 = (int) -1 
(assert (< var166 0)) ; Cond: i2 < 0 
(define-const var3624 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), cast-from-Int-to-Int=([int], int)}
; {var2843=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var767=r1, var2337=r0, var3265=$i0, var166=i2, var3624=$i6}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var2843, r1=var767, r0=var2337, $i0=var3265, i2=var166, $i6=var3624}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher;	r0 := @parameter0: java.lang.CharSequence;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	i2 = $i0 - 1;	if i2 < 0 goto $i6 = (int) -1;	$i6 = (int) -1;	return $i6
;block_num 3