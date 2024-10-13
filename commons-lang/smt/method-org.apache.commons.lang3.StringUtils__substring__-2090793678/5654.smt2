(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3169 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3716 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3716 null-String)))
(declare-const var3435 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var3435 null-Int)))
 ; Statement: if r0 != null goto (branch) 
(assert (not (= var3716 null-String))) ; Cond: r0 != null 
 ; Statement: if i2 >= 0 goto (branch) 
(assert (>= var3435 0)) ; Cond: i2 >= 0 
 ; Statement: if i2 >= 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (>= var3435 0)) ; Cond: i2 >= 0 
(assert true)
(define-const var2101 Int (length/-134980193 var3716)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i2 <= $i0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i2) 
(assert (not (<= var3435 var2101))) ; Negate: Cond: i2 <= $i0  
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3716=r0, var3169=null_type, var3435=i2, var2101=$i0}
; {r0=var3716, null_type=var3169, i2=var3435, $i0=var2101}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i2 := @parameter1: int;	if r0 != null goto (branch);	if i2 >= 0 goto (branch);	if i2 >= 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i2 <= $i0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i2);	return ""
;block_num 5