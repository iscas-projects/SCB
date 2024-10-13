(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-const null-Int Int)
(declare-const var1953 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1953 null-Int)))
(define-const var500 Int (cast-from-Int-to-Int var1953)) ; Statement: c1 = (char) i0 
(define-const var2424 Int (cast-from-Int-to-Int var500)) ; Statement: $i2 = (int) c1 
 ; Statement: if i0 != $i2 goto $r2 = new java.lang.String 
(assert (not (not (= var1953 var2424)))) ; Negate: Cond: i0 != $i2  
(define-const var3870 String (String_valueOf/-371898945 var500)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c1) 
 ; Statement: goto [?= return $r1] 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], char), String_valueOf/-371898945=([char], java.lang.String)}
; {var1953=i0, var500=c1, var2424=$i2, var3870=$r1}
; {i0=var1953, c1=var500, $i2=var2424, $r1=var3870}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts i0 := @parameter0: int;	c1 = (char) i0;	$i2 = (int) c1;	if i0 != $i2 goto $r2 = new java.lang.String;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c1);	goto [?= return $r1];	return $r1
;block_num 3