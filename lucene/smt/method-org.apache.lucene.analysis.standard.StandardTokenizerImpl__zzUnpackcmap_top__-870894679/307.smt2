(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1650 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var124 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var124 null-String)))
(declare-const var364 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var364 null-Int)))
(declare-const var3782 (Array Int Int)) ; Statement: r1 := @parameter2: int[] 
(assert (not (= var3782 null-__Array__Int__Int__)))
(define-const var438 Int 0) ; Statement: i4 = 0 
(define-const var2370 Int var364) ; Statement: i5 = i0 
(assert true)
(define-const var1925 Int (length/-134980193 var124)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i1 goto return i5 
(assert (>= var438 var1925)) ; Cond: i4 >= i1 
 ; Statement: return i5 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var124=r0, var1650=null_type, var364=i0, var3782=r1, var438=i4, var2370=i5, var1925=i1}
; {r0=var124, null_type=var1650, i0=var364, r1=var3782, i4=var438, i5=var2370, i1=var1925}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r1 := @parameter2: int[];	i4 = 0;	i5 = i0;	i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 >= i1 goto return i5;	return i5
;block_num 3