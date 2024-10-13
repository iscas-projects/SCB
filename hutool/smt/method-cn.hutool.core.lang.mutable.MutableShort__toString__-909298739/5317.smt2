(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2716 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/-368737035 (var2716) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-const null-var2716 var2716)
(declare-const var2970 var2716) ; Statement: r0 := @this: cn.hutool.core.lang.mutable.MutableShort 
(assert (not (= var2970 null-var2716)))
(define-const var3736 Int (value/-368737035 var2970)) ; Statement: $s0 = r0.<cn.hutool.core.lang.mutable.MutableShort: short value> 
(define-const var1996 Int (cast-from-Int-to-Int var3736)) ; Statement: $i1 = (int) $s0 
(define-const var536 String (String_valueOf/1240665136 var1996)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {value/-368737035=([cn.hutool.core.lang.mutable.MutableShort], short), cast-from-Int-to-Int=([short], int), String_valueOf/1240665136=([int], java.lang.String)}
; {var2716=cn.hutool.core.lang.mutable.MutableShort, var2970=r0, var3736=$s0, var1996=$i1, var536=$r1}
; {cn.hutool.core.lang.mutable.MutableShort=var2716, r0=var2970, $s0=var3736, $i1=var1996, $r1=var536}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: cn.hutool.core.lang.mutable.MutableShort;	$s0 = r0.<cn.hutool.core.lang.mutable.MutableShort: short value>;	$i1 = (int) $s0;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1);	return $r1
;block_num 1