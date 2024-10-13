(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3714 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var3714 var3714)
(declare-const null-String String)
(declare-const var1663 var3714) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any 
(assert (not (= var1663 null-var3714)))
(declare-const var1668 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1668 null-String)))
(define-const var819 Int (String_length/-667254855 var1668)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto $z0 = 0 
(assert (not (= var819 0))) ; Cond: $i0 != 0 
(define-const var750 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var3714=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any, var1663=r1, var1668=r0, var819=$i0, var750=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any=var3714, r1=var1663, r0=var1668, $i0=var819, $z0=var750}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any;	r0 := @parameter0: java.lang.CharSequence;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3