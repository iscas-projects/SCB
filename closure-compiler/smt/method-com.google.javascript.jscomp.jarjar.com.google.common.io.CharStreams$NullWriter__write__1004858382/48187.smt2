(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3465 0)
(declare-sort var3161 0)
(declare-sort var2237 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2237_checkPositionIndexes/224088529 (Int Int Int) void)
(declare-const null-var3465 var3465)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var795 var3465) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams$NullWriter 
(assert (not (= var795 null-var3465)))
(declare-const var2556 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2556 null-String)))
(declare-const var570 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var570 null-Int)))
(declare-const var3657 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3657 null-Int)))
(define-const var1353 Int (+ var570 var3657)) ; Statement: $i3 = i0 + i1 
(assert true)
(define-const var3293 Int (length/-134980193 var2556)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
;(assert (var2237_checkPositionIndexes/224088529 var570 var1353 var3293)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkPositionIndexes(int,int,int)>(i0, $i3, $i2) 

(declare-const var570!1 Int)
(declare-const var1353!1 Int)
(declare-const var3293!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var2237_checkPositionIndexes/224088529=([int, int, int], void)}
; {var3465=com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams$NullWriter, var795=r1, var2556=r0, var3161=null_type, var570=i0, var3657=i1, var1353=$i3, var3293=$i2, var2237=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams$NullWriter=var3465, r1=var795, r0=var2556, null_type=var3161, i0=var570, i1=var3657, $i3=var1353, $i2=var3293, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2237}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams$NullWriter;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	$i3 = i0 + i1;	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkPositionIndexes(int,int,int)>(i0, $i3, $i2);	return
;block_num 1