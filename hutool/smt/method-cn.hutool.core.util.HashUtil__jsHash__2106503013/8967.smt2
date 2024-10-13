(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3009 0)
(declare-sort var2617 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2617_abs/-1886746561 (Int) Int)
(declare-const null-String String)
(declare-const var3231 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3231 null-String)))
(define-const var1296 Int 1315423911) ; Statement: i8 = 1315423911 
(define-const var2766 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var325 Int (length/-134980193 var3231)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i9 >= $i0 goto $i1 = staticinvoke <java.lang.Math: int abs(int)>(i8) 
(assert (>= var2766 var325)) ; Cond: i9 >= $i0 
(define-const var379 Int (var2617_abs/-1886746561 var1296)) ; Statement: $i1 = staticinvoke <java.lang.Math: int abs(int)>(i8) 
(define-const var1458 Int (bv2nat (bvand ((_ int2bv 64) var379) ((_ int2bv 64) 2147483647)))) ; Statement: $i2 = $i1 & 2147483647 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var2617_abs/-1886746561=([int], int)}
; {var3231=r0, var3009=null_type, var1296=i8, var2766=i9, var325=$i0, var2617=java.lang.Math, var379=$i1, var1458=$i2}
; {r0=var3231, null_type=var3009, i8=var1296, i9=var2766, $i0=var325, java.lang.Math=var2617, $i1=var379, $i2=var1458}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i8 = 1315423911;	i9 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i9 >= $i0 goto $i1 = staticinvoke <java.lang.Math: int abs(int)>(i8);	$i1 = staticinvoke <java.lang.Math: int abs(int)>(i8);	$i2 = $i1 & 2147483647;	return $i2
;block_num 3