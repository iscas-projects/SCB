(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1104 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/483932419 (var1104) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-const null-var1104 var1104)
(declare-const var3356 var1104) ; Statement: r0 := @this: org.apache.commons.lang3.mutable.MutableShort 
(assert (not (= var3356 null-var1104)))
(define-const var1024 Int (value/483932419 var3356)) ; Statement: $s0 = r0.<org.apache.commons.lang3.mutable.MutableShort: short value> 
(define-const var3196 Int (cast-from-Int-to-Int var1024)) ; Statement: $i1 = (int) $s0 
(define-const var1220 String (String_valueOf/1240665136 var3196)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {value/483932419=([org.apache.commons.lang3.mutable.MutableShort], short), cast-from-Int-to-Int=([short], int), String_valueOf/1240665136=([int], java.lang.String)}
; {var1104=org.apache.commons.lang3.mutable.MutableShort, var3356=r0, var1024=$s0, var3196=$i1, var1220=$r1}
; {org.apache.commons.lang3.mutable.MutableShort=var1104, r0=var3356, $s0=var1024, $i1=var3196, $r1=var1220}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.mutable.MutableShort;	$s0 = r0.<org.apache.commons.lang3.mutable.MutableShort: short value>;	$i1 = (int) $s0;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1);	return $r1
;block_num 1