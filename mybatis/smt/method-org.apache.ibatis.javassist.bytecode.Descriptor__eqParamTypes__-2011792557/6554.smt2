(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1204 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var3132 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3132 null-String)))
(declare-const var3632 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3632 null-String)))
(assert (and true (and (> (str.len var3132) 0) (<= 0 0))))
(define-const var3404 Int (charAt/698050440 var3132 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var2961 Int (cast-from-Int-to-Int var3404)) ; Statement: $i4 = (int) $c0 
 ; Statement: if $i4 == 40 goto i3 = 0 
(assert (not (= var2961 40))) ; Negate: Cond: $i4 == 40  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var3132=r0, var1204=null_type, var3632=r1, var3404=$c0, var2961=$i4}
; {r0=var3132, null_type=var1204, r1=var3632, $c0=var3404, $i4=var2961}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i4 = (int) $c0;	if $i4 == 40 goto i3 = 0;	return 0
;block_num 2