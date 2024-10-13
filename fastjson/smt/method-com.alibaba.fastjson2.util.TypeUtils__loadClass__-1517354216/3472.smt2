(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1627 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var205 String) ; Statement: r44 := @parameter0: java.lang.String 
(assert (not (= var205 null-String)))
(assert true)
(define-const var1201 Int (length/-134980193 var205)) ; Statement: $i0 = virtualinvoke r44.<java.lang.String: int length()>() 
 ; Statement: if $i0 < 192 goto b11 = -1 
(assert (not (< var1201 192))) ; Negate: Cond: $i0 < 192  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var205=r44, var1627=null_type, var1201=$i0}
; {r44=var205, null_type=var1627, $i0=var1201}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r44 := @parameter0: java.lang.String;	$i0 = virtualinvoke r44.<java.lang.String: int length()>();	if $i0 < 192 goto b11 = -1;	return null
;block_num 2