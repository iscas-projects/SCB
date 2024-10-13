(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2372 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var349 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var349 null-String)))
(declare-const var3481 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3481 null-Int)))
(define-const var631 Int var3481) ; Statement: i4 = i0 
(assert true) ; Non Conditional
(assert true)
(define-const var232 Int (length/-134980193 var349)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i1 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (>= var631 var232)) ; Cond: i4 >= $i1 
(assert true)
(define-const var358 Int (length/-134980193 var349)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var349=r0, var2372=null_type, var3481=i0, var631=i4, var232=$i1, var358=$i2}
; {r0=var349, null_type=var2372, i0=var3481, i4=var631, $i1=var232, $i2=var358}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i4 = i0;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 >= $i1 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	return $i2
;block_num 3