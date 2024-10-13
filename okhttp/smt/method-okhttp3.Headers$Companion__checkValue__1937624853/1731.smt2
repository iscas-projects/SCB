(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var371 0)
(declare-sort var3156 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var371 var371)
(declare-const null-String String)
(declare-const var3629 var371) ; Statement: r15 := @this: okhttp3.Headers$Companion 
(assert (not (= var3629 null-var371)))
(declare-const var3486 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3486 null-String)))
(declare-const var735 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var735 null-String)))
(define-const var690 Int 0) ; Statement: i2 = 0 
(assert true)
(define-const var809 Int (length/-134980193 var3486)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return 
(assert (>= var690 var809)) ; Cond: i2 >= i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var371=okhttp3.Headers$Companion, var3629=r15, var3486=r0, var3156=null_type, var735=r5, var690=i2, var809=i0}
; {okhttp3.Headers$Companion=var371, r15=var3629, r0=var3486, null_type=var3156, r5=var735, i2=var690, i0=var809}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r15 := @this: okhttp3.Headers$Companion;	r0 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	i2 = 0;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i2 >= i0 goto return;	return
;block_num 3