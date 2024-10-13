(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var752 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var3727 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3727 null-String)))
(assert true)
(define-const var2087 Int (length/-134980193 var3727)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var173 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto return r0 
(assert (>= var173 var2087)) ; Cond: i4 >= i0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3727=r0, var752=null_type, var2087=i0, var173=i4}
; {r0=var3727, null_type=var752, i0=var2087, i4=var173}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i4 = 0;	if i4 >= i0 goto return r0;	return r0
;block_num 3