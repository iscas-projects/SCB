(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1381 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2663 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2663 null-String)))
(assert true)
(define-const var1395 Int (length/-134980193 var2663)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto i5 = 0 
(assert (not (not (= var1395 0)))) ; Negate: Cond: $i0 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2663=r0, var1381=null_type, var1395=$i0}
; {r0=var2663, null_type=var1381, $i0=var1395}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto i5 = 0;	return 0
;block_num 2