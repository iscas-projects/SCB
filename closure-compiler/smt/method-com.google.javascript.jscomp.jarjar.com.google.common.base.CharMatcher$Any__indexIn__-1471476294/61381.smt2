(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2367 0)
(declare-sort var748 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var748_checkPositionIndex/1928365885 (Int Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2367 var2367)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2930 var2367) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any 
(assert (not (= var2930 null-var2367)))
(declare-const var1441 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1441 null-String)))
(declare-const var3129 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3129 null-Int)))
(define-const var1848 Int (String_length/-667254855 var1441)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
;(assert (var748_checkPositionIndex/1928365885 var3129 var1848)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: int checkPositionIndex(int,int)>(i1, i0) 

(declare-const var3129!1 Int)
(declare-const var1848!1 Int)
 ; Statement: if i1 != i0 goto $i2 = i1 
(assert (not (not (= var3129!1 var1848!1)))) ; Negate: Cond: i1 != i0  
(define-const var3012 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
(define-const var2255 Int var3012) ; Statement: $i2 = $i4 
 ; Statement: goto [?= return $i2] 
(assert true) ; Non Conditional
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), var748_checkPositionIndex/1928365885=([int, int], int), cast-from-Int-to-Int=([int], int)}
; {var2367=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any, var2930=r1, var1441=r0, var3129=i1, var1848=i0, var748=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3012=$i4, var2255=$i2}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any=var2367, r1=var2930, r0=var1441, i1=var3129, i0=var1848, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var748, $i4=var3012, $i2=var2255}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any;	r0 := @parameter0: java.lang.CharSequence;	i1 := @parameter1: int;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: int checkPositionIndex(int,int)>(i1, i0);	if i1 != i0 goto $i2 = i1;	$i4 = (int) -1;	$i2 = $i4;	goto [?= return $i2];	return $i2
;block_num 3