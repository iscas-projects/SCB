(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var825 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var2722 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2722 null-String)))
(assert true)
(define-const var2442 Int (indexOf/-1037706067 var2722 92)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(92) 
(define-const var1597 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 != $i7 goto $r3 = new java.lang.StringBuilder 
(assert (not (not (= var2442 var1597)))) ; Negate: Cond: i0 != $i7  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var2722=r0, var825=null_type, var2442=i0, var1597=$i7}
; {r0=var2722, null_type=var825, i0=var2442, $i7=var1597}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(92);	$i7 = (int) -1;	if i0 != $i7 goto $r3 = new java.lang.StringBuilder;	return r0
;block_num 2