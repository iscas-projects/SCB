(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3742 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var672 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var672 null-String)))
(define-const var3703 Int 0) ; Statement: i2 = 0 
(define-const var3712 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1790 Int (length/-134980193 var672)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i3 >= $i0 goto return i2 
(assert (>= var3712 var1790)) ; Cond: i3 >= $i0 
 ; Statement: return i2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var672=r0, var3742=null_type, var3703=i2, var3712=i3, var1790=$i0}
; {r0=var672, null_type=var3742, i2=var3703, i3=var3712, $i0=var1790}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i2 = 0;	i3 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i3 >= $i0 goto return i2;	return i2
;block_num 3