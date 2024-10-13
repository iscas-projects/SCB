(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3736 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2655 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2655 null-String)))
(assert true)
(define-const var3725 Int (length/-134980193 var2655)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 == 0 goto return 0 
(assert (= var3725 0)) ; Cond: i0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2655=r0, var3736=null_type, var3725=i0}
; {r0=var2655, null_type=var3736, i0=var3725}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 == 0 goto return 0;	return 0
;block_num 2