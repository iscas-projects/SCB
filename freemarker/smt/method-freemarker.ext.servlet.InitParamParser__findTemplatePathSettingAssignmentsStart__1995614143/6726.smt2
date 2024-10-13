(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var823 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var548 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var548 null-String)))
(assert true)
(define-const var3547 Int (length/-134980193 var548)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2875 Int (- var3547 1)) ; Statement: i13 = $i0 - 1 
(assert true) ; Non Conditional
 ; Statement: if i13 < 0 goto (branch) 
(assert (< var2875 0)) ; Cond: i13 < 0 
 ; Statement: if i13 < 0 goto $i22 = (int) -1 
(assert (< var2875 0)) ; Cond: i13 < 0 
(define-const var595 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i22 = (int) -1 
 ; Statement: return $i22 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var548=r0, var823=null_type, var3547=$i0, var2875=i13, var595=$i22}
; {r0=var548, null_type=var823, $i0=var3547, i13=var2875, $i22=var595}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	i13 = $i0 - 1;	if i13 < 0 goto (branch);	if i13 < 0 goto $i22 = (int) -1;	$i22 = (int) -1;	return $i22
;block_num 4