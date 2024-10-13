(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-const null-Int Int)
(declare-const var3538 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3538 null-Int)))
(define-const var670 Int (cast-from-Int-to-Int 65535)) ; Statement: $i3 = (int) 65535 
 ; Statement: if i0 != $i3 goto $c1 = (char) i0 
(assert (not (= var3538 var670))) ; Cond: i0 != $i3 
(define-const var3406 Int (cast-from-Int-to-Int var3538)) ; Statement: $c1 = (char) i0 
(define-const var1359 String (String_valueOf/-371898945 var3406)) ; Statement: $r0 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c1) 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), String_valueOf/-371898945=([char], java.lang.String)}
; {var3538=i0, var670=$i3, var3406=$c1, var1359=$r0}
; {i0=var3538, $i3=var670, $c1=var3406, $r0=var1359}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts i0 := @parameter0: int;	$i3 = (int) 65535;	if i0 != $i3 goto $c1 = (char) i0;	$c1 = (char) i0;	$r0 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c1);	return $r0
;block_num 2