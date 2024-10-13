(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-Int Int)
(declare-const var3927 Int) ; Statement: i2 := @parameter0: int 
(assert (not (= var3927 null-Int)))
(declare-const var943 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var943 null-Int)))
(declare-const var2546 Int) ; Statement: i7 := @parameter2: int 
(assert (not (= var2546 null-Int)))
(define-const var2936 Int (bv2nat (bvand ((_ int2bv 64) var943) ((_ int2bv 64) 192)))) ; Statement: $i1 = i0 & 192 
 ; Statement: if $i1 == 128 goto $i3 = i2 & 31 
(assert (= var2936 128)) ; Cond: $i1 == 128 
(define-const var1390 Int (bv2nat (bvand ((_ int2bv 64) var3927) ((_ int2bv 64) 31)))) ; Statement: $i3 = i2 & 31 
(define-const var471 Int (* var1390 (to_int (^ 2 6)))) ; Statement: $i5 = $i3 << 6 
(define-const var1068 Int (bv2nat (bvand ((_ int2bv 64) var943) ((_ int2bv 64) 63)))) ; Statement: $i4 = i0 & 63 
(define-const var1014 Int (bv2nat (bvor ((_ int2bv 64) var471) ((_ int2bv 64) var1068)))) ; Statement: $i6 = $i5 | $i4 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3927=i2, var943=i0, var2546=i7, var2936=$i1, var1390=$i3, var471=$i5, var1068=$i4, var1014=$i6}
; {i2=var3927, i0=var943, i7=var2546, $i1=var2936, $i3=var1390, $i5=var471, $i4=var1068, $i6=var1014}
;seq 
;cnt {}
;stmts i2 := @parameter0: int;	i0 := @parameter1: int;	i7 := @parameter2: int;	$i1 = i0 & 192;	if $i1 == 128 goto $i3 = i2 & 31;	$i3 = i2 & 31;	$i5 = $i3 << 6;	$i4 = i0 & 63;	$i6 = $i5 | $i4;	return $i6
;block_num 2