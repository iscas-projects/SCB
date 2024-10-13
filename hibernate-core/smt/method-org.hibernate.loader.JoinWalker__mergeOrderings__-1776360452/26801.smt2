(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var208 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var1932 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1932 null-String)))
(declare-const var2580 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2580 null-String)))
(assert true)
(define-const var3328 Int (length/-134980193 var1932)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (not (= var3328 0)))) ; Negate: Cond: $i0 != 0  
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1932=r0, var208=null_type, var2580=r1, var3328=$i0}
; {r0=var1932, null_type=var208, r1=var2580, $i0=var3328}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	return r1
;block_num 2