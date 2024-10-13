(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1854 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3081 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3081 null-String)))
(declare-const var688 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var688 null-Int)))
(declare-const var1495 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var1495 null-String)))
(assert true)
(define-const var3906 Int (length/-134980193 var1495)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1685 Int (+ var688 var3906)) ; Statement: $i3 = i0 + $i1 
(assert true)
(define-const var2245 Int (length/-134980193 var3081)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i3 <= $i2 goto i4 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String,int)>(r0, i0) 
(assert (not (<= var1685 var2245))) ; Negate: Cond: $i3 <= $i2  
(define-const var3039 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var3081=r1, var1854=null_type, var688=i0, var1495=r0, var3906=$i1, var1685=$i3, var2245=$i2, var3039=$i6}
; {r1=var3081, null_type=var1854, i0=var688, r0=var1495, $i1=var3906, $i3=var1685, $i2=var2245, $i6=var3039}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r0 := @parameter2: java.lang.String;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i3 = i0 + $i1;	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	if $i3 <= $i2 goto i4 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String,int)>(r0, i0);	$i6 = (int) -1;	return $i6
;block_num 2