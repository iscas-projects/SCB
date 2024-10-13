(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var403 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var357 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var357 null-String)))
(declare-const var2099 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2099 null-Int)))
(assert true)
(define-const var3154 Int (length/-134980193 var357)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2935 Int var2099) ; Statement: i6 = i1 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i0 goto return 1 
(assert (>= var2935 var3154)) ; Cond: i6 >= i0 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var357=r0, var403=null_type, var2099=i1, var3154=i0, var2935=i6}
; {r0=var357, null_type=var403, i1=var2099, i0=var3154, i6=var2935}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i6 = i1;	if i6 >= i0 goto return 1;	return 1
;block_num 3