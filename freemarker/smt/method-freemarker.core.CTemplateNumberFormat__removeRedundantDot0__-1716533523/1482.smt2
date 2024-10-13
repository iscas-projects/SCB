(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1108 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2685 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2685 null-String)))
(assert true)
(define-const var938 Int (length/-134980193 var2685)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3466 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
 ; Statement: if i12 >= i0 goto return r0 
(assert (>= var3466 var938)) ; Cond: i12 >= i0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2685=r0, var1108=null_type, var938=i0, var3466=i12}
; {r0=var2685, null_type=var1108, i0=var938, i12=var3466}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i12 = 0;	if i12 >= i0 goto return r0;	return r0
;block_num 3