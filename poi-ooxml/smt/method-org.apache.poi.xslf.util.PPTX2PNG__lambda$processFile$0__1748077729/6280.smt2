(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1315 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-const null-String String)
(declare-const var693 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var693 null-String)))
(assert true)
(define-const var1395 (Array Int String) (split/-636890950 var693 ":")) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(":") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var693 ":") i) (re.++ (re.* re.all) (str.to_re ":") (re.* re.all))))))
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[])}
; {var693=r0, var1315=null_type, var1395=$r1}
; {r0=var693, null_type=var1315, $r1=var1395}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>(":");	return $r1
;block_num 1