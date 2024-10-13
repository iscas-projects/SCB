(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var815 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2364 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2364 null-String)))
(declare-const var3202 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3202 null-Int)))
(declare-const var2120 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2120 null-Int)))
 ; Statement: if i0 >= 0 goto (branch) 
(assert (>= var3202 0)) ; Cond: i0 >= 0 
 ; Statement: if i1 >= 0 goto (branch) 
(assert (>= var2120 0)) ; Cond: i1 >= 0 
 ; Statement: if r0 != null goto $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var2364 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var3089 Int (length/-134980193 var2364)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 <= $i2 goto $i3 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (<= var3202 var3089))) ; Negate: Cond: i0 <= $i2  
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2364=r0, var815=null_type, var3202=i0, var2120=i1, var3089=$i2}
; {r0=var2364, null_type=var815, i0=var3202, i1=var2120, $i2=var3089}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	if i0 >= 0 goto (branch);	if i1 >= 0 goto (branch);	if r0 != null goto $i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 <= $i2 goto $i3 = virtualinvoke r0.<java.lang.String: int length()>();	return ""
;block_num 5