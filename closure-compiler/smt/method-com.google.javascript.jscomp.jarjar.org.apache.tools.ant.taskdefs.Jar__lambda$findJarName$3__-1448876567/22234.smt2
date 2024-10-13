(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var725 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var3895 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3895 null-String)))
 ; Statement: if r0 != null goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var3895 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var3286 Int (length/-134980193 var3895)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3895=r0, var725=null_type, var3286=$i0}
; {r0=var3895, null_type=var725, $i0=var3286}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	return $i0
;block_num 3