(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1726 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1264 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1264 null-String)))
(declare-const var1106 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var1106 null-Int)))
(declare-const var1280 Int) ; Statement: i4 := @parameter2: int 
(assert (not (= var1280 null-Int)))
 ; Statement: if r0 != null goto (branch) 
(assert (not (= var1264 null-String))) ; Cond: r0 != null 
 ; Statement: if i4 >= 0 goto (branch) 
(assert (>= var1280 0)) ; Cond: i4 >= 0 
 ; Statement: if i3 >= 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (>= var1106 0)) ; Cond: i3 >= 0 
(assert true)
(define-const var3193 Int (length/-134980193 var1264)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i4 <= $i0 goto (branch) 
(assert (<= var1280 var3193)) ; Cond: i4 <= $i0 
 ; Statement: if i3 <= i4 goto (branch) 
(assert (not (<= var1106 var1280))) ; Negate: Cond: i3 <= i4  
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1264=r0, var1726=null_type, var1106=i3, var1280=i4, var3193=$i0}
; {r0=var1264, null_type=var1726, i3=var1106, i4=var1280, $i0=var3193}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i3 := @parameter1: int;	i4 := @parameter2: int;	if r0 != null goto (branch);	if i4 >= 0 goto (branch);	if i3 >= 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 <= $i0 goto (branch);	if i3 <= i4 goto (branch);	return ""
;block_num 6