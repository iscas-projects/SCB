(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var933 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2381 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2381 null-String)))
(assert true)
(define-const var1194 Int (length/-134980193 var2381)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1338 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto return r0 
(assert (>= var1338 var1194)) ; Cond: i4 >= i0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2381=r0, var933=null_type, var1194=i0, var1338=i4}
; {r0=var2381, null_type=var933, i0=var1194, i4=var1338}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i4 = 0;	if i4 >= i0 goto return r0;	return r0
;block_num 3