(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3514 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var3410 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3410 null-String)))
(assert true)
(define-const var3084 Int (length/-134980193 var3410)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1676 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i0 goto return r0 
(assert (>= var1676 var3084)) ; Cond: i5 >= i0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3410=r0, var3514=null_type, var3084=i0, var1676=i5}
; {r0=var3410, null_type=var3514, i0=var3084, i5=var1676}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i5 = 0;	if i5 >= i0 goto return r0;	return r0
;block_num 3