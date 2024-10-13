(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3440 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1447 String) ; Statement: r12 := @parameter0: java.lang.String 
(assert (not (= var1447 null-String)))
(declare-const var2415 Int) ; Statement: i4 := @parameter1: int 
(assert (not (= var2415 null-Int)))
 ; Statement: if i4 >= 5 goto z3 = 0 
(assert (>= var2415 5)) ; Cond: i4 >= 5 
(define-const var3123 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(assert true)
(define-const var1736 Int (indexOf/-1037706067 var1447 10)) ; Statement: $i3 = virtualinvoke r12.<java.lang.String: int indexOf(int)>(10) 
(define-const var2897 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: if $i3 == $i6 goto $i2 = virtualinvoke r12.<java.lang.String: int indexOf(int)>(13) 
(assert (= var1736 var2897)) ; Cond: $i3 == $i6 
(assert true)
(define-const var715 Int (indexOf/-1037706067 var1447 13)) ; Statement: $i2 = virtualinvoke r12.<java.lang.String: int indexOf(int)>(13) 
(define-const var880 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
 ; Statement: if $i2 == $i8 goto $i0 = virtualinvoke r12.<java.lang.String: int length()>() 
(assert (= var715 var880)) ; Cond: $i2 == $i8 
(assert true)
(define-const var2925 Int (length/-134980193 var1447)) ; Statement: $i0 = virtualinvoke r12.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= i4 goto (branch) 
(assert (<= var2925 var2415)) ; Cond: $i0 <= i4 
 ; Statement: if z3 != 0 goto $z0 = virtualinvoke r12.<java.lang.String: boolean endsWith(java.lang.String)>(".") 
(assert (not (not (= (ite var3123 1 0) 0)))) ; Negate: Cond: z3 != 0  
 ; Statement: return r12 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int)}
; {var1447=r12, var3440=null_type, var2415=i4, var3123=z3, var1736=$i3, var2897=$i6, var715=$i2, var880=$i8, var2925=$i0}
; {r12=var1447, null_type=var3440, i4=var2415, z3=var3123, $i3=var1736, $i6=var2897, $i2=var715, $i8=var880, $i0=var2925}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int indexOf(int)>": 2,"<java.lang.String: int length()>": 1}
;stmts r12 := @parameter0: java.lang.String;	i4 := @parameter1: int;	if i4 >= 5 goto z3 = 0;	z3 = 0;	$i3 = virtualinvoke r12.<java.lang.String: int indexOf(int)>(10);	$i6 = (int) -1;	if $i3 == $i6 goto $i2 = virtualinvoke r12.<java.lang.String: int indexOf(int)>(13);	$i2 = virtualinvoke r12.<java.lang.String: int indexOf(int)>(13);	$i8 = (int) -1;	if $i2 == $i8 goto $i0 = virtualinvoke r12.<java.lang.String: int length()>();	$i0 = virtualinvoke r12.<java.lang.String: int length()>();	if $i0 <= i4 goto (branch);	if z3 != 0 goto $z0 = virtualinvoke r12.<java.lang.String: boolean endsWith(java.lang.String)>(".");	return r12
;block_num 6