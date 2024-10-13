(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2548 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2093 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2093 null-String)))
(declare-const var1130 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var1130 null-String)))
(assert true)
(define-const var106 Int (length/-134980193 var1130)) ; Statement: $i0 = virtualinvoke r6.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0) 
(assert (not (not (= var106 0)))) ; Negate: Cond: $i0 != 0  
(assert true)
(define-const var751 Int (length/-134980193 var2093)) ; Statement: $i7 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i7 != 0 goto $z3 = 0 
(assert (not (not (= var751 0)))) ; Negate: Cond: $i7 != 0  
(define-const var1150 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= return $z3] 
(assert true) ; Non Conditional
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2093=r0, var2548=null_type, var1130=r6, var106=$i0, var751=$i7, var1150=$z3}
; {r0=var2093, null_type=var2548, r6=var1130, $i0=var106, $i7=var751, $z3=var1150}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	$i0 = virtualinvoke r6.<java.lang.String: int length()>();	if $i0 != 0 goto $c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0);	$i7 = virtualinvoke r0.<java.lang.String: int length()>();	if $i7 != 0 goto $z3 = 0;	$z3 = 1;	goto [?= return $z3];	return $z3
;block_num 4