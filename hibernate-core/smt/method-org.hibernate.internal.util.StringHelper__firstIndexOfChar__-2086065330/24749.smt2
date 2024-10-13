(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2804 0)
(declare-sort var3193 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-var3193 var3193)
(declare-const null-Int Int)
(declare-const var2704 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2704 null-String)))
(declare-const var2293 var3193) ; Statement: r1 := @parameter1: java.util.BitSet 
(assert (not (= var2293 null-var3193)))
(declare-const var2762 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2762 null-Int)))
(define-const var853 Int var2762) ; Statement: i3 = i0 
(assert true)
(define-const var867 Int (length/-134980193 var2704)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i1 goto $i6 = (int) -1 
(assert (>= var853 var867)) ; Cond: i3 >= i1 
(define-const var3622 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var2704=r0, var2804=null_type, var3193=java.util.BitSet, var2293=r1, var2762=i0, var853=i3, var867=i1, var3622=$i6}
; {r0=var2704, null_type=var2804, java.util.BitSet=var3193, r1=var2293, i0=var2762, i3=var853, i1=var867, $i6=var3622}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.util.BitSet;	i0 := @parameter2: int;	i3 = i0;	i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i3 >= i1 goto $i6 = (int) -1;	$i6 = (int) -1;	return $i6
;block_num 3