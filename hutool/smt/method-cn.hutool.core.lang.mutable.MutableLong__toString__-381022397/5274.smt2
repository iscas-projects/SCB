(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3630 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/1927566051 (var3630) Int)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-const null-var3630 var3630)
(declare-const var3842 var3630) ; Statement: r0 := @this: cn.hutool.core.lang.mutable.MutableLong 
(assert (not (= var3842 null-var3630)))
(define-const var371 Int (value/1927566051 var3842)) ; Statement: $l0 = r0.<cn.hutool.core.lang.mutable.MutableLong: long value> 
(define-const var3638 String (String_valueOf/-107395227 var371)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {value/1927566051=([cn.hutool.core.lang.mutable.MutableLong], long), String_valueOf/-107395227=([long], java.lang.String)}
; {var3630=cn.hutool.core.lang.mutable.MutableLong, var3842=r0, var371=$l0, var3638=$r1}
; {cn.hutool.core.lang.mutable.MutableLong=var3630, r0=var3842, $l0=var371, $r1=var3638}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r0 := @this: cn.hutool.core.lang.mutable.MutableLong;	$l0 = r0.<cn.hutool.core.lang.mutable.MutableLong: long value>;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l0);	return $r1
;block_num 1