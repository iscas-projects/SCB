(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1185 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var1734 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1734 null-String)))
(define-const var1578 Int 0) ; Statement: i7 = 0 
(define-const var992 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2526 Int (length/-134980193 var1734)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i8 >= $i0 goto $i1 = i7 << 3 
(assert (>= var992 var2526)) ; Cond: i8 >= $i0 
(define-const var2755 Int (* var1578 (to_int (^ 2 3)))) ; Statement: $i1 = i7 << 3 
(define-const var2567 Int (+ var1578 var2755)) ; Statement: i11 = i7 + $i1 
(define-const var853 Int (div var2567 (to_int (^ 2 11)))) ; Statement: $i2 = i11 >> 11 
(define-const var2062 Int (bv2nat (bvxor ((_ int2bv 64) var2567) ((_ int2bv 64) var853)))) ; Statement: i12 = i11 ^ $i2 
(define-const var3044 Int (* var2062 (to_int (^ 2 15)))) ; Statement: $i3 = i12 << 15 
(define-const var2291 Int (+ var2062 var3044)) ; Statement: i13 = i12 + $i3 
 ; Statement: return i13 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1734=r0, var1185=null_type, var1578=i7, var992=i8, var2526=$i0, var2755=$i1, var2567=i11, var853=$i2, var2062=i12, var3044=$i3, var2291=i13}
; {r0=var1734, null_type=var1185, i7=var1578, i8=var992, $i0=var2526, $i1=var2755, i11=var2567, $i2=var853, i12=var2062, $i3=var3044, i13=var2291}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i7 = 0;	i8 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i8 >= $i0 goto $i1 = i7 << 3;	$i1 = i7 << 3;	i11 = i7 + $i1;	$i2 = i11 >> 11;	i12 = i11 ^ $i2;	$i3 = i12 << 15;	i13 = i12 + $i3;	return i13
;block_num 3