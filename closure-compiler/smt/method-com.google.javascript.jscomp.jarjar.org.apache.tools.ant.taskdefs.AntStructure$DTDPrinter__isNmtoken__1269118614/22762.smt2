(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2191 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var1808 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1808 null-String)))
(assert true)
(define-const var2007 Int (length/-134980193 var1808)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var639 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return 1 
(assert (>= var639 var2007)) ; Cond: i2 >= i0 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1808=r0, var2191=null_type, var2007=i0, var639=i2}
; {r0=var1808, null_type=var2191, i0=var2007, i2=var639}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i2 = 0;	if i2 >= i0 goto return 1;	return 1
;block_num 3