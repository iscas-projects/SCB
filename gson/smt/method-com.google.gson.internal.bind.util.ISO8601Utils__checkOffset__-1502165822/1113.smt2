(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3863 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2734 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2734 null-String)))
(declare-const var3610 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3610 null-Int)))
(declare-const var277 Int) ; Statement: c2 := @parameter2: char 
(assert (not (= var277 null-Int)))
(assert true)
(define-const var1559 Int (length/-134980193 var2734)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 >= $i1 goto $z0 = 0 
(assert (>= var3610 var1559)) ; Cond: i0 >= $i1 
(define-const var471 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2734=r0, var3863=null_type, var3610=i0, var277=c2, var1559=$i1, var471=$z0}
; {r0=var2734, null_type=var3863, i0=var3610, c2=var277, $i1=var1559, $z0=var471}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	c2 := @parameter2: char;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 >= $i1 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3