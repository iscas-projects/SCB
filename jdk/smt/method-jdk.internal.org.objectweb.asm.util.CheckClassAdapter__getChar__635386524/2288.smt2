(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3454 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var641 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var641 null-String)))
(declare-const var726 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var726 null-Int)))
(assert true)
(define-const var1787 Int (length/-134980193 var641)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 >= $i1 goto $c2 = 0 
(assert (not (>= var726 var1787))) ; Negate: Cond: i0 >= $i1  
(assert (and true (and (> (str.len var641) var726) (<= 0 var726))))
(define-const var3184 Int (charAt/698050440 var641 var726)) ; Statement: $c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0) 
 ; Statement: goto [?= return $c2] 
(assert true) ; Non Conditional
 ; Statement: return $c2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char)}
; {var641=r0, var3454=null_type, var726=i0, var1787=$i1, var3184=$c2}
; {r0=var641, null_type=var3454, i0=var726, $i1=var1787, $c2=var3184}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 >= $i1 goto $c2 = 0;	$c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i0);	goto [?= return $c2];	return $c2
;block_num 3