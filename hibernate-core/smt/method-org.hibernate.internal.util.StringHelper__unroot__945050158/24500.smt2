(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2798 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-String String)
(declare-const var966 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var966 null-String)))
(assert true)
(define-const var2278 Int (indexOf/-1037706067 var966 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
 ; Statement: if i0 >= 0 goto $i2 = i0 + 1 
(assert (not (>= var2278 0))) ; Negate: Cond: i0 >= 0  
(define-const var86 String var966) ; Statement: $r1 = r0 
 ; Statement: goto [?= return $r1] 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int)}
; {var966=r0, var2798=null_type, var2278=i0, var86=$r1}
; {r0=var966, null_type=var2798, i0=var2278, $r1=var86}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	if i0 >= 0 goto $i2 = i0 + 1;	$r1 = r0;	goto [?= return $r1];	return $r1
;block_num 3