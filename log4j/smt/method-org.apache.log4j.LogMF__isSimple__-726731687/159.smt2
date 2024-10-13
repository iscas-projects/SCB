(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var898 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var3787 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3787 null-String)))
(assert true)
(define-const var2799 Int (indexOf/-1037706067 var3787 39)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(39) 
(define-const var3162 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
 ; Statement: if $i0 == $i12 goto i10 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(123) 
(assert (not (= var2799 var3162))) ; Negate: Cond: $i0 == $i12  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var3787=r0, var898=null_type, var2799=$i0, var3162=$i12}
; {r0=var3787, null_type=var898, $i0=var2799, $i12=var3162}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(39);	$i12 = (int) -1;	if $i0 == $i12 goto i10 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(123);	return 0
;block_num 2