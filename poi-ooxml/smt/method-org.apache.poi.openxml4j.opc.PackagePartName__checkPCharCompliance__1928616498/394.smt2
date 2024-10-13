(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var645 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var3754 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3754 null-String)))
(assert true)
(define-const var3910 Int (length/-134980193 var3754)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1672 Int 0) ; Statement: i15 = 0 
(assert true) ; Non Conditional
 ; Statement: if i15 >= i0 goto return 
(assert (>= var1672 var3910)) ; Cond: i15 >= i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3754=r0, var645=null_type, var3910=i0, var1672=i15}
; {r0=var3754, null_type=var645, i0=var3910, i15=var1672}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i15 = 0;	if i15 >= i0 goto return;	return
;block_num 3