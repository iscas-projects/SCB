(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3307 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-String String)
(declare-const var1052 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1052 null-String)))
(assert true)
(define-const var134 (Array Int String) (split/-636890950 var1052 "/")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("/") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var1052 "/") i) (re.++ (re.* re.all) (str.to_re "/") (re.* re.all))))))
(define-const var1845 Int (getLength-Arr-String-1 var134)) ; Statement: $i0 = lengthof r1 
 ; Statement: if $i0 != 1 goto $i1 = lengthof r1 
(assert (not (= var1845 1))) ; Cond: $i0 != 1 
(define-const var515 Int (getLength-Arr-String-1 var134)) ; Statement: $i1 = lengthof r1 
(define-const var3327 Int (- var515 1)) ; Statement: $i2 = $i1 - 1 
(define-const var2220 String (select var134 var3327)) ; Statement: $r2 = r1[$i2] 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var1052=r0, var3307=null_type, var134=r1, var1845=$i0, var515=$i1, var3327=$i2, var2220=$r2}
; {r0=var1052, null_type=var3307, r1=var134, $i0=var1845, $i1=var515, $i2=var3327, $r2=var2220}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("/");	$i0 = lengthof r1;	if $i0 != 1 goto $i1 = lengthof r1;	$i1 = lengthof r1;	$i2 = $i1 - 1;	$r2 = r1[$i2];	return $r2
;block_num 2