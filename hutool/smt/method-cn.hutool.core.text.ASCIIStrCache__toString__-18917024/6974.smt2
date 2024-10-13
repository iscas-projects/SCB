(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-const null-Int Int)
(declare-const var2572 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var2572 null-Int)))
(define-const var1009 Int (cast-from-Int-to-Int var2572)) ; Statement: $i1 = (int) c0 
 ; Statement: if $i1 >= 128 goto $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0) 
(assert (>= var1009 128)) ; Cond: $i1 >= 128 
(define-const var1598 String (String_valueOf/-371898945 var2572)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0) 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), String_valueOf/-371898945=([char], java.lang.String)}
; {var2572=c0, var1009=$i1, var1598=$r1}
; {c0=var2572, $i1=var1009, $r1=var1598}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts c0 := @parameter0: char;	$i1 = (int) c0;	if $i1 >= 128 goto $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0);	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0);	return $r1
;block_num 3