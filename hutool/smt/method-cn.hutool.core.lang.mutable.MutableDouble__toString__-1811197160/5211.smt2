(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3181 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/1031244408 (var3181) Float64)
(declare-fun String_valueOf/-987357574 (Float64) String)
(declare-const null-var3181 var3181)
(declare-const var3894 var3181) ; Statement: r0 := @this: cn.hutool.core.lang.mutable.MutableDouble 
(assert (not (= var3894 null-var3181)))
(define-const var3513 Float64 (value/1031244408 var3894)) ; Statement: $d0 = r0.<cn.hutool.core.lang.mutable.MutableDouble: double value> 
(define-const var1569 String (String_valueOf/-987357574 var3513)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>($d0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {value/1031244408=([cn.hutool.core.lang.mutable.MutableDouble], double), String_valueOf/-987357574=([double], java.lang.String)}
; {var3181=cn.hutool.core.lang.mutable.MutableDouble, var3894=r0, var3513=$d0, var1569=$r1}
; {cn.hutool.core.lang.mutable.MutableDouble=var3181, r0=var3894, $d0=var3513, $r1=var1569}
;seq <java.lang.String: java.lang.String valueOf(double)>
;cnt {"<java.lang.String: java.lang.String valueOf(double)>": 1}
;stmts r0 := @this: cn.hutool.core.lang.mutable.MutableDouble;	$d0 = r0.<cn.hutool.core.lang.mutable.MutableDouble: double value>;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>($d0);	return $r1
;block_num 1