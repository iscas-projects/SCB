(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3666 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var1996 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1996 null-String)))
(define-const var1204 Int 0) ; Statement: i5 = 0 
(assert true)
(define-const var2662 Int (length/-134980193 var1996)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i0 goto return r0 
(assert (>= var1204 var2662)) ; Cond: i5 >= i0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1996=r0, var3666=null_type, var1204=i5, var2662=i0}
; {r0=var1996, null_type=var3666, i5=var1204, i0=var2662}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i5 = 0;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i5 >= i0 goto return r0;	return r0
;block_num 3