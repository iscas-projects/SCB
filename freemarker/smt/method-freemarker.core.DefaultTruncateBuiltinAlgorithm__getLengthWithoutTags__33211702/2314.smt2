(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3104 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2581 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2581 null-String)))
(define-const var3224 Int 0) ; Statement: i17 = 0 
(define-const var731 Int 0) ; Statement: i18 = 0 
(assert true)
(define-const var3854 Int (length/-134980193 var2581)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i18 >= i0 goto return i17 
(assert (>= var731 var3854)) ; Cond: i18 >= i0 
 ; Statement: return i17 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2581=r0, var3104=null_type, var3224=i17, var731=i18, var3854=i0}
; {r0=var2581, null_type=var3104, i17=var3224, i18=var731, i0=var3854}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i17 = 0;	i18 = 0;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i18 >= i0 goto return i17;	return i17
;block_num 3