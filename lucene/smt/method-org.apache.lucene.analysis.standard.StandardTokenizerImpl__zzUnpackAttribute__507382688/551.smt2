(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3743 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var964 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var964 null-String)))
(declare-const var3609 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3609 null-Int)))
(declare-const var1770 (Array Int Int)) ; Statement: r1 := @parameter2: int[] 
(assert (not (= var1770 null-__Array__Int__Int__)))
(define-const var3157 Int 0) ; Statement: i4 = 0 
(define-const var3975 Int var3609) ; Statement: i5 = i0 
(assert true)
(define-const var1423 Int (length/-134980193 var964)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i1 goto return i5 
(assert (>= var3157 var1423)) ; Cond: i4 >= i1 
 ; Statement: return i5 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var964=r0, var3743=null_type, var3609=i0, var1770=r1, var3157=i4, var3975=i5, var1423=i1}
; {r0=var964, null_type=var3743, i0=var3609, r1=var1770, i4=var3157, i5=var3975, i1=var1423}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r1 := @parameter2: int[];	i4 = 0;	i5 = i0;	i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 >= i1 goto return i5;	return i5
;block_num 3