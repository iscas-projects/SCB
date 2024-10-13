(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1264 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var498 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var498 null-String)))
(declare-const var157 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var157 null-Int)))
(declare-const var2505 Int) ; Statement: i5 := @parameter2: int 
(assert (not (= var2505 null-Int)))
(assert true)
(define-const var2916 Int (indexOf/-1037706067 var498 9)) ; Statement: i12 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(9) 
(define-const var2743 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i16 = (int) -1 
 ; Statement: if i12 != $i16 goto i13 = 0 
(assert (not (not (= var2916 var2743)))) ; Negate: Cond: i12 != $i16  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var498=r0, var1264=null_type, var157=i0, var2505=i5, var2916=i12, var2743=$i16}
; {r0=var498, null_type=var1264, i0=var157, i5=var2505, i12=var2916, $i16=var2743}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i5 := @parameter2: int;	i12 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(9);	$i16 = (int) -1;	if i12 != $i16 goto i13 = 0;	return r0
;block_num 2