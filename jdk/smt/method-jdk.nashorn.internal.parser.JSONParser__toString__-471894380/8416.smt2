(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-const null-Int Int)
(declare-const var3816 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3816 null-Int)))
(define-const var1720 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 != $i3 goto $c1 = (char) i0 
(assert (not (= var3816 var1720))) ; Cond: i0 != $i3 
(define-const var1617 Int (cast-from-Int-to-Int var3816)) ; Statement: $c1 = (char) i0 
(define-const var3157 String (String_valueOf/-371898945 var1617)) ; Statement: $r0 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c1) 
(assert true) ; Non Conditional
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), String_valueOf/-371898945=([char], java.lang.String)}
; {var3816=i0, var1720=$i3, var1617=$c1, var3157=$r0}
; {i0=var3816, $i3=var1720, $c1=var1617, $r0=var3157}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts i0 := @parameter0: int;	$i3 = (int) -1;	if i0 != $i3 goto $c1 = (char) i0;	$c1 = (char) i0;	$r0 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c1);	return $r0
;block_num 3