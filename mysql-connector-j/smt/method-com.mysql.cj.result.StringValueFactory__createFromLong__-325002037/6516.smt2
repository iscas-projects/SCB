(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var140 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-const null-var140 var140)
(declare-const null-Int Int)
(declare-const var1419 var140) ; Statement: r1 := @this: com.mysql.cj.result.StringValueFactory 
(assert (not (= var1419 null-var140)))
(declare-const var1282 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var1282 null-Int)))
(define-const var2153 String (String_valueOf/-107395227 var1282)) ; Statement: $r0 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0) 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-107395227=([long], java.lang.String)}
; {var140=com.mysql.cj.result.StringValueFactory, var1419=r1, var1282=l0, var2153=$r0}
; {com.mysql.cj.result.StringValueFactory=var140, r1=var1419, l0=var1282, $r0=var2153}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r1 := @this: com.mysql.cj.result.StringValueFactory;	l0 := @parameter0: long;	$r0 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>(l0);	return $r0
;block_num 1