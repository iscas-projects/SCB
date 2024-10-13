(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3034 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var523 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var523 null-String)))
(declare-const var162 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var162 null-String)))
(assert (not (and true (and (> (str.len var162) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var523=r2, var3034=null_type, var162=r0, var1295=$c0, var3767=$i1}
; {r2=var523, null_type=var3034, r0=var162, $c0=var1295, $i1=var3767}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i1 = (int) $c0;	if $i1 == 40 goto $r10 = new java.lang.StringBuilder;	return r0
;block_num 2