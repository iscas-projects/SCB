(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3126 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var97 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var97 null-String)))
(declare-const var935 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var935 null-Int)))
(assert true)
(define-const var3400 Int (length/-134980193 var97)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2221 Int var935) ; Statement: i9 = i1 
 ; Statement: if i0 != 0 goto z0 = 0 
(assert (not (not (= var3400 0)))) ; Negate: Cond: i0 != 0  
 ; Statement: return #NaN 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var97=r0, var3126=null_type, var935=i1, var3400=i0, var2221=i9}
; {r0=var97, null_type=var3126, i1=var935, i0=var3400, i9=var2221}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i9 = i1;	if i0 != 0 goto z0 = 0;	return #NaN
;block_num 2