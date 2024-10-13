(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-String String)
(declare-const var742 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var742 null-String)))
(define-const var3168 Int (String_length/-667254855 var742)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var2264 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto return 1 
(assert (>= var2264 var3168)) ; Cond: i4 >= i0 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var742=r0, var3168=i0, var2264=i4}
; {r0=var742, i0=var3168, i4=var2264}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	i4 = 0;	if i4 >= i0 goto return 1;	return 1
;block_num 3