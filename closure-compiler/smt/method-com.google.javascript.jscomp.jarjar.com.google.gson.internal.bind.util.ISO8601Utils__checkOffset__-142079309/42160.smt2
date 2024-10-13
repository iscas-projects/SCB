(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3132 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var510 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var510 null-String)))
(declare-const var1712 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1712 null-Int)))
(declare-const var1970 Int) ; Statement: c2 := @parameter2: char 
(assert (not (= var1970 null-Int)))
(assert true)
(define-const var1456 Int (length/-134980193 var510)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 >= $i1 goto $z0 = 0 
(assert (>= var1712 var1456)) ; Cond: i0 >= $i1 
(define-const var1888 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var510=r0, var3132=null_type, var1712=i0, var1970=c2, var1456=$i1, var1888=$z0}
; {r0=var510, null_type=var3132, i0=var1712, c2=var1970, $i1=var1456, $z0=var1888}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	c2 := @parameter2: char;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 >= $i1 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3