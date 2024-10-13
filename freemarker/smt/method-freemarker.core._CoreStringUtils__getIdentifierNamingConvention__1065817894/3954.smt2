(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1990 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var404 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var404 null-String)))
(assert true)
(define-const var2931 Int (length/-134980193 var404)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1595 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return 10 
(assert (>= var1595 var2931)) ; Cond: i2 >= i0 
 ; Statement: return 10 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var404=r0, var1990=null_type, var2931=i0, var1595=i2}
; {r0=var404, null_type=var1990, i0=var2931, i2=var1595}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i2 = 0;	if i2 >= i0 goto return 10;	return 10
;block_num 3