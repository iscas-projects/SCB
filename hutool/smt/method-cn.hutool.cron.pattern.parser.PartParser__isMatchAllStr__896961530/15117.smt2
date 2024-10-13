(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3047 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var3796 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3796 null-String)))
(assert true)
(define-const var359 Int (length/-134980193 var3796)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if 1 != $i0 goto $z2 = 0 
(assert (not (= 1 var359))) ; Cond: 1 != $i0 
(define-const var3375 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3796=r0, var3047=null_type, var359=$i0, var3375=$z2}
; {r0=var3796, null_type=var3047, $i0=var359, $z2=var3375}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if 1 != $i0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3