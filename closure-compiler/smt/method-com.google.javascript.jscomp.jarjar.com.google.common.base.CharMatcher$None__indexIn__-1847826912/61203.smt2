(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2332 0)
(declare-sort var1250 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var1250_checkPositionIndex/1928365885 (Int Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2332 var2332)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var328 var2332) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None 
(assert (not (= var328 null-var2332)))
(declare-const var2077 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2077 null-String)))
(declare-const var1742 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1742 null-Int)))
(define-const var2271 Int (String_length/-667254855 var2077)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
;(assert (var1250_checkPositionIndex/1928365885 var1742 var2271)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: int checkPositionIndex(int,int)>(i1, i0) 

(declare-const var1742!1 Int)
(declare-const var2271!1 Int)
(define-const var1610 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), var1250_checkPositionIndex/1928365885=([int, int], int), cast-from-Int-to-Int=([int], int)}
; {var2332=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None, var328=r1, var2077=r0, var1742=i1, var2271=i0, var1250=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1610=$i3}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None=var2332, r1=var328, r0=var2077, i1=var1742, i0=var2271, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1250, $i3=var1610}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$None;	r0 := @parameter0: java.lang.CharSequence;	i1 := @parameter1: int;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: int checkPositionIndex(int,int)>(i1, i0);	$i3 = (int) -1;	return $i3
;block_num 1