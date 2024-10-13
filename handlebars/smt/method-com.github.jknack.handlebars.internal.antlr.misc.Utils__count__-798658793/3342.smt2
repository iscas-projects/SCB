(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1044 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2049 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2049 null-String)))
(declare-const var243 Int) ; Statement: c1 := @parameter1: char 
(assert (not (= var243 null-Int)))
(define-const var3923 Int 0) ; Statement: i3 = 0 
(define-const var3987 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2073 Int (length/-134980193 var2049)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i0 goto return i3 
(assert (>= var3987 var2073)) ; Cond: i4 >= $i0 
 ; Statement: return i3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2049=r0, var1044=null_type, var243=c1, var3923=i3, var3987=i4, var2073=$i0}
; {r0=var2049, null_type=var1044, c1=var243, i3=var3923, i4=var3987, $i0=var2073}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	c1 := @parameter1: char;	i3 = 0;	i4 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 >= $i0 goto return i3;	return i3
;block_num 3