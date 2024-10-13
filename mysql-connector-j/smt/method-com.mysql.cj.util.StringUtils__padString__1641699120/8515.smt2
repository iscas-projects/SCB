(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var752 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var821 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var821 null-String)))
(declare-const var2865 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2865 null-Int)))
(assert true)
(define-const var311 Int (length/-134980193 var821)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var558 Int (- var2865 var311)) ; Statement: i2 = i1 - i0 
 ; Statement: if i2 <= 0 goto return r0 
(assert (<= var558 0)) ; Cond: i2 <= 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var821=r0, var752=null_type, var2865=i1, var311=i0, var558=i2}
; {r0=var821, null_type=var752, i1=var2865, i0=var311, i2=var558}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i2 = i1 - i0;	if i2 <= 0 goto return r0;	return r0
;block_num 2