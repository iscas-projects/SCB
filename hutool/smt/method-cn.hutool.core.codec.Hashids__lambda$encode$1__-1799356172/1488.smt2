(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var972 (Array Int Int)) ; Statement: r0 := @parameter0: long[] 
(assert (not (= var972 null-__Array__Int__Int__)))
(declare-const var3840 Int) ; Statement: l4 := @parameter1: long 
(assert (not (= var3840 null-Int)))
(declare-const var2406 Int) ; Statement: l0 := @parameter2: long 
(assert (not (= var2406 null-Int)))
(define-const var2679 Int (cast-from-Int-to-Int var2406)) ; Statement: $i1 = (int) l0 
(define-const var2052 Int (select var972 var2679)) ; Statement: l2 = r0[$i1] 
(define-const var2882 Int (ite (> var2052 0) 1 (ite (< var2052 0) (- 1) 0))) ; Statement: $b3 = l2 cmp 0L 
(define-const var2118 Int (cast-from-Int-to-Int var2882)) ; Statement: $i8 = (int) $b3 
 ; Statement: if $i8 >= 0 goto $l5 = l0 + 100L 
(assert (>= var2118 0)) ; Cond: $i8 >= 0 
(define-const var2131 Int (+ var2406 100)) ; Statement: $l5 = l0 + 100L 
(define-const var3782 Int (mod var2052 var2131)) ; Statement: $l6 = l2 % $l5 
(define-const var3910 Int (+ var3840 var3782)) ; Statement: $l7 = l4 + $l6 
 ; Statement: return $l7 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([long], int)}
; {var972=r0, var3840=l4, var2406=l0, var2679=$i1, var2052=l2, var2882=$b3, var2118=$i8, var2131=$l5, var3782=$l6, var3910=$l7}
; {r0=var972, l4=var3840, l0=var2406, $i1=var2679, l2=var2052, $b3=var2882, $i8=var2118, $l5=var2131, $l6=var3782, $l7=var3910}
;seq 
;cnt {}
;stmts r0 := @parameter0: long[];	l4 := @parameter1: long;	l0 := @parameter2: long;	$i1 = (int) l0;	l2 = r0[$i1];	$b3 = l2 cmp 0L;	$i8 = (int) $b3;	if $i8 >= 0 goto $l5 = l0 + 100L;	$l5 = l0 + 100L;	$l6 = l2 % $l5;	$l7 = l4 + $l6;	return $l7
;block_num 2