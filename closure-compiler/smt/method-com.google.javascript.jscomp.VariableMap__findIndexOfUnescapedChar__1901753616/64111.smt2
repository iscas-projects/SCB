(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2513 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3315 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3315 null-String)))
(declare-const var3499 Int) ; Statement: c1 := @parameter1: char 
(assert (not (= var3499 null-Int)))
(assert true)
(define-const var283 Int (length/-134980193 var3315)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3330 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i0 goto $i13 = (int) -1 
(assert (>= var3330 var283)) ; Cond: i5 >= i0 
(define-const var2977 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
 ; Statement: return $i13 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var3315=r0, var2513=null_type, var3499=c1, var283=i0, var3330=i5, var2977=$i13}
; {r0=var3315, null_type=var2513, c1=var3499, i0=var283, i5=var3330, $i13=var2977}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	c1 := @parameter1: char;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i5 = 0;	if i5 >= i0 goto $i13 = (int) -1;	$i13 = (int) -1;	return $i13
;block_num 3