(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3449 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2618 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2618 null-String)))
(define-const var373 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var667 Int (length/-134980193 var2618)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i6 >= $i0 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (>= var373 var667)) ; Cond: i6 >= $i0 
(assert true)
(define-const var2771 Int (length/-134980193 var2618)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i6 != $i1 goto $r1 = new java.lang.StringBuilder 
(assert (not (not (= var373 var2771)))) ; Negate: Cond: i6 != $i1  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2618=r0, var3449=null_type, var373=i6, var667=$i0, var2771=$i1}
; {r0=var2618, null_type=var3449, i6=var373, $i0=var667, $i1=var2771}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	i6 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i6 >= $i0 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i6 != $i1 goto $r1 = new java.lang.StringBuilder;	return r0
;block_num 4