(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2404 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var577 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var577 null-String)))
(declare-const var1419 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1419 null-String)))
(define-const var477 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3095 Int (length/-134980193 var1419)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i2 >= $i0 goto return r1 
(assert (>= var477 var3095)) ; Cond: i2 >= $i0 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var577=r1, var1419=r0, var2404=null_type, var477=i2, var3095=$i0}
; {r1=var577, r0=var1419, null_type=var2404, i2=var477, $i0=var3095}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: java.lang.String;	i2 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i2 >= $i0 goto return r1;	return r1
;block_num 3