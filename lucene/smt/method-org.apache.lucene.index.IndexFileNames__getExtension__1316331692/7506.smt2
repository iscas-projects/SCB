(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var891 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var3060 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3060 null-String)))
(assert true)
(define-const var2133 Int (indexOf/-1037706067 var3060 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
(define-const var705 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 != $i3 goto $i1 = i0 + 1 
(assert (not (not (= var2133 var705)))) ; Negate: Cond: i0 != $i3  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var3060=r0, var891=null_type, var2133=i0, var705=$i3}
; {r0=var3060, null_type=var891, i0=var2133, $i3=var705}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	$i3 = (int) -1;	if i0 != $i3 goto $i1 = i0 + 1;	return null
;block_num 2