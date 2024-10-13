(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2948 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1811 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1811 null-String)))
(declare-const var2655 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var2655 null-Int)))
(declare-const var638 Int) ; Statement: i4 := @parameter2: int 
(assert (not (= var638 null-Int)))
 ; Statement: if r0 != null goto (branch) 
(assert (not (= var1811 null-String))) ; Cond: r0 != null 
 ; Statement: if i4 >= 0 goto (branch) 
(assert (>= var638 0)) ; Cond: i4 >= 0 
 ; Statement: if i3 >= 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (>= var2655 0)) ; Cond: i3 >= 0 
(assert true)
(define-const var1655 Int (length/-134980193 var1811)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i4 <= $i0 goto (branch) 
(assert (not (<= var638 var1655))) ; Negate: Cond: i4 <= $i0  
(assert true)
(define-const var638!1 Int (length/-134980193 var1811)) ; Statement: i4 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i3 <= i4 goto (branch) 
(assert (not (<= var2655 var638!1))) ; Negate: Cond: i3 <= i4  
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1811=r0, var2948=null_type, var2655=i3, var638=i4, var1655=$i0}
; {r0=var1811, null_type=var2948, i3=var2655, i4=var638, $i0=var1655}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	i3 := @parameter1: int;	i4 := @parameter2: int;	if r0 != null goto (branch);	if i4 >= 0 goto (branch);	if i3 >= 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 <= $i0 goto (branch);	i4 = virtualinvoke r0.<java.lang.String: int length()>();	if i3 <= i4 goto (branch);	return ""
;block_num 7