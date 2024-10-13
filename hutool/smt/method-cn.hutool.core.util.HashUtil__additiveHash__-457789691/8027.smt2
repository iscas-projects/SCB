(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3246 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3756 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3756 null-String)))
(declare-const var2436 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2436 null-Int)))
(assert true)
(define-const var2400 Int (length/-134980193 var3756)) ; Statement: i4 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1604 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3932 Int (length/-134980193 var3756)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i5 >= $i0 goto $i2 = i4 % i1 
(assert (>= var1604 var3932)) ; Cond: i5 >= $i0 
(define-const var1157 Int (mod var2400 var2436)) ; Statement: $i2 = i4 % i1 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3756=r0, var3246=null_type, var2436=i1, var2400=i4, var1604=i5, var3932=$i0, var1157=$i2}
; {r0=var3756, null_type=var3246, i1=var2436, i4=var2400, i5=var1604, $i0=var3932, $i2=var1157}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i4 = virtualinvoke r0.<java.lang.String: int length()>();	i5 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i5 >= $i0 goto $i2 = i4 % i1;	$i2 = i4 % i1;	return $i2
;block_num 3