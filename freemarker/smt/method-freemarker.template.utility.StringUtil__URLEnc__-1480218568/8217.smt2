(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var362 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3061 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3061 null-String)))
(declare-const var3140 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var3140 null-String)))
(declare-const var480 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var480 null-Bool)))
(assert true)
(define-const var413 Int (length/-134980193 var3061)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1328 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
 ; Statement: if i17 >= i0 goto (branch) 
(assert (>= var1328 var413)) ; Cond: i17 >= i0 
 ; Statement: if i17 != i0 goto $r9 = new java.lang.StringBuilder 
(assert (not (not (= var1328 var413)))) ; Negate: Cond: i17 != i0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3061=r0, var362=null_type, var3140=r4, var480=z0, var413=i0, var1328=i17}
; {r0=var3061, null_type=var362, r4=var3140, z0=var480, i0=var413, i17=var1328}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i17 = 0;	if i17 >= i0 goto (branch);	if i17 != i0 goto $r9 = new java.lang.StringBuilder;	return r0
;block_num 4