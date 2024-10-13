(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1332 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-String String)
(declare-const var3479 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3479 null-String)))
(assert true)
(define-const var3238 (Array Int String) (split/-636890950 var3479 "\u005c.")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\.") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var3479 "\u005c.") i) (re.++ (re.* re.all) (str.to_re ".") (re.* re.all))))))
(define-const var2386 Int (getLength-Arr-String-1 var3238)) ; Statement: $i0 = lengthof r1 
 ; Statement: if $i0 != 0 goto $i1 = lengthof r1 
(assert (not (= var2386 0))) ; Cond: $i0 != 0 
(define-const var2245 Int (getLength-Arr-String-1 var3238)) ; Statement: $i1 = lengthof r1 
(define-const var1735 Int (- var2245 1)) ; Statement: $i2 = $i1 - 1 
(define-const var1107 String (select var3238 var1735)) ; Statement: $r2 = r1[$i2] 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var3479=r0, var1332=null_type, var3238=r1, var2386=$i0, var2245=$i1, var1735=$i2, var1107=$r2}
; {r0=var3479, null_type=var1332, r1=var3238, $i0=var2386, $i1=var2245, $i2=var1735, $r2=var1107}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\.");	$i0 = lengthof r1;	if $i0 != 0 goto $i1 = lengthof r1;	$i1 = lengthof r1;	$i2 = $i1 - 1;	$r2 = r1[$i2];	return $r2
;block_num 2