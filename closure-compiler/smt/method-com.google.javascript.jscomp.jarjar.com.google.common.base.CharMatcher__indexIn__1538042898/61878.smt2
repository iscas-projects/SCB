(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2770 0)
(declare-sort var2116 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var2116_checkPositionIndex/1928365885 (Int Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2770 var2770)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2620 var2770) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher 
(assert (not (= var2620 null-var2770)))
(declare-const var2229 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2229 null-String)))
(declare-const var2142 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2142 null-Int)))
(define-const var3087 Int (String_length/-667254855 var2229)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
;(assert (var2116_checkPositionIndex/1928365885 var2142 var3087)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: int checkPositionIndex(int,int)>(i1, i0) 

(declare-const var2142!1 Int)
(declare-const var3087!1 Int)
(define-const var1540 Int var2142!1) ; Statement: i3 = i1 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $i5 = (int) -1 
(assert (>= var1540 var3087!1)) ; Cond: i3 >= i0 
(define-const var2717 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: return $i5 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), var2116_checkPositionIndex/1928365885=([int, int], int), cast-from-Int-to-Int=([int], int)}
; {var2770=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var2620=r1, var2229=r0, var2142=i1, var3087=i0, var2116=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1540=i3, var2717=$i5}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var2770, r1=var2620, r0=var2229, i1=var2142, i0=var3087, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2116, i3=var1540, $i5=var2717}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher;	r0 := @parameter0: java.lang.CharSequence;	i1 := @parameter1: int;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: int checkPositionIndex(int,int)>(i1, i0);	i3 = i1;	if i3 >= i0 goto $i5 = (int) -1;	$i5 = (int) -1;	return $i5
;block_num 3