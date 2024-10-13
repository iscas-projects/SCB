(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-const null-Int Int)
(declare-const var1081 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1081 null-Int)))
(define-const var1582 Int (cast-from-Int-to-Int var1081)) ; Statement: $c1 = (char) i0 
(define-const var3826 String (String_valueOf/-371898945 var1582)) ; Statement: $r0 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c1) 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], char), String_valueOf/-371898945=([char], java.lang.String)}
; {var1081=i0, var1582=$c1, var3826=$r0}
; {i0=var1081, $c1=var1582, $r0=var3826}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts i0 := @parameter0: int;	$c1 = (char) i0;	$r0 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c1);	return $r0
;block_num 1