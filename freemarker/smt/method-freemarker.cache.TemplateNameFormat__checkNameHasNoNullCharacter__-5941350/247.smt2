(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2038 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var2249 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2249 null-String)))
(assert true)
(define-const var781 Int (indexOf/-1037706067 var2249 0)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(0) 
(define-const var1556 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 == $i2 goto return 
(assert (= var781 var1556)) ; Cond: $i0 == $i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var2249=r0, var2038=null_type, var781=$i0, var1556=$i2}
; {r0=var2249, null_type=var2038, $i0=var781, $i2=var1556}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(0);	$i2 = (int) -1;	if $i0 == $i2 goto return;	return
;block_num 2