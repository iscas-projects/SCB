(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1730 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/-380624171 (var1730) Float32)
(declare-fun String_valueOf/-149410723 (Float32) String)
(declare-const null-var1730 var1730)
(declare-const var1650 var1730) ; Statement: r0 := @this: cn.hutool.core.lang.mutable.MutableFloat 
(assert (not (= var1650 null-var1730)))
(define-const var2284 Float32 (value/-380624171 var1650)) ; Statement: $f0 = r0.<cn.hutool.core.lang.mutable.MutableFloat: float value> 
(define-const var639 String (String_valueOf/-149410723 var2284)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(float)>($f0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {value/-380624171=([cn.hutool.core.lang.mutable.MutableFloat], float), String_valueOf/-149410723=([float], java.lang.String)}
; {var1730=cn.hutool.core.lang.mutable.MutableFloat, var1650=r0, var2284=$f0, var639=$r1}
; {cn.hutool.core.lang.mutable.MutableFloat=var1730, r0=var1650, $f0=var2284, $r1=var639}
;seq <java.lang.String: java.lang.String valueOf(float)>
;cnt {"<java.lang.String: java.lang.String valueOf(float)>": 1}
;stmts r0 := @this: cn.hutool.core.lang.mutable.MutableFloat;	$f0 = r0.<cn.hutool.core.lang.mutable.MutableFloat: float value>;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(float)>($f0);	return $r1
;block_num 1