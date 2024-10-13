(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3568 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var1662 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1662 null-String)))
(declare-const var1833 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1833 null-String)))
(assert true)
(define-const var1401 Int (length/-134980193 var1662)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var1644 Int (length/-134980193 var1833)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i1 >= $i0 goto i7 = 0 
(assert (not (>= var1401 var1644))) ; Negate: Cond: $i1 >= $i0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1662=r0, var3568=null_type, var1833=r1, var1401=$i1, var1644=$i0}
; {r0=var1662, null_type=var3568, r1=var1833, $i1=var1401, $i0=var1644}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if $i1 >= $i0 goto i7 = 0;	return 0
;block_num 2