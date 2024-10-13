(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var44 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2739 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2739 null-String)))
(assert true)
(define-const var2787 Int (length/-134980193 var2739)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(1) 
(assert (not (not (= var2787 0)))) ; Negate: Cond: $i0 != 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2739=r0, var44=null_type, var2787=$i0}
; {r0=var2739, null_type=var44, $i0=var2787}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(1);	return null
;block_num 2