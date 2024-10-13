(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-const null-Int Int)
(declare-const var1712 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1712 null-Int)))
(define-const var2376 Int (cast-from-Int-to-Int var1712)) ; Statement: $c1 = (char) i0 
(define-const var366 String (String_valueOf/-371898945 var2376)) ; Statement: $r0 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c1) 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], char), String_valueOf/-371898945=([char], java.lang.String)}
; {var1712=i0, var2376=$c1, var366=$r0}
; {i0=var1712, $c1=var2376, $r0=var366}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts i0 := @parameter0: int;	$c1 = (char) i0;	$r0 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c1);	return $r0
;block_num 1