(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3807 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var1680 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1680 null-String)))
(assert true)
(define-const var2027 Int (length/-134980193 var1680)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert (not (not (= var2027 0)))) ; Negate: Cond: $i0 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1680=r0, var3807=null_type, var2027=$i0}
; {r0=var1680, null_type=var3807, $i0=var2027}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	return 0
;block_num 2