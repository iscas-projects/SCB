(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3615 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var3615 var3615)
(declare-const null-String String)
(declare-const var448 var3615) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any 
(assert (not (= var448 null-var3615)))
(declare-const var1699 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1699 null-String)))
(define-const var2305 Int (String_length/-667254855 var1699)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto $b1 = 0 
(assert (not (= var2305 0))) ; Cond: $i0 != 0 
(define-const var3204 Int 0) ; Statement: $b1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $b1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var3615=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any, var448=r1, var1699=r0, var2305=$i0, var3204=$b1}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any=var3615, r1=var448, r0=var1699, $i0=var2305, $b1=var3204}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any;	r0 := @parameter0: java.lang.CharSequence;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto $b1 = 0;	$b1 = 0;	return $b1
;block_num 3