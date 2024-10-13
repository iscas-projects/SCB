(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1571 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-var1571 var1571)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1424 var1571) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher 
(assert (not (= var1424 null-var1571)))
(declare-const var3279 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3279 null-String)))
(declare-const var3824 Int) ; Statement: c2 := @parameter1: char 
(assert (not (= var3824 null-Int)))
(define-const var3520 Int (String_length/-667254855 var3279)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var1388 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert (>= var1388 var3520)) ; Cond: i7 >= i0 
(define-const var3924 String (String_toString/-1426662429 var3279)) ; Statement: $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var1571=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var1424=r2, var3279=r0, var3824=c2, var3520=i0, var1388=i7, var3924=$r1}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var1571, r2=var1424, r0=var3279, c2=var3824, i0=var3520, i7=var1388, $r1=var3924}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: int length()>": 1,"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher;	r0 := @parameter0: java.lang.CharSequence;	c2 := @parameter1: char;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	i7 = 0;	if i7 >= i0 goto $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	return $r1
;block_num 3