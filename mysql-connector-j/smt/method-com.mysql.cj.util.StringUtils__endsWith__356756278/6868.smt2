(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1165 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const var1768 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var1768 null-__Array__Int__Int__)))
(declare-const var1393 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1393 null-String)))
(define-const var503 Int 1) ; Statement: i7 = 1 
(assert true) ; Non Conditional
(assert true)
(define-const var366 Int (length/-134980193 var1393)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i7 > $i0 goto return 1 
(assert (> var503 var366)) ; Cond: i7 > $i0 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1768=r1, var1393=r0, var1165=null_type, var503=i7, var366=$i0}
; {r1=var1768, r0=var1393, null_type=var1165, i7=var503, $i0=var366}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: byte[];	r0 := @parameter1: java.lang.String;	i7 = 1;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i7 > $i0 goto return 1;	return 1
;block_num 3