(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var183 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var3716 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3716 null-String)))
(declare-const var3615 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var3615 null-String)))
(assert true)
(define-const var1478 Int (length/-134980193 var3615)) ; Statement: $i0 = virtualinvoke r6.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0) 
(assert (not (not (= var1478 0)))) ; Negate: Cond: $i0 != 0  
(assert true)
(define-const var40 Int (length/-134980193 var3716)) ; Statement: $i7 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i7 != 0 goto $z3 = 0 
(assert (not (= var40 0))) ; Cond: $i7 != 0 
(define-const var1342 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3716=r0, var183=null_type, var3615=r6, var1478=$i0, var40=$i7, var1342=$z3}
; {r0=var3716, null_type=var183, r6=var3615, $i0=var1478, $i7=var40, $z3=var1342}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	$i0 = virtualinvoke r6.<java.lang.String: int length()>();	if $i0 != 0 goto $c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0);	$i7 = virtualinvoke r0.<java.lang.String: int length()>();	if $i7 != 0 goto $z3 = 0;	$z3 = 0;	return $z3
;block_num 4