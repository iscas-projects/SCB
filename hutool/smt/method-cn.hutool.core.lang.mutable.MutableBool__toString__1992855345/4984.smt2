(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3287 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/1927268177 (var3287) Bool)
(declare-fun String_valueOf/-1973653463 (Bool) String)
(declare-const null-var3287 var3287)
(declare-const var1013 var3287) ; Statement: r0 := @this: cn.hutool.core.lang.mutable.MutableBool 
(assert (not (= var1013 null-var3287)))
(define-const var3050 Bool (value/1927268177 var1013)) ; Statement: $z0 = r0.<cn.hutool.core.lang.mutable.MutableBool: boolean value> 
(define-const var590 String (String_valueOf/-1973653463 var3050)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>($z0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {value/1927268177=([cn.hutool.core.lang.mutable.MutableBool], boolean), String_valueOf/-1973653463=([boolean], java.lang.String)}
; {var3287=cn.hutool.core.lang.mutable.MutableBool, var1013=r0, var3050=$z0, var590=$r1}
; {cn.hutool.core.lang.mutable.MutableBool=var3287, r0=var1013, $z0=var3050, $r1=var590}
;seq <java.lang.String: java.lang.String valueOf(boolean)>
;cnt {"<java.lang.String: java.lang.String valueOf(boolean)>": 1}
;stmts r0 := @this: cn.hutool.core.lang.mutable.MutableBool;	$z0 = r0.<cn.hutool.core.lang.mutable.MutableBool: boolean value>;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>($z0);	return $r1
;block_num 1