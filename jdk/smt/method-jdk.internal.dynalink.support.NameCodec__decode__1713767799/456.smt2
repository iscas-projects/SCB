(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var477 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var815 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var815 null-String)))
(assert (and true (and (> (str.len var815) 0) (<= 0 0))))
(define-const var1066 Int (charAt/698050440 var815 0)) ; Statement: $c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var1631 Int (cast-from-Int-to-Int var1066)) ; Statement: $i16 = (int) $c0 
 ; Statement: if $i16 == 92 goto i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var1631 92))) ; Negate: Cond: $i16 == 92  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var815=r0, var477=null_type, var1066=$c0, var1631=$i16}
; {r0=var815, null_type=var477, $c0=var1066, $i16=var1631}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i16 = (int) $c0;	if $i16 == 92 goto i1 = virtualinvoke r0.<java.lang.String: int length()>();	return r0
;block_num 2