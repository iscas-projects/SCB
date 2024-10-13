(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1524 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/1927277935 (var1524) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-const null-var1524 var1524)
(declare-const var3519 var1524) ; Statement: r0 := @this: cn.hutool.core.lang.mutable.MutableByte 
(assert (not (= var3519 null-var1524)))
(define-const var3265 Int (value/1927277935 var3519)) ; Statement: $b0 = r0.<cn.hutool.core.lang.mutable.MutableByte: byte value> 
(define-const var871 Int (cast-from-Int-to-Int var3265)) ; Statement: $i1 = (int) $b0 
(define-const var235 String (String_valueOf/1240665136 var871)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {value/1927277935=([cn.hutool.core.lang.mutable.MutableByte], byte), cast-from-Int-to-Int=([byte], int), String_valueOf/1240665136=([int], java.lang.String)}
; {var1524=cn.hutool.core.lang.mutable.MutableByte, var3519=r0, var3265=$b0, var871=$i1, var235=$r1}
; {cn.hutool.core.lang.mutable.MutableByte=var1524, r0=var3519, $b0=var3265, $i1=var871, $r1=var235}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: cn.hutool.core.lang.mutable.MutableByte;	$b0 = r0.<cn.hutool.core.lang.mutable.MutableByte: byte value>;	$i1 = (int) $b0;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1);	return $r1
;block_num 1