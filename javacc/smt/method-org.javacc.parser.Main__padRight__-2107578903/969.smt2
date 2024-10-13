(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3291 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3225 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3225 null-String)))
(declare-const var2047 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2047 null-Int)))
(assert true)
(define-const var965 Int (length/-134980193 var3225)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 != i1 goto i2 = i1 - i0 
(assert (not (not (= var965 var2047)))) ; Negate: Cond: i0 != i1  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3225=r0, var3291=null_type, var2047=i1, var965=i0}
; {r0=var3225, null_type=var3291, i1=var2047, i0=var965}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 != i1 goto i2 = i1 - i0;	return r0
;block_num 2