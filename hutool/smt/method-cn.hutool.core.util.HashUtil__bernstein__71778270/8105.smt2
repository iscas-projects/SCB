(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3405 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var505 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var505 null-String)))
(define-const var2510 Int 0) ; Statement: i3 = 0 
(define-const var3678 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var476 Int (length/-134980193 var505)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i0 goto return i3 
(assert (>= var3678 var476)) ; Cond: i4 >= $i0 
 ; Statement: return i3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var505=r0, var3405=null_type, var2510=i3, var3678=i4, var476=$i0}
; {r0=var505, null_type=var3405, i3=var2510, i4=var3678, $i0=var476}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i3 = 0;	i4 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 >= $i0 goto return i3;	return i3
;block_num 3