(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1753 0)
(declare-sort var1277 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1277_abs/-1886746561 (Int) Int)
(declare-const null-String String)
(declare-const var1249 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1249 null-String)))
(define-const var1694 Int (- 2128831035)) ; Statement: i9 = -2128831035 
(define-const var3250 Int 0) ; Statement: i10 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3623 Int (length/-134980193 var1249)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i10 >= $i0 goto $i1 = i9 << 13 
(assert (>= var3250 var3623)) ; Cond: i10 >= $i0 
(define-const var471 Int (* var1694 (to_int (^ 2 13)))) ; Statement: $i1 = i9 << 13 
(define-const var2598 Int (+ var1694 var471)) ; Statement: i11 = i9 + $i1 
(define-const var2510 Int (div var2598 (to_int (^ 2 7)))) ; Statement: $i2 = i11 >> 7 
(define-const var2194 Int (bv2nat (bvxor ((_ int2bv 64) var2598) ((_ int2bv 64) var2510)))) ; Statement: i12 = i11 ^ $i2 
(define-const var2801 Int (* var2194 (to_int (^ 2 3)))) ; Statement: $i3 = i12 << 3 
(define-const var2609 Int (+ var2194 var2801)) ; Statement: i13 = i12 + $i3 
(define-const var538 Int (div var2609 (to_int (^ 2 17)))) ; Statement: $i4 = i13 >> 17 
(define-const var2651 Int (bv2nat (bvxor ((_ int2bv 64) var2609) ((_ int2bv 64) var538)))) ; Statement: i14 = i13 ^ $i4 
(define-const var1191 Int (* var2651 (to_int (^ 2 5)))) ; Statement: $i5 = i14 << 5 
(define-const var2180 Int (+ var2651 var1191)) ; Statement: i15 = i14 + $i5 
(define-const var3583 Int (var1277_abs/-1886746561 var2180)) ; Statement: $i6 = staticinvoke <java.lang.Math: int abs(int)>(i15) 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var1277_abs/-1886746561=([int], int)}
; {var1249=r0, var1753=null_type, var1694=i9, var3250=i10, var3623=$i0, var471=$i1, var2598=i11, var2510=$i2, var2194=i12, var2801=$i3, var2609=i13, var538=$i4, var2651=i14, var1191=$i5, var2180=i15, var1277=java.lang.Math, var3583=$i6}
; {r0=var1249, null_type=var1753, i9=var1694, i10=var3250, $i0=var3623, $i1=var471, i11=var2598, $i2=var2510, i12=var2194, $i3=var2801, i13=var2609, $i4=var538, i14=var2651, $i5=var1191, i15=var2180, java.lang.Math=var1277, $i6=var3583}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i9 = -2128831035;	i10 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i10 >= $i0 goto $i1 = i9 << 13;	$i1 = i9 << 13;	i11 = i9 + $i1;	$i2 = i11 >> 7;	i12 = i11 ^ $i2;	$i3 = i12 << 3;	i13 = i12 + $i3;	$i4 = i13 >> 17;	i14 = i13 ^ $i4;	$i5 = i14 << 5;	i15 = i14 + $i5;	$i6 = staticinvoke <java.lang.Math: int abs(int)>(i15);	return $i6
;block_num 3