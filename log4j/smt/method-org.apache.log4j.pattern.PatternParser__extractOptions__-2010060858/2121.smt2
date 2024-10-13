(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var324 0)
(declare-sort var3078 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3078 var3078)
(declare-const var1095 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1095 null-String)))
(declare-const var3778 Int) ; Statement: i4 := @parameter1: int 
(assert (not (= var3778 null-Int)))
(declare-const var3423 var3078) ; Statement: r2 := @parameter2: java.util.List 
(assert (not (= var3423 null-var3078)))
(assert true) ; Non Conditional
(assert true)
(define-const var2015 Int (length/-134980193 var1095)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i0 goto return i4 
(assert (>= var3778 var2015)) ; Cond: i4 >= $i0 
 ; Statement: return i4 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1095=r0, var324=null_type, var3778=i4, var3078=java.util.List, var3423=r2, var2015=$i0}
; {r0=var1095, null_type=var324, i4=var3778, java.util.List=var3078, r2=var3423, $i0=var2015}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i4 := @parameter1: int;	r2 := @parameter2: java.util.List;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 >= $i0 goto return i4;	return i4
;block_num 3