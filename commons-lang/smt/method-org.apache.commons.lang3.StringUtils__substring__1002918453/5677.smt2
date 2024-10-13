(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1396 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1748 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1748 null-String)))
(declare-const var728 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var728 null-Int)))
(declare-const var2574 Int) ; Statement: i4 := @parameter2: int 
(assert (not (= var2574 null-Int)))
 ; Statement: if r0 != null goto (branch) 
(assert (not (= var1748 null-String))) ; Cond: r0 != null 
 ; Statement: if i4 >= 0 goto (branch) 
(assert (not (>= var2574 0))) ; Negate: Cond: i4 >= 0  
(assert true)
(define-const var2825 Int (length/-134980193 var1748)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2574!1 Int (+ var2825 var2574)) ; Statement: i4 = $i2 + i4 
(assert true) ; Non Conditional
 ; Statement: if i3 >= 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (>= var728 0)) ; Cond: i3 >= 0 
(assert true)
(define-const var2506 Int (length/-134980193 var1748)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i4 <= $i0 goto (branch) 
(assert (<= var2574!1 var2506)) ; Cond: i4 <= $i0 
 ; Statement: if i3 <= i4 goto (branch) 
(assert (not (<= var728 var2574!1))) ; Negate: Cond: i3 <= i4  
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1748=r0, var1396=null_type, var728=i3, var2574=i4, var2825=$i2, var2506=$i0}
; {r0=var1748, null_type=var1396, i3=var728, i4=var2574, $i2=var2825, $i0=var2506}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	i3 := @parameter1: int;	i4 := @parameter2: int;	if r0 != null goto (branch);	if i4 >= 0 goto (branch);	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	i4 = $i2 + i4;	if i3 >= 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 <= $i0 goto (branch);	if i3 <= i4 goto (branch);	return ""
;block_num 7