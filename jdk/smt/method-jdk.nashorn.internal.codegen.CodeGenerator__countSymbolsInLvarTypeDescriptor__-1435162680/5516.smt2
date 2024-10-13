(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3663 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var274 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var274 null-String)))
(define-const var1770 Int 0) ; Statement: i2 = 0 
(define-const var2354 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2930 Int (length/-134980193 var274)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i3 >= $i0 goto return i2 
(assert (>= var2354 var2930)) ; Cond: i3 >= $i0 
 ; Statement: return i2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var274=r0, var3663=null_type, var1770=i2, var2354=i3, var2930=$i0}
; {r0=var274, null_type=var3663, i2=var1770, i3=var2354, $i0=var2930}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i2 = 0;	i3 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i3 >= $i0 goto return i2;	return i2
;block_num 3