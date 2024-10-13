(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1180 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-987357574 (Float64) String)
(declare-const null-var1180 var1180)
(declare-const null-Float64 Float64)
(declare-const var1547 var1180) ; Statement: r1 := @this: com.mysql.cj.result.StringValueFactory 
(assert (not (= var1547 null-var1180)))
(declare-const var919 Float64) ; Statement: d0 := @parameter0: double 
(assert (not (= var919 null-Float64)))
(define-const var2869 String (String_valueOf/-987357574 var919)) ; Statement: $r0 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d0) 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-987357574=([double], java.lang.String)}
; {var1180=com.mysql.cj.result.StringValueFactory, var1547=r1, var919=d0, var2869=$r0}
; {com.mysql.cj.result.StringValueFactory=var1180, r1=var1547, d0=var919, $r0=var2869}
;seq <java.lang.String: java.lang.String valueOf(double)>
;cnt {"<java.lang.String: java.lang.String valueOf(double)>": 1}
;stmts r1 := @this: com.mysql.cj.result.StringValueFactory;	d0 := @parameter0: double;	$r0 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d0);	return $r0
;block_num 1