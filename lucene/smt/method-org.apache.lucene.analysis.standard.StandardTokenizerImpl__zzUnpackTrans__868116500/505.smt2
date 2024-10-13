(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2840 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1736 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1736 null-String)))
(declare-const var1263 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1263 null-Int)))
(declare-const var1917 (Array Int Int)) ; Statement: r1 := @parameter2: int[] 
(assert (not (= var1917 null-__Array__Int__Int__)))
(define-const var1575 Int 0) ; Statement: i3 = 0 
(define-const var2116 Int var1263) ; Statement: i4 = i0 
(assert true)
(define-const var1224 Int (length/-134980193 var1736)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i1 goto return i4 
(assert (>= var1575 var1224)) ; Cond: i3 >= i1 
 ; Statement: return i4 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1736=r0, var2840=null_type, var1263=i0, var1917=r1, var1575=i3, var2116=i4, var1224=i1}
; {r0=var1736, null_type=var2840, i0=var1263, r1=var1917, i3=var1575, i4=var2116, i1=var1224}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r1 := @parameter2: int[];	i3 = 0;	i4 = i0;	i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i3 >= i1 goto return i4;	return i4
;block_num 3