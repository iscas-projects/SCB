(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1276 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var556 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var556 null-String)))
(assert true)
(define-const var2705 Int (length/-134980193 var556)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 0 goto return 
(assert (= var2705 0)) ; Cond: $i0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var556=r0, var1276=null_type, var2705=$i0}
; {r0=var556, null_type=var1276, $i0=var2705}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 0 goto return;	return
;block_num 2