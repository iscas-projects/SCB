(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3708 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2118 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2118 null-String)))
(declare-const var276 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var276 null-Int)))
(assert true)
(define-const var1990 Int (length/-134980193 var2118)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 >= $i1 goto $c2 = 0 
(assert (>= var276 var1990)) ; Cond: i0 >= $i1 
(define-const var1420 Int 0) ; Statement: $c2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $c2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2118=r0, var3708=null_type, var276=i0, var1990=$i1, var1420=$c2}
; {r0=var2118, null_type=var3708, i0=var276, $i1=var1990, $c2=var1420}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 >= $i1 goto $c2 = 0;	$c2 = 0;	return $c2
;block_num 3