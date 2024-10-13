(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1052 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var1052 var1052)
(declare-const null-String String)
(declare-const var2945 var1052) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any 
(assert (not (= var2945 null-var1052)))
(declare-const var3062 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3062 null-String)))
(define-const var2928 Int (String_length/-667254855 var3062)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto $z0 = 0 
(assert (not (not (= var2928 0)))) ; Negate: Cond: $i0 != 0  
(define-const var2207 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= return $z0] 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var1052=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any, var2945=r1, var3062=r0, var2928=$i0, var2207=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any=var1052, r1=var2945, r0=var3062, $i0=var2928, $z0=var2207}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any;	r0 := @parameter0: java.lang.CharSequence;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto $z0 = 0;	$z0 = 1;	goto [?= return $z0];	return $z0
;block_num 3