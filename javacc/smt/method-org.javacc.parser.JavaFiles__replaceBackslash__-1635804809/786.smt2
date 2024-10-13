(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2251 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var3171 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3171 null-String)))
(define-const var1058 Int 0) ; Statement: i4 = 0 
(assert true)
(define-const var3335 Int (length/-134980193 var3171)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto (branch) 
(assert (>= var1058 var3335)) ; Cond: i4 >= i0 
 ; Statement: if i4 != i0 goto $r3 = new java.lang.StringBuffer 
(assert (not (not (= var1058 var3335)))) ; Negate: Cond: i4 != i0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3171=r0, var2251=null_type, var1058=i4, var3335=i0}
; {r0=var3171, null_type=var2251, i4=var1058, i0=var3335}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i4 = 0;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 >= i0 goto (branch);	if i4 != i0 goto $r3 = new java.lang.StringBuffer;	return r0
;block_num 4