(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1193 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2554 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2554 null-String)))
(assert true)
(define-const var3195 Int (length/-134980193 var2554)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1633 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return 1 
(assert (>= var1633 var3195)) ; Cond: i2 >= i0 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2554=r0, var1193=null_type, var3195=i0, var1633=i2}
; {r0=var2554, null_type=var1193, i0=var3195, i2=var1633}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i2 = 0;	if i2 >= i0 goto return 1;	return 1
;block_num 3