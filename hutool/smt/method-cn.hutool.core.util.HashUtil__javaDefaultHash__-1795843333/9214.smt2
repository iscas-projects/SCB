(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2109 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var978 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var978 null-String)))
(define-const var3947 Int 0) ; Statement: i4 = 0 
(define-const var2379 Int 0) ; Statement: i5 = 0 
(assert true)
(define-const var3500 Int (length/-134980193 var978)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3300 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i0 goto return i4 
(assert (>= var3300 var3500)) ; Cond: i6 >= i0 
 ; Statement: return i4 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var978=r0, var2109=null_type, var3947=i4, var2379=i5, var3500=i0, var3300=i6}
; {r0=var978, null_type=var2109, i4=var3947, i5=var2379, i0=var3500, i6=var3300}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i4 = 0;	i5 = 0;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i6 = 0;	if i6 >= i0 goto return i4;	return i4
;block_num 3