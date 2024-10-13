(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1469 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2318 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2318 null-String)))
(define-const var2854 Int 0) ; Statement: i2 = 0 
(define-const var2904 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2321 Int (length/-134980193 var2318)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i3 >= $i0 goto (branch) 
(assert (>= var2904 var2321)) ; Cond: i3 >= $i0 
 ; Statement: if i2 != 0 goto $z0 = 0 
(assert (not (= var2854 0))) ; Cond: i2 != 0 
(define-const var1075 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2318=r0, var1469=null_type, var2854=i2, var2904=i3, var2321=$i0, var1075=$z0}
; {r0=var2318, null_type=var1469, i2=var2854, i3=var2904, $i0=var2321, $z0=var1075}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i2 = 0;	i3 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i3 >= $i0 goto (branch);	if i2 != 0 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 5