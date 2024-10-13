(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1397 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var947 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var947 null-String)))
(assert true)
(define-const var2833 Int (length/-134980193 var947)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1908 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i0 goto return r0 
(assert (>= var1908 var2833)) ; Cond: i5 >= i0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var947=r0, var1397=null_type, var2833=i0, var1908=i5}
; {r0=var947, null_type=var1397, i0=var2833, i5=var1908}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i5 = 0;	if i5 >= i0 goto return r0;	return r0
;block_num 3