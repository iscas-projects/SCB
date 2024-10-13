(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1739 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3504 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3504 null-String)))
(declare-const var1118 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var1118 null-Int)))
 ; Statement: if r0 != null goto (branch) 
(assert (not (= var3504 null-String))) ; Cond: r0 != null 
 ; Statement: if i2 >= 0 goto (branch) 
(assert (>= var1118 0)) ; Cond: i2 >= 0 
 ; Statement: if i2 >= 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (>= var1118 0)) ; Cond: i2 >= 0 
(assert true)
(define-const var3223 Int (length/-134980193 var3504)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i2 <= $i0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i2) 
(assert (<= var1118 var3223)) ; Cond: i2 <= $i0 
(assert (not (and true (and (>= var1118 0) (>= (str.len var3504) var1118)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var3504=r0, var1739=null_type, var1118=i2, var3223=$i0, var2570=$r1}
; {r0=var3504, null_type=var1739, i2=var1118, $i0=var3223, $r1=var2570}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i2 := @parameter1: int;	if r0 != null goto (branch);	if i2 >= 0 goto (branch);	if i2 >= 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i2 <= $i0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i2);	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i2);	return $r1
;block_num 5