(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1004 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun arr-Bool-init () (Array Int Bool))
(declare-const null-String String)
(declare-const var1730 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1730 null-String)))
(define-const var1194 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
(define-const var3858 Int var1194) ; Statement: i2 = $i9 
(assert true)
(define-const var3539 (Array Int Int) (toCharArray/415275702 var1730)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(define-const var3043 Int (getLength-Arr-Int-1 var3539)) ; Statement: i3 = lengthof r1 
(define-const var3009 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i3 goto $i0 = i2 + 1 
(assert (>= var3009 var3043)) ; Cond: i4 >= i3 
(define-const var2485 Int (+ var3858 1)) ; Statement: $i0 = i2 + 1 
(define-const var2086 (Array Int Bool) arr-Bool-init) ; Statement: r2 = newarray (boolean)[$i0] 
(define-const var1907 Int (getLength-Arr-Int-1 var3539)) ; Statement: i6 = lengthof r1 
(define-const var1395 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i6 goto return r2 
(assert (>= var1395 var1907)) ; Cond: i7 >= i6 
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), arr-Bool-init=([], boolean[])}
; {var1730=r0, var1004=null_type, var1194=$i9, var3858=i2, var3539=r1, var3043=i3, var3009=i4, var2485=$i0, var2086=r2, var1907=i6, var1395=i7}
; {r0=var1730, null_type=var1004, $i9=var1194, i2=var3858, r1=var3539, i3=var3043, i4=var3009, $i0=var2485, r2=var2086, i6=var1907, i7=var1395}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i9 = (int) -1;	i2 = $i9;	r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	i3 = lengthof r1;	i4 = 0;	if i4 >= i3 goto $i0 = i2 + 1;	$i0 = i2 + 1;	r2 = newarray (boolean)[$i0];	i6 = lengthof r1;	i7 = 0;	if i7 >= i6 goto return r2;	return r2
;block_num 5