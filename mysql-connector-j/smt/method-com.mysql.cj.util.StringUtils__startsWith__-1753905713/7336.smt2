(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2892 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const var3117 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var3117 null-__Array__Int__Int__)))
(declare-const var1816 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1816 null-String)))
(assert true)
(define-const var2274 Int (length/-134980193 var1816)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1253 Int (getLength-Arr-Int-1 var3117)) ; Statement: $i1 = lengthof r1 
 ; Statement: if $i1 >= i0 goto i4 = 0 
(assert (not (>= var1253 var2274))) ; Negate: Cond: $i1 >= i0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), getLength-Arr-Int-1=([byte[]], int)}
; {var3117=r1, var1816=r0, var2892=null_type, var2274=i0, var1253=$i1}
; {r1=var3117, r0=var1816, null_type=var2892, i0=var2274, $i1=var1253}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: byte[];	r0 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = lengthof r1;	if $i1 >= i0 goto i4 = 0;	return 0
;block_num 2