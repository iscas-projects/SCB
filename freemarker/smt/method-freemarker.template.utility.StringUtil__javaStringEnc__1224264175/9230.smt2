(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2468 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var516 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var516 null-String)))
(declare-const var3253 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3253 null-Bool)))
(assert true)
(define-const var520 Int (length/-134980193 var516)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var292 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i0 goto (branch) 
(assert (>= var292 var520)) ; Cond: i6 >= i0 
 ; Statement: if z0 == 0 goto $r7 = r0 
(assert (= (ite var3253 1 0) 0)) ; Cond: z0 == 0 
(define-const var568 String var516) ; Statement: $r7 = r0 
(assert true) ; Non Conditional
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var516=r0, var2468=null_type, var3253=z0, var520=i0, var292=i6, var568=$r7}
; {r0=var516, null_type=var2468, z0=var3253, i0=var520, i6=var292, $r7=var568}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i6 = 0;	if i6 >= i0 goto (branch);	if z0 == 0 goto $r7 = r0;	$r7 = r0;	return $r7
;block_num 5