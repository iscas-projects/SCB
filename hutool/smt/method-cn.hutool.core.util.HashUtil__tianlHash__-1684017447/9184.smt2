(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2458 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2890 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2890 null-String)))
(assert true)
(define-const var2880 Int (length/-134980193 var2890)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 != 0 goto (branch) 
(assert (not (not (= var2880 0)))) ; Negate: Cond: i0 != 0  
 ; Statement: return 0L 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2890=r0, var2458=null_type, var2880=i0}
; {r0=var2890, null_type=var2458, i0=var2880}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 != 0 goto (branch);	return 0L
;block_num 2