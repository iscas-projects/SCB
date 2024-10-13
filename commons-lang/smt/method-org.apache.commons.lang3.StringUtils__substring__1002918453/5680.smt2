(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var703 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3315 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3315 null-String)))
(declare-const var1669 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var1669 null-Int)))
(declare-const var2089 Int) ; Statement: i4 := @parameter2: int 
(assert (not (= var2089 null-Int)))
 ; Statement: if r0 != null goto (branch) 
(assert (not (= var3315 null-String))) ; Cond: r0 != null 
 ; Statement: if i4 >= 0 goto (branch) 
(assert (>= var2089 0)) ; Cond: i4 >= 0 
 ; Statement: if i3 >= 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (>= var1669 0))) ; Negate: Cond: i3 >= 0  
(assert true)
(define-const var3326 Int (length/-134980193 var3315)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1669!1 Int (+ var3326 var1669)) ; Statement: i3 = $i1 + i3 
(assert true) ; Non Conditional
(assert true)
(define-const var190 Int (length/-134980193 var3315)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i4 <= $i0 goto (branch) 
(assert (<= var2089 var190)) ; Cond: i4 <= $i0 
 ; Statement: if i3 <= i4 goto (branch) 
(assert (not (<= var1669!1 var2089))) ; Negate: Cond: i3 <= i4  
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3315=r0, var703=null_type, var1669=i3, var2089=i4, var3326=$i1, var190=$i0}
; {r0=var3315, null_type=var703, i3=var1669, i4=var2089, $i1=var3326, $i0=var190}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	i3 := @parameter1: int;	i4 := @parameter2: int;	if r0 != null goto (branch);	if i4 >= 0 goto (branch);	if i3 >= 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	i3 = $i1 + i3;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 <= $i0 goto (branch);	if i3 <= i4 goto (branch);	return ""
;block_num 7