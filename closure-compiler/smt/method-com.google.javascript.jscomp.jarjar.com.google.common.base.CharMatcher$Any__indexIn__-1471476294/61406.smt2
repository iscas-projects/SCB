(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1301 0)
(declare-sort var2063 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun var2063_checkPositionIndex/1928365885 (Int Int) Int)
(declare-const null-var1301 var1301)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2072 var1301) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any 
(assert (not (= var2072 null-var1301)))
(declare-const var3130 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3130 null-String)))
(declare-const var1476 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1476 null-Int)))
(define-const var1636 Int (String_length/-667254855 var3130)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
;(assert (var2063_checkPositionIndex/1928365885 var1476 var1636)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: int checkPositionIndex(int,int)>(i1, i0) 

(declare-const var1476!1 Int)
(declare-const var1636!1 Int)
 ; Statement: if i1 != i0 goto $i2 = i1 
(assert (not (= var1476!1 var1636!1))) ; Cond: i1 != i0 
(define-const var3656 Int var1476!1) ; Statement: $i2 = i1 
(assert true) ; Non Conditional
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), var2063_checkPositionIndex/1928365885=([int, int], int)}
; {var1301=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any, var2072=r1, var3130=r0, var1476=i1, var1636=i0, var2063=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3656=$i2}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any=var1301, r1=var2072, r0=var3130, i1=var1476, i0=var1636, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2063, $i2=var3656}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Any;	r0 := @parameter0: java.lang.CharSequence;	i1 := @parameter1: int;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: int checkPositionIndex(int,int)>(i1, i0);	if i1 != i0 goto $i2 = i1;	$i2 = i1;	return $i2
;block_num 3