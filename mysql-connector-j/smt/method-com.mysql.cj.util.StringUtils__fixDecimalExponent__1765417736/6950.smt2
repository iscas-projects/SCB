(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var764 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var3517 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3517 null-String)))
(assert true)
(define-const var1222 Int (indexOf/-1037706067 var3517 69)) ; Statement: i9 = virtualinvoke r3.<java.lang.String: int indexOf(int)>(69) 
(define-const var1447 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if i9 != $i11 goto $i13 = (int) -1 
(assert (not (= var1222 var1447))) ; Cond: i9 != $i11 
(define-const var3742 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i13 = (int) -1 
 ; Statement: if i9 == $i13 goto return r3 
(assert (= var1222 var3742)) ; Cond: i9 == $i13 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var3517=r3, var764=null_type, var1222=i9, var1447=$i11, var3742=$i13}
; {r3=var3517, null_type=var764, i9=var1222, $i11=var1447, $i13=var3742}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r3 := @parameter0: java.lang.String;	i9 = virtualinvoke r3.<java.lang.String: int indexOf(int)>(69);	$i11 = (int) -1;	if i9 != $i11 goto $i13 = (int) -1;	$i13 = (int) -1;	if i9 == $i13 goto return r3;	return r3
;block_num 3