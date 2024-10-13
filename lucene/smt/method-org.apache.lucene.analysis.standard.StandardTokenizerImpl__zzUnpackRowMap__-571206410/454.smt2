(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1415 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2177 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2177 null-String)))
(declare-const var2359 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2359 null-Int)))
(declare-const var2279 (Array Int Int)) ; Statement: r1 := @parameter2: int[] 
(assert (not (= var2279 null-__Array__Int__Int__)))
(define-const var3705 Int 0) ; Statement: i7 = 0 
(define-const var551 Int var2359) ; Statement: i8 = i0 
(assert true)
(define-const var2634 Int (length/-134980193 var2177)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i1 goto return i8 
(assert (>= var3705 var2634)) ; Cond: i7 >= i1 
 ; Statement: return i8 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2177=r0, var1415=null_type, var2359=i0, var2279=r1, var3705=i7, var551=i8, var2634=i1}
; {r0=var2177, null_type=var1415, i0=var2359, r1=var2279, i7=var3705, i8=var551, i1=var2634}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r1 := @parameter2: int[];	i7 = 0;	i8 = i0;	i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i7 >= i1 goto return i8;	return i8
;block_num 3