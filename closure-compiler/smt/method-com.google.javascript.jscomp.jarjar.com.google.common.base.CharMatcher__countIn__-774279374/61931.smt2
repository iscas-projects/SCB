(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2767 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var2767 var2767)
(declare-const null-String String)
(declare-const var2390 var2767) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher 
(assert (not (= var2390 null-var2767)))
(declare-const var1956 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1956 null-String)))
(define-const var2358 Int 0) ; Statement: i2 = 0 
(define-const var2588 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var1590 Int (String_length/-667254855 var1956)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if i3 >= $i0 goto return i2 
(assert (>= var2588 var1590)) ; Cond: i3 >= $i0 
 ; Statement: return i2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var2767=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var2390=r1, var1956=r0, var2358=i2, var2588=i3, var1590=$i0}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var2767, r1=var2390, r0=var1956, i2=var2358, i3=var2588, $i0=var1590}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher;	r0 := @parameter0: java.lang.CharSequence;	i2 = 0;	i3 = 0;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if i3 >= $i0 goto return i2;	return i2
;block_num 3