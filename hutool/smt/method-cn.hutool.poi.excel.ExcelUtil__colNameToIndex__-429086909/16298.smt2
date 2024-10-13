(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3870 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var1075 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1075 null-String)))
(assert true)
(define-const var939 Int (length/-134980193 var1075)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1104 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
(define-const var3156 Int var1104) ; Statement: i6 = $i9 
(define-const var1095 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto return i6 
(assert (>= var1095 var939)) ; Cond: i7 >= i0 
 ; Statement: return i6 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var1075=r0, var3870=null_type, var939=i0, var1104=$i9, var3156=i6, var1095=i7}
; {r0=var1075, null_type=var3870, i0=var939, $i9=var1104, i6=var3156, i7=var1095}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i9 = (int) -1;	i6 = $i9;	i7 = 0;	if i7 >= i0 goto return i6;	return i6
;block_num 3