(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var296 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2998 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2998 null-String)))
(define-const var796 Int 0) ; Statement: i12 = 0 
(define-const var3131 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2976 Int (length/-134980193 var2998)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i13 >= $i0 goto return i12 
(assert (>= var3131 var2976)) ; Cond: i13 >= $i0 
 ; Statement: return i12 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2998=r0, var296=null_type, var796=i12, var3131=i13, var2976=$i0}
; {r0=var2998, null_type=var296, i12=var796, i13=var3131, $i0=var2976}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i12 = 0;	i13 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i13 >= $i0 goto return i12;	return i12
;block_num 3