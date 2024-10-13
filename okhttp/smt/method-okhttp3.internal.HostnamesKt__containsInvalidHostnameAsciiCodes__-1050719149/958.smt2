(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1084 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2072 String) ; Statement: $r0 := @parameter0: java.lang.String 
(assert (not (= var2072 null-String)))
(define-const var776 Int 0) ; Statement: i5 = 0 
(assert true)
(define-const var1907 Int (length/-134980193 var2072)) ; Statement: i0 = virtualinvoke $r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i0 goto return 0 
(assert (>= var776 var1907)) ; Cond: i5 >= i0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2072=$r0, var1084=null_type, var776=i5, var1907=i0}
; {$r0=var2072, null_type=var1084, i5=var776, i0=var1907}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts $r0 := @parameter0: java.lang.String;	i5 = 0;	i0 = virtualinvoke $r0.<java.lang.String: int length()>();	if i5 >= i0 goto return 0;	return 0
;block_num 3