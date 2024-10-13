(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3071 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const var3584 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var3584 null-__Array__Int__Int__)))
(declare-const var683 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var683 null-String)))
(declare-const var3657 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3657 null-String)))
(define-const var619 Int (getLength-Arr-Int-1 var3584)) ; Statement: $i3 = lengthof r0 
(assert true)
(define-const var1652 Int (length/-134980193 var683)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
(define-const var3993 Int (length/-134980193 var3657)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var3267 Int (+ var1652 var3993)) ; Statement: $i2 = $i1 + $i0 
 ; Statement: if $i3 < $i2 goto return r0 
(assert (< var619 var3267)) ; Cond: $i3 < $i2 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([byte[]], int), length/-134980193=([java.lang.String], int)}
; {var3584=r0, var683=r1, var3071=null_type, var3657=r2, var619=$i3, var1652=$i1, var3993=$i0, var3267=$i2}
; {r0=var3584, r1=var683, null_type=var3071, r2=var3657, $i3=var619, $i1=var1652, $i0=var3993, $i2=var3267}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: byte[];	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	$i3 = lengthof r0;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	$i2 = $i1 + $i0;	if $i3 < $i2 goto return r0;	return r0
;block_num 2