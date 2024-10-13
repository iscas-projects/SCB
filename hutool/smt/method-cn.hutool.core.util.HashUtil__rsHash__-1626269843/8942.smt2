(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3197 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var715 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var715 null-String)))
(define-const var1786 Int (cast-from-Int-to-Int 63689)) ; Statement: $i8 = (int) 63689 
(define-const var1037 Int var1786) ; Statement: i4 = $i8 
(define-const var543 Int 0) ; Statement: i5 = 0 
(define-const var2985 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var605 Int (length/-134980193 var715)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i6 >= $i0 goto $i1 = i5 & 2147483647 
(assert (>= var2985 var605)) ; Cond: i6 >= $i0 
(define-const var3737 Int (bv2nat (bvand ((_ int2bv 64) var543) ((_ int2bv 64) 2147483647)))) ; Statement: $i1 = i5 & 2147483647 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int)}
; {var715=r0, var3197=null_type, var1786=$i8, var1037=i4, var543=i5, var2985=i6, var605=$i0, var3737=$i1}
; {r0=var715, null_type=var3197, $i8=var1786, i4=var1037, i5=var543, i6=var2985, $i0=var605, $i1=var3737}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i8 = (int) 63689;	i4 = $i8;	i5 = 0;	i6 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i6 >= $i0 goto $i1 = i5 & 2147483647;	$i1 = i5 & 2147483647;	return $i1
;block_num 3