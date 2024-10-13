(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3368 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-String String)
(declare-const var1151 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1151 null-String)))
(assert true)
(define-const var3756 (Array Int String) (split/-636890950 var1151 "\u005c.")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\.") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1151 "\u005c.") i) (re.++ (re.* re.all) (str.to_re ".") (re.* re.all))))))
(define-const var1923 Int (getLength-Arr-String-1 var3756)) ; Statement: $i0 = lengthof r1 
 ; Statement: if $i0 != 0 goto $i1 = lengthof r1 
(assert (not (not (= var1923 0)))) ; Negate: Cond: $i0 != 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var1151=r0, var3368=null_type, var3756=r1, var1923=$i0}
; {r0=var1151, null_type=var3368, r1=var3756, $i0=var1923}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\.");	$i0 = lengthof r1;	if $i0 != 0 goto $i1 = lengthof r1;	return r0
;block_num 2