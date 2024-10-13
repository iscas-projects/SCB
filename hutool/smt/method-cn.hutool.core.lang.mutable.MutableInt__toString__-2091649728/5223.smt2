(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2291 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/1447649960 (var2291) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-const null-var2291 var2291)
(declare-const var1745 var2291) ; Statement: r0 := @this: cn.hutool.core.lang.mutable.MutableInt 
(assert (not (= var1745 null-var2291)))
(define-const var2509 Int (value/1447649960 var1745)) ; Statement: $i0 = r0.<cn.hutool.core.lang.mutable.MutableInt: int value> 
(define-const var513 String (String_valueOf/1240665136 var2509)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {value/1447649960=([cn.hutool.core.lang.mutable.MutableInt], int), String_valueOf/1240665136=([int], java.lang.String)}
; {var2291=cn.hutool.core.lang.mutable.MutableInt, var1745=r0, var2509=$i0, var513=$r1}
; {cn.hutool.core.lang.mutable.MutableInt=var2291, r0=var1745, $i0=var2509, $r1=var513}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: cn.hutool.core.lang.mutable.MutableInt;	$i0 = r0.<cn.hutool.core.lang.mutable.MutableInt: int value>;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	return $r1
;block_num 1