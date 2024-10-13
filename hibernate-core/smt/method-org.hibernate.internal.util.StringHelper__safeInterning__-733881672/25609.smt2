(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1843 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun intern/-1326102057 (String) String)
(declare-const null-String String)
(declare-const var852 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var852 null-String)))
 ; Statement: if r0 != null goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String intern()>() 
(assert (not (= var852 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var1376 String (intern/-1326102057 var852)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String intern()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {intern/-1326102057=([java.lang.String], java.lang.String)}
; {var852=r0, var1843=null_type, var1376=$r1}
; {r0=var852, null_type=var1843, $r1=var1376}
;seq <java.lang.String: java.lang.String intern()>
;cnt {"<java.lang.String: java.lang.String intern()>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String intern()>();	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String intern()>();	return $r1
;block_num 2