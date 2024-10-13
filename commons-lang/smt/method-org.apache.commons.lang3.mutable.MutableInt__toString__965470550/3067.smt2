(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1510 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/-222969290 (var1510) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-const null-var1510 var1510)
(declare-const var3924 var1510) ; Statement: r0 := @this: org.apache.commons.lang3.mutable.MutableInt 
(assert (not (= var3924 null-var1510)))
(define-const var3575 Int (value/-222969290 var3924)) ; Statement: $i0 = r0.<org.apache.commons.lang3.mutable.MutableInt: int value> 
(define-const var546 String (String_valueOf/1240665136 var3575)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {value/-222969290=([org.apache.commons.lang3.mutable.MutableInt], int), String_valueOf/1240665136=([int], java.lang.String)}
; {var1510=org.apache.commons.lang3.mutable.MutableInt, var3924=r0, var3575=$i0, var546=$r1}
; {org.apache.commons.lang3.mutable.MutableInt=var1510, r0=var3924, $i0=var3575, $r1=var546}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.mutable.MutableInt;	$i0 = r0.<org.apache.commons.lang3.mutable.MutableInt: int value>;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	return $r1
;block_num 1