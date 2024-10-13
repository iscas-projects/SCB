(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1959 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/1694193706 (var1959) Float64)
(declare-fun String_valueOf/-987357574 (Float64) String)
(declare-const null-var1959 var1959)
(declare-const var736 var1959) ; Statement: r0 := @this: org.apache.commons.lang3.mutable.MutableDouble 
(assert (not (= var736 null-var1959)))
(define-const var2665 Float64 (value/1694193706 var736)) ; Statement: $d0 = r0.<org.apache.commons.lang3.mutable.MutableDouble: double value> 
(define-const var2228 String (String_valueOf/-987357574 var2665)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>($d0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {value/1694193706=([org.apache.commons.lang3.mutable.MutableDouble], double), String_valueOf/-987357574=([double], java.lang.String)}
; {var1959=org.apache.commons.lang3.mutable.MutableDouble, var736=r0, var2665=$d0, var2228=$r1}
; {org.apache.commons.lang3.mutable.MutableDouble=var1959, r0=var736, $d0=var2665, $r1=var2228}
;seq <java.lang.String: java.lang.String valueOf(double)>
;cnt {"<java.lang.String: java.lang.String valueOf(double)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.mutable.MutableDouble;	$d0 = r0.<org.apache.commons.lang3.mutable.MutableDouble: double value>;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>($d0);	return $r1
;block_num 1