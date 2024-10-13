(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1667 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2845 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2845 null-String)))
(declare-const var2132 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2132 null-Int)))
(assert true)
(define-const var278 Int (length/-134980193 var2845)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i1 > i0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (> var278 var2132))) ; Negate: Cond: $i1 > i0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2845=r0, var1667=null_type, var2132=i0, var278=$i1}
; {r0=var2845, null_type=var1667, i0=var2132, $i1=var278}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if $i1 > i0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	return r0
;block_num 2