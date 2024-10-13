(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2153 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var977 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var977 null-String)))
(declare-const var3563 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3563 null-Int)))
(declare-const var774 (Array Int Int)) ; Statement: r1 := @parameter2: int[] 
(assert (not (= var774 null-__Array__Int__Int__)))
(define-const var2828 Int 0) ; Statement: i4 = 0 
(define-const var1883 Int var3563) ; Statement: i5 = i0 
(assert true)
(define-const var630 Int (length/-134980193 var977)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i1 goto return i5 
(assert (>= var2828 var630)) ; Cond: i4 >= i1 
 ; Statement: return i5 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var977=r0, var2153=null_type, var3563=i0, var774=r1, var2828=i4, var1883=i5, var630=i1}
; {r0=var977, null_type=var2153, i0=var3563, r1=var774, i4=var2828, i5=var1883, i1=var630}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r1 := @parameter2: int[];	i4 = 0;	i5 = i0;	i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 >= i1 goto return i5;	return i5
;block_num 3