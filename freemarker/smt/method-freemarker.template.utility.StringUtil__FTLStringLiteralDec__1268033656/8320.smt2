(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3190 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var2377 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2377 null-String)))
(assert true)
(define-const var1415 Int (indexOf/-1037706067 var2377 92)) ; Statement: i14 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(92) 
(define-const var2023 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i24 = (int) -1 
 ; Statement: if i14 != $i24 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (not (= var1415 var2023)))) ; Negate: Cond: i14 != $i24  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var2377=r0, var3190=null_type, var1415=i14, var2023=$i24}
; {r0=var2377, null_type=var3190, i14=var1415, $i24=var2023}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i14 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(92);	$i24 = (int) -1;	if i14 != $i24 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	return r0
;block_num 2