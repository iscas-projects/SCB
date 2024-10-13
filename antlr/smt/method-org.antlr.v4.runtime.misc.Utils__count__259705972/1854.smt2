(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2045 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var155 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var155 null-String)))
(declare-const var1555 Int) ; Statement: c1 := @parameter1: char 
(assert (not (= var1555 null-Int)))
(define-const var3617 Int 0) ; Statement: i3 = 0 
(define-const var10 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1653 Int (length/-134980193 var155)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i0 goto return i3 
(assert (>= var10 var1653)) ; Cond: i4 >= $i0 
 ; Statement: return i3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var155=r0, var2045=null_type, var1555=c1, var3617=i3, var10=i4, var1653=$i0}
; {r0=var155, null_type=var2045, c1=var1555, i3=var3617, i4=var10, $i0=var1653}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	c1 := @parameter1: char;	i3 = 0;	i4 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 >= $i0 goto return i3;	return i3
;block_num 3