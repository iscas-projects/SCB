(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1968 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var1536 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1536 null-String)))
(define-const var432 Int 0) ; Statement: i16 = 0 
(assert true)
(define-const var3002 Int (length/-134980193 var1536)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i16 >= i0 goto return 0 
(assert (>= var432 var3002)) ; Cond: i16 >= i0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1536=r0, var1968=null_type, var432=i16, var3002=i0}
; {r0=var1536, null_type=var1968, i16=var432, i0=var3002}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i16 = 0;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i16 >= i0 goto return 0;	return 0
;block_num 3