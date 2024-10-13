(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var959 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var585 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var585 null-String)))
(declare-const var2069 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2069 null-Int)))
(assert true)
(define-const var218 Int (length/-134980193 var585)) ; Statement: i7 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3203 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var153 Int (length/-134980193 var585)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i8 >= $i0 goto $i2 = i7 % i1 
(assert (>= var3203 var153)) ; Cond: i8 >= $i0 
(define-const var167 Int (mod var218 var2069)) ; Statement: $i2 = i7 % i1 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var585=r0, var959=null_type, var2069=i1, var218=i7, var3203=i8, var153=$i0, var167=$i2}
; {r0=var585, null_type=var959, i1=var2069, i7=var218, i8=var3203, $i0=var153, $i2=var167}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i7 = virtualinvoke r0.<java.lang.String: int length()>();	i8 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i8 >= $i0 goto $i2 = i7 % i1;	$i2 = i7 % i1;	return $i2
;block_num 3