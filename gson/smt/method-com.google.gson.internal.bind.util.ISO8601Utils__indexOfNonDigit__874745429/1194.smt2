(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3324 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var509 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var509 null-String)))
(declare-const var2448 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2448 null-Int)))
(define-const var3410 Int var2448) ; Statement: i4 = i0 
(assert true) ; Non Conditional
(assert true)
(define-const var1260 Int (length/-134980193 var509)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i1 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (>= var3410 var1260)) ; Cond: i4 >= $i1 
(assert true)
(define-const var3093 Int (length/-134980193 var509)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var509=r0, var3324=null_type, var2448=i0, var3410=i4, var1260=$i1, var3093=$i2}
; {r0=var509, null_type=var3324, i0=var2448, i4=var3410, $i1=var1260, $i2=var3093}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i4 = i0;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 >= $i1 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	return $i2
;block_num 3