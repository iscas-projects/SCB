(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var415 0)
(declare-sort var2336 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var415 var415)
(declare-const null-String String)
(declare-const var1477 var415) ; Statement: r3 := @this: org.apache.ibatis.session.Configuration$StrictMap 
(assert (not (= var1477 null-var415)))
(declare-const var3824 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3824 null-String)))
(assert true)
(define-const var2674 (Array Int String) (split/-636890950 var3824 "\u005c.")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\.") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var3824 "\u005c.") i) (re.++ (re.* re.all) (str.to_re ".") (re.* re.all))))))
(define-const var1557 Int (getLength-Arr-String-1 var2674)) ; Statement: $i0 = lengthof r1 
(define-const var3989 Int (- var1557 1)) ; Statement: $i1 = $i0 - 1 
(define-const var3867 String (select var2674 var3989)) ; Statement: $r2 = r1[$i1] 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var415=org.apache.ibatis.session.Configuration$StrictMap, var1477=r3, var3824=r0, var2336=null_type, var2674=r1, var1557=$i0, var3989=$i1, var3867=$r2}
; {org.apache.ibatis.session.Configuration$StrictMap=var415, r3=var1477, r0=var3824, null_type=var2336, r1=var2674, $i0=var1557, $i1=var3989, $r2=var3867}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r3 := @this: org.apache.ibatis.session.Configuration$StrictMap;	r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\.");	$i0 = lengthof r1;	$i1 = $i0 - 1;	$r2 = r1[$i1];	return $r2
;block_num 1